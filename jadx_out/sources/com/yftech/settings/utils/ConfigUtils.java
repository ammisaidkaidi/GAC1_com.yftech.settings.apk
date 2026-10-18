package com.yftech.settings.utils;

import com.yftech.settings.manager.CarAssistantManager;
import com.yftech.settings.manager.CarDashboardManager;
import com.yftech.settings.manager.CarDriveModeManager;
import com.yftech.settings.manager.CarParkingManager;
import com.yftech.settings.manager.CarPartsManager;
import com.yftech.settings.manager.SoundManager;
import com.yftech.vehicle.sdk.HostConfig;

/* JADX INFO: loaded from: classes.dex */
public class ConfigUtils {
    public static boolean isAcConfig;
    public static boolean isAidTipMemoryConfig;
    public static boolean isAidsAssistanceConfig;
    public static boolean isAidsParkingConfig;
    public static boolean isAidsSafeConfig;
    public static boolean isCarDashboardConfig;
    public static boolean isCarPartsLightConfig;
    public static boolean isCarPartsLockConfig;
    public static boolean isCarPartsMoreConfig;
    public static boolean isCarPartsRearviewConfig;
    public static boolean isLinkConfig;
    public static boolean isSeatConfig;
    public static boolean isSoundInteractionConfig;
    private static ConfigUtils mInstance;

    private ConfigUtils() {
    }

    public static ConfigUtils getInstance() {
        if (mInstance == null) {
            mInstance = new ConfigUtils();
        }
        return mInstance;
    }

