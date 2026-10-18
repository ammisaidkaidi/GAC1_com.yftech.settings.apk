package com.yftech.settings.manager;

import android.content.Context;
import com.yftech.settings.CommonConstant;
import com.yftech.settings.avdc.DrivingModeTrackDialDialog;
import com.yftech.settings.utils.LogUtil;
import com.yftech.vehicle.internal.adapter.IAirCondition;
import com.yftech.vehicle.internal.adapter.IBaseApi;
import com.yftech.vehicle.internal.adapter.ICarDrive;
import com.yftech.vehicle.internal.adapter.ICarPower;
import com.yftech.vehicle.sdk.AirConditionManager;
import com.yftech.vehicle.sdk.CarConfig;
import com.yftech.vehicle.sdk.CarDriveManager;
import com.yftech.vehicle.sdk.CarPowerManager;

/* JADX INFO: loaded from: classes.dex */
public class CarDriveModeManager extends BaseManager<Function> {
    private static final int ESP_STYLE_OFF = 0;
    private static final int ESP_STYLE_SPORT = 1;
    private static final int ESP_STYLE_TOP_SPEED = 2;
    private static final String TAG = "CarDriveModeManager";
    private static CarDriveModeManager sCarDriveModeManager;
    private DrivingModeTrackDialDialog drivingModeTrackDialDialog;
    private Context mContext;
    private ICarDrive.EPSStyle[] EPS_STYLE = {ICarDrive.EPSStyle.LIGHT, ICarDrive.EPSStyle.COMFORT, ICarDrive.EPSStyle.SPORT};
    private ICarDrive.TcuDriveMode[] TCU_DRIVE_MODE = {ICarDrive.TcuDriveMode.NORMAL, ICarDrive.TcuDriveMode.SPORT, ICarDrive.TcuDriveMode.UPSLOPE_ONE, ICarDrive.TcuDriveMode.HOT_ONE, ICarDrive.TcuDriveMode.UPSLOPE_TWO, ICarDrive.TcuDriveMode.HOT_TWO, ICarDrive.TcuDriveMode.CRUISE, ICarDrive.TcuDriveMode.ECO, ICarDrive.TcuDriveMode.SPORT_PLUS};
    private ICarDrive.DriveSystemMode[] DRIVE_SYSTEM_MODE = {ICarDrive.DriveSystemMode.NORMAL, ICarDrive.DriveSystemMode.ECO, ICarDrive.DriveSystemMode.SPORT, ICarDrive.DriveSystemMode.SPORT_PLUS};
    private int[] SUSPENSION_MODE_TYPE = {0, 1};
    private int[] SHADOW_DRIVER_TYPE = {0, 1, 2, 3, 4};
    private boolean[] EMS_ENGINE_WAVE = {false, true};
    private IAirCondition.ComfortCurveMode[] AC_COMFORT_CURVE_MODE = {IAirCondition.ComfortCurveMode.SOFT, IAirCondition.ComfortCurveMode.NORMAL, IAirCondition.ComfortCurveMode.FAST};
    private int[] ENERGY_RECOVERY_LEVEL_TYPE = {0, 1, 2};
    private int mEpsStyleOption = 0;
    private boolean mEpsStyleEnable = true;
    private int mSuspensionModeOption = 0;
    private int mShadowDriverOption = 0;
    private int mThrottleSensitivityValue = 0;
    private boolean mEmsEngineWaveEnable = false;
    private int mAcComfortCurveModeOption = 0;
    private int mEnergyRecoveryLevelOption = 3;
    private int mTcuDriveModeOption = 0;
    private int mDriveSystemModeOption = 1;
    private ICarDrive.DriveMode mDriveModeValue = CommonConstant.DEFAULT_DRIVE_MODE_VALUE;
    private boolean mRememberDrivingModeEnabled = false;
    private int mEspStyleOption = 0;
    private CarDriveManager.CarDriveListener mCarDriveListener = new CarDriveManager.CarDriveListener() { // from class: com.yftech.settings.manager.CarDriveModeManager.1
        @Override // com.yftech.vehicle.sdk.CarDriveManager.CarDriveListener
        public void onAssistParaSwitchReqStateChanged(IBaseApi.EnableState enableState) {
            super.onAssistParaSwitchReqStateChanged(enableState);
            if (CarDriveModeManager.this.getFunctionPresent(Function.EPS_STYLE_OPTION)) {
                switch (AnonymousClass3.$SwitchMap$com$yftech$vehicle$internal$adapter$IBaseApi$EnableState[enableState.ordinal()]) {
                    case 1:
                        CarDriveModeManager.this.mEpsStyleEnable = false;
                        break;
                    case 2:
                        CarDriveModeManager.this.mEpsStyleEnable = true;
                        break;
                }
                LogUtil.i(CarDriveModeManager.TAG, "onAssistParaSwitchReqStateChanged() enableState:" + enableState + " mEpsStyleEnable:" + CarDriveModeManager.this.mEpsStyleEnable);
                CarDriveModeManager.this.notifyOnEnableChanged(Function.EPS_STYLE_ENABLE_STATE, CarDriveModeManager.this.mEpsStyleEnable);
            }
        }

        @Override // com.yftech.vehicle.sdk.CarDriveManager.CarDriveListener
        public void onBcsVdcOffStateChanged(ICarDrive.VdcOffState vdcOffState) {
            super.onBcsVdcOffStateChanged(vdcOffState);
            if (CarDriveModeManager.this.getFunctionPresent(Function.ESP_STYLE_OPTION)) {
                ICarDrive.EspStyle espStyle = CarDriveManager.get().getEspStyle();
                LogUtil.i(CarDriveModeManager.TAG, "onBcsVdcOffStateChanged state: " + vdcOffState + " style:" + espStyle);
                CarDriveModeManager.this.notifyOnOptionChanged(Function.ESP_STYLE_OPTION, CarDriveModeManager.this.getValidEspStyleOption(espStyle, vdcOffState));
            }
        }

        @Override // com.yftech.vehicle.sdk.CarDriveManager.CarDriveListener
        public void onDriveModeChanged(final ICarDrive.DriveMode driveMode) {
            super.onDriveModeChanged(driveMode);
            if (CarDriveModeManager.this.getFunctionPresent(Function.DRIVE_MODE_VALUE)) {
                LogUtil.i(CarDriveModeManager.TAG, "onDriveModeChanged driveMode:" + driveMode);
                if (driveMode == ICarDrive.DriveMode.ECO_PRO_MODE || driveMode == ICarDrive.DriveMode.COMFORT_MODE || driveMode == ICarDrive.DriveMode.SPORT_MODE || driveMode == ICarDrive.DriveMode.SPORT_PLUS_MODE) {
                    if (driveMode != ICarDrive.DriveMode.SPORT_PLUS_MODE) {
                        CarDriveModeManager.this.mHandler.removeCallbacks(CarDriveModeManager.this.showTrackDialDialogRunnable);
                    }
                    if (CarDriveModeManager.this.getRememberDrivingModeEnabled()) {
                        CarDriveModeManager.this.notifyOnValueChanged(Function.DRIVE_MODE_VALUE, CarDriveModeManager.this.getValidDriveModeValue(driveMode));
                    } else {
                        CarDriveModeManager.this.mHandler.postDelayed(new Runnable() { // from class: com.yftech.settings.manager.CarDriveModeManager.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                if (CarPowerManager.get().getPowerMode() != ICarPower.PowerMode.OFF) {
                                    CarDriveModeManager.this.notifyOnValueChanged(Function.DRIVE_MODE_VALUE, CarDriveModeManager.this.getValidDriveModeValue(driveMode));
                                }
                            }
                        }, 250L);
                    }
                }
            }
        }

        @Override // com.yftech.vehicle.sdk.CarDriveManager.CarDriveListener
        public void onDriveSystemModeChanged(ICarDrive.DriveSystemMode driveSystemMode) {
            super.onDriveSystemModeChanged(driveSystemMode);
            LogUtil.i(CarDriveModeManager.TAG, "onDriveSystemModeChanged mode" + driveSystemMode);
            CarDriveModeManager.this.notifyOnOptionChanged(Function.DRIVE_SYSTEM_MODE_OPTION, CarDriveModeManager.this.getValidDriveSystemModeOption(driveSystemMode));
        }

        @Override // com.yftech.vehicle.sdk.CarDriveManager.CarDriveListener
        public void onEMSEngineWaveSwitchStateChanged(IBaseApi.SwitchState switchState) {
            super.onEMSEngineWaveSwitchStateChanged(switchState);
            if (CarDriveModeManager.this.getFunctionPresent(Function.EMS_ENGINE_WAVE_ENABLE)) {
                CarDriveModeManager.this.mEmsEngineWaveEnable = CarDriveModeManager.this.getValidSwitchEnable(switchState, CarDriveModeManager.this.mEmsEngineWaveEnable);
                LogUtil.i(CarDriveModeManager.TAG, "onEMSEngineWaveSwitchStateChanged state:" + switchState + " enable:" + CarDriveModeManager.this.mEmsEngineWaveEnable);
                CarDriveModeManager.this.notifyOnEnableChanged(Function.EMS_ENGINE_WAVE_ENABLE, CarDriveModeManager.this.mEmsEngineWaveEnable);
            }
        }

        @Override // com.yftech.vehicle.sdk.CarDriveManager.CarDriveListener
        public void onEPSStyleChanged(ICarDrive.EPSStyle ePSStyle) {
            super.onEPSStyleChanged(ePSStyle);
            if (CarDriveModeManager.this.getFunctionPresent(Function.EPS_STYLE_OPTION)) {
                LogUtil.i(CarDriveModeManager.TAG, "onEPSStyleChanged style:" + ePSStyle);
                CarDriveModeManager.this.notifyOnOptionChanged(Function.EPS_STYLE_OPTION, CarDriveModeManager.this.getValidEpsStyleOption(ePSStyle));
            }
        }

        @Override // com.yftech.vehicle.sdk.CarDriveManager.CarDriveListener
        public void onEspStyleChanged(ICarDrive.EspStyle espStyle) {
            super.onEspStyleChanged(espStyle);
            if (CarDriveModeManager.this.getFunctionPresent(Function.ESP_STYLE_OPTION)) {
                ICarDrive.VdcOffState bcsVdcOffState = CarDriveManager.get().getBcsVdcOffState();
                LogUtil.i(CarDriveModeManager.TAG, "onEspStyleChanged style: " + espStyle + " vdcOffState:" + bcsVdcOffState);
                CarDriveModeManager.this.notifyOnOptionChanged(Function.ESP_STYLE_OPTION, CarDriveModeManager.this.getValidEspStyleOption(espStyle, bcsVdcOffState));
            }
        }

        @Override // com.yftech.vehicle.sdk.CarDriveManager.CarDriveListener
        public void onMemoryDriveModeChanged(ICarDrive.MemoryDriveMode memoryDriveMode) {
            super.onMemoryDriveModeChanged(memoryDriveMode);
            boolean functionPresent = CarDriveModeManager.this.getFunctionPresent(Function.REMEMBER_DRIVING_MODE_ENABLED);
            LogUtil.i(CarDriveModeManager.TAG, "onMemoryDriveModeChanged mode:" + memoryDriveMode + " isFunctionPresent:" + functionPresent);
            if (functionPresent) {
                CarDriveModeManager.this.notifyOnEnableChanged(Function.REMEMBER_DRIVING_MODE_ENABLED, CarDriveModeManager.this.getValidRememberDrivingModeEnabled(memoryDriveMode));
            }
        }

        @Override // com.yftech.vehicle.sdk.CarDriveManager.CarDriveListener
        public void onTcuDriveModeChanged(ICarDrive.TcuDriveMode tcuDriveMode) {
            super.onTcuDriveModeChanged(tcuDriveMode);
            LogUtil.i(CarDriveModeManager.TAG, "onTcuDriveModeChanged mode:" + tcuDriveMode);
            CarDriveModeManager.this.notifyOnOptionChanged(Function.TCU_DRIVE_MODE_OPTION, CarDriveModeManager.this.getValidTcuDriveModeOption(tcuDriveMode));
        }
    };
    private final Runnable showTrackDialDialogRunnable = new Runnable() { // from class: com.yftech.settings.manager.CarDriveModeManager.2
        @Override // java.lang.Runnable
        public void run() {
            if (CarDriveModeManager.this.drivingModeTrackDialDialog != null && CarDriveModeManager.this.drivingModeTrackDialDialog.isShowing()) {
                CarDriveModeManager.this.drivingModeTrackDialDialog.dismiss();
                CarDriveModeManager.this.drivingModeTrackDialDialog = null;
            }
            CarDriveModeManager.this.drivingModeTrackDialDialog = new DrivingModeTrackDialDialog(CarDriveModeManager.this.mContext);
            CarDriveModeManager.this.drivingModeTrackDialDialog.show();
        }
    };

    public enum Function {
        UNKNOWN,
        DRIVE_MODE_VALUE,
        EPS_STYLE_OPTION,
        EPS_STYLE_ENABLE_STATE,
        SUSPENSION_MODE_OPTION,
        SHADOW_DRIVER_OPTION,
        THROTTLE_SENSITIVITY_VALUE,
        EMS_ENGINE_WAVE_ENABLE,
        ENERGY_RECOVERY_LEVEL_OPTION,
        RESET_ACTION,
        REMEMBER_DRIVING_MODE_ENABLED,
        STOP_TIMEOUT_ACTION,
        ESP_STYLE_OPTION,
        TCU_DRIVE_MODE_OPTION,
        DRIVE_SYSTEM_MODE_OPTION,
        TRACK_DIALOG_SHOW_ACTION
    }

    private CarDriveModeManager() {
    }

    private int getAcComfortCurveMode() {
        return getValidAcComfortCurveModeOption(AirConditionManager.get().getComfortCurveMode());
    }

    private ICarDrive.DriveMode getDriveMode() {
        return getValidDriveModeValue(CarDriveManager.get().getDriveMode());
    }

    private int getDriveSystemMode() {
        return getValidDriveSystemModeOption(CarDriveManager.get().getDriveSystemMode());
    }

    private boolean getEMSEngineWave() {
        IBaseApi.SwitchState eMSEngineWaveSwitchState = CarDriveManager.get().getEMSEngineWaveSwitchState();
        this.mEmsEngineWaveEnable = getValidSwitchEnable(eMSEngineWaveSwitchState, this.mEmsEngineWaveEnable);
        LogUtil.i(TAG, "getEMSEngineWave state:" + eMSEngineWaveSwitchState + " enable:" + this.mEmsEngineWaveEnable);
        return this.mEmsEngineWaveEnable;
    }

    private boolean getEPSEnableState() {
        IBaseApi.EnableState assistParaSwitchReqState = CarDriveManager.get().getAssistParaSwitchReqState();
        switch (assistParaSwitchReqState) {
            case ENABLED:
                this.mEpsStyleEnable = false;
                break;
            case DISABLED:
                this.mEpsStyleEnable = true;
                break;
        }
        LogUtil.i(TAG, "getEPSEnableState() enableState:" + assistParaSwitchReqState + " mEpsStyleEnable:" + this.mEpsStyleEnable);
        return this.mEpsStyleEnable;
    }

    private int getEPSStyle() {
        return getValidEpsStyleOption(CarDriveManager.get().getEPSStyle());
    }

    private int getEnergyRecoveryLevel() {
        return getValidEnergyRecoveryLevelOption(0);
    }

    private int getEspStyle() {
        return getValidEspStyleOption(CarDriveManager.get().getEspStyle(), CarDriveManager.get().getBcsVdcOffState());
    }

    public static synchronized CarDriveModeManager getInstance() {
        if (sCarDriveModeManager == null) {
            sCarDriveModeManager = new CarDriveModeManager();
        }
        return sCarDriveModeManager;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean getRememberDrivingModeEnabled() {
        return getValidRememberDrivingModeEnabled(CarDriveManager.get().getMemoryDriveMode());
    }

    private int getShadowDriver() {
        return getValidShadowDriverOption(0);
    }

    private int getSuspensionMode() {
        return getValidSuspensionModeOption(0);
    }

    private int getTcuDriveMode() {
        return getValidTcuDriveModeOption(CarDriveManager.get().getTcuDriveMode());
    }

    private int getThrottleSensitivity() {
        return getValidThrottleSensitivityValue(0);
    }

    private int getValidAcComfortCurveModeOption(IAirCondition.ComfortCurveMode comfortCurveMode) {
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
    public ICarDrive.DriveMode getValidDriveModeValue(ICarDrive.DriveMode driveMode) {
        if (!CarConfig.isSportPlusPresent() && driveMode == ICarDrive.DriveMode.SPORT_PLUS_MODE) {
            return this.mDriveModeValue;
        }
        if (driveMode == ICarDrive.DriveMode.ECO_PRO_MODE || driveMode == ICarDrive.DriveMode.COMFORT_MODE || driveMode == ICarDrive.DriveMode.SPORT_MODE || driveMode == ICarDrive.DriveMode.SPORT_PLUS_MODE) {
            this.mDriveModeValue = driveMode;
        }
        LogUtil.i(TAG, "getValidDriveModeValue driveMode:" + driveMode + ", mDriveModeValue:" + this.mDriveModeValue);
        return this.mDriveModeValue;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getValidDriveSystemModeOption(ICarDrive.DriveSystemMode driveSystemMode) {
        for (int i = 0; i < this.DRIVE_SYSTEM_MODE.length; i++) {
            if (driveSystemMode == this.DRIVE_SYSTEM_MODE[i]) {
                this.mDriveSystemModeOption = i;
            }
        }
        LogUtil.i(TAG, "getValidDriveSystemModeOption driveSystemMode:" + driveSystemMode + " ,mDriveSystemModeOption:" + this.mDriveSystemModeOption);
        return this.mDriveSystemModeOption;
    }

    private int getValidEnergyRecoveryLevelOption(int i) {
        for (int i2 = 0; i2 < this.ENERGY_RECOVERY_LEVEL_TYPE.length; i2++) {
            if (this.ENERGY_RECOVERY_LEVEL_TYPE[i2] == i) {
                this.mEnergyRecoveryLevelOption = i2;
                break;
            }
        }
        LogUtil.i(TAG, "getValidEnergyRecoveryLevelOption type:" + i + ", index:" + this.mEnergyRecoveryLevelOption);
        return this.mEnergyRecoveryLevelOption;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getValidEpsStyleOption(ICarDrive.EPSStyle ePSStyle) {
        for (int i = 0; i < this.EPS_STYLE.length; i++) {
            if (this.EPS_STYLE[i] == ePSStyle) {
                this.mEpsStyleOption = i;
                break;
            }
        }
        LogUtil.i(TAG, "getValidEpsStyleOption style:" + ePSStyle + ", index:" + this.mEpsStyleOption);
        return this.mEpsStyleOption;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getValidEspStyleOption(ICarDrive.EspStyle espStyle, ICarDrive.VdcOffState vdcOffState) {
        if (vdcOffState == ICarDrive.VdcOffState.OFF) {
            this.mEspStyleOption = 0;
        } else if (vdcOffState == ICarDrive.VdcOffState.ON) {
            if (espStyle == ICarDrive.EspStyle.NORMAL) {
                this.mEspStyleOption = 1;
            } else if (espStyle == ICarDrive.EspStyle.SPORT) {
                this.mEspStyleOption = 2;
            }
        }
        LogUtil.i(TAG, "getValidEspStyleOption style: " + espStyle + " state:" + vdcOffState + " mEspStyleOption:" + this.mEspStyleOption);
        return this.mEspStyleOption;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean getValidRememberDrivingModeEnabled(ICarDrive.MemoryDriveMode memoryDriveMode) {
        if (memoryDriveMode == ICarDrive.MemoryDriveMode.MEMORY || memoryDriveMode == ICarDrive.MemoryDriveMode.NOT_MEMORY) {
            this.mRememberDrivingModeEnabled = memoryDriveMode == ICarDrive.MemoryDriveMode.MEMORY;
        }
        LogUtil.i(TAG, "getValidRememberDrivingModeEnabled mode:" + memoryDriveMode + ", mRememberDrivingModeEnabled:" + this.mRememberDrivingModeEnabled);
        return this.mRememberDrivingModeEnabled;
    }

    private int getValidShadowDriverOption(int i) {
        for (int i2 = 0; i2 < this.SHADOW_DRIVER_TYPE.length; i2++) {
            if (this.SHADOW_DRIVER_TYPE[i2] == i) {
                this.mShadowDriverOption = i2;
                break;
            }
        }
        LogUtil.i(TAG, "getValidShadowDriverOption type:" + i + ", index:" + this.mShadowDriverOption);
        return this.mShadowDriverOption;
    }

    private int getValidSuspensionModeOption(int i) {
        for (int i2 = 0; i2 < this.SUSPENSION_MODE_TYPE.length; i2++) {
            if (this.SUSPENSION_MODE_TYPE[i2] == i) {
                this.mSuspensionModeOption = i2;
                break;
            }
        }
        LogUtil.i(TAG, "getValidSuspensionModeOption type:" + i + ", index:" + this.mSuspensionModeOption);
        return this.mSuspensionModeOption;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getValidTcuDriveModeOption(ICarDrive.TcuDriveMode tcuDriveMode) {
        for (int i = 0; i < this.TCU_DRIVE_MODE.length; i++) {
            if (tcuDriveMode == this.TCU_DRIVE_MODE[i]) {
                this.mTcuDriveModeOption = i;
            }
        }
        LogUtil.i(TAG, "getValidTcuDriveModeOption tcuDriveMode:" + tcuDriveMode + " ,mTcuDriveModeOption:" + this.mTcuDriveModeOption);
        return this.mTcuDriveModeOption;
    }

    private int getValidThrottleSensitivityValue(int i) {
        this.mThrottleSensitivityValue = i;
        LogUtil.i(TAG, "getValidThrottleSensitivityValue value:" + i + ", index:" + this.mThrottleSensitivityValue);
        return this.mThrottleSensitivityValue;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2, types: [int] */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r8v0, types: [com.yftech.settings.manager.CarDriveModeManager] */
    private boolean reset() {
        int i;
        boolean z;
        ?? r6;
        boolean ePSStyle;
        StringBuffer stringBuffer = new StringBuffer("reset()");
        switch (getDriveMode()) {
            case ECO_PRO_MODE:
                i = 1;
                z = false;
                r6 = z;
                break;
            case COMFORT_MODE:
                r6 = 1;
                i = 0;
                z = false;
                break;
            case SPORT_MODE:
                i = 2;
                z = true;
                r6 = z;
                break;
            default:
                i = -1;
                r6 = -1;
                z = false;
                break;
        }
        if (i == -1 || !getFunctionPresent(Function.EPS_STYLE_OPTION)) {
            ePSStyle = false;
        } else {
            ePSStyle = setEPSStyle(i);
            stringBuffer.append(" resetEPSStyle:");
            stringBuffer.append(ePSStyle);
        }
        if (getFunctionPresent(Function.EMS_ENGINE_WAVE_ENABLE)) {
            ePSStyle = setEMSEngineWave(z) && ePSStyle;
            stringBuffer.append(" resetEMSEngineWave:");
            stringBuffer.append(ePSStyle);
        }
        if (r6 != -1 && CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.AC_COMFORT_CURVE_MODE_OPTION)) {
            ePSStyle = setAcComfortCurveMode(r6) && ePSStyle;
            stringBuffer.append(" resetComfortCurve:");
            stringBuffer.append(ePSStyle);
        }
        LogUtil.i(TAG, stringBuffer.toString());
        return ePSStyle;
    }

    private boolean setAcComfortCurveMode(int i) {
        if (i < 0 || i >= this.AC_COMFORT_CURVE_MODE.length) {
            return false;
        }
        return AirConditionManager.get().setComfortCurveMode(this.AC_COMFORT_CURVE_MODE[i]);
    }

    private boolean setDriveMode(ICarDrive.DriveMode driveMode) {
        return CarDriveManager.get().setDriveMode(driveMode);
    }

    private boolean setEMSEngineWave(boolean z) {
        return CarDriveManager.get().setEMSEngineWaveEnabled(z);
    }

    private boolean setEPSStyle(int i) {
        if (i < 0 || i >= this.EPS_STYLE.length) {
            return false;
        }
        return CarDriveManager.get().setEPSStyle(this.EPS_STYLE[i]);
    }

    private boolean setEnergyRecoveryLevel(int i) {
        if (i < 0) {
            return false;
        }
        int length = this.ENERGY_RECOVERY_LEVEL_TYPE.length;
        return false;
    }

    private boolean setRememberDrivingModeEnabled(boolean z) {
        return CarDriveManager.get().setMemoryDriveMode(z ? ICarDrive.MemoryDriveMode.MEMORY : ICarDrive.MemoryDriveMode.NOT_MEMORY);
    }

    private boolean setShadowDriver(int i) {
        if (i < 0) {
            return false;
        }
        int length = this.SHADOW_DRIVER_TYPE.length;
        return false;
    }

    private boolean setSuspensionMode(int i) {
        if (i < 0) {
            return false;
        }
        int length = this.SUSPENSION_MODE_TYPE.length;
        return false;
    }

    private boolean setThrottleSensitivity(int i) {
        return false;
    }

    private boolean showTrackDialog() {
        this.mHandler.postDelayed(this.showTrackDialDialogRunnable, 2000L);
        return true;
    }

    @Override // com.yftech.settings.manager.BaseManager
    public void deInit() {
        super.deInit();
        CarDriveManager.get().unregisterListener(this.mCarDriveListener);
    }

    @Override // com.yftech.settings.manager.BaseManager
    public boolean getEnabled(Function function) {
        switch (function) {
            case REMEMBER_DRIVING_MODE_ENABLED:
                return getRememberDrivingModeEnabled();
            case EMS_ENGINE_WAVE_ENABLE:
                return getEMSEngineWave();
            case EPS_STYLE_ENABLE_STATE:
                return getEPSEnableState();
            default:
                return false;
        }
    }

    public boolean getFunctionPresent(Function function) {
        switch (function) {
            case RESET_ACTION:
                return true;
            case STOP_TIMEOUT_ACTION:
            case TRACK_DIALOG_SHOW_ACTION:
            case EPS_STYLE_ENABLE_STATE:
            case TCU_DRIVE_MODE_OPTION:
            case DRIVE_SYSTEM_MODE_OPTION:
            default:
                return false;
            case REMEMBER_DRIVING_MODE_ENABLED:
                return CarConfig.isDriveModeMemorySwitchPresent();
            case EMS_ENGINE_WAVE_ENABLE:
                return CarConfig.isEngineWaveSwitchPresent();
            case EPS_STYLE_OPTION:
                return CarConfig.isSteeringWheelSteeringHandForcePresent();
            case SUSPENSION_MODE_OPTION:
                return CarConfig.isSuspensionDampingPresent();
            case SHADOW_DRIVER_OPTION:
                return false;
            case ENERGY_RECOVERY_LEVEL_OPTION:
                return CarConfig.isEnergyRecoveryModePresent();
            case ESP_STYLE_OPTION:
                return true;
            case THROTTLE_SENSITIVITY_VALUE:
                return CarConfig.isThrottleSensitivityPresent();
            case DRIVE_MODE_VALUE:
                return true;
        }
    }

    @Override // com.yftech.settings.manager.BaseManager
    public int getOption(Function function) {
        switch (function) {
            case EPS_STYLE_OPTION:
                return getEPSStyle();
            case SUSPENSION_MODE_OPTION:
                return getSuspensionMode();
            case SHADOW_DRIVER_OPTION:
                return getShadowDriver();
            case ENERGY_RECOVERY_LEVEL_OPTION:
                return getEnergyRecoveryLevel();
            case TCU_DRIVE_MODE_OPTION:
                return getTcuDriveMode();
            case DRIVE_SYSTEM_MODE_OPTION:
                return getDriveSystemMode();
            case ESP_STYLE_OPTION:
                return getEspStyle();
            default:
                return -1;
        }
    }

    @Override // com.yftech.settings.manager.BaseManager
    public Object getValue(Function function) {
        switch (function) {
            case THROTTLE_SENSITIVITY_VALUE:
                return Integer.valueOf(getThrottleSensitivity());
            case DRIVE_MODE_VALUE:
                return getDriveMode();
            default:
                return -1;
        }
    }

    @Override // com.yftech.settings.manager.BaseManager
    public void init(Context context) {
        super.init(context);
        this.mContext = context;
        CarDriveManager.get().registerListener(this.mCarDriveListener);
    }

    public void remove() {
        this.mHandler.removeCallbacks(this.showTrackDialDialogRunnable);
    }

    @Override // com.yftech.settings.manager.BaseManager
    public boolean setAction(Function function) {
        boolean zReset;
        switch (function) {
            case RESET_ACTION:
                zReset = reset();
                break;
            case STOP_TIMEOUT_ACTION:
                zReset = stopTimeout();
                break;
            case TRACK_DIALOG_SHOW_ACTION:
                zReset = showTrackDialog();
                break;
            default:
                zReset = false;
                break;
        }
        LogUtil.i(TAG, "setAction function:" + function + ", result:" + zReset);
        return zReset;
    }

    @Override // com.yftech.settings.manager.BaseManager
    public boolean setEnabled(Function function, boolean z) {
        boolean rememberDrivingModeEnabled;
        startTimeout();
        switch (function) {
            case REMEMBER_DRIVING_MODE_ENABLED:
                rememberDrivingModeEnabled = setRememberDrivingModeEnabled(z);
                break;
            case EMS_ENGINE_WAVE_ENABLE:
                rememberDrivingModeEnabled = setEMSEngineWave(z);
                break;
            default:
                rememberDrivingModeEnabled = false;
                break;
        }
        LogUtil.i(TAG, "setEnabled function:" + function + ", enable:" + z + ", result:" + rememberDrivingModeEnabled);
        return rememberDrivingModeEnabled;
    }

    @Override // com.yftech.settings.manager.BaseManager
    public boolean setOption(Function function, int i) {
        boolean ePSStyle;
        startTimeout();
        switch (function) {
            case EPS_STYLE_OPTION:
                ePSStyle = setEPSStyle(i);
                break;
            case SUSPENSION_MODE_OPTION:
                ePSStyle = setSuspensionMode(i);
                break;
            case SHADOW_DRIVER_OPTION:
                ePSStyle = setShadowDriver(i);
                break;
            case ENERGY_RECOVERY_LEVEL_OPTION:
                ePSStyle = setEnergyRecoveryLevel(i);
                break;
            default:
                ePSStyle = false;
                break;
        }
        LogUtil.i(TAG, "setOption function:" + function + ", index:" + i + ", result:" + ePSStyle);
        return ePSStyle;
    }

    @Override // com.yftech.settings.manager.BaseManager
    public boolean setValue(Function function, Object obj) {
        boolean throttleSensitivity;
        startTimeout();
        switch (function) {
            case THROTTLE_SENSITIVITY_VALUE:
                throttleSensitivity = setThrottleSensitivity(((Integer) obj).intValue());
                break;
            case DRIVE_MODE_VALUE:
                throttleSensitivity = setDriveMode((ICarDrive.DriveMode) obj);
                break;
            default:
                throttleSensitivity = false;
                break;
        }
        LogUtil.i(TAG, "setValue function:" + function + ", value:" + obj + ", result:" + throttleSensitivity);
        return throttleSensitivity;
    }
}
