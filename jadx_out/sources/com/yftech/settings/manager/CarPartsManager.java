package com.yftech.settings.manager;

import android.content.Context;
import android.util.Log;
import com.yftech.car.input.CarInputManager;
import com.yftech.settings.utils.LogUtil;
import com.yftech.vehicle.internal.adapter.IAirCondition;
import com.yftech.vehicle.internal.adapter.IBaseApi;
import com.yftech.vehicle.internal.adapter.ICarConfig;
import com.yftech.vehicle.internal.adapter.ICarDoor;
import com.yftech.vehicle.internal.adapter.ICarSettings;
import com.yftech.vehicle.sdk.AirConditionManager;
import com.yftech.vehicle.sdk.CarConfig;
import com.yftech.vehicle.sdk.CarDoorManager;
import com.yftech.vehicle.sdk.CarLightManager;
import com.yftech.vehicle.sdk.CarSettingsManager;
import com.yftech.vehicle.sdk.CarWindowManager;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class CarPartsManager extends BaseManager<Function> {
    private static final int REREAD_COUNT_MAX = 2;
    private static final String TAG = "CarPartsManager";
    private static CarPartsManager sCarPartsManager;
    private int[] STEERING_WHEEL_ASTERISK_KEY_TYPE;
    private ICarDoor.RemoteUnlockMode[] REMOTE_UNLOCK_MODE = {ICarDoor.RemoteUnlockMode.ALL_DOORS, ICarDoor.RemoteUnlockMode.DRIVER_DOOR};
    private IAirCondition.FanSpeed[] AC_FAN_SPEED_OF_AUTO_MODE = {IAirCondition.FanSpeed.LOW, IAirCondition.FanSpeed.NORMAL, IAirCondition.FanSpeed.HIGH};
    private IAirCondition.ComfortCurveMode[] AC_COMFORT_CURVE_MODE = {IAirCondition.ComfortCurveMode.SOFT, IAirCondition.ComfortCurveMode.NORMAL, IAirCondition.ComfortCurveMode.FAST};
    private ICarDoor.PEPSAutoTrunkOpenState[] PEPS_AUTO_TRUNK_OPEN = {ICarDoor.PEPSAutoTrunkOpenState.NOT_ACTIVE, ICarDoor.PEPSAutoTrunkOpenState.SATO_ACTIVE, ICarDoor.PEPSAutoTrunkOpenState.SATO_AND_SOUNDREMINDER_ACTIVE};
    private ICarDoor.PSDDoorSpeed[] PSD_DOOR_SPEED = {ICarDoor.PSDDoorSpeed.LOW_SPEED, ICarDoor.PSDDoorSpeed.HIGH_SPEED};
    private boolean[] PSD_DOOR_MODE = {false, true};
    private int[] PARKING_AID_VOLUME_TYPE = {0, 1, 2};
    private int mRemoteUnlockModeOption = 0;
    private int mAcFanSpeedOfAutoModeOption = 2;
    private int mAcComfortCurveModeOption = 1;
    private int mPepsAutoTrunkOpenOption = 0;
    private int mPsdDoorSpeedOption = 1;
    private int mPsdDoorModeOption = 1;
    private boolean mAcAirCirculationModeOfAutoModeEnabled = false;
    private boolean mAutoWiperModeEnabled = true;
    private boolean mAutoUnlockEnabled = true;
    private int mParkingAidVolumeOption = 1;
    private int mAsteriskKeyOption = 0;
    private boolean mIHBCEnable = true;
    private boolean mPEPSWalkAwayLockEnable = true;
    private boolean mPEPSUnlockEnable = true;
    private boolean mSpeedAutoLockEnable = false;
    private boolean mETCEnable = true;
    private boolean mSunroofWindowAutoCloseEnable = false;
    private boolean mOSRMAutoFoldEnable = true;
    private boolean mHeadLightDelayEnable = false;
    private boolean mLockUnlockSoundEnable = true;
    private boolean mAVASEnable = true;
    private boolean mAcAirSelfDryingEnable = false;
    private boolean mAirUnlockVentilationEnable = false;
    private boolean mOSRMTurnDownEnable = false;
    private boolean mWirelessChargingEnable = true;
    private CarWindowManager.CarWindowListener mCarWindowListener = new CarWindowManager.CarWindowListener() { // from class: com.yftech.settings.manager.CarPartsManager.1
        @Override // com.yftech.vehicle.sdk.CarWindowManager.CarWindowListener
        public void onSunroofWindowAutoCloseEnableStateChanged(IBaseApi.EnableState enableState) {
            super.onSunroofWindowAutoCloseEnableStateChanged(enableState);
            boolean functionPresent = CarPartsManager.this.getFunctionPresent(Function.SUNROOF_WINDOW_AUTO_CLOSE_ENABLED);
            LogUtil.i(CarPartsManager.TAG, "onSunroofWindowAutoCloseStateChanged EnabledState:" + enableState + " isFunctionPresent:" + functionPresent);
            if (functionPresent) {
                CarPartsManager.this.mSunroofWindowAutoCloseEnable = CarPartsManager.this.getValidEnable(enableState, CarPartsManager.this.mSunroofWindowAutoCloseEnable);
                CarPartsManager.this.notifyOnEnableChanged(Function.SUNROOF_WINDOW_AUTO_CLOSE_ENABLED, CarPartsManager.this.mSunroofWindowAutoCloseEnable);
            }
        }
    };
    private CarDoorManager.CarDoorListener mCarDoorListener = new CarDoorManager.CarDoorListener() { // from class: com.yftech.settings.manager.CarPartsManager.2
        @Override // com.yftech.vehicle.sdk.CarDoorManager.CarDoorListener
        public void onAutoUnlockChanged(ICarDoor.AutoUnlockState autoUnlockState) {
            super.onAutoUnlockChanged(autoUnlockState);
            boolean functionPresent = CarPartsManager.this.getFunctionPresent(Function.AUTO_UNLOCK_ENABLED);
            LogUtil.i(CarPartsManager.TAG, "onAutoUnlockChanged state:" + autoUnlockState + " isFunctionPresent:" + functionPresent);
            if (functionPresent) {
                CarPartsManager.this.notifyOnEnableChanged(Function.AUTO_UNLOCK_ENABLED, CarPartsManager.this.getValidAutoUnlockEnabled(autoUnlockState));
            }
        }

        @Override // com.yftech.vehicle.sdk.CarDoorManager.CarDoorListener
        public void onLockUnlockSoundEnableStateChanged(IBaseApi.EnableState enableState) {
            super.onLockUnlockSoundEnableStateChanged(enableState);
            boolean functionPresent = CarPartsManager.this.getFunctionPresent(Function.LOCK_UNLOCK_SOUND_ENABLED);
            LogUtil.i(CarPartsManager.TAG, "onLockUnlockSoundStateChanged EnableState:" + enableState + " isFunctionPresent:" + functionPresent);
            if (functionPresent) {
                CarPartsManager.this.mLockUnlockSoundEnable = CarPartsManager.this.getValidEnable(enableState, CarPartsManager.this.mLockUnlockSoundEnable);
                CarPartsManager.this.notifyOnEnableChanged(Function.LOCK_UNLOCK_SOUND_ENABLED, CarPartsManager.this.mLockUnlockSoundEnable);
            }
        }

        @Override // com.yftech.vehicle.sdk.CarDoorManager.CarDoorListener
        public void onPEPSAutoTrunkOpenChanged(ICarDoor.PEPSAutoTrunkOpenState pEPSAutoTrunkOpenState) {
            super.onPEPSAutoTrunkOpenChanged(pEPSAutoTrunkOpenState);
            boolean functionPresent = CarPartsManager.this.getFunctionPresent(Function.PEPS_AUTO_TRUNK_OPEN_OPTION);
            LogUtil.i(CarPartsManager.TAG, "onPEPSAutoTrunkOpenChanged state:" + pEPSAutoTrunkOpenState + " isFunctionPresent:" + functionPresent);
            if (functionPresent) {
                CarPartsManager.this.notifyOnOptionChanged(Function.PEPS_AUTO_TRUNK_OPEN_OPTION, CarPartsManager.this.getValidPepsAutoTrunkOpenOption(pEPSAutoTrunkOpenState));
            }
        }

        @Override // com.yftech.vehicle.sdk.CarDoorManager.CarDoorListener
        public void onPEPSUnlockEnableStateChanged(IBaseApi.EnableState enableState) {
            super.onPEPSUnlockEnableStateChanged(enableState);
            boolean functionPresent = CarPartsManager.this.getFunctionPresent(Function.PEPS_UNLOCK_ENABLED);
            LogUtil.i(CarPartsManager.TAG, "onPEPSUnlockEnableStateChanged EnableState:" + enableState + " isFunctionPresent:" + functionPresent);
            if (functionPresent) {
                CarPartsManager.this.mPEPSUnlockEnable = CarPartsManager.this.getValidEnable(enableState, CarPartsManager.this.mPEPSUnlockEnable);
                CarPartsManager.this.notifyOnEnableChanged(Function.PEPS_UNLOCK_ENABLED, CarPartsManager.this.mPEPSUnlockEnable);
            }
        }

        @Override // com.yftech.vehicle.sdk.CarDoorManager.CarDoorListener
        public void onPEPSWalkAwayLockEnableStateChanged(IBaseApi.EnableState enableState) {
            super.onPEPSWalkAwayLockEnableStateChanged(enableState);
            boolean functionPresent = CarPartsManager.this.getFunctionPresent(Function.PEPS_WALK_AWAY_LOCK_ENABLED);
            LogUtil.i(CarPartsManager.TAG, "onPEPSWalkAwayLockEnableStateChanged EnableState:" + enableState + " isFunctionPresent:" + functionPresent);
            if (functionPresent) {
                CarPartsManager.this.mPEPSWalkAwayLockEnable = CarPartsManager.this.getValidEnable(enableState, CarPartsManager.this.mPEPSWalkAwayLockEnable);
                CarPartsManager.this.notifyOnEnableChanged(Function.PEPS_WALK_AWAY_LOCK_ENABLED, CarPartsManager.this.mPEPSWalkAwayLockEnable);
            }
        }

        @Override // com.yftech.vehicle.sdk.CarDoorManager.CarDoorListener
        public void onPSDDoorSpeedLChanged(ICarDoor.PSDDoorSpeed pSDDoorSpeed) {
            super.onPSDDoorSpeedLChanged(pSDDoorSpeed);
            boolean functionPresent = CarPartsManager.this.getFunctionPresent(Function.PSD_DOOR_SPEED_OPTION);
            LogUtil.i(CarPartsManager.TAG, "onPSDDoorSpeedLChanged speed:" + pSDDoorSpeed + " isFunctionPresent:" + functionPresent);
            if (functionPresent) {
                CarPartsManager.this.mIsPSDDoorSpeedLChanged = true;
                CarPartsManager.this.startWaitPSDDoorSpeedCallbackTimeout();
            }
        }

        @Override // com.yftech.vehicle.sdk.CarDoorManager.CarDoorListener
        public void onPSDDoorSpeedRChanged(ICarDoor.PSDDoorSpeed pSDDoorSpeed) {
            super.onPSDDoorSpeedRChanged(pSDDoorSpeed);
            boolean functionPresent = CarPartsManager.this.getFunctionPresent(Function.PSD_DOOR_SPEED_OPTION);
            LogUtil.i(CarPartsManager.TAG, "onPSDDoorSpeedRChanged speed:" + pSDDoorSpeed + " isFunctionPresent:" + functionPresent);
            if (functionPresent) {
                CarPartsManager.this.mIsPSDDoorSpeedRChanged = true;
                CarPartsManager.this.startWaitPSDDoorSpeedCallbackTimeout();
            }
        }

        @Override // com.yftech.vehicle.sdk.CarDoorManager.CarDoorListener
        public void onRemoteUnlockModeChanged(ICarDoor.RemoteUnlockMode remoteUnlockMode) {
            super.onRemoteUnlockModeChanged(remoteUnlockMode);
            boolean functionPresent = CarPartsManager.this.getFunctionPresent(Function.REMOTE_UNLOCK_MODE_OPTION);
            LogUtil.i(CarPartsManager.TAG, "onRemoteUnlockModeChanged mode:" + remoteUnlockMode + " isFunctionPresent:" + functionPresent);
            if (functionPresent) {
                CarPartsManager.this.notifyOnOptionChanged(Function.REMOTE_UNLOCK_MODE_OPTION, CarPartsManager.this.getValidRemoteUnlockModeOption(remoteUnlockMode));
            }
        }

        @Override // com.yftech.vehicle.sdk.CarDoorManager.CarDoorListener
        public void onSlidingDoorModeAutoStateChanged(boolean z) {
            super.onSlidingDoorModeAutoStateChanged(z);
            boolean functionPresent = CarPartsManager.this.getFunctionPresent(Function.PSD_DOOR_MODE_OPTION);
            LogUtil.i(CarPartsManager.TAG, "onSlidingDoorModeAutoStateChanged isEnabled:" + z + " isFunctionPresent:" + functionPresent);
            if (functionPresent) {
                CarPartsManager.this.notifyOnOptionChanged(Function.PSD_DOOR_MODE_OPTION, CarPartsManager.this.getValidPsdDoorModeOption(z));
            }
        }

        @Override // com.yftech.vehicle.sdk.CarDoorManager.CarDoorListener
        public void onSpeedAutoLockEnableStateChanged(IBaseApi.EnableState enableState) {
            super.onSpeedAutoLockEnableStateChanged(enableState);
            boolean functionPresent = CarPartsManager.this.getFunctionPresent(Function.SPEED_AUTO_LOCK_ENABLED);
            LogUtil.i(CarPartsManager.TAG, "onSpeedAutoLockStateChanged EnableState:" + enableState + " isFunctionPresent:" + functionPresent);
            if (functionPresent) {
                CarPartsManager.this.mSpeedAutoLockEnable = CarPartsManager.this.getValidEnable(enableState, CarPartsManager.this.mSpeedAutoLockEnable);
                CarPartsManager.this.notifyOnEnableChanged(Function.SPEED_AUTO_LOCK_ENABLED, CarPartsManager.this.mSpeedAutoLockEnable);
            }
        }
    };
    private CarLightManager.CarLightListener mCarLightListener = new CarLightManager.CarLightListener() { // from class: com.yftech.settings.manager.CarPartsManager.3
        @Override // com.yftech.vehicle.sdk.CarLightManager.CarLightListener
        public void onHeadLightDelayEnableStateChanged(IBaseApi.EnableState enableState) {
            super.onHeadLightDelayEnableStateChanged(enableState);
            boolean functionPresent = CarPartsManager.this.getFunctionPresent(Function.HEAD_LIGHT_DELAY_ENABLED);
            LogUtil.i(CarPartsManager.TAG, "onHeadLightDelayStateChanged EnabledState:" + enableState + " isFunctionPresent:" + functionPresent);
            if (functionPresent) {
                CarPartsManager.this.mHeadLightDelayEnable = CarPartsManager.this.getValidEnable(enableState, CarPartsManager.this.mHeadLightDelayEnable);
                CarPartsManager.this.notifyOnEnableChanged(Function.HEAD_LIGHT_DELAY_ENABLED, CarPartsManager.this.mHeadLightDelayEnable);
            }
        }

        @Override // com.yftech.vehicle.sdk.CarLightManager.CarLightListener
        public void onIHBCEnableStateChanged(IBaseApi.EnableState enableState) {
            super.onIHBCEnableStateChanged(enableState);
            boolean functionPresent = CarPartsManager.this.getFunctionPresent(Function.IHBC_ENABLED);
            LogUtil.i(CarPartsManager.TAG, "onIHBCStateChanged EnabledState:" + enableState + " isFunctionPresent:" + functionPresent);
            if (functionPresent) {
                CarPartsManager.this.mIHBCEnable = CarPartsManager.this.getValidEnable(enableState, CarPartsManager.this.mIHBCEnable);
                CarPartsManager.this.notifyOnEnableChanged(Function.IHBC_ENABLED, CarPartsManager.this.mIHBCEnable);
            }
        }
    };
    private CarSettingsManager.CarSettingsListener mCarSettingsListener = new CarSettingsManager.CarSettingsListener() { // from class: com.yftech.settings.manager.CarPartsManager.4
        @Override // com.yftech.vehicle.sdk.CarSettingsManager.CarSettingsListener
        public void onAVASEnableStateChanged(IBaseApi.EnableState enableState) {
            super.onAVASEnableStateChanged(enableState);
            boolean functionPresent = CarPartsManager.this.getFunctionPresent(Function.AVAS_ENABLED);
            LogUtil.i(CarPartsManager.TAG, "onAVASStateChanged isEnabled:" + enableState + " isFunctionPresent:" + functionPresent);
            if (functionPresent) {
                CarPartsManager.this.mAVASEnable = CarPartsManager.this.getValidEnable(enableState, CarPartsManager.this.mAVASEnable);
                CarPartsManager.this.notifyOnEnableChanged(Function.AVAS_ENABLED, CarPartsManager.this.mAVASEnable);
            }
        }

        @Override // com.yftech.vehicle.sdk.CarSettingsManager.CarSettingsListener
        public void onAutoWiperModeChanged(ICarSettings.AutoWiperMode autoWiperMode) {
            super.onAutoWiperModeChanged(autoWiperMode);
            boolean functionPresent = CarPartsManager.this.getFunctionPresent(Function.AUTO_WIPER_MODE_ENABLED);
            LogUtil.i(CarPartsManager.TAG, "onAutoWiperModeChanged mode:" + autoWiperMode + " isFunctionPresent:" + functionPresent);
            if (functionPresent) {
                CarPartsManager.this.notifyOnEnableChanged(Function.AUTO_WIPER_MODE_ENABLED, CarPartsManager.this.getValidAutoWiperModeEnabled(autoWiperMode));
            }
        }

        @Override // com.yftech.vehicle.sdk.CarSettingsManager.CarSettingsListener
        public void onDoorHandleElectricHideStateChanged(boolean z) {
            super.onDoorHandleElectricHideStateChanged(z);
            boolean functionPresent = CarPartsManager.this.getFunctionPresent(Function.ELECTRIC_HIDDEN_DOOR_HANDLE_ENABLE);
            LogUtil.i(CarPartsManager.TAG, "onDoorHandleElectricHideStateChanged: isEnable:" + z);
            if (functionPresent) {
                CarPartsManager.this.notifyOnEnableChanged(Function.ELECTRIC_HIDDEN_DOOR_HANDLE_ENABLE, z);
            }
        }

        @Override // com.yftech.vehicle.sdk.CarSettingsManager.CarSettingsListener
        public void onDriverEasyEntryAndExitStateChanged(boolean z) {
            super.onDriverEasyEntryAndExitStateChanged(z);
            boolean functionPresent = CarPartsManager.this.getFunctionPresent(Function.SEAT_DRIVER_CONVENIENT_ACCESS_ENABLED);
            LogUtil.i(CarPartsManager.TAG, "onDriverEasyEntryAndExitStateChanged: isEnable" + z);
            if (functionPresent) {
                CarPartsManager.this.notifyOnEnableChanged(Function.SEAT_DRIVER_CONVENIENT_ACCESS_ENABLED, z);
            }
        }

        @Override // com.yftech.vehicle.sdk.CarSettingsManager.CarSettingsListener
        public void onETCEnableStateChanged(IBaseApi.EnableState enableState) {
            super.onETCEnableStateChanged(enableState);
            boolean functionPresent = CarPartsManager.this.getFunctionPresent(Function.ETC_ENABLED);
            LogUtil.i(CarPartsManager.TAG, "onETCStateChanged EnabledState:" + enableState + " isFunctionPresent:" + functionPresent);
            if (functionPresent) {
                CarPartsManager.this.mETCEnable = CarPartsManager.this.getValidEnable(enableState, CarPartsManager.this.mETCEnable);
                CarPartsManager.this.notifyOnEnableChanged(Function.ETC_ENABLED, CarPartsManager.this.mETCEnable);
            }
        }

        @Override // com.yftech.vehicle.sdk.CarSettingsManager.CarSettingsListener
        public void onFrontWiperServicePositionStateChanged(boolean z) {
            super.onFrontWiperServicePositionStateChanged(z);
            boolean functionPresent = CarPartsManager.this.getFunctionPresent(Function.FRONT_WIPER_SERVICE_POSITION_ACTION);
            LogUtil.i(CarPartsManager.TAG, "onFrontWiperServicePositionStateChanged isEnabled:" + z + " isFunctionPresent:" + functionPresent);
            if (functionPresent) {
            }
        }

        @Override // com.yftech.vehicle.sdk.CarSettingsManager.CarSettingsListener
        public void onOSRMAutoFoldEnableStateChanged(IBaseApi.EnableState enableState) {
            super.onOSRMAutoFoldEnableStateChanged(enableState);
            boolean functionPresent = CarPartsManager.this.getFunctionPresent(Function.OSRM_AUTO_FOLD_ENABLED);
            LogUtil.i(CarPartsManager.TAG, "onOSRMAutoFoldStateChanged EnabledState:" + enableState + " isFunctionPresent:" + functionPresent);
            if (functionPresent) {
                CarPartsManager.this.mOSRMAutoFoldEnable = CarPartsManager.this.getValidEnable(enableState, CarPartsManager.this.mOSRMAutoFoldEnable);
                CarPartsManager.this.notifyOnEnableChanged(Function.OSRM_AUTO_FOLD_ENABLED, CarPartsManager.this.mOSRMAutoFoldEnable);
            }
        }

        @Override // com.yftech.vehicle.sdk.CarSettingsManager.CarSettingsListener
        public void onOSRMRAngleCmdChanged(ICarSettings.OSRMRAngleCmd oSRMRAngleCmd) {
            super.onOSRMRAngleCmdChanged(oSRMRAngleCmd);
            boolean functionPresent = CarPartsManager.this.getFunctionPresent(Function.OSRM_TURN_DOWN_ENABLED);
            LogUtil.i(CarPartsManager.TAG, "onOSRMRAngleCmdChanged: " + oSRMRAngleCmd + " isFunctionPresent:" + functionPresent);
            if (functionPresent) {
                CarPartsManager.this.mOSRMTurnDownEnable = CarPartsManager.this.getValidOSRMTurnDownEnable(oSRMRAngleCmd);
                LogUtil.i(CarPartsManager.TAG, "onOSRMRAngleCmdChanged() mOSRMTurnDownEnable:" + CarPartsManager.this.mOSRMTurnDownEnable);
                CarPartsManager.this.notifyOnEnableChanged(Function.OSRM_TURN_DOWN_ENABLED, CarPartsManager.this.mOSRMTurnDownEnable);
            }
        }

        @Override // com.yftech.vehicle.sdk.CarSettingsManager.CarSettingsListener
        public void onWCMCtlResultChanged(ICarSettings.WCMCtlResult wCMCtlResult) {
            super.onWCMCtlResultChanged(wCMCtlResult);
            LogUtil.i(CarPartsManager.TAG, "onWCMCtlResultChangedonWCMCtlResultChanged: WCMCtlResult" + wCMCtlResult);
            if (CarPartsManager.this.getFunctionPresent(Function.WIRELESS_CHARGING_ENABLED)) {
                CarPartsManager.this.mWirelessChargingEnable = CarPartsManager.this.getWirelessChargingEnable(wCMCtlResult);
                CarPartsManager.this.notifyOnEnableChanged(Function.WIRELESS_CHARGING_ENABLED, CarPartsManager.this.mWirelessChargingEnable);
            }
        }
    };
    private AirConditionManager.AirConditionListener mAirConditionListener = new AirConditionManager.AirConditionListener() { // from class: com.yftech.settings.manager.CarPartsManager.5
        @Override // com.yftech.vehicle.sdk.AirConditionManager.AirConditionListener
        public void onAirCirculationModeOfAutoModeChanged(IAirCondition.AirCirculationMode airCirculationMode) {
            super.onAirCirculationModeOfAutoModeChanged(airCirculationMode);
            boolean functionPresent = CarPartsManager.this.getFunctionPresent(Function.AC_AIR_CIRCULATION_MODE_OF_AUTO_MODE_ENABLED);
            LogUtil.i(CarPartsManager.TAG, "onAirCirculationModeOfAutoModeChanged mode:" + airCirculationMode + " isFunctionPresent:" + functionPresent);
            if (functionPresent) {
                CarPartsManager.this.notifyOnEnableChanged(Function.AC_AIR_CIRCULATION_MODE_OF_AUTO_MODE_ENABLED, CarPartsManager.this.getValidAcAirCirculationModeOfAutoModeEnabled(airCirculationMode));
            }
        }

        @Override // com.yftech.vehicle.sdk.AirConditionManager.AirConditionListener
        public void onAirSelfDryingEnableStateChanged(IBaseApi.EnableState enableState) {
            super.onAirSelfDryingEnableStateChanged(enableState);
            boolean functionPresent = CarPartsManager.this.getFunctionPresent(Function.AC_AUTO_DRYING_ENABLED);
            Log.i(CarPartsManager.TAG, "onAirSelfDryingEnableStateChanged mode:" + enableState + " isFunctionPresent" + functionPresent);
            if (functionPresent) {
                CarPartsManager.this.mAcAirSelfDryingEnable = CarPartsManager.this.getValidEnable(enableState, CarPartsManager.this.mAcAirSelfDryingEnable);
                CarPartsManager.this.notifyOnEnableChanged(Function.AC_AUTO_DRYING_ENABLED, CarPartsManager.this.mAcAirSelfDryingEnable);
            }
        }

        @Override // com.yftech.vehicle.sdk.AirConditionManager.AirConditionListener
        public void onAirUnlockVentilationEnableStateChanged(IBaseApi.EnableState enableState) {
            super.onAirUnlockVentilationEnableStateChanged(enableState);
            boolean functionPresent = CarPartsManager.this.getFunctionPresent(Function.AC_AIR_UNLOCK_VENTILATION_ENABLE);
            Log.i(CarPartsManager.TAG, "onAirUnlockVentilationEnableStateChanged mode:" + enableState + " isFunctionPresent" + functionPresent);
            if (functionPresent) {
                CarPartsManager.this.mAirUnlockVentilationEnable = CarPartsManager.this.getValidEnable(enableState, CarPartsManager.this.mAirUnlockVentilationEnable);
                CarPartsManager.this.notifyOnEnableChanged(Function.AC_AIR_UNLOCK_VENTILATION_ENABLE, CarPartsManager.this.mAirUnlockVentilationEnable);
            }
        }

        @Override // com.yftech.vehicle.sdk.AirConditionManager.AirConditionListener
        public void onComfortCurveModeChanged(IAirCondition.ComfortCurveMode comfortCurveMode) {
            super.onComfortCurveModeChanged(comfortCurveMode);
            boolean functionPresent = CarPartsManager.this.getFunctionPresent(Function.AC_COMFORT_CURVE_MODE_OPTION);
            LogUtil.i(CarPartsManager.TAG, "onComfortCurveModeChanged mode:" + comfortCurveMode + " isFunctionPresent:" + functionPresent);
            if (functionPresent) {
                CarPartsManager.this.notifyOnOptionChanged(Function.AC_COMFORT_CURVE_MODE_OPTION, CarPartsManager.this.getValidAcComfortCurveModeOption(comfortCurveMode));
            }
        }

        @Override // com.yftech.vehicle.sdk.AirConditionManager.AirConditionListener
        public void onFanSpeedOfAutoModeChanged(IAirCondition.FanSpeed fanSpeed) {
            super.onFanSpeedOfAutoModeChanged(fanSpeed);
            boolean functionPresent = CarPartsManager.this.getFunctionPresent(Function.AC_FAN_SPEED_OF_AUTO_MODE_OPTION);
            LogUtil.i(CarPartsManager.TAG, "onFanSpeedOfAutoModeChanged speed:" + fanSpeed + " isFunctionPresent:" + functionPresent);
            if (functionPresent) {
                CarPartsManager.this.notifyOnOptionChanged(Function.AC_FAN_SPEED_OF_AUTO_MODE_OPTION, CarPartsManager.this.getValidAcFanSpeedOfAutoModeOption(fanSpeed));
            }
        }
    };
    private boolean mIsPSDDoorSpeedLChanged = false;
    private boolean mIsPSDDoorSpeedRChanged = false;
    private boolean mStartWaitPSDDoorSpeedCallbackTimeout = false;
    private final Runnable mWaitPSDDoorSpeedCallbackTimeoutRunnable = new Runnable() { // from class: com.yftech.settings.manager.CarPartsManager.6
        @Override // java.lang.Runnable
        public void run() {
            LogUtil.i(CarPartsManager.TAG, "waitPSDDoorSpeedCallbackTimeoutRunnable()");
            CarPartsManager.this.mStartWaitPSDDoorSpeedCallbackTimeout = false;
            CarPartsManager.this.mIsPSDDoorSpeedLChanged = false;
            CarPartsManager.this.mIsPSDDoorSpeedRChanged = false;
            CarPartsManager.this.notifyPSDDoorSpeed();
        }
    };
    private boolean mStartRereadPSDDoorSpeedTimeout = false;
    private final Runnable mRereadPSDDoorSpeedTimeoutRunnable = new Runnable() { // from class: com.yftech.settings.manager.CarPartsManager.7
        @Override // java.lang.Runnable
        public void run() {
            LogUtil.i(CarPartsManager.TAG, "rereadPSDDoorSpeedTimeoutRunnable()");
            CarPartsManager.this.mStartRereadPSDDoorSpeedTimeout = false;
            CarPartsManager.this.notifyPSDDoorSpeed();
        }
    };
    private int mTargetSpeedIndex = -1;
    private int mRereadCount = 0;

    public enum Function {
        UNKNOWN,
        IHBC_ENABLED,
        REMOTE_UNLOCK_MODE_OPTION,
        AUTO_UNLOCK_ENABLED,
        PEPS_WALK_AWAY_LOCK_ENABLED,
        PEPS_UNLOCK_ENABLED,
        SPEED_AUTO_LOCK_ENABLED,
        FRONT_WIPER_SERVICE_POSITION_ACTION,
        ETC_ENABLED,
        SUNROOF_WINDOW_AUTO_CLOSE_ENABLED,
        OSRM_AUTO_FOLD_ENABLED,
        OSRM_TURN_DOWN_ENABLED,
        OSRM_TURN_DOWN_VALUE,
        AC_FAN_SPEED_OF_AUTO_MODE_OPTION,
        AC_AIR_CIRCULATION_MODE_OF_AUTO_MODE_ENABLED,
        AC_COMFORT_CURVE_MODE_OPTION,
        AC_AUTO_DRYING_ENABLED,
        AC_AIR_UNLOCK_VENTILATION_ENABLE,
        HEAD_LIGHT_DELAY_ENABLED,
        PEPS_AUTO_TRUNK_OPEN_OPTION,
        AUTO_WINDOW_UP_IN_RAIN_ENABLED,
        AUTO_WIPER_MODE_ENABLED,
        SECOND_ROW_COLD_PERMISSION_LEFT_ENABLED,
        SECOND_ROW_COLD_PERMISSION_RIGHT_ENABLED,
        PSD_DOOR_SPEED_OPTION,
        PSD_DOOR_MODE_OPTION,
        KEY_REMINDER_ENABLED,
        SEAT_DRIVER_CONVENIENT_ACCESS_ENABLED,
        WIRELESS_CHARGING_ENABLED,
        CONVENIENT_CAR_SEARCH_ENABLED,
        LOCK_UNLOCK_SOUND_ENABLED,
        PARKING_AID_VOLUME_OPTION,
        AVAS_ENABLED,
        STOP_TIMEOUT_ACTION,
        STEERING_WHEEL_ASTERISK_KEY,
        ELECTRIC_HIDDEN_DOOR_HANDLE_ENABLE
    }

    private CarPartsManager() {
    }

    private boolean frontWiperServicePosition() {
        return CarSettingsManager.get().performFrontWiperServicePositionButtonClick();
    }

    private boolean getAVASEnabled() {
        IBaseApi.EnableState aVASEnableState = CarSettingsManager.get().getAVASEnableState();
        this.mAVASEnable = getValidEnable(aVASEnableState, this.mAVASEnable);
        LogUtil.i(TAG, "getAVASEnabled enableState:" + aVASEnableState + " enable:" + this.mAVASEnable);
        return this.mAVASEnable;
    }

    private boolean getAcAutoDryingEnabled() {
        IBaseApi.EnableState airSelfDryingEnableState = AirConditionManager.get().getAirSelfDryingEnableState();
        this.mAcAirSelfDryingEnable = getValidEnable(airSelfDryingEnableState, this.mAcAirSelfDryingEnable);
        LogUtil.i(TAG, "getAcAutoDryingEnabled enableState:" + airSelfDryingEnableState + " enable:" + this.mAcAirSelfDryingEnable);
        return this.mAcAirSelfDryingEnable;
    }

    private boolean getAirCirculationModeOfAutoModeEnabled() {
        return getValidAcAirCirculationModeOfAutoModeEnabled(AirConditionManager.get().getAirCirculationModeOfAutoMode());
    }

    private boolean getAirUnlockVentilationEnable() {
        IBaseApi.EnableState airUnlockVentilationEnableState = AirConditionManager.get().getAirUnlockVentilationEnableState();
        this.mAirUnlockVentilationEnable = getValidEnable(airUnlockVentilationEnableState, this.mAirUnlockVentilationEnable);
        Log.i(TAG, "getAirUnlockVentilationEnable: enableState:" + airUnlockVentilationEnableState + " enable:" + this.mAirUnlockVentilationEnable);
        return this.mAirUnlockVentilationEnable;
    }

    private int getAsteriskKeyOption() {
        return getValidAsteriskKeyOption(CarInputManager.getInstance().getCustomKeyFunction());
    }

    private boolean getAutoUnlockEnabled() {
        return getValidAutoUnlockEnabled(CarDoorManager.get().getAutoUnlock());
    }

    private boolean getAutoWindowUpInRainEnabled() {
        LogUtil.i(TAG, "getAutoWindowUpInRainEnabled enable:false");
        return false;
    }

    private boolean getAutoWiperModeEnabled() {
        return getValidAutoWiperModeEnabled(CarSettingsManager.get().getAutoWiperMode());
    }

    private int getComfortCurveMode() {
        return getValidAcComfortCurveModeOption(AirConditionManager.get().getComfortCurveMode());
    }

    private boolean getConvenientCarSearchEnabled() {
        return false;
    }

    private boolean getETCEnabled() {
        IBaseApi.EnableState eTCEnableState = CarSettingsManager.get().getETCEnableState();
        this.mETCEnable = getValidEnable(eTCEnableState, this.mETCEnable);
        LogUtil.i(TAG, "getETCEnabled: enableState:" + eTCEnableState + " enable:" + this.mETCEnable);
        return this.mETCEnable;
    }

    private boolean getElectricHiddenDoorHandleEnable() {
        return CarSettingsManager.get().isDoorHandleElectricHideEnabled();
    }

    private int getFanSpeedOfAutoMode() {
        return getValidAcFanSpeedOfAutoModeOption(AirConditionManager.get().getFanSpeedOfAutoMode());
    }

    private boolean getFrontWiperServicePositionEnabled() {
        boolean zIsFrontWiperServicePositionEnabled = CarSettingsManager.get().isFrontWiperServicePositionEnabled();
        LogUtil.i(TAG, "getFrontWiperServicePositionEnabled enable:" + zIsFrontWiperServicePositionEnabled);
        return zIsFrontWiperServicePositionEnabled;
    }

    private boolean getHeadLightDelayEnabled() {
        IBaseApi.EnableState headLightDelayEnableState = CarLightManager.get().getHeadLightDelayEnableState();
        this.mHeadLightDelayEnable = getValidEnable(headLightDelayEnableState, this.mHeadLightDelayEnable);
        LogUtil.i(TAG, "getHeadLightDelayEnabled enableState:" + headLightDelayEnableState + " enable:" + this.mHeadLightDelayEnable);
        return this.mHeadLightDelayEnable;
    }

    private boolean getIHBCEnabled() {
        IBaseApi.EnableState iHBCEnableState = CarLightManager.get().getIHBCEnableState();
        this.mIHBCEnable = getValidEnable(iHBCEnableState, this.mIHBCEnable);
        LogUtil.i(TAG, "getIHBCEnabled enableState:" + iHBCEnableState + " enable:" + this.mIHBCEnable);
        return this.mIHBCEnable;
    }

    public static synchronized CarPartsManager getInstance() {
        if (sCarPartsManager == null) {
            sCarPartsManager = new CarPartsManager();
        }
        return sCarPartsManager;
    }

    private boolean getKeyReminderEnabled() {
        return false;
    }

    private boolean getLockUnlockSoundEnabled() {
        IBaseApi.EnableState lockUnlockSoundEnableState = CarDoorManager.get().getLockUnlockSoundEnableState();
        this.mLockUnlockSoundEnable = getValidEnable(lockUnlockSoundEnableState, this.mLockUnlockSoundEnable);
        LogUtil.i(TAG, "getLockUnlockSoundEnabled enableState:" + lockUnlockSoundEnableState + " enable:" + this.mLockUnlockSoundEnable);
        return this.mLockUnlockSoundEnable;
    }

    private boolean getOSRMAutoFoldEnabled() {
        IBaseApi.EnableState oSRMAutoFoldEnableState = CarSettingsManager.get().getOSRMAutoFoldEnableState();
        this.mOSRMAutoFoldEnable = getValidEnable(oSRMAutoFoldEnableState, this.mOSRMAutoFoldEnable);
        LogUtil.i(TAG, "getOSRMAutoFoldEnabled enableState:" + oSRMAutoFoldEnableState + " enable:" + this.mOSRMAutoFoldEnable);
        return this.mOSRMAutoFoldEnable;
    }

    private boolean getOSRMTurnDownEnabled() {
        ICarSettings.OSRMRAngleCmd oSRMRAngleCmd = CarSettingsManager.get().getOSRMRAngleCmd();
        this.mOSRMTurnDownEnable = getValidOSRMTurnDownEnable(oSRMRAngleCmd);
        LogUtil.i(TAG, "getOSRMTurnDownEnabled: OSRMRAngleCmd:" + oSRMRAngleCmd + " mOSRMTurnDownEnable:" + this.mOSRMTurnDownEnable);
        return this.mOSRMTurnDownEnable;
    }

    private int getPEPSAutoTrunkOpen() {
        return getValidPepsAutoTrunkOpenOption(CarDoorManager.get().getPEPSAutoTrunkOpen());
    }

    private boolean getPEPSUnlockEnabled() {
        IBaseApi.EnableState pEPSUnlockEnableState = CarDoorManager.get().getPEPSUnlockEnableState();
        this.mPEPSUnlockEnable = getValidEnable(pEPSUnlockEnableState, this.mPEPSUnlockEnable);
        LogUtil.i(TAG, "getPEPSUnlockEnabled enableState:" + pEPSUnlockEnableState + " enable:" + this.mPEPSUnlockEnable);
        return this.mPEPSUnlockEnable;
    }

    private boolean getPEPSWalkAwayLockEnabled() {
        IBaseApi.EnableState pEPSWalkAwayLockEnableState = CarDoorManager.get().getPEPSWalkAwayLockEnableState();
        this.mPEPSWalkAwayLockEnable = getValidEnable(pEPSWalkAwayLockEnableState, this.mPEPSWalkAwayLockEnable);
        LogUtil.i(TAG, "getPEPSWalkAwayLockEnabled enableState:" + pEPSWalkAwayLockEnableState + " enable:" + this.mPEPSWalkAwayLockEnable);
        return this.mPEPSWalkAwayLockEnable;
    }

    private int getPSDDoorMode() {
        return getValidPsdDoorModeOption(CarDoorManager.get().isSlidingDoorModeAutoEnabled());
    }

    private int getPSDDoorSpeed() {
        return getValidPsdDoorSpeedOption(CarDoorManager.get().getPSDDoorSpeedL(), CarDoorManager.get().getPSDDoorSpeedR());
    }

    private int getRemoteUnlockMode() {
        return getValidRemoteUnlockModeOption(CarDoorManager.get().getRemoteUnlockMode());
    }

    private boolean getSeatDriverConvenientAccessEnabled() {
        return CarSettingsManager.get().isDriverEasyEntryAndExitEnabled();
    }

    private boolean getSecondRowColdPermissionLeftEnabled() {
        LogUtil.i(TAG, "getSecondRowColdPermissionLeftEnabled enable:false");
        return false;
    }

    private boolean getSecondRowColdPermissionRightEnabled() {
        LogUtil.i(TAG, "getSecondRowColdPermissionRightEnabled enable:false");
        return false;
    }

    private boolean getSpeedAutoLockEnabled() {
        IBaseApi.EnableState speedAutoLockEnableState = CarDoorManager.get().getSpeedAutoLockEnableState();
        this.mSpeedAutoLockEnable = getValidEnable(speedAutoLockEnableState, this.mSpeedAutoLockEnable);
        LogUtil.i(TAG, "getSpeedAutoLockEnabled enableState:" + speedAutoLockEnableState + " enable:" + this.mSpeedAutoLockEnable);
        return this.mSpeedAutoLockEnable;
    }

    private boolean getSunroofWindowAutoCloseEnabled() {
        IBaseApi.EnableState sunroofWindowAutoCloseEnableState = CarWindowManager.get().getSunroofWindowAutoCloseEnableState();
        this.mSunroofWindowAutoCloseEnable = getValidEnable(sunroofWindowAutoCloseEnableState, this.mSunroofWindowAutoCloseEnable);
        LogUtil.i(TAG, "getSunroofWindowAutoCloseEnabled enableState:" + sunroofWindowAutoCloseEnableState + " enable:" + this.mSunroofWindowAutoCloseEnable);
        return this.mSunroofWindowAutoCloseEnable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean getValidAcAirCirculationModeOfAutoModeEnabled(IAirCondition.AirCirculationMode airCirculationMode) {
        if (airCirculationMode == IAirCondition.AirCirculationMode.MANUAL || airCirculationMode == IAirCondition.AirCirculationMode.AUTO) {
            this.mAcAirCirculationModeOfAutoModeEnabled = airCirculationMode == IAirCondition.AirCirculationMode.AUTO;
        }
        LogUtil.i(TAG, "getValidAcAirCirculationModeOfAutoModeEnabled mode:" + airCirculationMode + ", mAcAirCirculationModeOfAutoModeEnabled:" + this.mAcAirCirculationModeOfAutoModeEnabled);
        return this.mAcAirCirculationModeOfAutoModeEnabled;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getValidAcComfortCurveModeOption(IAirCondition.ComfortCurveMode comfortCurveMode) {
        for (int i = 0; i < this.AC_COMFORT_CURVE_MODE.length; i++) {
            if (this.AC_COMFORT_CURVE_MODE[i] == comfortCurveMode) {
                this.mAcComfortCurveModeOption = i;
                break;
            }
        }
        LogUtil.i(TAG, "getValidAcComfortCurveModeOption mode:" + comfortCurveMode + ", index:" + this.mAcComfortCurveModeOption);
        return this.mAcComfortCurveModeOption;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getValidAcFanSpeedOfAutoModeOption(IAirCondition.FanSpeed fanSpeed) {
        for (int i = 0; i < this.AC_FAN_SPEED_OF_AUTO_MODE.length; i++) {
            if (this.AC_FAN_SPEED_OF_AUTO_MODE[i] == fanSpeed) {
                this.mAcFanSpeedOfAutoModeOption = i;
                break;
            }
        }
        LogUtil.i(TAG, "getValidAcFanSpeedOfAutoModeOption speed:" + fanSpeed + ", index:" + this.mAcFanSpeedOfAutoModeOption);
        return this.mAcFanSpeedOfAutoModeOption;
    }

    private int getValidAsteriskKeyOption(int i) {
        for (int i2 = 0; i2 < this.STEERING_WHEEL_ASTERISK_KEY_TYPE.length; i2++) {
            if (this.STEERING_WHEEL_ASTERISK_KEY_TYPE[i2] == i) {
                this.mAsteriskKeyOption = i2;
                break;
            }
        }
        LogUtil.i(TAG, "getValidAsteriskKeyOption customKey:" + i + ", index:" + this.mAsteriskKeyOption);
        return this.mAsteriskKeyOption;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean getValidAutoUnlockEnabled(ICarDoor.AutoUnlockState autoUnlockState) {
        if (autoUnlockState == ICarDoor.AutoUnlockState.ACTIVE || autoUnlockState == ICarDoor.AutoUnlockState.NOT_ACTIVE) {
            this.mAutoUnlockEnabled = autoUnlockState == ICarDoor.AutoUnlockState.ACTIVE;
        }
        LogUtil.i(TAG, "getValidAutoUnlockEnabled state:" + autoUnlockState + ", mAutoUnlockEnabled:" + this.mAutoUnlockEnabled);
        return this.mAutoUnlockEnabled;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean getValidAutoWiperModeEnabled(ICarSettings.AutoWiperMode autoWiperMode) {
        if (autoWiperMode == ICarSettings.AutoWiperMode.INTERMITTENT || autoWiperMode == ICarSettings.AutoWiperMode.AUTO) {
            this.mAutoWiperModeEnabled = autoWiperMode == ICarSettings.AutoWiperMode.AUTO;
        }
        LogUtil.i(TAG, "getValidAutoWiperModeEnabled mode:" + autoWiperMode + ", mAutoWiperModeEnabled:" + this.mAutoWiperModeEnabled);
        return this.mAutoWiperModeEnabled;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean getValidOSRMTurnDownEnable(ICarSettings.OSRMRAngleCmd oSRMRAngleCmd) {
        switch (oSRMRAngleCmd) {
            case BOTH_MIRROR_DIP:
                return true;
            case OFF:
                return false;
            default:
                return this.mOSRMTurnDownEnable;
        }
    }

    private int getValidParkingAidVolumeOption(int i) {
        for (int i2 = 0; i2 < this.PARKING_AID_VOLUME_TYPE.length; i2++) {
            if (this.PARKING_AID_VOLUME_TYPE[i2] == i) {
                this.mParkingAidVolumeOption = i2;
                break;
            }
        }
        LogUtil.i(TAG, "getValidParkingAidVolumeOption type:" + i + ", index:" + this.mParkingAidVolumeOption);
        return this.mParkingAidVolumeOption;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getValidPepsAutoTrunkOpenOption(ICarDoor.PEPSAutoTrunkOpenState pEPSAutoTrunkOpenState) {
        for (int i = 0; i < this.PEPS_AUTO_TRUNK_OPEN.length; i++) {
            if (this.PEPS_AUTO_TRUNK_OPEN[i] == pEPSAutoTrunkOpenState) {
                this.mPepsAutoTrunkOpenOption = i;
                break;
            }
        }
        LogUtil.i(TAG, "getValidPepsAutoTrunkOpenOption state:" + pEPSAutoTrunkOpenState + ", index:" + this.mPepsAutoTrunkOpenOption);
        return this.mPepsAutoTrunkOpenOption;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getValidPsdDoorModeOption(boolean z) {
        for (int i = 0; i < this.PSD_DOOR_MODE.length; i++) {
            if (this.PSD_DOOR_MODE[i] == z) {
                this.mPsdDoorModeOption = i;
                break;
            }
        }
        LogUtil.i(TAG, "getValidPsdDoorModeOption isEnabled:" + z + ", index:" + this.mPsdDoorModeOption);
        return this.mPsdDoorModeOption;
    }

    private int getValidPsdDoorSpeedOption(ICarDoor.PSDDoorSpeed pSDDoorSpeed, ICarDoor.PSDDoorSpeed pSDDoorSpeed2) {
        ICarDoor.PSDDoorSpeed pSDDoorSpeed3 = ICarDoor.PSDDoorSpeed.__UNKNOWN__;
        if (pSDDoorSpeed2 == ICarDoor.PSDDoorSpeed.HIGH_SPEED || pSDDoorSpeed2 == ICarDoor.PSDDoorSpeed.LOW_SPEED) {
            pSDDoorSpeed3 = pSDDoorSpeed2;
        } else if (pSDDoorSpeed == ICarDoor.PSDDoorSpeed.HIGH_SPEED || pSDDoorSpeed == ICarDoor.PSDDoorSpeed.LOW_SPEED) {
            pSDDoorSpeed3 = pSDDoorSpeed;
        }
        for (int i = 0; i < this.PSD_DOOR_SPEED.length; i++) {
            if (this.PSD_DOOR_SPEED[i] == pSDDoorSpeed3) {
                this.mPsdDoorSpeedOption = i;
                break;
            }
        }
        LogUtil.i(TAG, "getValidPsdDoorSpeedOption speedL:" + pSDDoorSpeed + ", speedR:" + pSDDoorSpeed2 + ", speed:" + pSDDoorSpeed3 + ", index:" + this.mPsdDoorSpeedOption);
        return this.mPsdDoorSpeedOption;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getValidRemoteUnlockModeOption(ICarDoor.RemoteUnlockMode remoteUnlockMode) {
        for (int i = 0; i < this.REMOTE_UNLOCK_MODE.length; i++) {
            if (this.REMOTE_UNLOCK_MODE[i] == remoteUnlockMode) {
                this.mRemoteUnlockModeOption = i;
                break;
            }
        }
        LogUtil.i(TAG, "getValidRemoteUnlockModeOption mode:" + remoteUnlockMode + ", index:" + this.mRemoteUnlockModeOption);
        return this.mRemoteUnlockModeOption;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean getWirelessChargingEnable(ICarSettings.WCMCtlResult wCMCtlResult) {
        switch (wCMCtlResult) {
            case ENABLED:
            case DISABLED_BY_PEPS:
                return true;
            case SHUTDOWN_BY_SWITCH_CAN:
                return false;
            default:
                return this.mOSRMTurnDownEnable;
        }
    }

    private boolean getWirelessChargingEnabled() {
        ICarSettings.WCMCtlResult wCMCtlResult = CarSettingsManager.get().getWCMCtlResult();
        boolean z = wCMCtlResult == ICarSettings.WCMCtlResult.ENABLED || wCMCtlResult == ICarSettings.WCMCtlResult.DISABLED_BY_PEPS;
        LogUtil.i(TAG, "wcmCtlResult: " + wCMCtlResult + "enable: " + z);
        return z;
    }

    private void initCarKeyCustomFunction() {
        int[] iArr = {7, 10, 3, 2, 18, 13};
        ArrayList arrayList = new ArrayList();
        boolean z = false;
        for (int i = 0; i < iArr.length; i++) {
            if (i == 1) {
                ICarConfig.CameraNumber cameraNumber = CarConfig.getCameraNumber();
                LogUtil.i(TAG, "initCarKeyCustomFunction() cameraNumber:" + cameraNumber);
                switch (cameraNumber) {
                    case SVM_PLUSFAPA:
                        z = true;
                        break;
                    case SVM:
                    case SVM_PLUSAPA:
                    case SVM_PLUSAVP:
                    case EXTERNAL_AVM:
                    case __UNKNOWN__:
                        break;
                    default:
                        continue;
                }
                arrayList.add(Integer.valueOf(iArr[i]));
            } else if (i == 4) {
                if (CarConfig.isSportPlusPresent()) {
                    arrayList.add(Integer.valueOf(iArr[i]));
                }
            } else if (i != 5) {
                arrayList.add(Integer.valueOf(iArr[i]));
            } else if (z) {
                arrayList.add(Integer.valueOf(iArr[i]));
            }
        }
        this.STEERING_WHEEL_ASTERISK_KEY_TYPE = new int[arrayList.size()];
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            this.STEERING_WHEEL_ASTERISK_KEY_TYPE[i2] = ((Integer) arrayList.get(i2)).intValue();
            Log.i(TAG, "initCarKeyCustomFunction: " + this.STEERING_WHEEL_ASTERISK_KEY_TYPE[i2]);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyPSDDoorSpeed() {
        this.mRereadCount++;
        ICarDoor.PSDDoorSpeed pSDDoorSpeedL = CarDoorManager.get().getPSDDoorSpeedL();
        ICarDoor.PSDDoorSpeed pSDDoorSpeedR = CarDoorManager.get().getPSDDoorSpeedR();
        ICarDoor.PSDDoorSpeed pSDDoorSpeed = ICarDoor.PSDDoorSpeed.__UNKNOWN__;
        if (pSDDoorSpeedR == ICarDoor.PSDDoorSpeed.HIGH_SPEED || pSDDoorSpeedR == ICarDoor.PSDDoorSpeed.LOW_SPEED) {
            pSDDoorSpeed = pSDDoorSpeedR;
        } else if (pSDDoorSpeedL == ICarDoor.PSDDoorSpeed.HIGH_SPEED || pSDDoorSpeedL == ICarDoor.PSDDoorSpeed.LOW_SPEED) {
            pSDDoorSpeed = pSDDoorSpeedL;
        }
        ICarDoor.PSDDoorSpeed pSDDoorSpeed2 = ICarDoor.PSDDoorSpeed.__UNKNOWN__;
        if (this.mTargetSpeedIndex >= 0 && this.mTargetSpeedIndex < this.PSD_DOOR_SPEED.length) {
            pSDDoorSpeed2 = this.PSD_DOOR_SPEED[this.mTargetSpeedIndex];
        }
        LogUtil.i(TAG, "notifyPSDDoorSpeed() rereadCount:" + this.mRereadCount + " targetSpeedIndex:" + this.mTargetSpeedIndex + " speedL:" + pSDDoorSpeedL + " speedR:" + pSDDoorSpeedR + " curSpeed:" + pSDDoorSpeed + " targetSpeed:" + pSDDoorSpeed2);
        if (pSDDoorSpeed != ICarDoor.PSDDoorSpeed.__UNKNOWN__) {
            if (pSDDoorSpeed2 != ICarDoor.PSDDoorSpeed.__UNKNOWN__ && pSDDoorSpeed2 != pSDDoorSpeed && this.mRereadCount < 2) {
                LogUtil.i(TAG, "notifyPSDDoorSpeed() value different, set again");
                setPSDDoorSpeed(this.mTargetSpeedIndex);
                return;
            }
            int validPsdDoorSpeedOption = getValidPsdDoorSpeedOption(pSDDoorSpeedL, pSDDoorSpeedR);
            this.mPsdDoorSpeedOption = validPsdDoorSpeedOption;
            LogUtil.i(TAG, "notifyPSDDoorSpeed() notify index:" + validPsdDoorSpeedOption);
            notifyOnOptionChanged(Function.PSD_DOOR_SPEED_OPTION, validPsdDoorSpeedOption);
        } else {
            if (pSDDoorSpeed2 != ICarDoor.PSDDoorSpeed.__UNKNOWN__ && this.mRereadCount < 2) {
                LogUtil.i(TAG, "notifyPSDDoorSpeed() value unknown, set again");
                setPSDDoorSpeed(this.mTargetSpeedIndex);
                return;
            }
            LogUtil.i(TAG, "notifyPSDDoorSpeed() value unknown");
        }
        this.mRereadCount = 0;
        LogUtil.i(TAG, "notifyPSDDoorSpeed() end");
    }

    private boolean setAVASEnabled(boolean z) {
        return CarSettingsManager.get().setAVASEnabled(z);
    }

    private boolean setAcAutoDryingEnabled(boolean z) {
        return AirConditionManager.get().setAirSelfDryingEnabled(z);
    }

    private boolean setAirCirculationModeOfAutoModeEnabled(boolean z) {
        return AirConditionManager.get().setAirCirculationModeOfAutoMode(z ? IAirCondition.AirCirculationMode.AUTO : IAirCondition.AirCirculationMode.MANUAL);
    }

    private boolean setAirUnlockVentilation(boolean z) {
        return AirConditionManager.get().setAirUnlockVentilationEnabled(z);
    }

    private boolean setAsteriskKeyOption(int i) {
        LogUtil.i(TAG, "setAsteriskKeyOption() index:" + i + " CarKeyCustomFunction:" + this.STEERING_WHEEL_ASTERISK_KEY_TYPE[i]);
        if (i < 0 || i >= this.STEERING_WHEEL_ASTERISK_KEY_TYPE.length) {
            return false;
        }
        CarInputManager.getInstance().setCustomKeyFunction(this.STEERING_WHEEL_ASTERISK_KEY_TYPE[i]);
        LogUtil.i(TAG, "setAsteriskKeyOption() index:" + i + " CarKeyCustomFunction:" + this.STEERING_WHEEL_ASTERISK_KEY_TYPE[i]);
        return true;
    }

    private boolean setAutoUnlockEnabled(boolean z) {
        return CarDoorManager.get().setAutoUnlock(z ? ICarDoor.AutoUnlockState.ACTIVE : ICarDoor.AutoUnlockState.NOT_ACTIVE);
    }

    private boolean setAutoWindowUpInRainEnabled(boolean z) {
        return false;
    }

    private boolean setAutoWiperModeEnabled(boolean z) {
        return CarSettingsManager.get().setAutoWiperMode(z ? ICarSettings.AutoWiperMode.AUTO : ICarSettings.AutoWiperMode.INTERMITTENT);
    }

    private boolean setComfortCurveMode(int i) {
        if (i < 0 || i >= this.AC_COMFORT_CURVE_MODE.length) {
            return false;
        }
        return AirConditionManager.get().setComfortCurveMode(this.AC_COMFORT_CURVE_MODE[i]);
    }

    private boolean setConvenientCarSearchEnabled(boolean z) {
        return false;
    }

    private boolean setETCEnabled(boolean z) {
        return CarSettingsManager.get().setETCEnabled(z);
    }

    private boolean setElectricHiddenDoorHandleEnable(boolean z) {
        return CarSettingsManager.get().setDoorHandleElectricHideEnabled(z);
    }

    private boolean setFanSpeedOfAutoMode(int i) {
        if (i < 0 || i >= this.AC_FAN_SPEED_OF_AUTO_MODE.length) {
            return false;
        }
        return AirConditionManager.get().setFanSpeedOfAutoMode(this.AC_FAN_SPEED_OF_AUTO_MODE[i]);
    }

    private boolean setHeadLightDelayEnabled(boolean z) {
        return CarLightManager.get().setHeadLightDelayEnabled(z);
    }

    private boolean setIHBCEnabled(boolean z) {
        return CarLightManager.get().setIHBCEnabled(z);
    }

    private boolean setKeyReminderEnabled(boolean z) {
        return false;
    }

    private boolean setLockUnlockSoundEnabled(boolean z) {
        return CarDoorManager.get().setLockUnlockSoundEnabled(z);
    }

    private boolean setOSRMAutoFoldEnabled(boolean z) {
        return CarSettingsManager.get().setOSRMAutoFoldEnabled(z);
    }

    private boolean setOSRMTurnDownEnabled(boolean z) {
        return CarSettingsManager.get().setOSRMRAngleCmd(z ? ICarSettings.OSRMRAngleCmd.BOTH_MIRROR_DIP : ICarSettings.OSRMRAngleCmd.OFF);
    }

    private boolean setOSRMTurnDownValue(ICarSettings.OSRMRAngleSaveCmd oSRMRAngleSaveCmd) {
        return CarSettingsManager.get().setOSRMRAngleSaveCmd(oSRMRAngleSaveCmd);
    }

    private boolean setPEPSAutoTrunkOpen(int i) {
        if (i < 0 || i >= this.PEPS_AUTO_TRUNK_OPEN.length) {
            return false;
        }
        return CarDoorManager.get().setPEPSAutoTrunkOpen(this.PEPS_AUTO_TRUNK_OPEN[i]);
    }

    private boolean setPEPSUnlockEnabled(boolean z) {
        return CarDoorManager.get().setPEPSUnlockEnabled(z);
    }

    private boolean setPEPSWalkAwayLockEnabled(boolean z) {
        return CarDoorManager.get().setPEPSWalkAwayLockEnabled(z);
    }

    private boolean setPSDDoorMode(int i) {
        if (i < 0 || i >= this.PSD_DOOR_MODE.length) {
            return false;
        }
        return CarDoorManager.get().setSlidingDoorModeAutoEnabled(this.PSD_DOOR_MODE[i]);
    }

    private boolean setPSDDoorSpeed(int i) {
        boolean z = false;
        if (i >= 0 && i < this.PSD_DOOR_SPEED.length) {
            this.mPsdDoorSpeedOption = i;
            ICarDoor.PSDDoorSpeed pSDDoorSpeed = this.PSD_DOOR_SPEED[i];
            boolean pSDDoorSpeedL = CarDoorManager.get().setPSDDoorSpeedL(pSDDoorSpeed);
            boolean pSDDoorSpeedR = CarDoorManager.get().setPSDDoorSpeedR(pSDDoorSpeed);
            z = pSDDoorSpeedL || pSDDoorSpeedR;
            LogUtil.i(TAG, "setPSDDoorSpeed speed:" + pSDDoorSpeed + " resultL:" + pSDDoorSpeedL + " resultR:" + pSDDoorSpeedR + " result:" + z);
            startRereadPSDDoorSpeedTimeout(i);
        }
        return z;
    }

    private boolean setParkingAidVolumeType(int i) {
        if (i < 0 || i >= this.PARKING_AID_VOLUME_TYPE.length) {
            return false;
        }
        int i2 = this.PARKING_AID_VOLUME_TYPE[i];
        return false;
    }

    private boolean setRemoteUnlockMode(int i) {
        if (i < 0 || i >= this.REMOTE_UNLOCK_MODE.length) {
            return false;
        }
        return CarDoorManager.get().setRemoteUnlockMode(this.REMOTE_UNLOCK_MODE[i]);
    }

    private boolean setSeatDriverConvenientAccessEnabled(boolean z) {
        return CarSettingsManager.get().setDriverEasyEntryAndExitEnabled(z);
    }

    private boolean setSecondRowColdPermissionLeftEnabled(boolean z) {
        return false;
    }

    private boolean setSecondRowColdPermissionRightEnabled(boolean z) {
        return false;
    }

    private boolean setSpeedAutoLockEnabled(boolean z) {
        return CarDoorManager.get().setSpeedAutoLockEnabled(z);
    }

    private boolean setSunroofWindowAutoCloseEnabled(boolean z) {
        return CarWindowManager.get().setSunroofWindowAutoCloseEnabled(z);
    }

    private boolean setWirelessChargingEnabled(boolean z) {
        return CarSettingsManager.get().setWCMCtl(z ? ICarSettings.WCMCtl.ACTIVE : ICarSettings.WCMCtl.NOT_ACTIVE);
    }

    private void startRereadPSDDoorSpeedTimeout(int i) {
        this.mTargetSpeedIndex = i;
        stopRereadPSDDoorSpeedTimeout();
        LogUtil.i(TAG, "startRereadPSDDoorSpeedTimeout() targetSpeedIndex:" + i);
        this.mStartRereadPSDDoorSpeedTimeout = true;
        this.mHandler.postDelayed(this.mRereadPSDDoorSpeedTimeoutRunnable, 500L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startWaitPSDDoorSpeedCallbackTimeout() {
        if (this.mIsPSDDoorSpeedLChanged && this.mIsPSDDoorSpeedRChanged) {
            LogUtil.i(TAG, "startWaitPSDDoorSpeedCallbackTimeout() both callback");
            stopWaitPSDDoorSpeedCallbackTimeout();
            stopRereadPSDDoorSpeedTimeout();
            notifyPSDDoorSpeed();
            this.mIsPSDDoorSpeedLChanged = false;
            this.mIsPSDDoorSpeedRChanged = false;
            return;
        }
        if (this.mStartWaitPSDDoorSpeedCallbackTimeout) {
            LogUtil.i(TAG, "startWaitPSDDoorSpeedCallbackTimeout() started");
            return;
        }
        LogUtil.i(TAG, "startWaitPSDDoorSpeedCallbackTimeout()");
        this.mStartWaitPSDDoorSpeedCallbackTimeout = true;
        this.mHandler.postDelayed(this.mWaitPSDDoorSpeedCallbackTimeoutRunnable, 200L);
    }

    private void stopRereadPSDDoorSpeedTimeout() {
        if (this.mStartRereadPSDDoorSpeedTimeout) {
            LogUtil.i(TAG, "stopRereadPSDDoorSpeedTimeout()");
            this.mStartRereadPSDDoorSpeedTimeout = false;
            this.mHandler.removeCallbacks(this.mRereadPSDDoorSpeedTimeoutRunnable);
        }
    }

    private void stopWaitPSDDoorSpeedCallbackTimeout() {
        if (this.mStartWaitPSDDoorSpeedCallbackTimeout) {
            LogUtil.i(TAG, "stopWaitPSDDoorSpeedCallbackTimeout()");
            this.mStartWaitPSDDoorSpeedCallbackTimeout = false;
            this.mHandler.removeCallbacks(this.mWaitPSDDoorSpeedCallbackTimeoutRunnable);
        }
    }

    @Override // com.yftech.settings.manager.BaseManager
    public void deInit() {
        super.deInit();
        CarSettingsManager.get().unregisterListener(this.mCarSettingsListener);
        AirConditionManager.get().unregisterListener(this.mAirConditionListener);
        CarWindowManager.get().unregisterListener(this.mCarWindowListener);
        CarDoorManager.get().unregisterListener(this.mCarDoorListener);
        CarLightManager.get().unregisterListener(this.mCarLightListener);
    }

    @Override // com.yftech.settings.manager.BaseManager
    public boolean getEnabled(Function function) {
        switch (function) {
            case IHBC_ENABLED:
                return getIHBCEnabled();
            case AUTO_UNLOCK_ENABLED:
                return getAutoUnlockEnabled();
            case PEPS_WALK_AWAY_LOCK_ENABLED:
                return getPEPSWalkAwayLockEnabled();
            case PEPS_UNLOCK_ENABLED:
                return getPEPSUnlockEnabled();
            case SPEED_AUTO_LOCK_ENABLED:
                return getSpeedAutoLockEnabled();
            case ETC_ENABLED:
                return getETCEnabled();
            case SUNROOF_WINDOW_AUTO_CLOSE_ENABLED:
                return getSunroofWindowAutoCloseEnabled();
            case OSRM_AUTO_FOLD_ENABLED:
                return getOSRMAutoFoldEnabled();
            case AC_AIR_CIRCULATION_MODE_OF_AUTO_MODE_ENABLED:
                return getAirCirculationModeOfAutoModeEnabled();
            case HEAD_LIGHT_DELAY_ENABLED:
                return getHeadLightDelayEnabled();
            case AUTO_WINDOW_UP_IN_RAIN_ENABLED:
                return getAutoWindowUpInRainEnabled();
            case AUTO_WIPER_MODE_ENABLED:
                return getAutoWiperModeEnabled();
            case SECOND_ROW_COLD_PERMISSION_LEFT_ENABLED:
                return getSecondRowColdPermissionLeftEnabled();
            case SECOND_ROW_COLD_PERMISSION_RIGHT_ENABLED:
                return getSecondRowColdPermissionRightEnabled();
            case KEY_REMINDER_ENABLED:
                return getKeyReminderEnabled();
            case SEAT_DRIVER_CONVENIENT_ACCESS_ENABLED:
                return getSeatDriverConvenientAccessEnabled();
            case AC_AUTO_DRYING_ENABLED:
                return getAcAutoDryingEnabled();
            case WIRELESS_CHARGING_ENABLED:
                return getWirelessChargingEnabled();
            case CONVENIENT_CAR_SEARCH_ENABLED:
                return getConvenientCarSearchEnabled();
            case OSRM_TURN_DOWN_ENABLED:
                return getOSRMTurnDownEnabled();
            case LOCK_UNLOCK_SOUND_ENABLED:
                return getLockUnlockSoundEnabled();
            case AVAS_ENABLED:
                return getAVASEnabled();
            case AC_AIR_UNLOCK_VENTILATION_ENABLE:
                return getAirUnlockVentilationEnable();
            case ELECTRIC_HIDDEN_DOOR_HANDLE_ENABLE:
                return getElectricHiddenDoorHandleEnable();
            default:
                return false;
        }
    }

    public boolean getFunctionPresent(Function function) {
        switch (function) {
            case FRONT_WIPER_SERVICE_POSITION_ACTION:
                return CarConfig.isWiperMaintanencePresent();
            case STOP_TIMEOUT_ACTION:
            case OSRM_TURN_DOWN_VALUE:
            default:
                return false;
            case IHBC_ENABLED:
                return CarConfig.isControlHighBeamAssistantPresent();
            case AUTO_UNLOCK_ENABLED:
                return CarConfig.isAutoUnlockingPresent();
            case PEPS_WALK_AWAY_LOCK_ENABLED:
                ICarConfig.WalAndApu walAndApu = CarConfig.getWalAndApu();
                return walAndApu == ICarConfig.WalAndApu.WAL || walAndApu == ICarConfig.WalAndApu.WAL_AND_APU;
            case PEPS_UNLOCK_ENABLED:
                ICarConfig.WalAndApu walAndApu2 = CarConfig.getWalAndApu();
                return walAndApu2 == ICarConfig.WalAndApu.APU || walAndApu2 == ICarConfig.WalAndApu.WAL_AND_APU;
            case SPEED_AUTO_LOCK_ENABLED:
                return CarConfig.isSpeedLockPresent();
            case ETC_ENABLED:
                return CarConfig.isEtcSettingPresent();
            case SUNROOF_WINDOW_AUTO_CLOSE_ENABLED:
                return CarConfig.isCloseWindowWhileLockPresent();
            case OSRM_AUTO_FOLD_ENABLED:
                return CarConfig.isExteriorRearViewMirrorAutoFoldingAndUnfoldingPresent();
            case AC_AIR_CIRCULATION_MODE_OF_AUTO_MODE_ENABLED:
                return CarConfig.isAutoModeOfFrsAndRecControlPresent();
            case HEAD_LIGHT_DELAY_ENABLED:
                return CarConfig.isLightTurnedOffDelayPresent();
            case AUTO_WINDOW_UP_IN_RAIN_ENABLED:
                return false;
            case AUTO_WIPER_MODE_ENABLED:
                return CarConfig.isAutoWiperPresent();
            case SECOND_ROW_COLD_PERMISSION_LEFT_ENABLED:
                return false;
            case SECOND_ROW_COLD_PERMISSION_RIGHT_ENABLED:
                return false;
            case KEY_REMINDER_ENABLED:
                return false;
            case SEAT_DRIVER_CONVENIENT_ACCESS_ENABLED:
                return CarConfig.isDriverEasyEntryAndExitFunctionPresent();
            case AC_AUTO_DRYING_ENABLED:
                return CarConfig.isEvaporatorSelfDryingPresent();
            case WIRELESS_CHARGING_ENABLED:
                return CarConfig.isWirelessChargingPresent();
            case CONVENIENT_CAR_SEARCH_ENABLED:
                return false;
            case OSRM_TURN_DOWN_ENABLED:
                return CarConfig.isExteriorRearviewMirrorDipPresent();
            case LOCK_UNLOCK_SOUND_ENABLED:
                return CarConfig.isLockAndUnlockWhistleNotePresent();
            case AVAS_ENABLED:
                return false;
            case AC_AIR_UNLOCK_VENTILATION_ENABLE:
                return CarConfig.isUnlockVentilationPresent();
            case ELECTRIC_HIDDEN_DOOR_HANDLE_ENABLE:
                return CarConfig.isHiddenDoorHandlePresent();
            case REMOTE_UNLOCK_MODE_OPTION:
                return CarConfig.isRemoteUnlockPresent();
            case AC_FAN_SPEED_OF_AUTO_MODE_OPTION:
                return CarConfig.isFanSpeedOfAutoModePresent();
            case AC_COMFORT_CURVE_MODE_OPTION:
                return CarConfig.isComfortCurvePresent();
            case PEPS_AUTO_TRUNK_OPEN_OPTION:
                return CarConfig.isSmartTailgatePresent();
            case PSD_DOOR_SPEED_OPTION:
                return CarConfig.isSlidingDoorSpeedAdjustmentPresent();
            case PSD_DOOR_MODE_OPTION:
                return false;
            case PARKING_AID_VOLUME_OPTION:
                return false;
            case STEERING_WHEEL_ASTERISK_KEY:
                return CarConfig.isSteeringWheelCustomButtonPresent();
        }
    }

    @Override // com.yftech.settings.manager.BaseManager
    public int getOption(Function function) {
        switch (function) {
            case REMOTE_UNLOCK_MODE_OPTION:
                return getRemoteUnlockMode();
            case AC_FAN_SPEED_OF_AUTO_MODE_OPTION:
                return getFanSpeedOfAutoMode();
            case AC_COMFORT_CURVE_MODE_OPTION:
                return getComfortCurveMode();
            case PEPS_AUTO_TRUNK_OPEN_OPTION:
                return getPEPSAutoTrunkOpen();
            case PSD_DOOR_SPEED_OPTION:
                return getPSDDoorSpeed();
            case PSD_DOOR_MODE_OPTION:
                return getPSDDoorMode();
            case PARKING_AID_VOLUME_OPTION:
                return getParkingAidVolumeType();
            case STEERING_WHEEL_ASTERISK_KEY:
                return getAsteriskKeyOption();
            default:
                return -1;
        }
    }

    public int getParkingAidVolumeType() {
        return getValidParkingAidVolumeOption(0);
    }

    @Override // com.yftech.settings.manager.BaseManager
    public void init(Context context) {
        super.init(context);
        CarSettingsManager.get().registerListener(this.mCarSettingsListener);
        AirConditionManager.get().registerListener(this.mAirConditionListener);
        CarWindowManager.get().registerListener(this.mCarWindowListener);
        CarDoorManager.get().registerListener(this.mCarDoorListener);
        CarLightManager.get().registerListener(this.mCarLightListener);
        initCarKeyCustomFunction();
    }

    @Override // com.yftech.settings.manager.BaseManager
    public boolean setAction(Function function) {
        boolean zFrontWiperServicePosition;
        switch (function) {
            case FRONT_WIPER_SERVICE_POSITION_ACTION:
                zFrontWiperServicePosition = frontWiperServicePosition();
                break;
            case STOP_TIMEOUT_ACTION:
                zFrontWiperServicePosition = stopTimeout();
                break;
            default:
                zFrontWiperServicePosition = false;
                break;
        }
        LogUtil.i(TAG, "setAction function:" + function + ", result:" + zFrontWiperServicePosition);
        return zFrontWiperServicePosition;
    }

    @Override // com.yftech.settings.manager.BaseManager
    public boolean setEnabled(Function function, boolean z) {
        boolean iHBCEnabled;
        startTimeout();
        switch (function) {
            case IHBC_ENABLED:
                iHBCEnabled = setIHBCEnabled(z);
                break;
            case AUTO_UNLOCK_ENABLED:
                iHBCEnabled = setAutoUnlockEnabled(z);
                break;
            case PEPS_WALK_AWAY_LOCK_ENABLED:
                iHBCEnabled = setPEPSWalkAwayLockEnabled(z);
                break;
            case PEPS_UNLOCK_ENABLED:
                iHBCEnabled = setPEPSUnlockEnabled(z);
                break;
            case SPEED_AUTO_LOCK_ENABLED:
                iHBCEnabled = setSpeedAutoLockEnabled(z);
                break;
            case ETC_ENABLED:
                iHBCEnabled = setETCEnabled(z);
                break;
            case SUNROOF_WINDOW_AUTO_CLOSE_ENABLED:
                iHBCEnabled = setSunroofWindowAutoCloseEnabled(z);
                break;
            case OSRM_AUTO_FOLD_ENABLED:
                iHBCEnabled = setOSRMAutoFoldEnabled(z);
                break;
            case AC_AIR_CIRCULATION_MODE_OF_AUTO_MODE_ENABLED:
                iHBCEnabled = setAirCirculationModeOfAutoModeEnabled(z);
                break;
            case HEAD_LIGHT_DELAY_ENABLED:
                iHBCEnabled = setHeadLightDelayEnabled(z);
                break;
            case AUTO_WINDOW_UP_IN_RAIN_ENABLED:
                iHBCEnabled = setAutoWindowUpInRainEnabled(z);
                break;
            case AUTO_WIPER_MODE_ENABLED:
                iHBCEnabled = setAutoWiperModeEnabled(z);
                break;
            case SECOND_ROW_COLD_PERMISSION_LEFT_ENABLED:
                iHBCEnabled = setSecondRowColdPermissionLeftEnabled(z);
                break;
            case SECOND_ROW_COLD_PERMISSION_RIGHT_ENABLED:
                iHBCEnabled = setSecondRowColdPermissionRightEnabled(z);
                break;
            case KEY_REMINDER_ENABLED:
                iHBCEnabled = setKeyReminderEnabled(z);
                break;
            case SEAT_DRIVER_CONVENIENT_ACCESS_ENABLED:
                iHBCEnabled = setSeatDriverConvenientAccessEnabled(z);
                break;
            case AC_AUTO_DRYING_ENABLED:
                iHBCEnabled = setAcAutoDryingEnabled(z);
                break;
            case WIRELESS_CHARGING_ENABLED:
                iHBCEnabled = setWirelessChargingEnabled(z);
                break;
            case CONVENIENT_CAR_SEARCH_ENABLED:
                iHBCEnabled = setConvenientCarSearchEnabled(z);
                break;
            case OSRM_TURN_DOWN_ENABLED:
                iHBCEnabled = setOSRMTurnDownEnabled(z);
                break;
            case LOCK_UNLOCK_SOUND_ENABLED:
                startTimeout();
                iHBCEnabled = setLockUnlockSoundEnabled(z);
                break;
            case AVAS_ENABLED:
                startTimeout();
                iHBCEnabled = setAVASEnabled(z);
                break;
            case AC_AIR_UNLOCK_VENTILATION_ENABLE:
                startTimeout();
                iHBCEnabled = setAirUnlockVentilation(z);
                break;
            case ELECTRIC_HIDDEN_DOOR_HANDLE_ENABLE:
                startTimeout();
                iHBCEnabled = setElectricHiddenDoorHandleEnable(z);
                break;
            default:
                iHBCEnabled = false;
                break;
        }
        LogUtil.i(TAG, "setEnabled function:" + function + ", enable:" + z + ", result:" + iHBCEnabled);
        return iHBCEnabled;
    }

    @Override // com.yftech.settings.manager.BaseManager
    public boolean setOption(Function function, int i) {
        boolean remoteUnlockMode;
        startTimeout();
        switch (function) {
            case REMOTE_UNLOCK_MODE_OPTION:
                remoteUnlockMode = setRemoteUnlockMode(i);
                break;
            case AC_FAN_SPEED_OF_AUTO_MODE_OPTION:
                remoteUnlockMode = setFanSpeedOfAutoMode(i);
                break;
            case AC_COMFORT_CURVE_MODE_OPTION:
                remoteUnlockMode = setComfortCurveMode(i);
                break;
            case PEPS_AUTO_TRUNK_OPEN_OPTION:
                remoteUnlockMode = setPEPSAutoTrunkOpen(i);
                break;
            case PSD_DOOR_SPEED_OPTION:
                stopTimeout();
                remoteUnlockMode = setPSDDoorSpeed(i);
                break;
            case PSD_DOOR_MODE_OPTION:
                remoteUnlockMode = setPSDDoorMode(i);
                break;
            case PARKING_AID_VOLUME_OPTION:
                remoteUnlockMode = setParkingAidVolumeType(i);
                break;
            case STEERING_WHEEL_ASTERISK_KEY:
                stopTimeout();
                remoteUnlockMode = setAsteriskKeyOption(i);
                break;
            default:
                remoteUnlockMode = false;
                break;
        }
        LogUtil.i(TAG, "setOption function:" + function + ", index:" + i + ", result:" + remoteUnlockMode);
        return remoteUnlockMode;
    }

    @Override // com.yftech.settings.manager.BaseManager
    public boolean setValue(Function function, Object obj) {
        boolean oSRMTurnDownValue = AnonymousClass8.$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function[function.ordinal()] != 27 ? false : setOSRMTurnDownValue((ICarSettings.OSRMRAngleSaveCmd) obj);
        LogUtil.i(TAG, "setValue() function:" + function + " value:" + obj + " result:" + oSRMTurnDownValue);
        return oSRMTurnDownValue;
    }
}
