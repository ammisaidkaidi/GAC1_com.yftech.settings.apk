package com.yftech.settings.manager;

import android.content.Context;
import com.yftech.settings.utils.LogUtil;
import com.yftech.vehicle.internal.adapter.ICarIcm;
import com.yftech.vehicle.sdk.CarConfig;
import com.yftech.vehicle.sdk.CarIcmManager;
import com.yftech.vehicle.sdk.CarMiscManager;

/* JADX INFO: loaded from: classes.dex */
public class CarDashboardManager extends BaseManager<Function> {
    public static final int DASH_BACKLIGHT_LEVEL_PROGRESS_MAX = 7;
    public static final int DASH_BACKLIGHT_LEVEL_PROGRESS_MIN = 0;
    private static final String TAG = "CarDashboardManager";
    private static CarDashboardManager sDashboardManager;
    private ICarIcm.BackLightLevel[] DASH_BACK_LIGHT_LEVEL = {ICarIcm.BackLightLevel.LEVEL_1, ICarIcm.BackLightLevel.LEVEL_2, ICarIcm.BackLightLevel.LEVEL_3, ICarIcm.BackLightLevel.LEVEL_4, ICarIcm.BackLightLevel.LEVEL_5, ICarIcm.BackLightLevel.LEVEL_6, ICarIcm.BackLightLevel.LEVEL_7, ICarIcm.BackLightLevel.LEVEL_8};
    private ICarIcm.Language[] LANGUAGE_TYPE = {ICarIcm.Language.CHINESE, ICarIcm.Language.ENGLISH};
    private ICarIcm.MeterVolumeMode[] DASH_VOLUME_TYPE = {ICarIcm.MeterVolumeMode.LOW, ICarIcm.MeterVolumeMode.MIDDLE, ICarIcm.MeterVolumeMode.HIGH};
    private int[] DASH_DISTANCE_UNIT = {0, 1};
    private ICarIcm.FuelEconomyAndDistanceUnit[] DASH_FUEL_ECONOMY_AND_DISTANCE_UNIT = {ICarIcm.FuelEconomyAndDistanceUnit.L_PER_100KM_AND_KM, ICarIcm.FuelEconomyAndDistanceUnit.KM_L_AND_KM, ICarIcm.FuelEconomyAndDistanceUnit.MPG_GB_AND_M, ICarIcm.FuelEconomyAndDistanceUnit.MPG_US_AND_M};
    private ICarIcm.TemperatureUnit[] DASH_TEMPERATURE_UNIT = {ICarIcm.TemperatureUnit.CELSIUS, ICarIcm.TemperatureUnit.FAHRENHEIT};
    private ICarIcm.PressureUnit[] DASH_PRESSURE_UNIT = {ICarIcm.PressureUnit.K_PA, ICarIcm.PressureUnit.BAR, ICarIcm.PressureUnit.PSI};
    private int mDashBackLightLevelValue = 3;
    private int mDashLanguageOption = 0;
    private int mDashVolumeOption = 1;
    private int mDashDistanceUnitOption = 0;
    private int mDashFuelEconomyAndDistanceUnitOption = 0;
    private int mDashTemperatureUnitOption = 0;
    private int mDashPressureUnitOption = 0;
    private CarIcmManager.CarIcmListener mCarIcmListener = new CarIcmManager.CarIcmListener() { // from class: com.yftech.settings.manager.CarDashboardManager.1
        @Override // com.yftech.vehicle.sdk.CarIcmManager.CarIcmListener
        public void onBackLightLevelChanged(ICarIcm.BackLightLevel backLightLevel) {
            super.onBackLightLevelChanged(backLightLevel);
            boolean functionPresent = CarDashboardManager.this.getFunctionPresent(Function.DASH_BACK_LIGHT_LEVEL_VALUE);
            LogUtil.i(CarDashboardManager.TAG, "onBackLightLevelChanged level:" + backLightLevel + " isFunctionPresent:" + functionPresent);
            if (functionPresent) {
                CarDashboardManager.this.notifyOnValueChanged(Function.DASH_BACK_LIGHT_LEVEL_VALUE, Integer.valueOf(CarDashboardManager.this.getValidDashBackLightLevelValue(backLightLevel)));
            }
        }

        @Override // com.yftech.vehicle.sdk.CarIcmManager.CarIcmListener
        public void onFuelEconomyAndDistanceUnitChanged(ICarIcm.FuelEconomyAndDistanceUnit fuelEconomyAndDistanceUnit) {
            super.onFuelEconomyAndDistanceUnitChanged(fuelEconomyAndDistanceUnit);
            boolean functionPresent = CarDashboardManager.this.getFunctionPresent(Function.DASH_FUEL_ECONOMY_AND_DISTANCE_UNIT_OPTION);
            LogUtil.i(CarDashboardManager.TAG, "onFuelEconomyAndDistanceUnitChanged unit:" + fuelEconomyAndDistanceUnit + " isFunctionPresent:" + functionPresent);
            if (functionPresent) {
                CarDashboardManager.this.notifyOnOptionChanged(Function.DASH_FUEL_ECONOMY_AND_DISTANCE_UNIT_OPTION, CarDashboardManager.this.getValidDashFuelEconomyAndDistanceUnitOption(fuelEconomyAndDistanceUnit));
            }
        }

        @Override // com.yftech.vehicle.sdk.CarIcmManager.CarIcmListener
        public void onLanguageChanged(ICarIcm.Language language) {
            super.onLanguageChanged(language);
            boolean functionPresent = CarDashboardManager.this.getFunctionPresent(Function.DASH_LANGUAGE_OPTION);
            LogUtil.i(CarDashboardManager.TAG, "onLanguageChanged lang:" + language + " isFunctionPresent:" + functionPresent);
            if (functionPresent) {
                CarDashboardManager.this.notifyOnOptionChanged(Function.DASH_LANGUAGE_OPTION, CarDashboardManager.this.getValidDashLanguageOption(language));
            }
        }

        @Override // com.yftech.vehicle.sdk.CarIcmManager.CarIcmListener
        public void onMeterVolumeModeChanged(ICarIcm.MeterVolumeMode meterVolumeMode) {
            super.onMeterVolumeModeChanged(meterVolumeMode);
            boolean functionPresent = CarDashboardManager.this.getFunctionPresent(Function.DASH_VOLUME_OPTION);
            LogUtil.i(CarDashboardManager.TAG, "onMeterVolumeModeChanged mode:" + meterVolumeMode + " isFunctionPresent:" + functionPresent);
            if (functionPresent) {
                CarDashboardManager.this.notifyOnOptionChanged(Function.DASH_VOLUME_OPTION, CarDashboardManager.this.getValidDashVolumeOption(meterVolumeMode));
            }
        }

        @Override // com.yftech.vehicle.sdk.CarIcmManager.CarIcmListener
        public void onPressureUnitChanged(ICarIcm.PressureUnit pressureUnit) {
            super.onPressureUnitChanged(pressureUnit);
            boolean functionPresent = CarDashboardManager.this.getFunctionPresent(Function.DASH_PRESSURE_UNIT_OPTION);
            LogUtil.i(CarDashboardManager.TAG, "onPressureUnitChanged unit:" + pressureUnit + " isFunctionPresent:" + functionPresent);
            if (functionPresent) {
                CarDashboardManager.this.notifyOnOptionChanged(Function.DASH_PRESSURE_UNIT_OPTION, CarDashboardManager.this.getValidDashPressureUnitOption(pressureUnit));
            }
        }

        @Override // com.yftech.vehicle.sdk.CarIcmManager.CarIcmListener
        public void onTemperatureUnitChanged(ICarIcm.TemperatureUnit temperatureUnit) {
            super.onTemperatureUnitChanged(temperatureUnit);
            boolean functionPresent = CarDashboardManager.this.getFunctionPresent(Function.DASH_TEMPERATURE_UNIT_OPTION);
            LogUtil.i(CarDashboardManager.TAG, "onTemperatureUnitChanged unit:" + temperatureUnit + " isFunctionPresent:" + functionPresent);
            if (functionPresent) {
                CarDashboardManager.this.notifyOnOptionChanged(Function.DASH_TEMPERATURE_UNIT_OPTION, CarDashboardManager.this.getValidDashTemperatureUnitOption(temperatureUnit));
            }
        }
    };

