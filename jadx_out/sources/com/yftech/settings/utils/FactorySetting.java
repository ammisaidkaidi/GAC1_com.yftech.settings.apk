package com.yftech.settings.utils;

import android.content.Context;
import android.os.RecoverySystem;
import android.os.SystemClock;
import android.util.Log;
import com.yftech.vehicle.sdk.CarMiscManager;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class FactorySetting {
    private static final long EARLIEST_SUPPORTED_TIME = 1420041600000L;
    private static final String TAG = "FactorySetting";
    private static File RECOVERY_DIR = new File("/data/cache/recovery");
    private static File COMMAND_FILE = new File(RECOVERY_DIR, "command");
    private static File LOG_FILE = new File(RECOVERY_DIR, "log");

    /* JADX WARN: Multi-variable type inference failed */
    private void clearOsData(final Context context) throws Throwable {
        FileWriter fileWriter;
        LogUtil.i(TAG, "clearOsData() resetTime");
        SystemClock.setCurrentTimeMillis(EARLIEST_SUPPORTED_TIME);
        StringBuilder sb = new StringBuilder("--locale=");
        sb.append(Locale.getDefault().toString());
        sb.append("\n--wipe_data");
        RECOVERY_DIR.mkdirs();
        COMMAND_FILE.delete();
        LOG_FILE.delete();
        deleteSystemFile();
        String str = null;
        FileWriter fileWriter2 = null;
        try {
            try {
                try {
                    fileWriter = new FileWriter(COMMAND_FILE);
                    try {
                        fileWriter.write(sb.toString());
                        fileWriter.write("\n");
                        LogUtil.e(TAG, "clearOsData:  args==" + ((Object) sb));
                        fileWriter.close();
                    } catch (IOException unused) {
                        fileWriter2 = fileWriter;
                        LogUtil.d(TAG, "Can't write command file");
                        if (fileWriter2 != null) {
                            fileWriter2.close();
                        }
                        str = "Reboot";
                        new Thread(str) { // from class: com.yftech.settings.utils.FactorySetting.1
                            @Override // java.lang.Thread, java.lang.Runnable
                            public void run() {
                                try {
                                    RecoverySystem.rebootWipeUserData(context);
                                    LogUtil.d(FactorySetting.TAG, "Still running after master clear?!");
                                } catch (Exception e) {
                                    LogUtil.d(FactorySetting.TAG, "Can't perform master clear/factory reset");
                                    e.printStackTrace();
                                }
                            }
                        }.start();
                    } catch (Throwable th) {
                        th = th;
                        if (fileWriter != 0) {
                            try {
                                fileWriter.close();
                            } catch (Exception unused2) {
                                LogUtil.d(TAG, "Can't close command");
                            }
                        }
                        throw th;
                    }
                } catch (Exception unused3) {
                    LogUtil.d(TAG, "Can't close command");
                }
            } catch (IOException unused4) {
            }
            str = "Reboot";
            new Thread(str) { // from class: com.yftech.settings.utils.FactorySetting.1
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    try {
                        RecoverySystem.rebootWipeUserData(context);
                        LogUtil.d(FactorySetting.TAG, "Still running after master clear?!");
                    } catch (Exception e) {
                        LogUtil.d(FactorySetting.TAG, "Can't perform master clear/factory reset");
                        e.printStackTrace();
                    }
                }
            }.start();
        } catch (Throwable th2) {
            th = th2;
            fileWriter = str;
        }
    }

    private void deleteSystemFile() {
        LogUtil.i(TAG, "deleteSystemFile atclog result:" + DeleteUtil.delete("/sdcard/atclog") + " wallpaper:" + DeleteUtil.delete("/storage/emulated/0/wallpaper"));
    }

    public void factoryReset(Context context) throws Throwable {
        Log.i(TAG, "setFactoryModReSetFactorySettingNotify() result: " + CarMiscManager.get().setFactoryModeReSetFactorySettingNotify());
        clearOsData(context);
    }
}
