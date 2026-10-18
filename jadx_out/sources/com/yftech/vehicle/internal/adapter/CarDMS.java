package com.yftech.vehicle.internal.adapter;

/* JADX INFO: loaded from: classes.dex */
public interface CarDMS extends IBaseApi {
    public static final int DMS_DISTR_WARN_SATUS = 616;
    public static final int DMS_FATIG_WARN_SATUS = 615;
    public static final int DMS_MODE_SATUS = 614;
    public static final int DMS_MODE_SETTING = 613;
    public static final int DMS_SWITCH_SATUS = 612;
    public static final int DMS_SWITCH_SETTING = 611;
    public static final int DMS_SYS_WORK_SATUS = 610;

    public enum DMSDistrWarn {
        UNAVAILABLE(0),
        UNKNOWN(1),
        DISTRACTIVE(2),
        NO_DISTRACTIVE(3),
        SUSPECTED_DISTRACTIVE(4),
        __UNKNOWN__(-1);

        public final int value;

        DMSDistrWarn(int i) {
            this.value = i;
        }

        public static DMSDistrWarn valueOf(int i) {
            if (i == UNAVAILABLE.value) {
                return UNAVAILABLE;
            }
            if (i == UNKNOWN.value) {
                return UNKNOWN;
            }
            if (i == DISTRACTIVE.value) {
                return DISTRACTIVE;
            }
            if (i == NO_DISTRACTIVE.value) {
                return NO_DISTRACTIVE;
            }
            return i == SUSPECTED_DISTRACTIVE.value ? SUSPECTED_DISTRACTIVE : __UNKNOWN__;
        }
    }

    public enum DMSFatigWarn {
        UNAVAILABLE(0),
        UNKNOWN(1),
        ATTENTIVE(2),
        CAUTIONARY(3),
        SEVERE(4),
        MICROSLEEP(5),
        __UNKNOWN__(-1);

        public final int value;

        DMSFatigWarn(int i) {
            this.value = i;
        }

        public static DMSFatigWarn valueOf(int i) {
            if (i == UNAVAILABLE.value) {
                return UNAVAILABLE;
            }
            if (i == UNKNOWN.value) {
                return UNKNOWN;
            }
            if (i == ATTENTIVE.value) {
                return ATTENTIVE;
            }
            if (i == CAUTIONARY.value) {
                return CAUTIONARY;
            }
            if (i == SEVERE.value) {
                return SEVERE;
            }
            return i == MICROSLEEP.value ? MICROSLEEP : __UNKNOWN__;
        }
    }

    public enum DMSMode {
        NO_COMMAND(-1, 0),
        FATIGUE(0, 1),
        DISTRACTION(1, 2),
        FATIGUE_AND_DISTRACTION(2, 3),
        __UNKNOWN__(-1, -1);

        private final int rx;
        private final int tx;
        public final int value;

        DMSMode(int i, int i2) {
            this.rx = i;
            this.tx = i2;
            this.value = this.tx;
        }

        public static DMSMode valueOf(int i) {
            if (i == NO_COMMAND.rx) {
                return NO_COMMAND;
            }
            if (i == FATIGUE.rx) {
                return FATIGUE;
            }
            if (i == DISTRACTION.rx) {
                return DISTRACTION;
            }
            return i == FATIGUE_AND_DISTRACTION.rx ? FATIGUE_AND_DISTRACTION : __UNKNOWN__;
        }
    }

    public enum DMSSwitch {
        OFF(0),
        PASSIVE(1),
        ACTIVE(2),
        FAILURE(3),
        __UNKNOWN__(-1);

        public final int value;

        DMSSwitch(int i) {
            this.value = i;
        }

        public static DMSSwitch valueOf(int i) {
            if (i == OFF.value) {
                return OFF;
            }
            if (i == PASSIVE.value) {
                return PASSIVE;
            }
            if (i == ACTIVE.value) {
                return ACTIVE;
            }
            return i == FAILURE.value ? FAILURE : __UNKNOWN__;
        }
    }

    public enum DMSSysErrStatus {
        UNAVAILABLE(0),
        DRIVER_MONITOR_CAMERA_BLOCKED_BY_STEERINGWHEEL(1),
        DRIVER_MONITOR_CAMERA_BLOCKED(2),
        DMS_SYS_ERRO(3),
        FF_LOSE_TEMPLATES(4),
        IR_PROOF_SUNGLASS_DETECTED(5),
        __UNKNOWN__(-1);

        public final int value;

        DMSSysErrStatus(int i) {
            this.value = i;
        }

        public static DMSSysErrStatus valueOf(int i) {
            if (i == UNAVAILABLE.value) {
                return UNAVAILABLE;
            }
            if (i == DRIVER_MONITOR_CAMERA_BLOCKED_BY_STEERINGWHEEL.value) {
                return DRIVER_MONITOR_CAMERA_BLOCKED_BY_STEERINGWHEEL;
            }
            if (i == DRIVER_MONITOR_CAMERA_BLOCKED.value) {
                return DRIVER_MONITOR_CAMERA_BLOCKED;
            }
            if (i == DMS_SYS_ERRO.value) {
                return DMS_SYS_ERRO;
            }
            if (i == FF_LOSE_TEMPLATES.value) {
                return FF_LOSE_TEMPLATES;
            }
            return i == IR_PROOF_SUNGLASS_DETECTED.value ? IR_PROOF_SUNGLASS_DETECTED : __UNKNOWN__;
        }
    }
}
