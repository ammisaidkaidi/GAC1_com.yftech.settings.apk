package com.yftech.settings.manager;

import android.content.Context;
import android.provider.Settings;
import com.yftech.settings.CommonConstant;
import com.yftech.settings.utils.LogUtil;
import com.yftech.vehicle.internal.adapter.IBaseApi;
import com.yftech.vehicle.sdk.CarConfig;
import com.yftech.vehicle.sdk.HostConfig;

/* JADX INFO: loaded from: classes.dex */
public class CarParkingManager extends BaseManager<Function> {
    private static final String REVERSING_RADAR_ALARM_TONE_STATE = "reversing_radar_alarm_tone_state";
    private static final int REVERSING_RADAR_ALARM_TONE_STATE_CLOSE = 0;
    private static final int REVERSING_RADAR_ALARM_TONE_STATE_OPEN = 1;
    private static final String TAG = "CarParkingManager";
    private static CarParkingManager sCarParkingManager;
    private boolean mParkingRadarWarningToneEnabled = true;
    private boolean mParkingVoiceTipEnable = true;
    private boolean mParkingPushEnable = true;
    com.yftech.vehicle.sdk.CarParkingManager.CarParkingListener mCarParkingListener = new com.yftech.vehicle.sdk.CarParkingManager.CarParkingListener() { // from class: com.yftech.settings.manager.CarParkingManager.1
        @Override // com.yftech.vehicle.sdk.CarParkingManager.CarParkingListener
        public void onParkingRadarAlarmEnableStateChanged(IBaseApi.EnableState enableState) {
            super.onParkingRadarAlarmEnableStateChanged(enableState);
            boolean functionPresent = CarParkingManager.this.getFunctionPresent(Function.PARKING_RADAR_WARNING_TONE_ENABLED);
            LogUtil.i(CarParkingManager.TAG, "onParkingRadarAlarmEnableStateChanged EnableState:" + enableState + " isFunctionPresent：" + functionPresent);
            if (functionPresent) {
                CarParkingManager.this.mParkingRadarWarningToneEnabled = CarParkingManager.this.getValidEnable(enableState, CarParkingManager.this.mParkingRadarWarningToneEnabled);
                CarParkingManager.this.notifyOnEnableChanged(Function.PARKING_RADAR_WARNING_TONE_ENABLED, !CarParkingManager.this.mParkingRadarWarningToneEnabled);
            }
        }

        @Override // com.yftech.vehicle.sdk.CarParkingManager.CarParkingListener
        public void onParkingVoiceSwitchEnableStateChanged(IBaseApi.EnableState enableState) {
            super.onParkingVoiceSwitchEnableStateChanged(enableState);
            super.onParkingRadarAlarmEnableStateChanged(enableState);
            boolean functionPresent = CarParkingManager.this.getFunctionPresent(Function.PARKING_VOICE_TIP_ENABLED);
            LogUtil.i(CarParkingManager.TAG, "onParkingVoiceSwitchEnableStateChanged  EnableState:" + enableState + " isFunctionPresent:" + functionPresent);
            if (functionPresent) {
                CarParkingManager.this.mParkingVoiceTipEnable = CarParkingManager.this.getValidEnable(enableState, CarParkingManager.this.mParkingVoiceTipEnable);
                CarParkingManager.this.notifyOnEnableChanged(Function.PARKING_VOICE_TIP_ENABLED, CarParkingManager.this.mParkingVoiceTipEnable);
            }
        }
    };

    public enum Function {
        UNKNOWN,
        PARKING_RADAR_WARNING_TONE_ENABLED,
        PARKING_BACK_TRACKING_AID_TIP_ENABLED,
        PARKING_BACK_TRACKING_AID_ENABLED,
        PARKING_PUSH_ENABLED,
        PARKING_VOICE_TIP_ENABLED,
        STOP_TIMEOUT_ACTION
    }

    private CarParkingManager() {
    }

    public static synchronized CarParkingManager getInstance() {
        if (sCarParkingManager == null) {
            sCarParkingManager = new CarParkingManager();
        }
        return sCarParkingManager;
    }

    private boolean getParkingAutoParkingPushEnabled() {
        try {
            boolean z = true;
            if (Settings.Global.getInt(getContext().getContentResolver(), CommonConstant.SETTING_PARKING_PUSH_KEY) != 1) {
                z = false;
            }
            this.mParkingPushEnable = z;
            LogUtil.i(TAG, "getParkingAutoParkingPushEnabled enable:" + this.mParkingPushEnable);
            return this.mParkingPushEnable;
        } catch (Settings.SettingNotFoundException e) {
            e.printStackTrace();
            return this.mParkingPushEnable;
        }
    }

    private boolean getParkingAutoParkingVoiceTipEnabled() {
        IBaseApi.EnableState parkingVoiceSwitchEnableState = com.yftech.vehicle.sdk.CarParkingManager.get().getParkingVoiceSwitchEnableState();
        this.mParkingVoiceTipEnable = getValidEnable(parkingVoiceSwitchEnableState, this.mParkingVoiceTipEnable);
        LogUtil.i(TAG, "getParkingAutoParkingVoiceTipEnabled enableState:" + parkingVoiceSwitchEnableState + " mParkingVoiceTipEnable:" + this.mParkingVoiceTipEnable);
        return true;
    }

    private boolean getParkingBackTrackingAidEnabled() {
        LogUtil.i(TAG, "getParkingBackTrackingAidEnabled enable:false");
        return false;
    }

    private boolean getParkingBackTrackingAidTipEnabled() {
        LogUtil.i(TAG, "getParkingBackTrackingAidTipEnabled enable:false");
        return false;
    }

