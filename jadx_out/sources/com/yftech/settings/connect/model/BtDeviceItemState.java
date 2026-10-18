package com.yftech.settings.connect.model;

/* JADX INFO: loaded from: classes.dex */
public class BtDeviceItemState {
    private String address;
    private boolean avrcp;
    private boolean detail;
    private boolean hfp;

    public String getAddress() {
        return this.address;
    }

    public boolean isAvrcp() {
        return this.avrcp;
    }

    public boolean isDetail() {
        return this.detail;
    }

    public boolean isHfp() {
        return this.hfp;
    }

    public void setAddress(String str) {
        this.address = str;
    }

    public void setAvrcp(boolean z) {
        this.avrcp = z;
    }

    public void setDetail(boolean z) {
        this.detail = z;
    }

    public void setHfp(boolean z) {
        this.hfp = z;
    }

    public String toString() {
        return "DeviceItemState{address='" + this.address + "', detail=" + this.detail + ", hfp=" + this.hfp + ", avrcp=" + this.avrcp + '}';
    }
}
