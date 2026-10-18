package com.yftech.vehicle.internal.adapter;

/* JADX INFO: loaded from: classes.dex */
public interface CarMoto extends IBaseApi {
    public static final int MOTO_Engine_SPEED_INFO = 636;
    public static final int MOTO_FULLLIGHT_INFO = 637;
    public static final int MOTO_GEARS_LEVEL_INFO = 640;
    public static final int MOTO_GEARS_SATUS = 629;
    public static final int MOTO_HANDLEBAR_KEY_HEAT_INFO = 628;
    public static final int MOTO_IGNITION_STATUS = 641;
    public static final int MOTO_IGN_KEY_STATUS_INFO = 634;
    public static final int MOTO_KNOB_LEFT_RIGH_KEY_INFO = 633;
    public static final int MOTO_KNOB_LSTEP_NUM_KEY_INFO = 638;
    public static final int MOTO_KNOB_UP_DOWN_KEY_INFO = 632;
    public static final int MOTO_PREVIEW_MODE_KEY_INFO = 631;
    public static final int MOTO_RIGHT_MODE_KEY_INFO = 630;
    public static final int MOTO_SPEED_INFO = 635;
    public static final int MOTO_TURN_LIGHT_INFO = 627;

    public enum Gears {
        N_GEAR(2),
        LEVEL_1(1),
        LEVEL_2(4),
        LEVEL_3(7),
        LEVEL_4(8),
        LEVEL_5(11),
        LEVEL_6(13),
        LEVEL_ERRO(15),
        __UNKNOWN__(-1);

        public final int value;

        Gears(int i) {
            this.value = i;
        }

        public static Gears valueOf(int i) {
            if (i == N_GEAR.value) {
                return N_GEAR;
            }
            if (i == LEVEL_1.value) {
                return LEVEL_1;
            }
            if (i == LEVEL_2.value) {
                return LEVEL_2;
            }
            if (i == LEVEL_3.value) {
                return LEVEL_3;
            }
            if (i == LEVEL_4.value) {
                return LEVEL_4;
            }
            if (i == LEVEL_5.value) {
                return LEVEL_5;
            }
            if (i == LEVEL_6.value) {
                return LEVEL_6;
            }
            return i == LEVEL_ERRO.value ? LEVEL_ERRO : __UNKNOWN__;
        }
    }

    public enum HandlebarKeyHeat {
        OFF(0),
        LEVEL_1(1),
        LEVEL_2(2),
        LEVEL_3(3),
        __UNKNOWN__(-1);

        public final int value;

        HandlebarKeyHeat(int i) {
            this.value = i;
        }

        public static HandlebarKeyHeat valueOf(int i) {
            if (i == OFF.value) {
                return OFF;
            }
            if (i == LEVEL_1.value) {
                return LEVEL_1;
            }
            if (i == LEVEL_2.value) {
                return LEVEL_2;
            }
            return i == LEVEL_3.value ? LEVEL_3 : __UNKNOWN__;
        }
    }

    public enum KnobLeftRightKey {
        RELEASE(0),
        RIGHT_PRESS(1),
        LEFT_PRESS(2),
        __UNKNOWN__(-1);

        public final int value;

        KnobLeftRightKey(int i) {
            this.value = i;
        }

        public static KnobLeftRightKey valueOf(int i) {
            if (i == RELEASE.value) {
                return RELEASE;
            }
            if (i == RIGHT_PRESS.value) {
                return RIGHT_PRESS;
            }
            return i == LEFT_PRESS.value ? LEFT_PRESS : __UNKNOWN__;
        }
    }

    public enum KnobUpDownKey {
        RELEASE(0),
        GOUP_PRESS(1),
        GODOWN_PRESS(2),
        __UNKNOWN__(-1);

        public final int value;

        KnobUpDownKey(int i) {
            this.value = i;
        }

        public static KnobUpDownKey valueOf(int i) {
            if (i == RELEASE.value) {
                return RELEASE;
            }
            if (i == GOUP_PRESS.value) {
                return GOUP_PRESS;
            }
            return i == GODOWN_PRESS.value ? GODOWN_PRESS : __UNKNOWN__;
        }
    }

    public enum MOTOIGNStatus {
        OFF(1),
        ON(2),
        __UNKNOWN__(-1);

        public final int value;

        MOTOIGNStatus(int i) {
            this.value = i;
        }

        public static MOTOIGNStatus valueOf(int i) {
            if (i == OFF.value) {
                return OFF;
            }
            return i == ON.value ? ON : __UNKNOWN__;
        }
    }

    public enum PreviewModeKey {
        ENTER(0),
        MODE1(1),
        MODE2(2),
        MODE3(3),
        __UNKNOWN__(-1);

        public final int value;

        PreviewModeKey(int i) {
            this.value = i;
        }

        public static PreviewModeKey valueOf(int i) {
            if (i == ENTER.value) {
                return ENTER;
            }
            if (i == MODE1.value) {
                return MODE1;
            }
            if (i == MODE2.value) {
                return MODE2;
            }
            return i == MODE3.value ? MODE3 : __UNKNOWN__;
        }
    }

    public enum RightModeKey {
        MODE1(1),
        MODE2(2),
        MODE3(3),
        __UNKNOWN__(-1);

        public final int value;

        RightModeKey(int i) {
            this.value = i;
        }

        public static RightModeKey valueOf(int i) {
            if (i == MODE1.value) {
                return MODE1;
            }
            if (i == MODE2.value) {
                return MODE2;
            }
            return i == MODE3.value ? MODE3 : __UNKNOWN__;
        }
    }

    public enum TurnLightInfo {
        OFF(0),
        BLINK(3),
        LEFT_LIGHT(1),
        RIGHT_LIGHT(2),
        __UNKNOWN__(-1);

        public final int value;

        TurnLightInfo(int i) {
            this.value = i;
        }

        public static TurnLightInfo valueOf(int i) {
            if (i == OFF.value) {
                return OFF;
            }
            if (i == BLINK.value) {
                return BLINK;
            }
            if (i == LEFT_LIGHT.value) {
                return LEFT_LIGHT;
            }
            return i == RIGHT_LIGHT.value ? RIGHT_LIGHT : __UNKNOWN__;
        }
    }
}
