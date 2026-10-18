package com.yftech.settings;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.yftech.settings.manager.BluetoothManager;
import com.yftech.settings.manager.CarAssistantManager;
import com.yftech.settings.manager.CarDashboardManager;
import com.yftech.settings.manager.CarDriveModeManager;
import com.yftech.settings.manager.CarParkingManager;
import com.yftech.settings.manager.CarPartsManager;
import com.yftech.settings.manager.LinkCarplayManager;
import com.yftech.settings.manager.LinkHicarManager;
import com.yftech.settings.manager.SettingsManager;
import com.yftech.settings.manager.SoundManager;
import com.yftech.settings.manager.SoundVolumeManager;
import com.yftech.settings.manager.VoiceSettingsManager;
import com.yftech.settings.manager.WlanManager;
import com.yftech.settings.utils.ConfigUtils;
import com.yftech.settings.utils.LogUtil;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class SettingsApp extends Application {
    private static final String TAG = "SettingsApp";
    private static SettingsApp mSelf;
    public List<Activity> mActivityList = new ArrayList();

    public static SettingsApp getInstance() {
        return mSelf;
    }

    public void addActivity(Activity activity) {
        if (this.mActivityList.contains(activity)) {
            return;
        }
        this.mActivityList.add(activity);
    }

    public void clearActivityList() {
        for (int size = this.mActivityList.size() - 1; size >= 0; size--) {
            this.mActivityList.get(size).finish();
        }
        this.mActivityList.clear();
    }

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        mSelf = this;
        LogUtil.i(TAG, "settings app start");
        ConfigUtils.getInstance().init();
        Fresco.initialize(this);
        BluetoothManager.getInstance().init(this);
        CarAssistantManager.getInstance().init(this);
        CarDashboardManager.getInstance().init(this);
        CarDriveModeManager.getInstance().init(this);
        CarParkingManager.getInstance().init(this);
        CarPartsManager.getInstance().init(this);
        LinkCarplayManager.getInstance().init();
        LinkHicarManager.getInstance().init();
        SettingsManager.getInstance().init(this);
        SoundManager.getInstance().init(this);
        SoundVolumeManager.getInstance().init(this);
        VoiceSettingsManager.getInstance().init(this);
        WlanManager.getInstance().init(this);
        registerActivityLifecycleCallbacks(new Application.ActivityLifecycleCallbacks() { // from class: com.yftech.settings.SettingsApp.1
            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityCreated(Activity activity, Bundle bundle) {
                LogUtil.i(SettingsApp.TAG, "Stack->Created->" + activity.getClass().getSimpleName() + "taskid=" + activity.getTaskId());
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityDestroyed(Activity activity) {
                LogUtil.i(SettingsApp.TAG, "Stack->Destroyed->" + activity.getClass().getSimpleName() + "taskid=" + activity.getTaskId());
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityPaused(Activity activity) {
                LogUtil.i(SettingsApp.TAG, "Stack->Paused->" + activity.getClass().getSimpleName() + "taskid=" + activity.getTaskId());
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityResumed(Activity activity) {
                LogUtil.i(SettingsApp.TAG, "Stack->Resumed->" + activity.getClass().getSimpleName() + "taskid=" + activity.getTaskId());
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
                LogUtil.i(SettingsApp.TAG, "'Stack->SaveInstanceState->" + activity.getClass().getSimpleName() + "taskid=" + activity.getTaskId());
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStarted(Activity activity) {
                LogUtil.i(SettingsApp.TAG, "Stack->Started->" + activity.getClass().getSimpleName() + "taskid=" + activity.getTaskId());
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStopped(Activity activity) {
                LogUtil.i(SettingsApp.TAG, "Stack->Stopped->" + activity.getClass().getSimpleName() + "taskid=" + activity.getTaskId());
            }
        });
    }

    @Override // android.app.Application, android.content.ComponentCallbacks
    public void onLowMemory() {
        super.onLowMemory();
        LogUtil.i(TAG, "onLowMemory");
    }

    @Override // android.app.Application
    public void onTerminate() {
        BluetoothManager.getInstance().deInit();
        CarAssistantManager.getInstance().deInit();
        CarDashboardManager.getInstance().deInit();
        CarDriveModeManager.getInstance().deInit();
        CarParkingManager.getInstance().deInit();
        CarPartsManager.getInstance().deInit();
        LinkCarplayManager.getInstance().deInit();
        LinkHicarManager.getInstance().deInit();
        SettingsManager.getInstance().deInit();
        SoundManager.getInstance().deInit();
        SoundVolumeManager.getInstance().deInit();
        VoiceSettingsManager.getInstance().deInit();
        WlanManager.getInstance().deInit();
        super.onTerminate();
    }

    public void removeActivity(Activity activity) {
        this.mActivityList.remove(activity);
    }
}