    private boolean getParkingRadarWarningToneEnabled() {
        IBaseApi.EnableState parkingRadarAlarmEnableState = com.yftech.vehicle.sdk.CarParkingManager.get().getParkingRadarAlarmEnableState();
        this.mParkingRadarWarningToneEnabled = getValidEnable(parkingRadarAlarmEnableState, this.mParkingRadarWarningToneEnabled);
        LogUtil.i(TAG, "getParkingRadarWarningToneEnabled: enableState:" + parkingRadarAlarmEnableState + " mParkingRadarWarningToneEnabled:" + this.mParkingRadarWarningToneEnabled);
        return !this.mParkingRadarWarningToneEnabled;
    }

    private int getReversingRadarAlarmToneState() {
        return Settings.System.getInt(getContext().getContentResolver(), REVERSING_RADAR_ALARM_TONE_STATE, 1);
    }

    private boolean getValidParkingRadarWarningToneEnabled(int i) {
        if (i == 0 || i == 1) {
            this.mParkingRadarWarningToneEnabled = i == 1;
        }
        LogUtil.i(TAG, "getValidParkingRadarWarningToneEnabled value:" + i + ", mParkingRadarWarningToneEnabled:" + this.mParkingRadarWarningToneEnabled);
        return this.mParkingRadarWarningToneEnabled;
    }

    private boolean setParkingAutoParkingPushEnabled(boolean z) {
        return Settings.Global.putInt(getContext().getContentResolver(), CommonConstant.SETTING_PARKING_PUSH_KEY, z ? 1 : 0);
    }

    private boolean setParkingAutoParkingVoiceTipEnabled(boolean z) {
        return com.yftech.vehicle.sdk.CarParkingManager.get().setParkingVoiceSwitchEnabled(z);
    }

    private boolean setParkingBackTrackingAidEnabled(boolean z) {
        return false;
    }

    private boolean setParkingBackTrackingAidTipEnabled(boolean z) {
        return false;
    }

    private boolean setParkingRadarWarningToneEnabled(boolean z) {
        return com.yftech.vehicle.sdk.CarParkingManager.get().performParkingRadarAlarmButtonClick();
    }

    @Override // com.yftech.settings.manager.BaseManager
    public void deInit() {
        super.deInit();
        com.yftech.vehicle.sdk.CarParkingManager.get().unregisterListener(this.mCarParkingListener);
    }

    @Override // com.yftech.settings.manager.BaseManager
    public boolean getEnabled(Function function) {
        switch (function) {
            case PARKING_RADAR_WARNING_TONE_ENABLED:
                return getParkingRadarWarningToneEnabled();
            case PARKING_BACK_TRACKING_AID_TIP_ENABLED:
                return getParkingBackTrackingAidTipEnabled();
            case PARKING_BACK_TRACKING_AID_ENABLED:
                return getParkingBackTrackingAidEnabled();
            case PARKING_PUSH_ENABLED:
                return getParkingAutoParkingPushEnabled();
            case PARKING_VOICE_TIP_ENABLED:
                return getParkingAutoParkingVoiceTipEnabled();
            default:
                return false;
        }
    }

    public boolean getFunctionPresent(Function function) {
        switch (function) {
            case PARKING_RADAR_WARNING_TONE_ENABLED:
                return HostConfig.isRadarSwitchPresent();
            case PARKING_BACK_TRACKING_AID_TIP_ENABLED:
                return false;
            case PARKING_BACK_TRACKING_AID_ENABLED:
                return false;
            case PARKING_PUSH_ENABLED:
                return false;
            case PARKING_VOICE_TIP_ENABLED:
                return CarConfig.isApaVoicePromptButtonPresent();
            default:
                return false;
        }
    }

    @Override // com.yftech.settings.manager.BaseManager
    public void init(Context context) {
        super.init(context);
        com.yftech.vehicle.sdk.CarParkingManager.get().registerListener(this.mCarParkingListener);
    }

    @Override // com.yftech.settings.manager.BaseManager
    public boolean setAction(Function function) {
        boolean zStopTimeout = AnonymousClass2.$SwitchMap$com$yftech$settings$manager$CarParkingManager$Function[function.ordinal()] != 1 ? false : stopTimeout();
        LogUtil.i(TAG, "setAction function:" + function + ", result:" + zStopTimeout);
        return zStopTimeout;
    }

    @Override // com.yftech.settings.manager.BaseManager
    public boolean setEnabled(Function function, boolean z) {
        boolean parkingRadarWarningToneEnabled;
        startTimeout();
        switch (function) {
            case PARKING_RADAR_WARNING_TONE_ENABLED:
                parkingRadarWarningToneEnabled = setParkingRadarWarningToneEnabled(!z);
                break;
            case PARKING_BACK_TRACKING_AID_TIP_ENABLED:
                parkingRadarWarningToneEnabled = setParkingBackTrackingAidTipEnabled(z);
                break;
            case PARKING_BACK_TRACKING_AID_ENABLED:
                parkingRadarWarningToneEnabled = setParkingBackTrackingAidEnabled(z);
                break;
            case PARKING_PUSH_ENABLED:
                stopTimeout();
                parkingRadarWarningToneEnabled = setParkingAutoParkingPushEnabled(z);
                break;
            case PARKING_VOICE_TIP_ENABLED:
                parkingRadarWarningToneEnabled = setParkingAutoParkingVoiceTipEnabled(z);
                break;
            default:
                parkingRadarWarningToneEnabled = false;
                break;
        }
        LogUtil.i(TAG, "setEnabled function:" + function + ", enable:" + z + ", result:" + parkingRadarWarningToneEnabled);
        return parkingRadarWarningToneEnabled;
    }
}
