package com.yftech.settings.utils;

import android.bluetooth.BluetoothDevice;
import android.text.TextUtils;
import java.io.UnsupportedEncodingException;
import java.nio.charset.StandardCharsets;

/* JADX INFO: loaded from: classes.dex */
public class CommonUtils {
    public static String getDeviceName(BluetoothDevice bluetoothDevice) {
        String name = bluetoothDevice.getName();
        if (TextUtils.isEmpty(name)) {
            name = bluetoothDevice.getAddress();
        }
        return getLimitDeviceName(name);
    }

    public static String getLimitDeviceName(String str) {
        try {
            return subStr(str, 14, "...");
        } catch (Exception e) {
            e.printStackTrace();
            return str;
        }
    }

    private static boolean isEmojiCharacter(char c) {
        return !(c == 0 || c == '\t' || c == '\n' || c == '\r' || (c >= ' ' && c <= 55295) || ((c >= 57344 && c <= 65533) || (c >= 0 && c <= 65535)));
    }

    public static String subStr(String str, int i, String str2) throws UnsupportedEncodingException {
        if (str == null || "".equals(str)) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        int i2 = 0;
        int i3 = 0;
        while (true) {
            if (i2 >= str.length() || i <= 0) {
                i2 = i3;
                break;
            }
            char cCharAt = str.charAt(i2);
            if (String.valueOf(cCharAt).getBytes(StandardCharsets.UTF_8).length > 1) {
                i -= 2;
            } else {
                i = isEmojiCharacter(cCharAt) ? i - 1 : i - 1;
            }
            if (i < 0) {
                break;
            }
            sb.append(cCharAt);
            i3 = i2;
            i2++;
        }
        if (str.length() - 1 > i2 && !TextUtils.isEmpty(str2)) {
            sb.append(str2);
        }
        return sb.toString();
    }
}