    private boolean isAcConfig() {
        return CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.AC_FAN_SPEED_OF_AUTO_MODE_OPTION) || CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.AC_AIR_CIRCULATION_MODE_OF_AUTO_MODE_ENABLED) || CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.AC_AUTO_DRYING_ENABLED) || CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.AC_AIR_UNLOCK_VENTILATION_ENABLE);
    }

    private boolean isAidTipMemoryConfig() {
        return CarAssistantManager.getInstance().getFunctionPresent(CarAssistantManager.Function.SPEED_WARNING_VALUE) || CarDriveModeManager.getInstance().getFunctionPresent(CarDriveModeManager.Function.REMEMBER_DRIVING_MODE_ENABLED);
    }

    private boolean isAidsAssistanceConfig() {
        return CarAssistantManager.getInstance().getFunctionPresent(CarAssistantManager.Function.CRUISE_ASSIST_OPTION) || CarAssistantManager.getInstance().getFunctionPresent(CarAssistantManager.Function.DFC_ENABLE) || CarAssistantManager.getInstance().getFunctionPresent(CarAssistantManager.Function.IA_ENABLE);
    }

    private boolean isAidsParkingConfig() {
        return CarParkingManager.getInstance().getFunctionPresent(CarParkingManager.Function.PARKING_RADAR_WARNING_TONE_ENABLED) || CarParkingManager.getInstance().getFunctionPresent(CarParkingManager.Function.PARKING_PUSH_ENABLED) || CarParkingManager.getInstance().getFunctionPresent(CarParkingManager.Function.PARKING_VOICE_TIP_ENABLED);
    }

    private boolean isAidsSafeConfig() {
        return CarAssistantManager.getInstance().getFunctionPresent(CarAssistantManager.Function.FCW_OFF_ENABLED) || CarAssistantManager.getInstance().getFunctionPresent(CarAssistantManager.Function.AEB_OFF_ENABLED) || CarAssistantManager.getInstance().getFunctionPresent(CarAssistantManager.Function.LDW_LKA_ENABLED) || CarAssistantManager.getInstance().getFunctionPresent(CarAssistantManager.Function.TSR_ENABLED) || CarAssistantManager.getInstance().getFunctionPresent(CarAssistantManager.Function.ADAS_WARN_TYPE_OPTION) || CarAssistantManager.getInstance().getFunctionPresent(CarAssistantManager.Function.DSA_OFF_ENABLES);
    }

    private boolean isCarDashboardConfig() {
        return CarDashboardManager.getInstance().getFunctionPresent(CarDashboardManager.Function.DASH_BACK_LIGHT_LEVEL_VALUE) || CarDashboardManager.getInstance().getFunctionPresent(CarDashboardManager.Function.DASH_LANGUAGE_OPTION) || CarDashboardManager.getInstance().getFunctionPresent(CarDashboardManager.Function.DASH_VOLUME_OPTION) || CarDashboardManager.getInstance().getFunctionPresent(CarDashboardManager.Function.DASH_FUEL_ECONOMY_AND_DISTANCE_UNIT_OPTION) || CarDashboardManager.getInstance().getFunctionPresent(CarDashboardManager.Function.DASH_TEMPERATURE_UNIT_OPTION) || CarDashboardManager.getInstance().getFunctionPresent(CarDashboardManager.Function.DASH_PRESSURE_UNIT_OPTION) || CarDashboardManager.getInstance().getFunctionPresent(CarDashboardManager.Function.DASH_RESTORE_FACTORY_SETTINGS_ACTION);
    }

    private boolean isCarPartsLightConfig() {
        return CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.IHBC_ENABLED) || CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.HEAD_LIGHT_DELAY_ENABLED);
    }

    private boolean isCarPartsLockConfig() {
        return CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.REMOTE_UNLOCK_MODE_OPTION) || CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.AUTO_UNLOCK_ENABLED) || CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.PEPS_WALK_AWAY_LOCK_ENABLED) || CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.PEPS_UNLOCK_ENABLED) || CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.SPEED_AUTO_LOCK_ENABLED) || CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.PEPS_AUTO_TRUNK_OPEN_OPTION) || CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.SUNROOF_WINDOW_AUTO_CLOSE_ENABLED) || CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.ELECTRIC_HIDDEN_DOOR_HANDLE_ENABLE);
    }

    private boolean isCarPartsMoreConfig() {
        return CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.AUTO_WIPER_MODE_ENABLED) || CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.FRONT_WIPER_SERVICE_POSITION_ACTION) || CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.ETC_ENABLED) || CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.WIRELESS_CHARGING_ENABLED) || CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.STEERING_WHEEL_ASTERISK_KEY) || CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.CONVENIENT_CAR_SEARCH_ENABLED);
    }

    private boolean isCarPartsRearviewConfig() {
        return CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.OSRM_AUTO_FOLD_ENABLED) || CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.OSRM_TURN_DOWN_ENABLED);
    }

    private boolean isLinkConfig() {
        return HostConfig.isCarplayPresent() || HostConfig.isHicarPresent();
    }

    private boolean isSeatConfig() {
        return CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.SEAT_DRIVER_CONVENIENT_ACCESS_ENABLED);
    }

    private boolean isSoundInteractionConfig() {
        return SoundManager.getInstance().getFunctionPresent(SoundManager.Function.KEY_SOUND_OPTION) || SoundManager.getInstance().getFunctionPresent(SoundManager.Function.INTERFACE_EFFECTS_ENABLE);
    }

    public void init() {
        isSoundInteractionConfig = isSoundInteractionConfig();
        isLinkConfig = isLinkConfig();
        isAidTipMemoryConfig = isAidTipMemoryConfig();
        isAidsSafeConfig = isAidsSafeConfig();
        isAidsAssistanceConfig = isAidsAssistanceConfig();
        isAidsParkingConfig = isAidsParkingConfig();
        isCarPartsLightConfig = isCarPartsLightConfig();
        isCarPartsLockConfig = isCarPartsLockConfig();
        isCarPartsRearviewConfig = isCarPartsRearviewConfig();
        isCarPartsMoreConfig = isCarPartsMoreConfig();
        isAcConfig = isAcConfig();
        isSeatConfig = isSeatConfig();
        isCarDashboardConfig = isCarDashboardConfig();
    }

    public boolean isAcSeatConfig() {
        return isAcConfig || isSeatConfig;
    }

    public boolean isAidConfig() {
        return isAidTipMemoryConfig || isAidsSafeConfig || isAidsAssistanceConfig || isAidsParkingConfig;
    }

    public boolean isCarPartsConfig() {
        return isCarPartsLightConfig || isCarPartsLockConfig || isCarPartsRearviewConfig || isCarPartsMoreConfig;
    }
}
