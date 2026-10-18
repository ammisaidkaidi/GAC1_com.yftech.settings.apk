package com.yftech.settings.manager;

import android.app.ActivityManager;
import android.app.IActivityManager;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Environment;
import android.os.Handler;
import android.os.LocaleList;
import android.os.SystemProperties;
import android.provider.Settings;
import android.text.format.DateFormat;
import com.yftech.car.screen.CarScreenManager;
import com.yftech.settings.R;
import com.yftech.settings.utils.LogUtil;
import com.yftech.settings.utils.Utils;
import com.yftech.vehicle.internal.adapter.ICarConfig;
import com.yftech.vehicle.internal.adapter.ICarIcm;
import com.yftech.vehicle.internal.adapter.IHostConfig;
import com.yftech.vehicle.internal.adapter.IMpuAvm;
import com.yftech.vehicle.internal.adapter.IMpuVersion;
import com.yftech.vehicle.sdk.CarConfig;
import com.yftech.vehicle.sdk.CarIcmManager;
import com.yftech.vehicle.sdk.CarMiscManager;
import com.yftech.vehicle.sdk.HostConfig;
import com.yftech.vehicle.sdk.MpuAvmManager;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class SettingsManager extends BaseManager<Function> {
    private static final int FACTORY_MODE = 1;
    private static final String TAG = "SettingsManager";
    private static SettingsManager sSettingsManager;
    private int[] AC_VIEW_HOLD_TIME = {5, 10, 15, 30};
    private int[] INTELLIGENT_SCENE_SWITCH = {0, 1};
    private Handler mCarScreenHandler = new Handler();
    private int[] NAVI_SIGNAL_MODE = {0, 1, 2};
    private Locale[] LANGUAGE_SETTING_TYPE = {Locale.SIMPLIFIED_CHINESE, Locale.US, new Locale("es"), new Locale("ar"), new Locale("ru"), new Locale("it")};
    private ICarIcm.Language[] LANGUAGE_DASHBOARD = {ICarIcm.Language.CHINESE, ICarIcm.Language.ENGLISH, ICarIcm.Language.SPANISH, ICarIcm.Language.ARABIC, ICarIcm.Language.RUSSIAN, ICarIcm.Language.ITALY};
    private IMpuAvm.Language[] LANGUAGE_AVM = {IMpuAvm.Language.CHINESE, IMpuAvm.Language.ENGLISH, IMpuAvm.Language.SPANISH, IMpuAvm.Language.ARABIC_RESERVED, IMpuAvm.Language.RUSSIAN_RESERVED, IMpuAvm.Language.ITALIAN};
    private Locale[] LANGUAGE_SETTING_TYPE_RIGHT = {Locale.SIMPLIFIED_CHINESE, Locale.US, new Locale("es"), new Locale("ru"), new Locale("in")};
    private ICarIcm.Language[] LANGUAGE_DASHBOARD_RIGHT = {ICarIcm.Language.CHINESE, ICarIcm.Language.ENGLISH, ICarIcm.Language.SPANISH, ICarIcm.Language.RUSSIAN, ICarIcm.Language.INDONESIAN};
    private IMpuAvm.Language[] LANGUAGE_AVM_RIGHT = {IMpuAvm.Language.CHINESE, IMpuAvm.Language.ENGLISH, IMpuAvm.Language.SPANISH, IMpuAvm.Language.RUSSIAN_RESERVED, IMpuAvm.Language.INDONESIAN};
    private Locale[] LANGUAGE_SETTING_TYPE_CS112 = {Locale.US, new Locale("es"), new Locale("it")};
    private ICarIcm.Language[] LANGUAGE_DASHBOARD_CS112 = {ICarIcm.Language.ENGLISH, ICarIcm.Language.SPANISH, ICarIcm.Language.ITALY};
    private IMpuAvm.Language[] LANGUAGE_AVM_CS112 = {IMpuAvm.Language.ENGLISH, IMpuAvm.Language.SPANISH, IMpuAvm.Language.ITALIAN};
    private CarScreenManager.CarScreenCallback mCarScreenCallback = new CarScreenManager.CarScreenCallback() { // from class: com.yftech.settings.manager.SettingsManager.1
        public void onChangedScreenBrightness(boolean z, int i) {
            super.onChangedScreenBrightness(z, i);
            LogUtil.i(SettingsManager.TAG, "onChangedScreenBrightness open:" + z + ", brightness:" + i);
            SettingsManager.this.notifyOnValueChanged(Function.SCREEN_BRIGHTNESS_VALUE, Integer.valueOf(i));
        }
    };
    private CarMiscManager.CarMiscListener mCarMiscListener = new CarMiscManager.CarMiscListener() { // from class: com.yftech.settings.manager.SettingsManager.2
        @Override // com.yftech.vehicle.sdk.CarMiscManager.CarMiscListener
        public void onFactoryModeStateChanged(int i) {
            super.onFactoryModeStateChanged(i);
            LogUtil.i(SettingsManager.TAG, "onFactoryModeStateChanged() state:" + i);
            if (i == 1) {
                SettingsManager.this.startEngineeringmodeActivity();
            }
        }
    };

    public enum Function {
        UNKNOWN,
        SCREEN_BRIGHTNESS_VALUE,
        AC_VIEW_HOLD_TIME_OPTION,
        CLOSE_SCREEN_ACTION,
        INTELLIGENT_SCENE_SWITCH_OPTION,
        SCREEN_BRIGHTNESS_MAX_GET_VALUE,
        NAVI_SIGNAL_MODE_OPTION,
        CHECK_FACTORY_MODE_STATE_ACTION,
        VEHICLE_MANUFACTURER,
        VEHICLE_MODEL,
        LANGUAGE_SETTING_OPTION
    }

    private SettingsManager() {
    }

    private boolean closeScreenBrightness() {
        return CarScreenManager.getInstance().closeScreenBrightness(1);
    }

    /* JADX WARN: Code duplicated, block: B:9:0x004d  */
    private int getAcViewHoldTime() {
        int i = Settings.System.getInt(getContext().getContentResolver(), "ac_view_hold_time", -1);
        LogUtil.i(TAG, "getAcViewHoldTime time:" + i);
        if (i == -1) {
            IHostConfig.HvacDisplayTime hvacDisplayTime = HostConfig.getHvacDisplayTime();
            LogUtil.i(TAG, "getAcViewHoldTime hvacDisplayTime:" + hvacDisplayTime);
            if (hvacDisplayTime == IHostConfig.HvacDisplayTime.FIVES_SEC) {
                i = 5;
            } else if (hvacDisplayTime == IHostConfig.HvacDisplayTime.TEN_SEC) {
                i = 10;
            } else if (hvacDisplayTime == IHostConfig.HvacDisplayTime.FIFTEEN_SEC) {
                i = 15;
            } else if (hvacDisplayTime == IHostConfig.HvacDisplayTime.THIRTY_SEC) {
                i = 30;
            } else {
                i = 10;
            }
        }
        for (int i2 = 0; i2 < this.AC_VIEW_HOLD_TIME.length; i2++) {
            if (this.AC_VIEW_HOLD_TIME[i2] == i) {
                return i2;
            }
        }
        return -1;
    }

    private int getBrightnessMaxValue() {
        return CarScreenManager.getInstance().getBrightnessMaxValue();
    }

    public static synchronized SettingsManager getInstance() {
        if (sSettingsManager == null) {
            sSettingsManager = new SettingsManager();
        }
        return sSettingsManager;
    }

    private int getIntelligentSceneSwitchType() {
        for (int i = 0; i < this.INTELLIGENT_SCENE_SWITCH.length; i++) {
            if (this.INTELLIGENT_SCENE_SWITCH[i] == 0) {
                return i;
            }
        }
        return -1;
    }

    private int getLanguageType() {
        Locale locale = Locale.getDefault();
        Locale[] localeArr = Utils.isRightDrive() ? this.LANGUAGE_SETTING_TYPE_RIGHT : CarConfig.getVehiclePlatform() == ICarConfig.VehiclePlatform.CS112 ? this.LANGUAGE_SETTING_TYPE_CS112 : this.LANGUAGE_SETTING_TYPE;
        for (int i = 0; i < localeArr.length; i++) {
            if (localeArr[i].getLanguage().equals(locale.getLanguage())) {
                LogUtil.d("getLanguageType ", "index" + i);
                return i;
            }
        }
        return -1;
    }

    private String getManufacturer() {
        return SystemProperties.get("ro.product.manufacturer", "");
    }

    private int getNaviSignalMode() {
        for (int i = 0; i < this.NAVI_SIGNAL_MODE.length; i++) {
            if (this.NAVI_SIGNAL_MODE[i] == 0) {
                return i;
            }
        }
        return -1;
    }

    private int getScreenBrightness() {
        return CarScreenManager.getInstance().getBrightness();
    }

    private String getVehicleMode() {
        return SystemProperties.get("ro.product.model", "");
    }

    private boolean setAcViewHoldTime(int i) {
        if (i < 0 || i >= this.AC_VIEW_HOLD_TIME.length) {
            return false;
        }
        return Settings.System.putInt(getContext().getContentResolver(), "ac_view_hold_time", this.AC_VIEW_HOLD_TIME[i]);
    }

    private boolean setIntelligentSceneSwitchType(int i) {
        if (i < 0) {
            return false;
        }
        int length = this.INTELLIGENT_SCENE_SWITCH.length;
        return false;
    }

    private boolean setLanguageType(int i) {
        Locale[] localeArr;
        ICarIcm.Language[] languageArr;
        IMpuAvm.Language[] languageArr2;
        boolean z;
        if (Utils.isRightDrive()) {
            localeArr = this.LANGUAGE_SETTING_TYPE_RIGHT;
            languageArr = this.LANGUAGE_DASHBOARD_RIGHT;
            languageArr2 = this.LANGUAGE_AVM_RIGHT;
        } else if (CarConfig.getVehiclePlatform() == ICarConfig.VehiclePlatform.CS112) {
            localeArr = this.LANGUAGE_SETTING_TYPE_CS112;
            languageArr = this.LANGUAGE_DASHBOARD_CS112;
            languageArr2 = this.LANGUAGE_AVM_CS112;
        } else {
            localeArr = this.LANGUAGE_SETTING_TYPE;
            languageArr = this.LANGUAGE_DASHBOARD;
            languageArr2 = this.LANGUAGE_AVM;
        }
        if (i < 0 || i >= localeArr.length) {
            z = false;
        } else {
            try {
                Locale locale = localeArr[i];
                LogUtil.i(TAG, "setLanguageType:" + locale.toString());
                IActivityManager service = ActivityManager.getService();
                Configuration configuration = service.getConfiguration();
                configuration.setLocales(new LocaleList(locale));
                configuration.userSetLocale = true;
                service.updatePersistentConfiguration(configuration);
                z = true;
            } catch (Exception e) {
                e.printStackTrace();
                z = false;
            }
        }
        if (i >= 0 && i < languageArr.length) {
            z = z && CarIcmManager.get().setLanguage(languageArr[i]);
        }
        if (i < 0 || i >= languageArr2.length) {
            return z;
        }
        return z && MpuAvmManager.get().setAvmLanguage(languageArr2[i]);
    }

    private boolean setNaviSignalMode(int i) {
        if (i < 0) {
            return false;
        }
        int length = this.NAVI_SIGNAL_MODE.length;
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startEngineeringmodeActivity() {
        try {
            Intent intent = new Intent();
            intent.setAction("com.yftech.intent.action.start.engineeringmode");
            intent.setFlags(268435456);
            getContext().startActivity(intent);
        } catch (ActivityNotFoundException e) {
            e.printStackTrace();
        }
    }

    public void cleanStorageSpace() {
    }

    @Override // com.yftech.settings.manager.BaseManager
    public void deInit() {
        super.deInit();
        CarMiscManager.get().unregisterReceiver(this.mCarMiscListener);
        CarScreenManager.getInstance().unregisterCarScreenCallback(this.mCarScreenCallback);
    }

    public boolean get24HourFormatState(Context context) {
        return DateFormat.is24HourFormat(context);
    }

    public String getCurTime() {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm").format(new Date());
    }

    public String getCurTime(Context context) {
        Locale locale = Locale.getDefault();
        if (locale == null || !locale.getLanguage().contains("es")) {
            if (get24HourFormatState(context)) {
                return new SimpleDateFormat("yyyy-MM-dd HH:mm", Locale.ENGLISH).format(new Date());
            }
            String string = Calendar.getInstance().get(9) == 0 ? context.getString(R.string.am) : context.getString(R.string.pm);
            return new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH).format(new Date()) + " " + String.format(context.getString(R.string.status_time), string, new SimpleDateFormat("hh:mm", Locale.ENGLISH).format(new Date()));
        }
        if (get24HourFormatState(context)) {
            return new SimpleDateFormat("dd-MM-yyyy HH:mm", Locale.ENGLISH).format(new Date());
        }
        String string2 = Calendar.getInstance().get(9) == 0 ? context.getString(R.string.am) : context.getString(R.string.pm);
        return new SimpleDateFormat("dd-MM-yyyy", Locale.ENGLISH).format(new Date()) + " " + String.format(context.getString(R.string.status_time), string2, new SimpleDateFormat("hh:mm", Locale.ENGLISH).format(new Date()));
    }

    public boolean getFunctionPresent(Function function) {
        int i = AnonymousClass3.$SwitchMap$com$yftech$settings$manager$SettingsManager$Function[function.ordinal()];
        if (i != 4) {
            return i == 6 && HostConfig.getLanguage() == IHostConfig.Language.ENGLISH;
        }
        return HostConfig.getHvacDisplayTime() != IHostConfig.HvacDisplayTime.NOT_PRESENT;
    }

    public String getHardwareVersion() {
        return SystemProperties.get(IMpuVersion.PROP_KEY_HARDWARE_VERSION, "");
    }

    @Override // com.yftech.settings.manager.BaseManager
    public int getOption(Function function) {
        switch (function) {
            case NAVI_SIGNAL_MODE_OPTION:
                return getNaviSignalMode();
            case AC_VIEW_HOLD_TIME_OPTION:
                return getAcViewHoldTime();
            case INTELLIGENT_SCENE_SWITCH_OPTION:
                return getIntelligentSceneSwitchType();
            case LANGUAGE_SETTING_OPTION:
                return getLanguageType();
            default:
                return -1;
        }
    }

    public String getSerialNumber() {
        return SystemProperties.get("ro.boot.serialno", "");
    }

    public int getStorageSpaceSize() {
        long totalSpace = Utils.getTotalSpace(Environment.getDataDirectory());
        long availableSpace = Utils.getAvailableSpace(Environment.getDataDirectory());
        LogUtil.i(TAG, "totalSpace:" + totalSpace + ", available:" + availableSpace);
        if (totalSpace <= 0 || availableSpace < 0) {
            return 0;
        }
        return (int) (((totalSpace - availableSpace) / totalSpace) * 100.0f);
    }

    public String getSystemVersion() {
        return SystemProperties.get(IMpuVersion.PROP_KEY_MPU_VERSION, "");
    }

    @Override // com.yftech.settings.manager.BaseManager
    public Object getValue(Function function) {
        switch (function) {
            case SCREEN_BRIGHTNESS_VALUE:
                return Integer.valueOf(getScreenBrightness());
            case SCREEN_BRIGHTNESS_MAX_GET_VALUE:
                return Integer.valueOf(getBrightnessMaxValue());
            case VEHICLE_MANUFACTURER:
                return getManufacturer();
            case VEHICLE_MODEL:
                return getVehicleMode();
            default:
                return -1;
        }
    }

    @Override // com.yftech.settings.manager.BaseManager
    public void init(Context context) {
        super.init(context);
        CarMiscManager.get().registerReceiver(this.mCarMiscListener);
        CarScreenManager.getInstance().registerCarScreenCallback(this.mCarScreenCallback, this.mCarScreenHandler);
    }

    public void set24HourFormatState(Context context, boolean z) {
        LogUtil.i(TAG, "set24HourFormatState() open:" + z);
        Settings.System.putString(context.getContentResolver(), "time_12_24", z ? "24" : "12");
        Intent intent = new Intent("android.intent.action.TIME_SET");
        intent.putExtra("android.intent.extra.TIME_PREF_24_HOUR_FORMAT", z);
        context.sendBroadcast(intent);
        Utils.setDateTime(context, Calendar.getInstance(), true);
    }

    @Override // com.yftech.settings.manager.BaseManager
    public boolean setAction(Function function) {
        boolean checkFactoryModeState;
        switch (function) {
            case CHECK_FACTORY_MODE_STATE_ACTION:
                checkFactoryModeState = CarMiscManager.get().setCheckFactoryModeState();
                break;
            case CLOSE_SCREEN_ACTION:
                checkFactoryModeState = closeScreenBrightness();
                break;
            default:
                checkFactoryModeState = false;
                break;
        }
        LogUtil.i(TAG, "setAction function:" + function + ", result:" + checkFactoryModeState);
        return checkFactoryModeState;
    }

    @Override // com.yftech.settings.manager.BaseManager
    public boolean setOption(Function function, int i) {
        boolean naviSignalMode;
        switch (function) {
            case NAVI_SIGNAL_MODE_OPTION:
                naviSignalMode = setNaviSignalMode(i);
                break;
            case AC_VIEW_HOLD_TIME_OPTION:
                naviSignalMode = setAcViewHoldTime(i);
                break;
            case INTELLIGENT_SCENE_SWITCH_OPTION:
                naviSignalMode = setIntelligentSceneSwitchType(i);
                break;
            case LANGUAGE_SETTING_OPTION:
                naviSignalMode = setLanguageType(i);
                break;
            default:
                naviSignalMode = false;
                break;
        }
        LogUtil.i(TAG, "setOption function:" + function + ", index:" + i + ", result:" + naviSignalMode);
        return naviSignalMode;
    }

    public boolean setScreenBrightness(int i) {
        return CarScreenManager.getInstance().setBrightness(i);
    }

    @Override // com.yftech.settings.manager.BaseManager
    public boolean setValue(Function function, Object obj) {
        boolean screenBrightness = AnonymousClass3.$SwitchMap$com$yftech$settings$manager$SettingsManager$Function[function.ordinal()] != 7 ? false : setScreenBrightness(((Integer) obj).intValue());
        LogUtil.i(TAG, "setValue function:" + function + ", value:" + obj + ", result:" + screenBrightness);
        return screenBrightness;
    }
}