    public enum Function {
        UNKNOWN,
        DASH_BACK_LIGHT_LEVEL_VALUE,
        DASH_LANGUAGE_OPTION,
        DASH_VOLUME_OPTION,
        DASH_RESET_CUMULATIVE_TRAVEL_ACTION,
        DASH_DISTANCE_UNIT_OPTION,
        DASH_FUEL_ECONOMY_AND_DISTANCE_UNIT_OPTION,
        DASH_TEMPERATURE_UNIT_OPTION,
        DASH_PRESSURE_UNIT_OPTION,
        DASH_RESTORE_FACTORY_SETTINGS_ACTION,
        STOP_TIMEOUT_ACTION
    }

    private CarDashboardManager() {
    }

    private int getDashBackLightLevel() {
        return getValidDashBackLightLevelValue(CarIcmManager.get().getBackLightLevel());
    }

    private int getDashDistanceUnit() {
        return getValidDashDistanceUnitOption(-1);
    }

    private int getDashLanguage() {
        return getValidDashLanguageOption(CarIcmManager.get().getLanguage());
    }

    private int getDashVolume() {
        return getValidDashVolumeOption(CarIcmManager.get().getMeterVolumeMode());
    }

    private int getFuelEconomyAndDistanceUnit() {
        return getValidDashFuelEconomyAndDistanceUnitOption(CarIcmManager.get().getFuelEconomyAndDistanceUnit());
    }

