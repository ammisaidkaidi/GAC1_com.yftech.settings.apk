package com.yftech.vehicle.internal.utils;

import com.yftech.vehicle.internal.adapter.ICarDashBoard;

/* JADX INFO: loaded from: classes.dex */
public class StringFormart {
    public static String byte2hex(byte[] bArr) {
        if (bArr == null) {
            return "byte[] null";
        }
        String str = "";
        for (byte b : bArr) {
            String hexString = Integer.toHexString(b & ICarDashBoard.BtInfo.STATUS_UNKNOW);
            if (hexString.length() == 1) {
                hexString = "0" + hexString;
            }
            str = str + " " + hexString;
        }
        return str;
    }
}
