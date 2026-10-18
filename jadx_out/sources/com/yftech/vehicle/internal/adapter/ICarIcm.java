package com.yftech.vehicle.internal.adapter;

/* JADX INFO: loaded from: classes.dex */
public interface ICarIcm extends IBaseApi {
    public static final int ACU_CURRENTSOURCE_SETTING = 626;
    public static final int BACK_LIGHT_LEVEL = 114;
    public static final int BACK_LIGHT_LEVEL_SETTING = 219;
    public static final int FM_FREQ_SYMBOL_SETTING = 533;
    public static final int FUEL_ECONOMY_AND_DISTANCE_UNIT = 119;
    public static final int FUEL_ECONOMY_AND_DISTANCE_UNIT_SETTING = 51;
    public static final int ICM_AVAIBLE_DRIVE_DISTANCE = 713;
    public static final int ICM_FUEL_LEVEL = 711;
    public static final int ICM_FUEL_LEVEL_LOW = 712;
    public static final int KEEP_MUTE_WARNING = 120;
    public static final int KEYBOARD_BACKLIGHT = 226;
    public static final int LANGUAGE = 118;
    public static final int LANGUAGE_SETTING = 50;
    public static final int METER_CURRENT_SHOW_PAGE = 655;
    public static final int METER_SHOW_PAGE_SETTING = 656;
    public static final int METER_VOLUME_MODE = 258;
    public static final int METER_VOLUME_MODE_SETTING = 259;
    public static final int PRESSURE_UNIT = 116;
    public static final int PRESSURE_UNIT_SETTING = 48;
    public static final int REAR_SEAT_BELT_WARN_SETTING = 607;
    public static final int REAR_SEAT_BELT_WARN_STATUS = 606;
    public static final int REAR_SEAT_BELT_WARN_SWITCH_SETTING = 663;
    public static final int SPEED_WARNING = 117;
    public static final int SPEED_WARNING_SETTING = 49;
    public static final int TEMPERATURE_UNIT = 115;
    public static final int TEMPERATURE_UNIT_SETTING = 47;

    public enum BackLightLevel {
        LEVEL_1(0, 1),
        LEVEL_2(1, 2),
        LEVEL_3(2, 3),
        LEVEL_4(3, 4),
        LEVEL_5(4, 5),
        LEVEL_6(5, 6),
        LEVEL_7(6, 7),
        LEVEL_8(7, 8),
        __UNKNOWN__(-1, -1);

        private final int rx;
        private final int tx;
        public final int value;

        BackLightLevel(int i, int i2) {
            this.rx = i;
            this.tx = i2;
            this.value = this.tx;
        }

        public static BackLightLevel valueOf(int i) {
            if (i == LEVEL_1.rx) {
                return LEVEL_1;
            }
            if (i == LEVEL_2.rx) {
                return LEVEL_2;
            }
            if (i == LEVEL_3.rx) {
                return LEVEL_3;
            }
            if (i == LEVEL_4.rx) {
                return LEVEL_4;
            }
            if (i == LEVEL_5.rx) {
                return LEVEL_5;
            }
            if (i == LEVEL_6.rx) {
                return LEVEL_6;
            }
            if (i == LEVEL_7.rx) {
                return LEVEL_7;
            }
            return i == LEVEL_8.rx ? LEVEL_8 : __UNKNOWN__;
        }
    }

    public enum CurrentSource {
        OFF(0),
        USB_MUSIC(2),
        BT_MUSIC(6),
        CARPLAY_MUSIC(21),
        __UNKNOWN__(-1);

        public final int value;

        CurrentSource(int i) {
            this.value = i;
        }

        public static CurrentSource valueOf(int i) {
            if (i == OFF.value) {
                return OFF;
            }
            if (i == USB_MUSIC.value) {
                return USB_MUSIC;
            }
            if (i == BT_MUSIC.value) {
                return BT_MUSIC;
            }
            return i == CARPLAY_MUSIC.value ? CARPLAY_MUSIC : __UNKNOWN__;
        }
    }

    public enum FuelEconomyAndDistanceUnit {
        L_PER_100KM_AND_KM(0, 1),
        MPG_GB_AND_M(1, 2),
        MPG_US_AND_M(2, 3),
        KM_L_AND_KM(3, 4),
        __UNKNOWN__(-1, -1);

        private final int rx;
        private final int tx;
        public final int value;

        FuelEconomyAndDistanceUnit(int i, int i2) {
            this.rx = i;
            this.tx = i2;
            this.value = this.tx;
        }

        public static FuelEconomyAndDistanceUnit valueOf(int i) {
            if (i == L_PER_100KM_AND_KM.rx) {
                return L_PER_100KM_AND_KM;
            }
            if (i == MPG_GB_AND_M.rx) {
                return MPG_GB_AND_M;
            }
            if (i == MPG_US_AND_M.rx) {
                return MPG_US_AND_M;
            }
            return i == KM_L_AND_KM.rx ? KM_L_AND_KM : __UNKNOWN__;
        }
    }

    public enum ICMCurrentShowPage {
        NO_LVDS(0),
        MAINDISPLAYZONE_ON(1),
        SLAVEDISPLAYZONE_ON(2),
        ALLDISPLAYZONE_ON(3),
        STOPWATCH_DISPLAY(4),
        POWER_DISPLAY(5),
        NAVI_DISPLAY(6),
        MEDIA_DISPLAY(7),
        FACE_ID_DISPLAY(8),
        __UNKNOWN__(-1);

        public final int value;

        ICMCurrentShowPage(int i) {
            this.value = i;
        }

