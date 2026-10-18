package com.yftech.settings.manager;

import android.content.Context;
import android.util.Log;
import com.yftech.settings.utils.LogUtil;
import com.yftech.vehicle.internal.adapter.IBaseApi;
import com.yftech.vehicle.internal.adapter.ICarConfig;
import com.yftech.vehicle.internal.adapter.ICarSettings;
import com.yftech.vehicle.sdk.CarConfig;
import com.yftech.vehicle.sdk.CarIcmManager;
import com.yftech.vehicle.sdk.CarSettingsManager;

/* JADX INFO: loaded from: classes.dex */
public class CarAssistantManager extends BaseManager<Function> {
    private static final String TAG = "CarAssistantManager";
    private static CarAssistantManager sCarAssistantManager;
    private ICarSettings.ADASWarnType[] ADAS_WARN_TYPE;
    private ICarSettings.FCWWarningDistance[] FCW_WARNING_DISTANCE = {ICarSettings.FCWWarningDistance.FAR, ICarSettings.FCWWarningDistance.NORMAL, ICarSettings.FCWWarningDistance.CLOSE};
    private ICarSettings.LksMode[] LKS_MODE = {ICarSettings.LksMode.STEERING, ICarSettings.LksMode.WARNING, ICarSettings.LksMode.STEERING_AND_WARNING};
    private ICarSettings.CruiseAssistMode[] CRUISE_ASSIST = {ICarSettings.CruiseAssistMode.ACC_MODE, ICarSettings.CruiseAssistMode.TJA_ICA_MODE};
    private boolean mFcwWarningDistanceEnable = true;
    private int mFcwWarningDistanceOption = 1;
    private boolean mLdwLkaEnabled = true;
    private int mLksModeOption = 1;
    private int mSpeedWarningValue = 0;
    private int mCruiseAssistOption = 0;
    private int mAdasWarnTypeOption = 0;
    private boolean mTSREnable = true;
    private boolean mIAccEnable = false;
    private boolean mTSRAudioWarningEnable = true;
    private boolean mAEBOffEnable = true;
    private boolean mFrontCarDistanceDisplayEnable = true;
    private boolean mIntelligentAvoidEnable = true;
    private boolean IS_LKS_MODE_OPTION = false;
    private CarSettingsManager.CarSettingsListener mCarSettingsListener = new CarSettingsManager.CarSettingsListener() { // from class: com.yftech.settings.manager.CarAssistantManager.1
        @Override // com.yftech.vehicle.sdk.CarSettingsManager.CarSettingsListener
        public void onADASWarnTypeChanged(ICarSettings.ADASWarnType aDASWarnType) {
            super.onADASWarnTypeChanged(aDASWarnType);
            boolean functionPresent = CarAssistantManager.this.getFunctionPresent(Function.ADAS_WARN_TYPE_OPTION);
            LogUtil.i(CarAssistantManager.TAG, "onADASWarnTypeChanged type:" + aDASWarnType + " isFunctionPresent:" + functionPresent);
            if (functionPresent) {
                CarAssistantManager.this.notifyOnOptionChanged(Function.ADAS_WARN_TYPE_OPTION, CarAssistantManager.this.getValidAdasWarnTypeOption(aDASWarnType));
            }
        }

        @Override // com.yftech.vehicle.sdk.CarSettingsManager.CarSettingsListener
        public void onAEBOffEnableStateChanged(IBaseApi.EnableStateOp enableStateOp) {
            super.onAEBOffEnableStateChanged(enableStateOp);
            boolean functionPresent = CarAssistantManager.this.getFunctionPresent(Function.AEB_OFF_ENABLED);
            LogUtil.i(CarAssistantManager.TAG, "onAEBOffStateChanged EnabledState:" + enableStateOp + " isFunctionPresent:" + functionPresent);
            if (functionPresent) {
                CarAssistantManager.this.mAEBOffEnable = CarAssistantManager.this.getValidEnableStateOp(enableStateOp, CarAssistantManager.this.mAEBOffEnable);
                CarAssistantManager.this.notifyOnEnableChanged(Function.AEB_OFF_ENABLED, CarAssistantManager.this.mAEBOffEnable);
            }
        }

        @Override // com.yftech.vehicle.sdk.CarSettingsManager.CarSettingsListener
        public void onCruiseAssistModeChanged(ICarSettings.CruiseAssistMode cruiseAssistMode) {
            super.onCruiseAssistModeChanged(cruiseAssistMode);
            boolean functionPresent = CarAssistantManager.this.getFunctionPresent(Function.CRUISE_ASSIST_OPTION);
            LogUtil.i(CarAssistantManager.TAG, "onCruiseAssistModeChanged mode:" + cruiseAssistMode + " isFunctionPresent:" + functionPresent);
            if (functionPresent) {
                CarAssistantManager.this.notifyOnOptionChanged(Function.CRUISE_ASSIST_OPTION, CarAssistantManager.this.getValidCruiseAssistOption(cruiseAssistMode));
            }
        }

        @Override // com.yftech.vehicle.sdk.CarSettingsManager.CarSettingsListener
        public void onFCWOffEnableStateChanged(IBaseApi.EnableStateOp enableStateOp) {
            super.onFCWOffEnableStateChanged(enableStateOp);
            boolean functionPresent = CarAssistantManager.this.getFunctionPresent(Function.FCW_OFF_ENABLED);
            LogUtil.i(CarAssistantManager.TAG, "onFCWOffStateChanged EnabledState:" + enableStateOp + " isFunctionPresent:" + functionPresent);
            if (functionPresent) {
                CarAssistantManager.this.mFcwWarningDistanceEnable = CarAssistantManager.this.getValidEnableStateOp(enableStateOp, CarAssistantManager.this.mFcwWarningDistanceEnable);
                CarAssistantManager.this.notifyOnEnableChanged(Function.FCW_OFF_ENABLED, CarAssistantManager.this.mFcwWarningDistanceEnable);
            }
        }

        @Override // com.yftech.vehicle.sdk.CarSettingsManager.CarSettingsListener
        public void onFCWWarningDistanceChanged(ICarSettings.FCWWarningDistance fCWWarningDistance) {
            super.onFCWWarningDistanceChanged(fCWWarningDistance);
            boolean functionPresent = CarAssistantManager.this.getFunctionPresent(Function.FCW_WARNING_DISTANCE_OPTION);
            LogUtil.i(CarAssistantManager.TAG, "onFCWWarningDistanceChanged distance:" + fCWWarningDistance + " isFunctionPresent:" + functionPresent);
            if (functionPresent) {
                CarAssistantManager.this.notifyOnOptionChanged(Function.FCW_WARNING_DISTANCE_OPTION, CarAssistantManager.this.getValidFcwWarningDistanceOption(fCWWarningDistance));
            }
        }

        @Override // com.yftech.vehicle.sdk.CarSettingsManager.CarSettingsListener
        public void onFrontCarDistanceDisplayEnableStateChanged(IBaseApi.EnableState enableState) {
            super.onFrontCarDistanceDisplayEnableStateChanged(enableState);
            boolean functionPresent = CarAssistantManager.this.getFunctionPresent(Function.DFC_ENABLE);
            Log.i(CarAssistantManager.TAG, "onFrontCarDistanceDisplayEnableStateChanged state:" + enableState + " isFunctionPresent:" + functionPresent);
            if (functionPresent) {
                CarAssistantManager.this.mFrontCarDistanceDisplayEnable = CarAssistantManager.this.getValidEnable(enableState, CarAssistantManager.this.mFrontCarDistanceDisplayEnable);
                CarAssistantManager.this.notifyOnEnableChanged(Function.DFC_ENABLE, CarAssistantManager.this.mFrontCarDistanceDisplayEnable);
            }
        }

        @Override // com.yftech.vehicle.sdk.CarSettingsManager.CarSettingsListener
        public void onIAccEnableStateChanged(IBaseApi.EnableState enableState) {
            super.onIAccEnableStateChanged(enableState);
            boolean functionPresent = CarAssistantManager.this.getFunctionPresent(Function.IACC_ENABLED);
            LogUtil.i(CarAssistantManager.TAG, "onIAccStateChanged EnabledState:" + enableState + " isFunctionPresent:" + functionPresent);
            if (functionPresent) {
                CarAssistantManager.this.mIAccEnable = CarAssistantManager.this.getValidEnable(enableState, CarAssistantManager.this.mIAccEnable);
                CarAssistantManager.this.notifyOnEnableChanged(Function.IACC_ENABLED, CarAssistantManager.this.mIAccEnable);
            }
        }

        @Override // com.yftech.vehicle.sdk.CarSettingsManager.CarSettingsListener
        public void onIntelligentAvoidEnableStateChanged(IBaseApi.EnableState enableState) {
            super.onIntelligentAvoidEnableStateChanged(enableState);
            boolean functionPresent = CarAssistantManager.this.getFunctionPresent(Function.IA_ENABLE);
            Log.i(CarAssistantManager.TAG, "onIntelligentAvoidEnableStateChanged state:" + enableState + " isFunctionPresent:" + functionPresent);
            if (functionPresent) {
                CarAssistantManager.this.mIntelligentAvoidEnable = CarAssistantManager.this.getValidEnable(enableState, CarAssistantManager.this.mIntelligentAvoidEnable);
                CarAssistantManager.this.notifyOnEnableChanged(Function.IA_ENABLE, CarAssistantManager.this.mIntelligentAvoidEnable);
            }
        }

        @Override // com.yftech.vehicle.sdk.CarSettingsManager.CarSettingsListener
        public void onLksModeChanged(ICarSettings.LksMode lksMode) {
            super.onLksModeChanged(lksMode);
            boolean functionPresent = CarAssistantManager.this.getFunctionPresent(Function.LKS_MODE_OPTION);
            LogUtil.i(CarAssistantManager.TAG, "onLksModeChanged type:" + lksMode + " isFunctionPresent:" + functionPresent);
            if (functionPresent) {
                CarAssistantManager.this.notifyOnOptionChanged(Function.LKS_MODE_OPTION, CarAssistantManager.this.getValidLksModeOption(lksMode));
                CarAssistantManager.this.notifyOnEnableChanged(Function.LDW_LKA_ENABLED, CarAssistantManager.this.getValidLdwLkaEnabled(CarSettingsManager.get().getLksState(), lksMode));
            }
        }

        @Override // com.yftech.vehicle.sdk.CarSettingsManager.CarSettingsListener
        public void onLksStateChanged(ICarSettings.LksState lksState) {
            super.onLksStateChanged(lksState);
            boolean functionPresent = CarAssistantManager.this.getFunctionPresent(Function.LDW_LKA_ENABLED);
            LogUtil.i(CarAssistantManager.TAG, "onLksStateChanged state:" + lksState + " isFunctionPresent:" + functionPresent);
            if (functionPresent) {
                CarAssistantManager.this.notifyOnEnableChanged(Function.LDW_LKA_ENABLED, CarAssistantManager.this.getValidLdwLkaEnabled(lksState, CarSettingsManager.get().getLksMode()));
            }
        }

        @Override // com.yftech.vehicle.sdk.CarSettingsManager.CarSettingsListener
        public void onTSRAudioWarningEnableStateChanged(IBaseApi.EnableState enableState) {
            super.onTSRAudioWarningEnableStateChanged(enableState);
            boolean functionPresent = CarAssistantManager.this.getFunctionPresent(Function.TSR_AUDIO_WARNING_ENABLED);
            LogUtil.i(CarAssistantManager.TAG, "onTSRAudioWarningStateChanged EnabledState:" + enableState + " isFunctionPresent:" + functionPresent);
            if (functionPresent) {
                CarAssistantManager.this.mTSRAudioWarningEnable = CarAssistantManager.this.getValidEnable(enableState, CarAssistantManager.this.mTSRAudioWarningEnable);
                CarAssistantManager.this.notifyOnEnableChanged(Function.TSR_AUDIO_WARNING_ENABLED, CarAssistantManager.this.mTSRAudioWarningEnable);
            }
        }

        @Override // com.yftech.vehicle.sdk.CarSettingsManager.CarSettingsListener
        public void onTSREnableStateChanged(IBaseApi.EnableState enableState) {
            super.onTSREnableStateChanged(enableState);
            boolean functionPresent = CarAssistantManager.this.getFunctionPresent(Function.TSR_ENABLED);
            LogUtil.i(CarAssistantManager.TAG, "onTSRStateChanged EnabledState:" + enableState + " isFunctionPresent:" + functionPresent);
            if (functionPresent) {
                CarAssistantManager.this.mTSREnable = CarAssistantManager.this.getValidEnable(enableState, CarAssistantManager.this.mTSREnable);
                CarAssistantManager.this.notifyOnEnableChanged(Function.TSR_ENABLED, CarAssistantManager.this.mTSREnable);
            }
        }
    };
    private CarIcmManager.CarIcmListener mCarIcmListener = new CarIcmManager.CarIcmListener() { // from class: com.yftech.settings.manager.CarAssistantManager.2
        @Override // com.yftech.vehicle.sdk.CarIcmManager.CarIcmListener
        public void onSpeedWarningChanged(int i) {
            super.onSpeedWarningChanged(i);
            boolean functionPresent = CarAssistantManager.this.getFunctionPresent(Function.SPEED_WARNING_VALUE);
            LogUtil.i(CarAssistantManager.TAG, "onSpeedWarningChanged speed:" + i + " isFunctionPresent:" + functionPresent);
            if (functionPresent) {
                if (CarAssistantManager.this.mStartTimeout) {
                    LogUtil.i(CarAssistantManager.TAG, "onSpeedWarningChanged startTimeout is true");
                } else {
                    CarAssistantManager.this.notifyOnValueChanged(Function.SPEED_WARNING_VALUE, Integer.valueOf(CarAssistantManager.this.getValidSpeedWarningValue(i)));
                }
            }
        }
    };

