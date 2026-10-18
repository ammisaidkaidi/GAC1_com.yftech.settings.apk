package com.yftech.settings.manager;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.yftech.car.phonelink.CarLinkDevice;
import com.yftech.car.phonelink.CarPhoneLinkManager;
import com.yftech.settings.utils.LogUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class LinkHicarManager {
    private static final String TAG = "LinkHicarManager";
    private static LinkHicarManager sLinkHicarManager;
    private final List<LinkHicarListener> mLinkHicarListeners = new ArrayList();
    private CarPhoneLinkManager.CarPhoneLinkCallback mCarPhoneLinkCallback = new CarPhoneLinkManager.CarPhoneLinkCallback() { // from class: com.yftech.settings.manager.LinkHicarManager.1
        public void onCarLinkDeviceListChanged(String str, List<CarLinkDevice> list) {
            super.onCarLinkDeviceListChanged(str, list);
            LogUtil.i(LinkHicarManager.TAG, "onCarLinkDeviceListChanged() type:" + str);
            if ("hicar".equals(str)) {
                synchronized (LinkHicarManager.this.mLinkHicarListeners) {
                    Iterator it = LinkHicarManager.this.mLinkHicarListeners.iterator();
                    while (it.hasNext()) {
                        ((LinkHicarListener) it.next()).onHiCarListChanged();
                    }
                }
            }
        }
    };

    public interface LinkHicarListener {
        void onHiCarListChanged();
    }

    private LinkHicarManager() {
    }

    public static synchronized LinkHicarManager getInstance() {
        if (sLinkHicarManager == null) {
            sLinkHicarManager = new LinkHicarManager();
        }
        return sLinkHicarManager;
    }

    public void addLinkHicarListener(LinkHicarListener linkHicarListener) {
        if (this.mLinkHicarListeners.contains(linkHicarListener)) {
            return;
        }
        this.mLinkHicarListeners.add(linkHicarListener);
    }

    public void connect(CarLinkDevice carLinkDevice) {
        LogUtil.i(TAG, "connect() carLinkDevice:" + carLinkDevice.getDeviceName());
        CarPhoneLinkManager.getInstance().connectCarLinkDevice(carLinkDevice);
    }

    public void deInit() {
        LogUtil.i(TAG, "deInit()");
        CarPhoneLinkManager.getInstance().unregisterCarPhoneLinkCallback(this.mCarPhoneLinkCallback);
    }

    public void disconnect(CarLinkDevice carLinkDevice) {
        LogUtil.i(TAG, "disconnect() carLinkDevice:" + carLinkDevice.getDeviceName());
        CarPhoneLinkManager.getInstance().disConnect("hicar");
    }

    public List<CarLinkDevice> getCarLinkDeviceList() {
        List<CarLinkDevice> carLinkDeviceList = CarPhoneLinkManager.getInstance().getCarLinkDeviceList("hicar");
        LogUtil.i(TAG, "getCarLinkDeviceList() size:" + carLinkDeviceList.size());
        Iterator<CarLinkDevice> it = carLinkDeviceList.iterator();
        while (it.hasNext()) {
            LogUtil.i(TAG, "getCarLinkDeviceList() " + it.next().toString());
        }
        return carLinkDeviceList;
    }

    public void ignore(CarLinkDevice carLinkDevice) {
        LogUtil.i(TAG, "forget() carLinkDevice:" + carLinkDevice.getDeviceName());
        CarPhoneLinkManager.getInstance().forgetCarLinkDevice(carLinkDevice);
    }

    public void init() {
        LogUtil.i(TAG, "init()");
        CarPhoneLinkManager.getInstance().registerCarPhoneLinkCallback(this.mCarPhoneLinkCallback, new Handler(Looper.getMainLooper()));
    }

    public boolean isConnected() {
        return "hicar".equals(CarPhoneLinkManager.getInstance().getConnectedLinkStatus());
    }

    public boolean isHicarPresent() {
        return false;
    }

    public void removeHicarWhenRemoveBluetooth(String str) {
        if (TextUtils.isEmpty(str)) {
            LogUtil.i(TAG, "removeHicarWhenRemoveBluetooth() address is empty");
            return;
        }
        LogUtil.i(TAG, "removeHicarWhenRemoveBluetooth() address:" + str);
        for (CarLinkDevice carLinkDevice : getCarLinkDeviceList()) {
            if (str.equals(carLinkDevice.getMacAddress())) {
                ignore(carLinkDevice);
                return;
            }
        }
    }

    public void removeLinkHicarListener(LinkHicarListener linkHicarListener) {
        if (this.mLinkHicarListeners.contains(linkHicarListener)) {
            this.mLinkHicarListeners.remove(linkHicarListener);
        }
    }

    public void requestNewConnect() {
        LogUtil.i(TAG, "requestNewConnect() result:" + CarPhoneLinkManager.getInstance().requestNewConnect());
    }
}
