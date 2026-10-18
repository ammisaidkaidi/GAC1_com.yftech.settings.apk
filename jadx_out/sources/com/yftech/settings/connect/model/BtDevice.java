package com.yftech.settings.connect.model;

import android.bluetooth.BluetoothDevice;
import android.text.TextUtils;
import com.yftech.settings.utils.Utils;

/* JADX INFO: loaded from: classes.dex */
public class BtDevice {
    private BtDeviceItemState deviceItemState;
    private BluetoothDevice mDevice;
    private int mHfpState = 0;
    private int mAvrcpState = 0;

    public boolean equals(Object obj) {
        return this.mDevice != null && this.mDevice.equals(obj);
    }

    public int getAvrcpState() {
        return this.mAvrcpState;
    }

    public BluetoothDevice getDevice() {
        return this.mDevice;
    }

    public BtDeviceItemState getDeviceItemState() {
        return this.deviceItemState;
    }

    public int getHfpState() {
        return this.mHfpState;
    }

    public String getName() {
        if (this.mDevice == null) {
            return "";
        }
        String name = this.mDevice.getName();
        return TextUtils.isEmpty(name) ? this.mDevice.getAddress() : name;
    }

    public String getName(int i, String str) {
        String name = getName();
        try {
            return Utils.subStr(name, i, str);
        } catch (Exception e) {
            e.printStackTrace();
            return name;
        }
    }

    public boolean isAvrcpConnected() {
        return 2 == this.mAvrcpState;
    }

    public boolean isConnected() {
        return isHfpConnected() || isAvrcpConnected();
    }

    public boolean isConnecting() {
        if (this.mHfpState == 1 && this.mAvrcpState == 1) {
            return true;
        }
        return this.mDevice != null && this.mDevice.getBondState() == 11;
    }

    public boolean isHfpConnected() {
        return 2 == this.mHfpState;
    }

    public void setAvrcpState(int i) {
        this.mAvrcpState = i;
    }

    public void setDevice(BluetoothDevice bluetoothDevice) {
        this.mDevice = bluetoothDevice;
    }

    public void setDeviceItemState(BtDeviceItemState btDeviceItemState) {
        this.deviceItemState = btDeviceItemState;
    }

    public void setHfpState(int i) {
        this.mHfpState = i;
    }

    public String toString() {
        return "device:" + this.mDevice + ",hfp:" + this.mHfpState + ",avrcp:" + this.mAvrcpState;
    }
}