    public enum Function {
        UNKNOWN,
        FCW_OFF_ENABLED,
        FCW_WARNING_DISTANCE_OPTION,
        LDW_LKA_ENABLED,
        LKS_MODE_OPTION,
        SPEED_WARNING_VALUE,
        CRUISE_ASSIST_OPTION,
        ADAS_WARN_TYPE_OPTION,
        TSR_ENABLED,
        IACC_ENABLED,
        TSR_AUDIO_WARNING_ENABLED,
        AEB_OFF_ENABLED,
        STOP_TIMEOUT_ACTION,
        DFC_ENABLE,
        IA_ENABLE,
        DSA_OFF_ENABLES,
        DSA_MODE_OPTION
    }

    private CarAssistantManager() {
    }

    private int getADASWarnType() {
        return getValidAdasWarnTypeOption(CarSettingsManager.get().getADASWarnType());
    }

    private boolean getAEBOffEnabled() {
        this.mAEBOffEnable = getValidEnableStateOp(CarSettingsManager.get().getAEBOffEnableState(), this.mAEBOffEnable);
        LogUtil.i(TAG, "getAEBOffEnabled enable:" + this.mAEBOffEnable);
        return this.mAEBOffEnable;
    }

    private int getCruiseAssistType() {
        return getValidCruiseAssistOption(CarSettingsManager.get().getCruiseAssistMode());
    }