        public static ICMCurrentShowPage valueOf(int i) {
            if (i == NO_LVDS.value) {
                return NO_LVDS;
            }
            if (i == MAINDISPLAYZONE_ON.value) {
                return MAINDISPLAYZONE_ON;
            }
            if (i == SLAVEDISPLAYZONE_ON.value) {
                return SLAVEDISPLAYZONE_ON;
            }
            if (i == ALLDISPLAYZONE_ON.value) {
                return ALLDISPLAYZONE_ON;
            }
            if (i == STOPWATCH_DISPLAY.value) {
                return STOPWATCH_DISPLAY;
            }
            if (i == POWER_DISPLAY.value) {
                return POWER_DISPLAY;
            }
            if (i == NAVI_DISPLAY.value) {
                return NAVI_DISPLAY;
            }
            if (i == MEDIA_DISPLAY.value) {
                return MEDIA_DISPLAY;
            }
            return i == FACE_ID_DISPLAY.value ? FACE_ID_DISPLAY : __UNKNOWN__;
        }
    }

    public enum ICMShowPageSetting {
        NO_COMMAND(0),
        STOPWATCH_START(1),
        STOPWATCH_STOP(2),
        POWER_START(3),
        POWER_STOP(4),
        NAV_START(5),
        NAV_STOP(6),
        MEDIA_START(7),
        MEDIA_STOP(8),
        __UNKNOWN__(-1);

        public final int value;

        ICMShowPageSetting(int i) {
            this.value = i;
        }

        public static ICMShowPageSetting valueOf(int i) {
            if (i == NO_COMMAND.value) {
                return NO_COMMAND;
            }
            if (i == STOPWATCH_START.value) {
                return STOPWATCH_START;
            }
            if (i == STOPWATCH_STOP.value) {
                return STOPWATCH_STOP;
            }
            if (i == POWER_START.value) {
                return POWER_START;
            }
            if (i == POWER_STOP.value) {
                return POWER_STOP;
            }
            if (i == NAV_START.value) {
                return NAV_START;
            }
            if (i == NAV_STOP.value) {
                return NAV_STOP;
            }
            if (i == MEDIA_START.value) {
                return MEDIA_START;
            }
            return i == MEDIA_STOP.value ? MEDIA_STOP : __UNKNOWN__;
        }
    }

    public enum Language {
        CHINESE(1, 1),
        ENGLISH(2, 2),
        RUSSIAN(3, 3),
        ARABIC(4, 4),
        SPANISH(5, 5),
        PORTUGUESE(6, 6),
        INDONESIAN(7, 7),
        CHINESE_TRADITIONAL(8, 8),
        VIETNAMENSE(9, 9),
        THAI(10, 10),
        MALAY(11, 11),
        FRENCH(12, 12),
        ITALY(13, 13),
        __UNKNOWN__(-1, -1);

        private final int rx;
        private final int tx;
        public final int value;

        Language(int i, int i2) {
            this.rx = i;
            this.tx = i2;
            this.value = this.tx;
        }

        public static Language valueOf(int i) {
            if (i == CHINESE.rx) {
                return CHINESE;
            }
            if (i == ENGLISH.rx) {
                return ENGLISH;
            }
            if (i == RUSSIAN.rx) {
                return RUSSIAN;
            }
            if (i == ARABIC.rx) {
                return ARABIC;
            }
            if (i == SPANISH.rx) {
                return SPANISH;
            }
            if (i == PORTUGUESE.rx) {
                return PORTUGUESE;
            }
            if (i == INDONESIAN.rx) {
                return INDONESIAN;
            }
            if (i == CHINESE_TRADITIONAL.rx) {
                return CHINESE_TRADITIONAL;
            }
            if (i == VIETNAMENSE.rx) {
                return VIETNAMENSE;
            }
            if (i == THAI.rx) {
                return THAI;
            }
            if (i == MALAY.rx) {
                return MALAY;
            }
            if (i == FRENCH.rx) {
                return FRENCH;
            }
            return i == ITALY.rx ? ITALY : __UNKNOWN__;
        }
    }

    public enum MeterVolumeMode {
        LOW(0, 1),
        MIDDLE(1, 2),
        HIGH(2, 3),
        __UNKNOWN__(-1, -1);

        private final int rx;
        private final int tx;
        public final int value;

        MeterVolumeMode(int i, int i2) {
            this.rx = i;
            this.tx = i2;
            this.value = this.tx;
        }

        public static MeterVolumeMode valueOf(int i) {
            if (i == LOW.rx) {
                return LOW;
            }
            if (i == MIDDLE.rx) {
                return MIDDLE;
            }
            return i == HIGH.rx ? HIGH : __UNKNOWN__;
        }
    }

    public enum PressureUnit {
        K_PA(0, 1),
        BAR(1, 2),
        PSI(2, 3),
        __UNKNOWN__(-1, -1);

        private final int rx;
        private final int tx;
        public final int value;

        PressureUnit(int i, int i2) {
            this.rx = i;
            this.tx = i2;
            this.value = this.tx;
        }

        public static PressureUnit valueOf(int i) {
            if (i == K_PA.rx) {
                return K_PA;
            }
            if (i == BAR.rx) {
                return BAR;
            }
            return i == PSI.rx ? PSI : __UNKNOWN__;
        }
    }

    public enum TemperatureUnit {
        CELSIUS(0, 1),
        FAHRENHEIT(1, 2),
        __UNKNOWN__(-1, -1);

        private final int rx;
        private final int tx;
        public final int value;

        TemperatureUnit(int i, int i2) {
            this.rx = i;
            this.tx = i2;
            this.value = this.tx;
        }

        public static TemperatureUnit valueOf(int i) {
            if (i == CELSIUS.rx) {
                return CELSIUS;
            }
            return i == FAHRENHEIT.rx ? FAHRENHEIT : __UNKNOWN__;
        }
    }
}
