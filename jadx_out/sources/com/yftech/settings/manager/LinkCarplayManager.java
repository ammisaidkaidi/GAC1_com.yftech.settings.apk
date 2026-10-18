package com.yftech.settings.manager;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemProperties;
import com.autochips.carplay.CarplayManager;
import com.yftech.car.phonelink.CarLinkDevice;
import com.yftech.car.phonelink.CarPhoneLinkManager;
import com.yftech.settings.utils.LogUtil;
import com.yftech.vehicle.sdk.HostConfig;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class LinkCarplayManager {
    public static final String CARPLAY_UUID = "2D8D2466E14D451C88BC7301ABEA291A";
    private static final String TAG = "LinkCarplayManager";
    private static LinkCarplayManager sLinkCarplayManager;
    private List<LinkCarplayListener> mLinkCarplayListeners = new ArrayList();
    private CarPhoneLinkManager.CarPhoneLinkCallback mCarPhoneLinkCallback = new CarPhoneLinkManager.CarPhoneLinkCallback() { // from class: com.yftech.settings.manager.LinkCarplayManager.1
        public void onCarLinkDeviceListChanged(String str, List<CarLinkDevice> list) {
            super.onCarLinkDeviceListChanged(str, list);
            LogUtil.i(LinkCarplayManager.TAG, "onCarLinkDeviceListChanged() type:" + str);
            if ("carplay".equals(str)) {
                synchronized (LinkCarplayManager.this.mLinkCarplayListeners) {
                    Iterator it = LinkCarplayManager.this.mLinkCarplayListeners.iterator();
                    while (it.hasNext()) {
                        ((LinkCarplayListener) it.next()).onCarPlayListChanged();
                    }
                }
            }
        }
    };

    public interface LinkCarplayListener {
        void onCarPlayListChanged();
    }

    private LinkCarplayManager() {
    }

    public static synchronized LinkCarplayManager getInstance() {
        if (sLinkCarplayManager == null) {
            sLinkCarplayManager = new LinkCarplayManager();
        }
        return sLinkCarplayManager;
    }

    public void addLinkCarplayListener(LinkCarplayListener linkCarplayListener) {
        if (this.mLinkCarplayListeners.contains(linkCarplayListener)) {
            return;
        }
        this.mLinkCarplayListeners.add(linkCarplayListener);
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
        CarPhoneLinkManager.getInstance().disConnect("carplay");
    }

    public void forget(CarLinkDevice carLinkDevice) {
        LogUtil.i(TAG, "forget() carLinkDevice:" + carLinkDevice.getDeviceName());
        CarPhoneLinkManager.getInstance().forgetCarLinkDevice(carLinkDevice);
    }

    public List<CarLinkDevice> getAvailableCarLinkDeviceList() {
        return CarPhoneLinkManager.getInstance().getAvailableCarLinkDeviceList("carplay");
    }

    public List<CarLinkDevice> getCarLinkDeviceList() {
        List<CarLinkDevice> carLinkDeviceList = CarPhoneLinkManager.getInstance().getCarLinkDeviceList("carplay");
        LogUtil.i(TAG, "getCarLinkDeviceList() size:" + carLinkDeviceList.size());
        Iterator<CarLinkDevice> it = carLinkDeviceList.iterator();
        while (it.hasNext()) {
            LogUtil.i(TAG, "getCarLinkDeviceList() " + it.next().toString());
        }
        return carLinkDeviceList;
    }

    public void init() {
        LogUtil.i(TAG, "init()");
        CarPhoneLinkManager.getInstance().registerCarPhoneLinkCallback(this.mCarPhoneLinkCallback, new Handler(Looper.getMainLooper()));
    }

    public boolean isCarplayPresent() {
        return HostConfig.isCarplayPresent();
    }

    public boolean isSupportWirelessCarplay() {
        return SystemProperties.getInt("persist.carplay.support.wireless", 1) == 1;
    }

    public void removeLinkCarplayListener(LinkCarplayListener linkCarplayListener) {
        if (this.mLinkCarplayListeners.contains(linkCarplayListener)) {
            this.mLinkCarplayListeners.remove(linkCarplayListener);
        }
    }

    public void startDiscover() {
        CarplayManager defaultManager = CarplayManager.getDefaultManager();
        if (defaultManager != null) {
            LogUtil.i(TAG, "startDiscover() ret:" + defaultManager.startDiscover());
        }
    }

    public void stopDiscover() {
        CarplayManager defaultManager = CarplayManager.getDefaultManager();
        if (defaultManager != null) {
            LogUtil.i(TAG, "stopDiscover() ret:" + defaultManager.stopDiscover());
        }
    }
}
