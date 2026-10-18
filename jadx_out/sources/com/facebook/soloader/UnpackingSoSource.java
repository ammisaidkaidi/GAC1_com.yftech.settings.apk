package com.facebook.soloader;

import android.content.Context;
import android.os.Parcel;
import android.os.StrictMode;
import android.util.Log;
import java.io.Closeable;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.EOFException;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public abstract class UnpackingSoSource extends DirectorySoSource {
    private static final String DEPS_FILE_NAME = "dso_deps";
    private static final String LOCK_FILE_NAME = "dso_lock";
    private static final String MANIFEST_FILE_NAME = "dso_manifest";
    private static final byte MANIFEST_VERSION = 1;
    private static final byte STATE_CLEAN = 1;
    private static final byte STATE_DIRTY = 0;
    private static final String STATE_FILE_NAME = "dso_state";
    private static final String TAG = "fb-UnpackingSoSource";

    @Nullable
    private String[] mAbis;
    protected final Context mContext;

    @Nullable
    protected String mCorruptedLib;
    private final Map<String, Object> mLibsBeingLoaded;

    public static class Dso {
        public final String hash;
        public final String name;

        public Dso(String str, String str2) {
            this.name = str;
            this.hash = str2;
        }
    }

    public static final class DsoManifest {
        public final Dso[] dsos;

        public DsoManifest(Dso[] dsoArr) {
            this.dsos = dsoArr;
        }

        static final DsoManifest read(DataInput dataInput) throws IOException {
            if (dataInput.readByte() != 1) {
                throw new RuntimeException("wrong dso manifest version");
            }
            int i = dataInput.readInt();
            if (i < 0) {
                throw new RuntimeException("illegal number of shared libraries");
            }
            Dso[] dsoArr = new Dso[i];
            for (int i2 = 0; i2 < i; i2++) {
                dsoArr[i2] = new Dso(dataInput.readUTF(), dataInput.readUTF());
            }
            return new DsoManifest(dsoArr);
        }

        public final void write(DataOutput dataOutput) throws IOException {
            dataOutput.writeByte(1);
            dataOutput.writeInt(this.dsos.length);
            for (int i = 0; i < this.dsos.length; i++) {
                dataOutput.writeUTF(this.dsos[i].name);
                dataOutput.writeUTF(this.dsos[i].hash);
            }
        }
    }

    protected static final class InputDso implements Closeable {
        public final InputStream content;
        public final Dso dso;

        public InputDso(Dso dso, InputStream inputStream) {
            this.dso = dso;
            this.content = inputStream;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.content.close();
        }
    }

    protected static abstract class InputDsoIterator implements Closeable {
        protected InputDsoIterator() {
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
        }

        public abstract boolean hasNext();

        public abstract InputDso next() throws IOException;
    }

    protected static abstract class Unpacker implements Closeable {
        protected Unpacker() {
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
        }

        protected abstract DsoManifest getDsoManifest() throws IOException;

        protected abstract InputDsoIterator openDsoIterator() throws IOException;
    }

    protected UnpackingSoSource(Context context, File file) {
        super(file, 1);
        this.mLibsBeingLoaded = new HashMap();
        this.mContext = context;
    }

    protected UnpackingSoSource(Context context, String str) {
        super(getSoStorePath(context, str), 1);
        this.mLibsBeingLoaded = new HashMap();
        this.mContext = context;
    }

    private void deleteUnmentionedFiles(Dso[] dsoArr) throws IOException {
        String[] list = this.soDirectory.list();
        if (list == null) {
            throw new IOException("unable to list directory " + this.soDirectory);
        }
        for (String str : list) {
            if (!str.equals(STATE_FILE_NAME) && !str.equals(LOCK_FILE_NAME) && !str.equals(DEPS_FILE_NAME) && !str.equals(MANIFEST_FILE_NAME)) {
                boolean z = false;
                for (int i = 0; !z && i < dsoArr.length; i++) {
                    if (dsoArr[i].name.equals(str)) {
                        z = true;
                    }
                }
                if (!z) {
                    File file = new File(this.soDirectory, str);
                    Log.v(TAG, "deleting unaccounted-for file " + file);
                    SysUtil.dumbDeleteRecursive(file);
                }
            }
        }
    }

    private void extractDso(InputDso inputDso, byte[] bArr) throws IOException {
        RandomAccessFile randomAccessFile;
        Log.i(TAG, "extracting DSO " + inputDso.dso.name);
        if (!this.soDirectory.setWritable(true, true)) {
            throw new IOException("cannot make directory writable for us: " + this.soDirectory);
        }
        File file = new File(this.soDirectory, inputDso.dso.name);
        try {
            randomAccessFile = new RandomAccessFile(file, "rw");
        } catch (IOException e) {
            Log.w(TAG, "error overwriting " + file + " trying to delete and start over", e);
            SysUtil.dumbDeleteRecursive(file);
            randomAccessFile = new RandomAccessFile(file, "rw");
        }
        try {
            try {
                int iAvailable = inputDso.content.available();
                if (iAvailable > 1) {
                    SysUtil.fallocateIfSupported(randomAccessFile.getFD(), iAvailable);
                }
                SysUtil.copyBytes(randomAccessFile, inputDso.content, Integer.MAX_VALUE, bArr);
                randomAccessFile.setLength(randomAccessFile.getFilePointer());
                if (file.setExecutable(true, false)) {
                    randomAccessFile.close();
                    return;
                }
                throw new IOException("cannot make file executable: " + file);
            } catch (IOException e2) {
                SysUtil.dumbDeleteRecursive(file);
                throw e2;
            }
        } catch (Throwable th) {
            randomAccessFile.close();
            throw th;
        }
        randomAccessFile.close();
        throw th;
    }

    private Object getLibraryLock(String str) {
        Object obj;
        synchronized (this.mLibsBeingLoaded) {
            obj = this.mLibsBeingLoaded.get(str);
            if (obj == null) {
                obj = new Object();
                this.mLibsBeingLoaded.put(str, obj);
            }
        }
        return obj;
    }

    public static File getSoStorePath(Context context, String str) {
        return new File(context.getApplicationInfo().dataDir + "/" + str);
    }

    /* JADX WARN: Code duplicated, block: B:101:0x00f5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:106:? A[Catch: all -> 0x0102, Throwable -> 0x0105, SYNTHETIC, TRY_LEAVE, TryCatch #1 {all -> 0x0102, blocks: (B:32:0x009a, B:35:0x00a7, B:54:0x00f5, B:58:0x00fe, B:57:0x00fa, B:59:0x0101), top: B:87:0x009a }] */
    /* JADX WARN: Code duplicated, block: B:109:? A[Catch: all -> 0x011c, Throwable -> 0x011e, SYNTHETIC, TRY_LEAVE, TryCatch #2 {, blocks: (B:20:0x005f, B:22:0x006d, B:23:0x0075, B:25:0x007b, B:27:0x0085, B:31:0x008c, B:37:0x00ac, B:72:0x0118, B:71:0x0114, B:73:0x011b), top: B:88:0x005f, outer: #12 }] */
    /* JADX WARN: Code duplicated, block: B:53:0x00f3 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:58:0x00fe A[Catch: all -> 0x0102, Throwable -> 0x0105, TryCatch #1 {all -> 0x0102, blocks: (B:32:0x009a, B:35:0x00a7, B:54:0x00f5, B:58:0x00fe, B:57:0x00fa, B:59:0x0101), top: B:87:0x009a }] */
    /* JADX WARN: Code duplicated, block: B:67:0x010d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:72:0x0118 A[Catch: all -> 0x011c, Throwable -> 0x011e, TryCatch #2 {, blocks: (B:20:0x005f, B:22:0x006d, B:23:0x0075, B:25:0x007b, B:27:0x0085, B:31:0x008c, B:37:0x00ac, B:72:0x0118, B:71:0x0114, B:73:0x011b), top: B:88:0x005f, outer: #12 }] */
    /* JADX WARN: Code duplicated, block: B:97:0x010f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    private boolean refreshLocked(final FileLocker fileLocker, int i, final byte[] bArr) throws IOException {
        byte b;
        Throwable th;
        Throwable th2;
        DsoManifest dsoManifest;
        Throwable th3;
        Throwable th4;
        final File file = new File(this.soDirectory, STATE_FILE_NAME);
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
        Throwable th5 = null;
        try {
            try {
                b = randomAccessFile.readByte();
                if (b != 1) {
                    Log.v(TAG, "dso store " + this.soDirectory + " regeneration interrupted: wiping clean");
                    b = 0;
                }
            } catch (Throwable th6) {
                if (0 != 0) {
                    try {
                        randomAccessFile.close();
                    } catch (Throwable th7) {
                        th5.addSuppressed(th7);
                    }
                } else {
                    randomAccessFile.close();
                }
                throw th6;
            }
        } catch (EOFException unused) {
        }
        randomAccessFile.close();
        final File file2 = new File(this.soDirectory, DEPS_FILE_NAME);
        RandomAccessFile randomAccessFile2 = new RandomAccessFile(file2, "rw");
        try {
            byte[] bArr2 = new byte[(int) randomAccessFile2.length()];
            if (randomAccessFile2.read(bArr2) != bArr2.length) {
                Log.v(TAG, "short read of so store deps file: marking unclean");
                b = 0;
            }
            if (!Arrays.equals(bArr2, bArr)) {
                Log.v(TAG, "deps mismatch on deps store: regenerating");
                b = 0;
            }
            if (b == 0 || (i & 2) != 0) {
                Log.v(TAG, "so store dirty: regenerating");
                writeState(file, (byte) 0);
                Unpacker unpackerMakeUnpacker = makeUnpacker();
                try {
                    try {
                        dsoManifest = unpackerMakeUnpacker.getDsoManifest();
                        InputDsoIterator inputDsoIteratorOpenDsoIterator = unpackerMakeUnpacker.openDsoIterator();
                        try {
                            regenerate(b, dsoManifest, inputDsoIteratorOpenDsoIterator);
                            if (inputDsoIteratorOpenDsoIterator != null) {
                                inputDsoIteratorOpenDsoIterator.close();
                            }
                            if (unpackerMakeUnpacker != null) {
                                unpackerMakeUnpacker.close();
                            }
                        } catch (Throwable th8) {
                            try {
                                throw th8;
                            } catch (Throwable th9) {
                                th3 = th8;
                                th4 = th9;
                                if (inputDsoIteratorOpenDsoIterator != null) {
                                    throw th4;
                                }
                                if (th3 == null) {
                                    inputDsoIteratorOpenDsoIterator.close();
                                    throw th4;
                                }
                                inputDsoIteratorOpenDsoIterator.close();
                                throw th4;
                            }
                        }
                    } catch (Throwable th10) {
                        th2 = th10;
                        th = null;
                        if (unpackerMakeUnpacker != null) {
                            throw th2;
                        }
                        if (th == null) {
                            unpackerMakeUnpacker.close();
                            throw th2;
                        }
                        try {
                            unpackerMakeUnpacker.close();
                            throw th2;
                        } catch (Throwable th11) {
                            th.addSuppressed(th11);
                            throw th2;
                        }
                    }
                } catch (Throwable th12) {
                    try {
                        throw th12;
                    } catch (Throwable th13) {
                        th = th12;
                        th2 = th13;
                        if (unpackerMakeUnpacker != null) {
                            throw th2;
                        }
                        if (th == null) {
                            unpackerMakeUnpacker.close();
                            throw th2;
                        }
                        unpackerMakeUnpacker.close();
                        throw th2;
                    }
                }
            } else {
                dsoManifest = null;
            }
            randomAccessFile2.close();
            if (dsoManifest == null) {
                return false;
            }
            final DsoManifest dsoManifest2 = dsoManifest;
            Runnable runnable = new Runnable() { // from class: com.facebook.soloader.UnpackingSoSource.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        try {
                            Log.v(UnpackingSoSource.TAG, "starting syncer worker");
                            RandomAccessFile randomAccessFile3 = new RandomAccessFile(file2, "rw");
                            Throwable th14 = null;
                            try {
                                randomAccessFile3.write(bArr);
                                randomAccessFile3.setLength(randomAccessFile3.getFilePointer());
                                randomAccessFile3.close();
                                RandomAccessFile randomAccessFile4 = new RandomAccessFile(new File(UnpackingSoSource.this.soDirectory, UnpackingSoSource.MANIFEST_FILE_NAME), "rw");
                                try {
                                    try {
                                        dsoManifest2.write(randomAccessFile4);
                                        randomAccessFile4.close();
                                        SysUtil.fsyncRecursive(UnpackingSoSource.this.soDirectory);
                                        UnpackingSoSource.writeState(file, (byte) 1);
                                        Log.v(UnpackingSoSource.TAG, "releasing dso store lock for " + UnpackingSoSource.this.soDirectory + " (from syncer thread)");
                                        fileLocker.close();
                                    } catch (Throwable th15) {
                                        th14 = th15;
                                        throw th14;
                                    }
                                } catch (Throwable th16) {
                                    if (th14 != null) {
                                        try {
                                            randomAccessFile4.close();
                                        } catch (Throwable th17) {
                                            th14.addSuppressed(th17);
                                        }
                                    } else {
                                        randomAccessFile4.close();
                                    }
                                    throw th16;
                                }
                            } catch (Throwable th18) {
                                if (0 != 0) {
                                    try {
                                        randomAccessFile3.close();
                                    } catch (Throwable th19) {
                                        th14.addSuppressed(th19);
                                    }
                                } else {
                                    randomAccessFile3.close();
                                }
                                throw th18;
                            }
                        } catch (IOException e) {
                            throw new RuntimeException(e);
                        }
                    } catch (Throwable th20) {
                        Log.v(UnpackingSoSource.TAG, "releasing dso store lock for " + UnpackingSoSource.this.soDirectory + " (from syncer thread)");
                        fileLocker.close();
                        throw th20;
                    }
                }
            };
            if ((i & 1) != 0) {
                new Thread(runnable, "SoSync:" + this.soDirectory.getName()).start();
            } else {
                runnable.run();
            }
            return true;
        } catch (Throwable th14) {
            if (0 != 0) {
                try {
                    randomAccessFile2.close();
                } catch (Throwable th15) {
                    th5.addSuppressed(th15);
                }
            } else {
                randomAccessFile2.close();
            }
            throw th14;
        }
    }

    /* JADX WARN: Code duplicated, block: B:41:0x00a4 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:46:0x00af A[Catch: all -> 0x0037, Throwable -> 0x003a, TryCatch #1 {, blocks: (B:4:0x0032, B:15:0x004a, B:16:0x0051, B:17:0x005b, B:19:0x0061, B:49:0x00b5, B:46:0x00af, B:45:0x00ab, B:47:0x00b2, B:11:0x003f), top: B:63:0x0030, outer: #4 }] */
    /* JADX WARN: Code duplicated, block: B:61:0x00a6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:83:? A[Catch: all -> 0x0037, Throwable -> 0x003a, SYNTHETIC, TryCatch #1 {, blocks: (B:4:0x0032, B:15:0x004a, B:16:0x0051, B:17:0x005b, B:19:0x0061, B:49:0x00b5, B:46:0x00af, B:45:0x00ab, B:47:0x00b2, B:11:0x003f), top: B:63:0x0030, outer: #4 }] */
    private void regenerate(byte b, DsoManifest dsoManifest, InputDsoIterator inputDsoIterator) throws IOException {
        DsoManifest dsoManifest2;
        Throwable th;
        Throwable th2;
        Log.v(TAG, "regenerating DSO store " + getClass().getName());
        RandomAccessFile randomAccessFile = new RandomAccessFile(new File(this.soDirectory, MANIFEST_FILE_NAME), "rw");
        Throwable th3 = null;
        try {
            if (b == 1) {
                try {
                    dsoManifest2 = DsoManifest.read(randomAccessFile);
                } catch (Exception e) {
                    Log.i(TAG, "error reading existing DSO manifest", e);
                    dsoManifest2 = null;
                }
            } else {
                dsoManifest2 = null;
            }
            if (dsoManifest2 == null) {
                dsoManifest2 = new DsoManifest(new Dso[0]);
            }
            deleteUnmentionedFiles(dsoManifest.dsos);
            byte[] bArr = new byte[32768];
            while (inputDsoIterator.hasNext()) {
                InputDso next = inputDsoIterator.next();
                boolean z = true;
                int i = 0;
                while (z) {
                    try {
                        if (i >= dsoManifest2.dsos.length) {
                            break;
                        }
                        if (dsoManifest2.dsos[i].name.equals(next.dso.name) && dsoManifest2.dsos[i].hash.equals(next.dso.hash)) {
                            z = false;
                        }
                        i++;
                    } catch (Throwable th4) {
                        try {
                            throw th4;
                        } catch (Throwable th5) {
                            th = th4;
                            th2 = th5;
                            if (next != null) {
                                throw th2;
                            }
                            if (th == null) {
                                next.close();
                                throw th2;
                            }
                            next.close();
                            throw th2;
                        }
                    }
                }
                if (z) {
                    extractDso(next, bArr);
                }
                if (next != null) {
                    next.close();
                }
            }
            randomAccessFile.close();
            Log.v(TAG, "Finished regenerating DSO store " + getClass().getName());
        } catch (Throwable th6) {
            if (0 != 0) {
                try {
                    randomAccessFile.close();
                } catch (Throwable th7) {
                    th3.addSuppressed(th7);
                }
            } else {
                randomAccessFile.close();
            }
            throw th6;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void writeState(File file, byte b) throws IOException {
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
        Throwable th = null;
        try {
            randomAccessFile.seek(0L);
            randomAccessFile.write(b);
            randomAccessFile.setLength(randomAccessFile.getFilePointer());
            randomAccessFile.getFD().sync();
            randomAccessFile.close();
        } catch (Throwable th2) {
            if (0 != 0) {
                try {
                    randomAccessFile.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
            } else {
                randomAccessFile.close();
            }
            throw th2;
        }
    }

    protected byte[] getDepsBlock() throws IOException {
        Parcel parcelObtain = Parcel.obtain();
        Unpacker unpackerMakeUnpacker = makeUnpacker();
        Throwable th = null;
        try {
            try {
                Dso[] dsoArr = unpackerMakeUnpacker.getDsoManifest().dsos;
                parcelObtain.writeByte((byte) 1);
                parcelObtain.writeInt(dsoArr.length);
                for (int i = 0; i < dsoArr.length; i++) {
                    parcelObtain.writeString(dsoArr[i].name);
                    parcelObtain.writeString(dsoArr[i].hash);
                }
                if (unpackerMakeUnpacker != null) {
                    unpackerMakeUnpacker.close();
                }
                byte[] bArrMarshall = parcelObtain.marshall();
                parcelObtain.recycle();
                return bArrMarshall;
            } catch (Throwable th2) {
                th = th2;
                throw th;
            }
        } catch (Throwable th3) {
            if (unpackerMakeUnpacker != null) {
                if (th != null) {
                    try {
                        unpackerMakeUnpacker.close();
                    } catch (Throwable th4) {
                        th.addSuppressed(th4);
                    }
                } else {
                    unpackerMakeUnpacker.close();
                }
            }
            throw th3;
        }
    }

    @Override // com.facebook.soloader.SoSource
    public String[] getSoSourceAbis() {
        return this.mAbis == null ? super.getSoSourceAbis() : this.mAbis;
    }

    @Override // com.facebook.soloader.DirectorySoSource, com.facebook.soloader.SoSource
    public int loadLibrary(String str, int i, StrictMode.ThreadPolicy threadPolicy) throws IOException {
        int iLoadLibraryFrom;
        synchronized (getLibraryLock(str)) {
            iLoadLibraryFrom = loadLibraryFrom(str, i, this.soDirectory, threadPolicy);
        }
        return iLoadLibraryFrom;
    }

    protected abstract Unpacker makeUnpacker() throws IOException;

    @Override // com.facebook.soloader.SoSource
    protected void prepare(int i) throws IOException {
        SysUtil.mkdirOrThrow(this.soDirectory);
        FileLocker fileLockerLock = FileLocker.lock(new File(this.soDirectory, LOCK_FILE_NAME));
        try {
            Log.v(TAG, "locked dso store " + this.soDirectory);
            if (refreshLocked(fileLockerLock, i, getDepsBlock())) {
                fileLockerLock = null;
            } else {
                Log.i(TAG, "dso store is up-to-date: " + this.soDirectory);
            }
            if (fileLockerLock != null) {
                String str = TAG;
                String str2 = "releasing dso store lock for " + this.soDirectory;
                return;
            }
            String str3 = TAG;
            String str4 = "not releasing dso store lock for " + this.soDirectory + " (syncer thread started)";
        } finally {
            if (fileLockerLock != null) {
                Log.v(TAG, "releasing dso store lock for " + this.soDirectory);
                fileLockerLock.close();
            } else {
                Log.v(TAG, "not releasing dso store lock for " + this.soDirectory + " (syncer thread started)");
            }
        }
    }

    protected synchronized void prepare(String str) throws IOException {
        synchronized (getLibraryLock(str)) {
            this.mCorruptedLib = str;
            prepare(2);
        }
    }

    public void setSoSourceAbis(String[] strArr) {
        this.mAbis = strArr;
    }
}