    public static synchronized CarDashboardManager getInstance() {
        if (sDashboardManager == null) {
            sDashboardManager = new CarDashboardManager();
        }
        return sDashboardManager;
    }

    private int getPressureUnit() {
        return getValidDashPressureUnitOption(CarIcmManager.get().getPressureUnit());
    }

    private int getTemperatureUnit() {
        return getValidDashTemperatureUnitOption(CarIcmManager.get().getTemperatureUnit());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getValidDashBackLightLevelValue(ICarIcm.BackLightLevel backLightLevel) {
        for (int i = 0; i < this.DASH_BACK_LIGHT_LEVEL.length; i++) {
            if (this.DASH_BACK_LIGHT_LEVEL[i] == backLightLevel) {
                this.mDashBackLightLevelValue = i;
                break;
            }
        }
        LogUtil.i(TAG, "getValidDashBackLightLevelValue level:" + backLightLevel + ", index:" + this.mDashBackLightLevelValue);
        return this.mDashBackLightLevelValue;
    }

    private int getValidDashDistanceUnitOption(int i) {
        for (int i2 = 0; i2 < this.DASH_DISTANCE_UNIT.length; i2++) {
            if (this.DASH_DISTANCE_UNIT[i2] == i) {
                this.mDashDistanceUnitOption = i2;
                break;
            }
        }
        LogUtil.i(TAG, "getValidDashDistanceUnitOption unit:" + i + ", index:" + this.mDashDistanceUnitOption);
        return this.mDashDistanceUnitOption;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getValidDashFuelEconomyAndDistanceUnitOption(ICarIcm.FuelEconomyAndDistanceUnit fuelEconomyAndDistanceUnit) {
        for (int i = 0; i < this.DASH_FUEL_ECONOMY_AND_DISTANCE_UNIT.length; i++) {
            if (this.DASH_FUEL_ECONOMY_AND_DISTANCE_UNIT[i] == fuelEconomyAndDistanceUnit) {
                this.mDashFuelEconomyAndDistanceUnitOption = i;
                break;
            }
        }
        LogUtil.i(TAG, "getValidDashFuelEconomyAndDistanceUnitOption unit:" + fuelEconomyAndDistanceUnit + ", index:" + this.mDashFuelEconomyAndDistanceUnitOption);
        return this.mDashFuelEconomyAndDistanceUnitOption;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getValidDashLanguageOption(ICarIcm.Language language) {
        for (int i = 0; i < this.LANGUAGE_TYPE.length; i++) {
            if (this.LANGUAGE_TYPE[i] == language) {
                this.mDashLanguageOption = i;
                break;
            }
        }
        LogUtil.i(TAG, "getValidDashLanguageOption lang:" + language + ", index:" + this.mDashLanguageOption);
        return this.mDashLanguageOption;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getValidDashPressureUnitOption(ICarIcm.PressureUnit pressureUnit) {
        for (int i = 0; i < this.DASH_PRESSURE_UNIT.length; i++) {
            if (this.DASH_PRESSURE_UNIT[i] == pressureUnit) {
                this.mDashPressureUnitOption = i;
                break;
            }
        }
        LogUtil.i(TAG, "getValidDashPressureUnitOption unit:" + pressureUnit + ", index:" + this.mDashPressureUnitOption);
        return this.mDashPressureUnitOption;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getValidDashTemperatureUnitOption(ICarIcm.TemperatureUnit temperatureUnit) {
        for (int i = 0; i < this.DASH_TEMPERATURE_UNIT.length; i++) {
            if (this.DASH_TEMPERATURE_UNIT[i] == temperatureUnit) {
                this.mDashTemperatureUnitOption = i;
                break;
            }
        }
        LogUtil.i(TAG, "getValidDashTemperatureUnitOption unit:" + temperatureUnit + ", index:" + this.mDashTemperatureUnitOption);
        return this.mDashTemperatureUnitOption;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getValidDashVolumeOption(ICarIcm.MeterVolumeMode meterVolumeMode) {
        for (int i = 0; i < this.DASH_VOLUME_TYPE.length; i++) {
            if (this.DASH_VOLUME_TYPE[i] == meterVolumeMode) {
                this.mDashVolumeOption = i;
                break;
            }
        }
        LogUtil.i(TAG, "getValidDashVolumeOption mode:" + meterVolumeMode + ", index:" + this.mDashVolumeOption);
        return this.mDashVolumeOption;
    }

    private boolean resetCumulativeTravel() {
        return false;
    }

    private boolean restoreFactorySetting() {
        return CarMiscManager.get().setFactoryModeReSetDashBoardFactorySetting();
    }

    private boolean setDashDistanceUnit(int i) {
        if (i < 0 || i >= this.DASH_DISTANCE_UNIT.length) {
            return false;
        }
        int i2 = this.DASH_DISTANCE_UNIT[i];
        return false;
    }

    private boolean setDashLanguage(int i) {
        if (i < 0 || i >= this.LANGUAGE_TYPE.length) {
            return false;
        }
        return CarIcmManager.get().setLanguage(this.LANGUAGE_TYPE[i]);
    }

    private boolean setDashVolume(int i) {
        if (i < 0 || i >= this.DASH_VOLUME_TYPE.length) {
            return false;
        }
        return CarIcmManager.get().setMeterVolumeMode(this.DASH_VOLUME_TYPE[i]);
    }

    private boolean setFuelEconomyAndDistanceUnit(int i) {
        if (i < 0 || i >= this.DASH_FUEL_ECONOMY_AND_DISTANCE_UNIT.length) {
            return false;
        }
        return CarIcmManager.get().setFuelEconomyAndDistanceUnit(this.DASH_FUEL_ECONOMY_AND_DISTANCE_UNIT[i]);
    }

    private boolean setPressureUnit(int i) {
        if (i < 0 || i >= this.DASH_PRESSURE_UNIT.length) {
            return false;
        }
        return CarIcmManager.get().setPressureUnit(this.DASH_PRESSURE_UNIT[i]);
    }

    private boolean setTemperatureUnit(int i) {
        if (i < 0 || i >= this.DASH_TEMPERATURE_UNIT.length) {
            return false;
        }
        return CarIcmManager.get().setTemperatureUnit(this.DASH_TEMPERATURE_UNIT[i]);
    }

    @Override // com.yftech.settings.manager.BaseManager
    public void deInit() {
        super.deInit();
        CarIcmManager.get().unregisterListener(this.mCarIcmListener);
    }

    public boolean getFunctionPresent(Function function) {
        switch (function) {
            case DASH_RESTORE_FACTORY_SETTINGS_ACTION:
                return CarConfig.isClusterDefaultSettingPresent();
            case DASH_RESET_CUMULATIVE_TRAVEL_ACTION:
                return false;
            case STOP_TIMEOUT_ACTION:
            default:
                return false;
            case DASH_FUEL_ECONOMY_AND_DISTANCE_UNIT_OPTION:
                return CarConfig.isClusterFuelConsumptionUnitPresent();
            case DASH_TEMPERATURE_UNIT_OPTION:
                return CarConfig.isClusterTemperatureUnitPresent();
            case DASH_PRESSURE_UNIT_OPTION:
                return CarConfig.isClusterPressureUnitPresent();
            case DASH_LANGUAGE_OPTION:
                return CarConfig.isClusterLanguageSettingPresent();
            case DASH_VOLUME_OPTION:
                return CarConfig.isClusterVolumeSettingPresent();
            case DASH_DISTANCE_UNIT_OPTION:
                return false;
            case DASH_BACK_LIGHT_LEVEL_VALUE:
                return CarConfig.isClusterBackLightPresent();
        }
    }

    @Override // com.yftech.settings.manager.BaseManager
    public int getOption(Function function) {
        switch (function) {
            case DASH_FUEL_ECONOMY_AND_DISTANCE_UNIT_OPTION:
                return getFuelEconomyAndDistanceUnit();
            case DASH_TEMPERATURE_UNIT_OPTION:
                return getTemperatureUnit();
            case DASH_PRESSURE_UNIT_OPTION:
                return getPressureUnit();
            case DASH_LANGUAGE_OPTION:
                return getDashLanguage();
            case DASH_VOLUME_OPTION:
                return getDashVolume();
            case DASH_DISTANCE_UNIT_OPTION:
                return getDashDistanceUnit();
            default:
                return -1;
        }
    }

    @Override // com.yftech.settings.manager.BaseManager
    public Object getValue(Function function) {
        if (AnonymousClass2.$SwitchMap$com$yftech$settings$manager$CarDashboardManager$Function[function.ordinal()] != 10) {
            return -1;
        }
        return Integer.valueOf(getDashBackLightLevel());
    }

    @Override // com.yftech.settings.manager.BaseManager
    public void init(Context context) {
        super.init(context);
        CarIcmManager.get().registerListener(this.mCarIcmListener);
    }

    @Override // com.yftech.settings.manager.BaseManager
    public boolean setAction(Function function) {
        boolean zRestoreFactorySetting;
        switch (function) {
            case DASH_RESTORE_FACTORY_SETTINGS_ACTION:
                zRestoreFactorySetting = restoreFactorySetting();
                break;
            case DASH_RESET_CUMULATIVE_TRAVEL_ACTION:
                zRestoreFactorySetting = resetCumulativeTravel();
                break;
            case STOP_TIMEOUT_ACTION:
                zRestoreFactorySetting = stopTimeout();
                break;
            default:
                zRestoreFactorySetting = false;
                break;
        }
        LogUtil.i(TAG, "setAction function:" + function + ", result:" + zRestoreFactorySetting);
        return zRestoreFactorySetting;
    }

    public boolean setDashBackLightLevel(int i) {
        if (i < 0 || i >= this.DASH_BACK_LIGHT_LEVEL.length) {
            return false;
        }
        return CarIcmManager.get().setBackLightLevel(this.DASH_BACK_LIGHT_LEVEL[i]);
    }

    @Override // com.yftech.settings.manager.BaseManager
    public boolean setOption(Function function, int i) {
        boolean fuelEconomyAndDistanceUnit;
        switch (function) {
            case DASH_FUEL_ECONOMY_AND_DISTANCE_UNIT_OPTION:
                startTimeout();
                fuelEconomyAndDistanceUnit = setFuelEconomyAndDistanceUnit(i);
                break;
            case DASH_TEMPERATURE_UNIT_OPTION:
                startTimeout();
                fuelEconomyAndDistanceUnit = setTemperatureUnit(i);
                break;
            case DASH_PRESSURE_UNIT_OPTION:
                startTimeout();
                fuelEconomyAndDistanceUnit = setPressureUnit(i);
                break;
            case DASH_LANGUAGE_OPTION:
                startTimeout();
                fuelEconomyAndDistanceUnit = setDashLanguage(i);
                break;
            case DASH_VOLUME_OPTION:
                startTimeout();
                fuelEconomyAndDistanceUnit = setDashVolume(i);
                break;
            case DASH_DISTANCE_UNIT_OPTION:
                startTimeout();
                fuelEconomyAndDistanceUnit = setDashDistanceUnit(i);
                break;
            default:
                fuelEconomyAndDistanceUnit = false;
                break;
        }
        LogUtil.i(TAG, "setOption function:" + function + ", index:" + i + ", result:" + fuelEconomyAndDistanceUnit);
        return fuelEconomyAndDistanceUnit;
    }

    @Override // com.yftech.settings.manager.BaseManager
    public boolean setValue(Function function, Object obj) {
        boolean dashBackLightLevel;
        if (AnonymousClass2.$SwitchMap$com$yftech$settings$manager$CarDashboardManager$Function[function.ordinal()] != 10) {
            dashBackLightLevel = false;
        } else {
            startTimeout();
            dashBackLightLevel = setDashBackLightLevel(((Integer) obj).intValue());
        }
        LogUtil.i(TAG, "setValue function:" + function + ", value:" + obj + ", result:" + dashBackLightLevel);
        return dashBackLightLevel;
    }
}
