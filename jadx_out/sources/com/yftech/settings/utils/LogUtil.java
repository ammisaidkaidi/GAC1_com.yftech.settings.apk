package com.yftech.settings.utils;

import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public class LogUtil {
    public static final String TAG = "YF_Settings";

    public static void d(String str, String str2) {
        Log.d("YF_Settings_" + str, str2);
    }

    public static void e(String str, String str2) {
        Log.e("YF_Settings_" + str, str2);
    }

    public static void i(String str, String str2) {
        Log.i("YF_Settings_" + str, str2);
    }

    public static void v(String str, String str2) {
        Log.v("YF_Settings_" + str, str2);
    }

    public static void w(String str, String str2) {
        Log.w("YF_Settings_" + str, str2);
    }
}