    private boolean getDSAWarningEnable() {
        return false;
    }

    private int getDSAWarningType() {
        return 2;
    }

    private boolean getFCWOffEnabled() {
        IBaseApi.EnableStateOp fCWOffEnableState = CarSettingsManager.get().getFCWOffEnableState();
        this.mFcwWarningDistanceEnable = getValidEnableStateOp(fCWOffEnableState, this.mFcwWarningDistanceEnable);
        LogUtil.i(TAG, "getFCWOffEnabled enableState:" + fCWOffEnableState + " enable:" + this.mFcwWarningDistanceEnable);
        return this.mFcwWarningDistanceEnable;
    }

    private int getFCWWarningDistance() {
        return getValidFcwWarningDistanceOption(CarSettingsManager.get().getFCWWarningDistance());
    }

    private boolean getFrontCarDistanceDisplay() {
        IBaseApi.EnableState frontCarDistanceDisplayEnableState = CarSettingsManager.get().getFrontCarDistanceDisplayEnableState();
        this.mFrontCarDistanceDisplayEnable = getValidEnable(frontCarDistanceDisplayEnableState, this.mFrontCarDistanceDisplayEnable);
        LogUtil.i(TAG, "setFrontCarDistanceDisplay state:" + frontCarDistanceDisplayEnableState + " enable:" + this.mFrontCarDistanceDisplayEnable);
        return this.mFrontCarDistanceDisplayEnable;
    }

