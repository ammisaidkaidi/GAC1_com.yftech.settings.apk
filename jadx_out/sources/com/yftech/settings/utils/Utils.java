package com.yftech.settings.utils;

import android.content.Context;
import android.media.AudioManager;
import android.os.StatFs;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.provider.Settings;
import android.text.TextUtils;
import android.text.format.DateFormat;
import com.bumptech.glide.load.Key;
import com.yftech.vehicle.internal.adapter.ICarConfig;
import com.yftech.vehicle.sdk.CarConfig;
import com.yftech.vehicle.sdk.CarMiscManager;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.util.Calendar;

/* JADX INFO: loaded from: classes.dex */
public class Utils {
    private static final int PROGRESS_MIN_DELAY_TIME = 100;
    private static final String TAG = "Utils";
    private static long lastClickTime;
    private static long mLastSetDateTime;

    public static int dip2px(Context context, float f) {
        return (int) ((f * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static int dp2px(Context context, float f) {
        return (int) ((f * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static long getAvailableSpace(File file) {
        try {
            StatFs statFs = new StatFs(file.getPath());
            return statFs.getAvailableBlocksLong() * ((long) statFs.getBlockSize());
        } catch (Exception unused) {
            return -1L;
        }
    }

    public static long getTotalSpace(File file) {
        try {
            StatFs statFs = new StatFs(file.getPath());
            return ((long) statFs.getBlockCount()) * ((long) statFs.getBlockSize());
        } catch (Exception unused) {
            return -1L;
        }
    }

    public static boolean isCarPlayCertificate() {
        return SystemProperties.getInt("persist.sys.carplay.certificate", 0) == 1;
    }

    public static boolean isFastDoubleClick() {
        boolean z = Math.abs(SystemClock.elapsedRealtime() - lastClickTime) <= 1500;
        if (z) {
            LogUtil.i(TAG, " lastClickTime = " + lastClickTime + "  System.currentTimeMillis() : " + SystemClock.elapsedRealtime());
        } else {
            lastClickTime = SystemClock.elapsedRealtime();
        }
        return z;
    }

    public static boolean isGACLogoPresent() {
        boolean zIsGACLogoPresent = CarConfig.isGACLogoPresent();
        LogUtil.i(TAG, "isGACLogoPresent=" + zIsGACLogoPresent);
        return zIsGACLogoPresent;
    }

    public static boolean isRightDrive() {
        ICarConfig.LeftRightHandDriveVehicles leftRightHandDriveVehicles = CarConfig.getLeftRightHandDriveVehicles();
        LogUtil.i(TAG, "isLeftRightDrive->leftRightHandDriveVehicles=" + leftRightHandDriveVehicles);
        return leftRightHandDriveVehicles == ICarConfig.LeftRightHandDriveVehicles.RIGHT;
    }

    public static void playKeySoundEffect(Context context) {
        if (Settings.System.getInt(context.getContentResolver(), "sound_effects_enabled", 0) == 1) {
            ((AudioManager) context.getSystemService("audio")).playSoundEffect(0);
        }
    }

    public static boolean progressChangedEnable(long j) {
        return Math.abs(SystemClock.elapsedRealtime() - j) > 100;
    }

    public static void setDateTime(Context context, int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z) {
        Calendar calendar = Calendar.getInstance();
        calendar.set(1, i);
        calendar.set(2, i2 - 1);
        calendar.set(5, i3);
        boolean zIs24HourFormat = DateFormat.is24HourFormat(context.getApplicationContext());
        int i8 = i4 >= 12 ? i4 - 12 : i4;
        if (zIs24HourFormat) {
            calendar.set(11, i4);
        } else {
            calendar.set(9, i7);
            calendar.set(10, i8);
        }
        calendar.set(12, i5);
        calendar.set(13, i6);
        long time = calendar.getTime().getTime();
        LogUtil.i(TAG, "setDateTime() " + i + "-" + i2 + "-" + i3 + " " + i4 + ":" + i5 + ":" + i6 + " is24HourFormat:" + zIs24HourFormat + " ampm:" + i7 + " hour(12):" + i8 + " isDirectSet:" + z + " curSetDateTime:" + time + " lastSetDateTime:" + mLastSetDateTime);
        if (!z && Math.abs(time - mLastSetDateTime) < 3000) {
            LogUtil.i(TAG, "setDateTime() Time interval < 3000ms, no set.");
            return;
        }
        boolean systemTime = CarMiscManager.get().setSystemTime(calendar, zIs24HourFormat);
        if (systemTime) {
            mLastSetDateTime = time;
        }
        LogUtil.i(TAG, "setDateTime() result:" + systemTime);
    }

    public static void setDateTime(Context context, Calendar calendar, boolean z) {
        int i = calendar.get(1);
        int i2 = calendar.get(2) + 1;
        int i3 = calendar.get(5);
        int i4 = calendar.get(11);
        int i5 = calendar.get(12);
        int i6 = calendar.get(13);
        int i7 = calendar.get(9);
        LogUtil.i(TAG, "setDateTime() " + i + "-" + i2 + "-" + i3 + " " + i4 + ":" + i5 + ":" + i6 + " ampm:" + i7 + " isDirectSet:" + z);
        setDateTime(context, i, i2, i3, i4, i5, i6, i7, z);
    }

    public static String subStr(String str, int i, String str2) throws UnsupportedEncodingException {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        String strSubstring = str.substring(0, str.length());
        int length = strSubstring.getBytes(Key.STRING_CHARSET_NAME).length;
        boolean z = length > i;
        String strSubstring2 = strSubstring;
        int i2 = i;
        while (length > i) {
            i2--;
            strSubstring2 = str.substring(0, i2 > str.length() ? str.length() : i2);
            length = strSubstring2.getBytes(Key.STRING_CHARSET_NAME).length;
        }
        if (!z) {
            return strSubstring2;
        }
        return strSubstring2 + str2;
    }
}