    private boolean getIAEnable() {
        IBaseApi.EnableState intelligentAvoidEnableState = CarSettingsManager.get().getIntelligentAvoidEnableState();
        this.mIntelligentAvoidEnable = getValidEnable(intelligentAvoidEnableState, this.mIntelligentAvoidEnable);
        LogUtil.i(TAG, "getIAEnable enableState:" + intelligentAvoidEnableState + " enable:" + this.mIntelligentAvoidEnable);
        return this.mIntelligentAvoidEnable;
    }

    private boolean getIAccEnabled() {
        IBaseApi.EnableState iAccEnableState = CarSettingsManager.get().getIAccEnableState();
        this.mIAccEnable = getValidEnable(iAccEnableState, this.mIAccEnable);
        LogUtil.i(TAG, "getIAccEnabled enableState:" + iAccEnableState + " enable:" + this.mIAccEnable);
        return this.mIAccEnable;
    }

    public static synchronized CarAssistantManager getInstance() {
        if (sCarAssistantManager == null) {
            sCarAssistantManager = new CarAssistantManager();
        }
        return sCarAssistantManager;
    }

    private boolean getLdwLkaEnabled() {
        return getValidLdwLkaEnabled(CarSettingsManager.get().getLksState(), CarSettingsManager.get().getLksMode());
    }

    private int getLksMode() {
        return getValidLksModeOption(CarSettingsManager.get().getLksMode());
    }

    private int getSpeedWarning() {
        return getValidSpeedWarningValue(CarIcmManager.get().getSpeedWarning());
    }

    private boolean getTSRAudioWarningEnabled() {
        IBaseApi.EnableState tSRAudioWarningEnableState = CarSettingsManager.get().getTSRAudioWarningEnableState();
        this.mTSRAudioWarningEnable = getValidEnable(tSRAudioWarningEnableState, this.mTSRAudioWarningEnable);
        LogUtil.i(TAG, "getTSRAudioWarningEnabled enableState:" + tSRAudioWarningEnableState + " enable:" + this.mTSRAudioWarningEnable);
        return this.mTSRAudioWarningEnable;
    }

    private boolean getTSREnabled() {
        IBaseApi.EnableState tSREnableState = CarSettingsManager.get().getTSREnableState();
        this.mTSREnable = getValidEnable(tSREnableState, this.mTSREnable);
        LogUtil.i(TAG, "getTSREnabled enableState:" + tSREnableState + " enable:" + this.mTSREnable);
        return this.mTSREnable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getValidAdasWarnTypeOption(ICarSettings.ADASWarnType aDASWarnType) {
        for (int i = 0; i < this.ADAS_WARN_TYPE.length; i++) {
            if (this.ADAS_WARN_TYPE[i] == aDASWarnType) {
                this.mAdasWarnTypeOption = i;
                break;
            }
        }
        LogUtil.i(TAG, "getValidAdasWarnTypeOption type:" + aDASWarnType + ", index:" + this.mAdasWarnTypeOption);
        return this.mAdasWarnTypeOption;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getValidCruiseAssistOption(ICarSettings.CruiseAssistMode cruiseAssistMode) {
        for (int i = 0; i < this.CRUISE_ASSIST.length; i++) {
            if (this.CRUISE_ASSIST[i] == cruiseAssistMode) {
                this.mCruiseAssistOption = i;
                break;
            }
        }
        LogUtil.i(TAG, "getValidCruiseAssistOption mode:" + cruiseAssistMode + ", index:" + this.mCruiseAssistOption);
        return this.mCruiseAssistOption;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getValidFcwWarningDistanceOption(ICarSettings.FCWWarningDistance fCWWarningDistance) {
        for (int i = 0; i < this.FCW_WARNING_DISTANCE.length; i++) {
            if (this.FCW_WARNING_DISTANCE[i] == fCWWarningDistance) {
                this.mFcwWarningDistanceOption = i;
                break;
            }
        }
        LogUtil.i(TAG, "getValidFcwWarningDistanceOption distance:" + fCWWarningDistance + ", index:" + this.mFcwWarningDistanceOption);
        return this.mFcwWarningDistanceOption;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean getValidLdwLkaEnabled(ICarSettings.LksState lksState, ICarSettings.LksMode lksMode) {
        if (lksState == ICarSettings.LksState.LKS_OFF || lksState == ICarSettings.LksState.LKS_STANDBY || lksState == ICarSettings.LksState.LKS_ACTIVE || lksState == ICarSettings.LksState.LKS_FAILURE || lksState == ICarSettings.LksState.CAMERA_BLOCKED) {
            this.mLdwLkaEnabled = (lksState == ICarSettings.LksState.LKS_STANDBY || lksState == ICarSettings.LksState.LKS_ACTIVE) && (lksMode == ICarSettings.LksMode.STEERING || lksMode == ICarSettings.LksMode.WARNING || lksMode == ICarSettings.LksMode.STEERING_AND_WARNING);
        }
        LogUtil.i(TAG, "getValidLdwLkaEnabled state:" + lksState + ", mode:" + lksMode + ", mLdwLkaEnabled:" + this.mLdwLkaEnabled);
        return this.mLdwLkaEnabled;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getValidLksModeOption(ICarSettings.LksMode lksMode) {
        for (int i = 0; i < this.LKS_MODE.length; i++) {
            if (this.LKS_MODE[i] == lksMode) {
                this.mLksModeOption = i;
                break;
            }
        }
        LogUtil.i(TAG, "getValidLksModeOption mode:" + lksMode + ", index:" + this.mLksModeOption);
        return this.mLksModeOption;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getValidSpeedWarningValue(int i) {
        if (i >= 0 && i <= 200) {
            this.mSpeedWarningValue = i;
        }
        LogUtil.i(TAG, "getValidSpeedWarningValue value:" + i + ", mSpeedWarningValue:" + this.mSpeedWarningValue);
        return this.mSpeedWarningValue;
    }

    private boolean setADASWarnType(int i) {
        if (i < 0 || i >= this.ADAS_WARN_TYPE.length) {
            return false;
        }
        return CarSettingsManager.get().setADASWarnType(this.ADAS_WARN_TYPE[i]);
    }

    private boolean setAEBOffEnabled(boolean z) {
        return CarSettingsManager.get().setAEBOffEnabled(z);
    }

    private boolean setCruiseAssistType(int i) {
        if (i < 0 || i >= this.CRUISE_ASSIST.length) {
            return false;
        }
        return CarSettingsManager.get().setCruiseAssistMode(this.CRUISE_ASSIST[i]);
    }

    private boolean setDSAWarningEnable(boolean z) {
        return false;
    }

    private boolean setDSAWarningType(int i) {
        return true;
    }

    private boolean setFCWOffEnabled(boolean z) {
        return CarSettingsManager.get().setFCWOffEnabled(z);
    }

    private boolean setFCWWarningDistance(int i) {
        if (i < 0 || i >= this.FCW_WARNING_DISTANCE.length) {
            return false;
        }
        return CarSettingsManager.get().setFCWWarningDistance(this.FCW_WARNING_DISTANCE[i]);
    }

    private boolean setFrontCarDistanceDisplay(boolean z) {
        return CarSettingsManager.get().setFrontCarDistanceDisplayEnabled(z);
    }

    private boolean setIAEnable(boolean z) {
        return CarSettingsManager.get().setIntelligentAvoidEnabled(z);
    }

    private boolean setIAccEnabled(boolean z) {
        if (z && !getTSREnabled()) {
            setTSREnabled(true);
        }
        return CarSettingsManager.get().setIAccEnabled(z);
    }

    private boolean setLdwLkaEnabled(boolean z) {
        if (z && !this.IS_LKS_MODE_OPTION) {
            Log.i(TAG, "setLdwLkaEnabled: " + CarSettingsManager.get().setLksMode(this.LKS_MODE[1]));
        }
        return CarSettingsManager.get().setLdwLkaEnabled(z);
    }

    private boolean setLksMode(int i) {
        if (i < 0 || i >= this.LKS_MODE.length) {
            return false;
        }
        if (!getLdwLkaEnabled()) {
            setLdwLkaEnabled(true);
        }
        return CarSettingsManager.get().setLksMode(this.LKS_MODE[i]);
    }

    private boolean setSpeedWarning(int i) {
        return CarIcmManager.get().setSpeedWarning(i);
    }

    private boolean setTSRAudioWarningEnabled(boolean z) {
        if (z && !getTSREnabled()) {
            setTSREnabled(true);
        }
        return CarSettingsManager.get().setTSRAudioWarningEnabled(z);
    }

    private boolean setTSREnabled(boolean z) {
        return CarSettingsManager.get().setTSREnabled(z);
    }

    @Override // com.yftech.settings.manager.BaseManager
    public void deInit() {
        super.deInit();
        CarSettingsManager.get().unregisterListener(this.mCarSettingsListener);
        CarIcmManager.get().unregisterListener(this.mCarIcmListener);
    }

    @Override // com.yftech.settings.manager.BaseManager
    public boolean getEnabled(Function function) {
        switch (function) {
            case FCW_OFF_ENABLED:
                return getFCWOffEnabled();
            case LDW_LKA_ENABLED:
                return getLdwLkaEnabled();
            case TSR_ENABLED:
                return getTSREnabled();
            case IACC_ENABLED:
                return getIAccEnabled();
            case TSR_AUDIO_WARNING_ENABLED:
                return getTSRAudioWarningEnabled();
            case AEB_OFF_ENABLED:
                return getAEBOffEnabled();
            case DSA_OFF_ENABLES:
                return getDSAWarningEnable();
            case DFC_ENABLE:
                return getFrontCarDistanceDisplay();
            case IA_ENABLE:
                return getIAEnable();
            default:
                return false;
        }
    }

    public boolean getFunctionPresent(Function function) {
        switch (function) {
            case FCW_OFF_ENABLED:
                return CarConfig.isFrontCollisionWarningPresent();
            case LDW_LKA_ENABLED:
                return CarConfig.isLaneAuxiliarySwitchPresent();
            case TSR_ENABLED:
                return CarConfig.isSpeedLimtedSignRecognitionPresent();
            case IACC_ENABLED:
                return CarConfig.isIntelligentSpeedLimitControlPresent();
            case TSR_AUDIO_WARNING_ENABLED:
                return CarConfig.isOverspeedAlarmOfTsrPresent();
            case AEB_OFF_ENABLED:
                return CarConfig.isAutoEmergencyBrakingBrakingPresent();
            case DSA_OFF_ENABLES:
                return CarConfig.isDriverStateOfAlertPresent();
            case DFC_ENABLE:
                return CarConfig.isFrontDistanceDisplayPresent();
            case IA_ENABLE:
                return CarConfig.isIntelligentCollisionAvoidancePresent();
            case FCW_WARNING_DISTANCE_OPTION:
                return CarConfig.isForwardCollisionWarningDistancePresent();
            case LKS_MODE_OPTION:
                this.IS_LKS_MODE_OPTION = CarConfig.isLaneAssistPresent();
                return CarConfig.isLaneAssistPresent();
            case CRUISE_ASSIST_OPTION:
                return CarConfig.isIfcCruisemodePresent();
            case ADAS_WARN_TYPE_OPTION:
                return false;
            case DSA_MODE_OPTION:
                return CarConfig.isAlertModePresent();
            case SPEED_WARNING_VALUE:
                return CarConfig.isOverspeedWarningPresent();
            default:
                return false;
        }
    }

    @Override // com.yftech.settings.manager.BaseManager
    public int getOption(Function function) {
        switch (function) {
            case FCW_WARNING_DISTANCE_OPTION:
                return getFCWWarningDistance();
            case LKS_MODE_OPTION:
                return getLksMode();
            case CRUISE_ASSIST_OPTION:
                return getCruiseAssistType();
            case ADAS_WARN_TYPE_OPTION:
                return getADASWarnType();
            case DSA_MODE_OPTION:
                return getDSAWarningType();
            default:
                return -1;
        }
    }

    @Override // com.yftech.settings.manager.BaseManager
    public Object getValue(Function function) {
        if (AnonymousClass3.$SwitchMap$com$yftech$settings$manager$CarAssistantManager$Function[function.ordinal()] != 16) {
            return -1;
        }
        return Integer.valueOf(getSpeedWarning());
    }

    @Override // com.yftech.settings.manager.BaseManager
    public void init(Context context) {
        super.init(context);
        ICarConfig.PromptType promptType = CarConfig.getPromptType();
        if (promptType == ICarConfig.PromptType.SOUND_AND_VOICE) {
            this.ADAS_WARN_TYPE = new ICarSettings.ADASWarnType[]{ICarSettings.ADASWarnType.SOUND, ICarSettings.ADASWarnType.SEAT_VIBRATION};
        } else if (promptType == ICarConfig.PromptType.SOUND_AND_VOICE_AND_SEAT_VIBRATION) {
            this.ADAS_WARN_TYPE = new ICarSettings.ADASWarnType[]{ICarSettings.ADASWarnType.SOUND, ICarSettings.ADASWarnType.SEAT_VIBRATION, ICarSettings.ADASWarnType.BOTH};
        } else {
            this.ADAS_WARN_TYPE = new ICarSettings.ADASWarnType[]{ICarSettings.ADASWarnType.SOUND, ICarSettings.ADASWarnType.SEAT_VIBRATION, ICarSettings.ADASWarnType.BOTH};
        }
        CarSettingsManager.get().registerListener(this.mCarSettingsListener);
        CarIcmManager.get().registerListener(this.mCarIcmListener);
    }

    @Override // com.yftech.settings.manager.BaseManager
    public boolean setAction(Function function) {
        boolean zStopTimeout = AnonymousClass3.$SwitchMap$com$yftech$settings$manager$CarAssistantManager$Function[function.ordinal()] != 1 ? false : stopTimeout();
        LogUtil.i(TAG, "setAction function:" + function + ", result:" + zStopTimeout);
        return zStopTimeout;
    }

    @Override // com.yftech.settings.manager.BaseManager
    public boolean setEnabled(Function function, boolean z) {
        boolean fCWOffEnabled;
        startTimeout();
        switch (function) {
            case FCW_OFF_ENABLED:
                fCWOffEnabled = setFCWOffEnabled(z);
                break;
            case LDW_LKA_ENABLED:
                fCWOffEnabled = setLdwLkaEnabled(z);
                break;
            case TSR_ENABLED:
                fCWOffEnabled = setTSREnabled(z);
                break;
            case IACC_ENABLED:
                fCWOffEnabled = setIAccEnabled(z);
                break;
            case TSR_AUDIO_WARNING_ENABLED:
                fCWOffEnabled = setTSRAudioWarningEnabled(z);
                break;
            case AEB_OFF_ENABLED:
                fCWOffEnabled = setAEBOffEnabled(z);
                break;
            case DSA_OFF_ENABLES:
                fCWOffEnabled = setDSAWarningEnable(z);
                break;
            case DFC_ENABLE:
                fCWOffEnabled = setFrontCarDistanceDisplay(z);
                break;
            case IA_ENABLE:
                fCWOffEnabled = setIAEnable(z);
                break;
            default:
                fCWOffEnabled = false;
                break;
        }
        LogUtil.i(TAG, "setEnabled function:" + function + ", enable:" + z + ", result:" + fCWOffEnabled);
        return fCWOffEnabled;
    }

    @Override // com.yftech.settings.manager.BaseManager
    public boolean setOption(Function function, int i) {
        boolean fCWWarningDistance;
        startTimeout();
        switch (function) {
            case FCW_WARNING_DISTANCE_OPTION:
                fCWWarningDistance = setFCWWarningDistance(i);
                break;
            case LKS_MODE_OPTION:
                fCWWarningDistance = setLksMode(i);
                break;
            case CRUISE_ASSIST_OPTION:
                fCWWarningDistance = setCruiseAssistType(i);
                break;
            case ADAS_WARN_TYPE_OPTION:
                fCWWarningDistance = setADASWarnType(i);
                break;
            case DSA_MODE_OPTION:
                fCWWarningDistance = setDSAWarningType(i);
                break;
            default:
                fCWWarningDistance = false;
                break;
        }
        LogUtil.i(TAG, "setOption function:" + function + ", index:" + i + ", result:" + fCWWarningDistance);
        return fCWWarningDistance;
    }

    @Override // com.yftech.settings.manager.BaseManager
    public boolean setValue(Function function, Object obj) {
        startTimeout();
        boolean speedWarning = AnonymousClass3.$SwitchMap$com$yftech$settings$manager$CarAssistantManager$Function[function.ordinal()] != 16 ? false : setSpeedWarning(((Integer) obj).intValue());
        LogUtil.i(TAG, "setValue function:" + function + ", value:" + obj + ", result:" + speedWarning);
        return speedWarning;
    }
}
