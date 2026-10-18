package com.yftech.settings.manager;

import android.content.Context;
import android.content.SharedPreferences;
import android.media.AudioManager;
import android.os.Handler;
import android.os.SystemProperties;
import android.provider.Settings;
import android.util.Log;
import com.yftech.car.audio.CarAudioManager;
import com.yftech.car.audio.CarSoundEffectManager;
import com.yftech.car.data.CarData;
import com.yftech.car.data.CarDataManager;
import com.yftech.settings.CommonConstant;
import com.yftech.settings.utils.LogUtil;
import com.yftech.vehicle.internal.adapter.IHostConfig;
import com.yftech.vehicle.sdk.CarConfig;
import com.yftech.vehicle.sdk.HostConfig;

/* JADX INFO: loaded from: classes.dex */
public class SoundManager extends BaseManager<Function> {
    private static final int BANDS_HZ_HIGH = 8;
    private static final int BANDS_HZ_LOW = 1;
    private static final int BANDS_HZ_MID = 4;
    private static final int DEFAULT_INTERFACE_SOUND_EFFECT = 0;
    private static final int KEEP_MUTE_WARNING_VALUE_INVARIANT = 0;
    private static final int KEEP_MUTE_WARNING_VALUE_MUTE = 1;
    private static final int KEEP_MUTE_WARNING_VALUE_REDUCE = 2;
    public static final String KEY_INTERFACE_SOUND_EFFECT = "interface_sound_effect";
    private static final String KEY_KEEP_MUTE_WARNING_ENABLE = "Keep_Mute_Warning_Enable";
    public static final int STAGE_MAX_X = 20;
    public static final int STAGE_MAX_Y = 20;
    private static final String TAG = "SoundManager";
    private static final int VALUE_INTERFACE_SOUND_EFFECT_CLOSE = 0;
    private static final int VALUE_INTERFACE_SOUND_EFFECT_OPEN = 1;
    private static SoundManager sSoundManager;
    private Context mContext;
    private float[] mMiddleBands;
    private int KEY_SOUND_TYPE_MODERN = 0;
    private int KEY_SOUND_TYPE_CLASSIC = 1;
    private int KEY_SOUND_TYPE_CLOSE = 2;
    private int[] KEY_SOUND_TYPE = {this.KEY_SOUND_TYPE_MODERN, this.KEY_SOUND_TYPE_CLASSIC, this.KEY_SOUND_TYPE_CLOSE};
    public int DTS_CLOSE = -999;
    private int[] DTS_SOUND_POSITION = {2, 0, this.DTS_CLOSE};
    private int[] DTS_TYPE = {0, 1, 2, 3};
    private int[] EQ_TYPE = {8, 6, 5, 4, 0, 1};
    private int[] BOOT_VOLUME_TYPE = {1, 2};
    private int[] KEEP_MUTE_WARNING = {0, 2, 1};
    private float mDelayMinValue = 0.0f;
    private float mDelayMaxValue = 0.0f;
    private float mRateX = 0.0f;
    private float mRateY = 0.0f;
    private float mRateZ = 0.0f;
    private int mLastX = -1;
    private int mLastY = -1;
    private Handler mCarAudioCallbackHandler = new Handler();
    private DtsStateSetThread mDtsStateSetThread = null;
    private Object mLock = new Object();
    private int mKeepMuteWarningOption = 1;
    private CarSoundEffectManager.CarSoundEffectCallback mCarSoundEffectCallback = new CarSoundEffectManager.CarSoundEffectCallback() { // from class: com.yftech.settings.manager.SoundManager.1
        public void onChangedBalanceValue(float f, float f2, float f3, float f4) {
            super.onChangedBalanceValue(f, f2, f3, f4);
            LogUtil.i(SoundManager.TAG, "onChangedBalanceValue fl:" + f + ", fr:" + f2 + ", rl:" + f3 + ", rr:" + f4);
        }

        public void onChangedBandValue(float[] fArr, float[] fArr2) {
            float f;
            float f2;
            super.onChangedBandValue(fArr, fArr2);
            float f3 = 0.0f;
            if (fArr != null) {
                f3 = fArr[8];
                f2 = fArr[4];
                f = fArr[1];
            } else {
                f = 0.0f;
                f2 = 0.0f;
            }
            LogUtil.i(SoundManager.TAG, "onChangedBandValue high:" + f3 + ", mid:" + f2 + ", low:" + f);
            SoundManager.this.notifyOnValueChanged(Function.BAND_HIGH_VALUE, Float.valueOf(f3));
            SoundManager.this.notifyOnValueChanged(Function.BAND_MID_VALUE, Float.valueOf(f2));
            SoundManager.this.notifyOnValueChanged(Function.BAND_LOW_VALUE, Float.valueOf(f));
        }

        public void onChangedDTSEnable(boolean z) {
            super.onChangedDTSEnable(z);
            LogUtil.i(SoundManager.TAG, "onChangedDTSEnable enable:" + z);
            SoundManager.this.notifyOnEnableChanged(Function.DTS_ENABLE, z);
            SoundManager.this.notifyOnOptionChanged(Function.DTS_SOUND_POSITION_OPTION, SoundManager.this.getDTSSoundPosition());
        }

        public void onChangedDTSSoundPosition(int i) {
            super.onChangedDTSSoundPosition(i);
            LogUtil.i(SoundManager.TAG, "onChangedDTSSoundPosition position:" + i);
            int i2 = 0;
            while (i2 < SoundManager.this.DTS_SOUND_POSITION.length) {
                if (SoundManager.this.DTS_SOUND_POSITION[i2] == i) {
                    SoundManager.this.notifyOnOptionChanged(Function.DTS_SOUND_POSITION_OPTION, i2);
                }
                i2++;
            }
            i2 = -1;
            SoundManager.this.notifyOnOptionChanged(Function.DTS_SOUND_POSITION_OPTION, i2);
        }

        public void onChangedDTSType(int i) {
            super.onChangedDTSType(i);
            LogUtil.i(SoundManager.TAG, "onChangedDTSType type:" + i);
            int i2 = 0;
            while (i2 < SoundManager.this.DTS_TYPE.length) {
                if (SoundManager.this.DTS_TYPE[i2] == i) {
                    SoundManager.this.notifyOnOptionChanged(Function.DTS_TYEP_OPTION, i2);
                }
                i2++;
            }
            i2 = -1;
            SoundManager.this.notifyOnOptionChanged(Function.DTS_TYEP_OPTION, i2);
        }

        public void onChangedDelayValue(float f, float f2, float f3, float f4) {
            super.onChangedDelayValue(f, f2, f3, f4);
            LogUtil.i(SoundManager.TAG, "onChangedDelayValue fl:" + f + ", fr:" + f2 + ", rl:" + f3 + ", rr:" + f4);
        }

        public void onChangedEQType(int i, float[] fArr, float[] fArr2) {
            float f;
            float f2;
            super.onChangedEQType(i, fArr, fArr2);
            int i2 = 0;
            while (true) {
                if (i2 >= SoundManager.this.EQ_TYPE.length) {
                    i2 = -1;
                    break;
                } else if (SoundManager.this.EQ_TYPE[i2] == i) {
                    break;
                } else {
                    i2++;
                }
            }
            SoundManager.this.notifyOnOptionChanged(Function.EQ_TYPE_OPTION, i2);
            float f3 = 0.0f;
            if (fArr != null) {
                f3 = fArr[8];
                f2 = fArr[4];
                f = fArr[1];
            } else {
                f = 0.0f;
                f2 = 0.0f;
            }
            LogUtil.i(SoundManager.TAG, "onChangedEQType type:" + i + ", high:" + f3 + ", mid:" + f2 + ", low:" + f);
            SoundManager.this.notifyOnValueChanged(Function.BAND_HIGH_VALUE, Float.valueOf(f3));
            SoundManager.this.notifyOnValueChanged(Function.BAND_MID_VALUE, Float.valueOf(f2));
            SoundManager.this.notifyOnValueChanged(Function.BAND_LOW_VALUE, Float.valueOf(f));
        }

        public void onChangedEnable(boolean z) {
            super.onChangedEnable(z);
            LogUtil.i(SoundManager.TAG, "onChangedEnable enable:" + z);
        }
    };

    private class DtsStateSetThread extends Thread {
        private int mDelayX;
        private int mDelayY;
        private boolean mExit;

        private DtsStateSetThread() {
            this.mExit = false;
            this.mDelayX = -1;
            this.mDelayY = -1;
        }

        public void cancle() {
            this.mExit = true;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            int i;
            int i2;
            super.run();
            while (!this.mExit) {
                synchronized (SoundManager.this.mLock) {
                    i = this.mDelayX;
                    i2 = this.mDelayY;
                    this.mDelayX = -1;
                    this.mDelayY = -1;
                }
                if (i != -1 && i2 != -1) {
                    SoundManager.this.setDelay(i, i2);
                }
                try {
                    Thread.sleep(100L);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            if (this.mDelayX == -1 || this.mDelayY == -1) {
                return;
            }
            SoundManager.this.setDelay(this.mDelayX, this.mDelayY);
        }

        public void setDelayValue(int i, int i2) {
            synchronized (SoundManager.this.mLock) {
                this.mDelayX = i;
                this.mDelayY = i2;
            }
        }
    }

    public enum Function {
        UNKNOWN,
        DTS_ENABLE,
        DTS_TYEP_OPTION,
        DTS_SOUND_POSITION_OPTION,
        EQ_TYPE_OPTION,
        BAND_HIGH_VALUE,
        BAND_MID_VALUE,
        BAND_LOW_VALUE,
        SOUND_DELAY_VALUE,
        SPEED_GAIN_ENABLE,
        BOOT_VOLUME_OPTION,
        KEEP_MUTE_WARNING_OPTION,
        KEY_SOUND_OPTION,
        INTERFACE_EFFECTS_ENABLE,
        BAND_HIGH_INTERVAL_VALUE,
        BAND_MID_INTERVAL_VALUE,
        BAND_LOW_INTERVAL_VALUE,
        SOUND_DELAY_START_ACTION,
        SOUND_DELAY_CANCEL_ACTION
    }

    private SoundManager() {
    }

    private boolean cancelDelay() {
        if (this.mDtsStateSetThread == null) {
            return false;
        }
        this.mDtsStateSetThread.cancle();
        return true;
    }

    private float getBandCurValue(int i) {
        float[] bandCurValue = CarSoundEffectManager.getInstance().getBandCurValue();
        if (bandCurValue == null || i >= bandCurValue.length) {
            return 0.0f;
        }
        return bandCurValue[i];
    }

    private int getBootVolumeType() {
        int bootVolumeType = CarAudioManager.getInstance().getBootVolumeType();
        for (int i = 0; i < this.BOOT_VOLUME_TYPE.length; i++) {
            if (this.BOOT_VOLUME_TYPE[i] == bootVolumeType) {
                return i;
            }
        }
        return -1;
    }

    private boolean getDTSEnable() {
        return CarSoundEffectManager.getInstance().isDTSEnable();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getDTSSoundPosition() {
        boolean zIsDTSEnable = CarSoundEffectManager.getInstance().isDTSEnable();
        int dTSSoundPosition = zIsDTSEnable ? CarSoundEffectManager.getInstance().getDTSSoundPosition() : this.DTS_CLOSE;
        LogUtil.i(TAG, "getDTSSoundPosition isDTSEnable:" + zIsDTSEnable + ", dtsSoundPosition:" + dTSSoundPosition);
        for (int i = 0; i < this.DTS_SOUND_POSITION.length; i++) {
            if (this.DTS_SOUND_POSITION[i] == dTSSoundPosition) {
                return i;
            }
        }
        return -1;
    }

    private int getDTSType() {
        int dTSType = CarSoundEffectManager.getInstance().getDTSType();
        for (int i = 0; i < this.DTS_TYPE.length; i++) {
            if (this.DTS_TYPE[i] == dTSType) {
                return i;
            }
        }
        return -1;
    }

    private float getDbInterval(int i) {
        float[] bandMaxValue = CarSoundEffectManager.getInstance().getBandMaxValue();
        float[] bandMinValue = CarSoundEffectManager.getInstance().getBandMinValue();
        if (bandMaxValue == null || bandMinValue == null) {
            return -1.0f;
        }
        return bandMaxValue[i] - bandMinValue[i];
    }

    private int[] getDelay() {
        SharedPreferences sharedPreferences = getContext().getApplicationContext().getSharedPreferences(CommonConstant.SHARED_PREFERENCE_NAME, 0);
        return new int[]{sharedPreferences.getInt("eq_x", 10), sharedPreferences.getInt("eq_y", 10)};
    }

    private int getEQType() {
        int eQType = CarSoundEffectManager.getInstance().getEQType();
        for (int i = 0; i < this.EQ_TYPE.length; i++) {
            if (this.EQ_TYPE[i] == eQType) {
                return i;
            }
        }
        return -1;
    }

    public static synchronized SoundManager getInstance() {
        if (sSoundManager == null) {
            sSoundManager = new SoundManager();
        }
        return sSoundManager;
    }

    private boolean getInterfaceEffectsEnable() {
        int i = Settings.Global.getInt(this.mContext.getContentResolver(), KEY_INTERFACE_SOUND_EFFECT, -1);
        Log.i(TAG, "isOpenInterfaceSoundEffect: status = " + i);
        if (i == -1) {
            i = HostConfig.getInterfaceSound() == IHostConfig.InterfaceSound.ON ? 1 : 0;
            Settings.Global.putInt(this.mContext.getContentResolver(), KEY_INTERFACE_SOUND_EFFECT, i);
        }
        return i == 1;
    }

    private int getKeepMuteWarning() {
        int valueInt = this.KEEP_MUTE_WARNING[this.mKeepMuteWarningOption];
        CarData carData = CarDataManager.get(new CarData(new CarData.CarDataEntry(KEY_KEEP_MUTE_WARNING_ENABLE, valueInt)));
        if (carData != null && carData.getDataEntry(KEY_KEEP_MUTE_WARNING_ENABLE) != null) {
            valueInt = carData.getDataEntry(KEY_KEEP_MUTE_WARNING_ENABLE).getValueInt();
        }
        return getValidKeepMuteWarningOption(valueInt);
    }

    private int getKeySoundType() {
        int i = this.KEY_SOUND_TYPE_CLOSE;
        if (Settings.System.getInt(getContext().getApplicationContext().getContentResolver(), "sound_effects_enabled", 1) == 1) {
            i = SystemProperties.getInt("persist.yf.sound_effect_index", this.KEY_SOUND_TYPE_MODERN);
        }
        for (int i2 = 0; i2 < this.KEY_SOUND_TYPE.length; i2++) {
            if (this.KEY_SOUND_TYPE[i2] == i) {
                return i2;
            }
        }
        return -1;
    }

    private float getMiddleBand(int i) {
        if (this.mMiddleBands == null || i < 0 || i >= this.mMiddleBands.length) {
            return 0.0f;
        }
        return this.mMiddleBands[i];
    }

    private boolean getSpeedGainEnable() {
        return CarAudioManager.getInstance().getSpeedGainLevel() != 0;
    }

    private int getValidKeepMuteWarningOption(int i) {
        for (int i2 = 0; i2 < this.KEEP_MUTE_WARNING.length; i2++) {
            if (this.KEEP_MUTE_WARNING[i2] == i) {
                this.mKeepMuteWarningOption = i2;
                break;
            }
        }
        LogUtil.i(TAG, "getValidKeepMuteWarningOption type:" + i + ", index:" + this.mKeepMuteWarningOption);
        return this.mKeepMuteWarningOption;
    }

    private void initMiddleBands() {
        float[] bandMaxValue = CarSoundEffectManager.getInstance().getBandMaxValue();
        float[] bandMinValue = CarSoundEffectManager.getInstance().getBandMinValue();
        if (bandMaxValue == null || bandMinValue == null) {
            return;
        }
        int iMin = Math.min(bandMaxValue.length, bandMinValue.length);
        this.mMiddleBands = new float[iMin];
        for (int i = 0; i < iMin; i++) {
            this.mMiddleBands[i] = (bandMaxValue[i] + bandMinValue[i]) / 2.0f;
        }
    }

    private void playKeySoundEffect() {
        if (Settings.System.getInt(getContext().getApplicationContext().getContentResolver(), "sound_effects_enabled", 0) == 1) {
            ((AudioManager) getContext().getSystemService("audio")).playSoundEffect(0);
        }
    }

    private boolean setBandValue(int i, float f) {
        float[] bandCurValue = CarSoundEffectManager.getInstance().getBandCurValue();
        if (bandCurValue == null || i >= bandCurValue.length) {
            LogUtil.d(TAG, "setBandValue index:" + i + ", value:" + f + ", getBandCurValue is null");
            return false;
        }
        for (int i2 = 0; i2 < bandCurValue.length; i2++) {
            if (i2 != 8 && i2 != 4 && i2 != 1) {
                bandCurValue[i2] = getMiddleBand(i2);
            }
        }
        bandCurValue[i] = f;
        boolean bandValue = CarSoundEffectManager.getInstance().setBandValue(bandCurValue);
        LogUtil.d(TAG, "setBandValue index:" + i + ", value:" + f + ", result:" + bandValue);
        return bandValue;
    }

    private boolean setBootVolumeType(int i) {
        if (i < 0 || i >= this.DTS_TYPE.length) {
            return false;
        }
        return CarAudioManager.getInstance().setBootVolumeType(this.BOOT_VOLUME_TYPE[i]);
    }

    private boolean setDTSEnable(boolean z) {
        boolean dTSEnable = CarSoundEffectManager.getInstance().setDTSEnable(z);
        LogUtil.i(TAG, "setDTSEnable enable:" + z + ", result:" + dTSEnable);
        if (!z && !CarSoundEffectManager.getInstance().isEQEnable()) {
            LogUtil.i(TAG, "setDTSEnable resultEQEnable:" + CarSoundEffectManager.getInstance().setEQEnable(true));
        }
        return dTSEnable;
    }

    private boolean setDTSSoundPosition(int i) {
        if (i < 0 || i >= this.DTS_SOUND_POSITION.length) {
            return false;
        }
        int i2 = this.DTS_SOUND_POSITION[i];
        if (i2 == this.DTS_CLOSE) {
            boolean dTSEnable = setDTSEnable(false);
            LogUtil.i(TAG, "setDTSSoundPosition() close DTSEnable");
            return dTSEnable;
        }
        if (!getDTSEnable()) {
            LogUtil.i(TAG, "setDTSSoundPosition() open DTSEnable setDTSEnableResult:" + setDTSEnable(true));
        }
        return CarSoundEffectManager.getInstance().setDTSSoundPosition(i2);
    }

    private boolean setDTSType(int i) {
        if (i < 0 || i >= this.DTS_TYPE.length) {
            return false;
        }
        return CarSoundEffectManager.getInstance().setDTSType(this.DTS_TYPE[i]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean setDelay(int i, int i2) {
        float f;
        float f2;
        float fSqrt;
        float fAbs;
        if (this.mLastX == i && this.mLastY == i2) {
            LogUtil.i(TAG, "setDelay the same, mLastX:" + this.mLastX + ", mLastY:" + this.mLastY + ", x:" + i + ", y:" + i2);
            return true;
        }
        float f3 = this.mDelayMaxValue;
        float f4 = this.mDelayMaxValue;
        float fAbs2 = this.mDelayMaxValue;
        float fAbs3 = this.mDelayMaxValue;
        float f5 = this.mRateZ;
        try {
            float fAbs4 = Math.abs(10 - i);
            float fAbs5 = Math.abs(10 - i2);
            f = f3;
            f2 = f4;
            try {
                float fSqrt2 = (float) Math.sqrt(Math.pow(fAbs4, 2.0d) + Math.pow(fAbs5, 2.0d));
                if (fAbs4 > fAbs5) {
                    float fAbs6 = ((Math.abs(10 - fAbs4) * fSqrt2) / fAbs4) + fSqrt2;
                    f5 = (this.mDelayMaxValue - this.mDelayMinValue) / fAbs6;
                    LogUtil.i(TAG, "setDelay, centralTriX:" + fAbs4 + ", centralTriY:" + fAbs5 + ", centralTriZ:" + fSqrt2 + ", extendedTriZ:" + fAbs6 + ", rateZ:" + f5);
                } else if (fAbs4 < fAbs5) {
                    float fAbs7 = ((Math.abs(10 - fAbs5) * fSqrt2) / fAbs5) + fSqrt2;
                    f5 = (this.mDelayMaxValue - this.mDelayMinValue) / fAbs7;
                    LogUtil.i(TAG, "setDelay, centralTriX:" + fAbs4 + ", centralTriY:" + fAbs5 + ", centralTriZ:" + fSqrt2 + ", extendedTriZ:" + fAbs7 + ", rateZ:" + f5);
                } else {
                    LogUtil.i(TAG, "setDelay, centralTriX:" + fAbs4 + ", centralTriY:" + fAbs5 + ", centralTriZ:" + fSqrt2 + ", rateZ:" + f5);
                }
            } catch (Exception e) {
                e = e;
                e.printStackTrace();
            }
        } catch (Exception e2) {
            e = e2;
            f = f3;
            f2 = f4;
        }
        if (i >= 0 && i <= 10 && i2 >= 0 && i2 <= 10) {
            float f6 = this.mDelayMaxValue;
            int i3 = i - 10;
            float fAbs8 = this.mDelayMaxValue - (Math.abs(i3) * this.mRateX);
            int i4 = i2 - 10;
            fAbs2 = this.mDelayMaxValue - (Math.abs(i4) * this.mRateY);
            fAbs3 = this.mDelayMaxValue - (((float) Math.sqrt(Math.pow(Math.abs(i3), 2.0d) + Math.pow(Math.abs(i4), 2.0d))) * f5);
            fAbs = fAbs8;
            fSqrt = f6;
        } else if (i > 10 && i <= 20 && i2 >= 0 && i2 <= 10) {
            int i5 = i - 10;
            fSqrt = this.mDelayMaxValue - (Math.abs(i5) * this.mRateX);
            fAbs = this.mDelayMaxValue;
            float f7 = this.mDelayMaxValue;
            double dPow = Math.pow(Math.abs(i5), 2.0d);
            int i6 = i2 - 10;
            fAbs2 = f7 - (((float) Math.sqrt(dPow + Math.pow(Math.abs(i6), 2.0d))) * f5);
            fAbs3 = this.mDelayMaxValue - (Math.abs(i6) * this.mRateY);
        } else if (i >= 0 && i <= 10 && i2 > 10 && i2 <= 20) {
            int i7 = i2 - 10;
            fSqrt = this.mDelayMaxValue - (Math.abs(i7) * this.mRateY);
            int i8 = i - 10;
            fAbs = this.mDelayMaxValue - (((float) Math.sqrt(Math.pow(Math.abs(i8), 2.0d) + Math.pow(Math.abs(i7), 2.0d))) * f5);
            float f8 = this.mDelayMaxValue;
            fAbs3 = this.mDelayMaxValue - (Math.abs(i8) * this.mRateX);
            fAbs2 = f8;
        } else if (i <= 10 || i > 20 || i2 <= 10 || i2 > 20) {
            fSqrt = f;
            fAbs = f2;
        } else {
            int i9 = i - 10;
            int i10 = i2 - 10;
            fSqrt = this.mDelayMaxValue - (((float) Math.sqrt(Math.pow(Math.abs(i9), 2.0d) + Math.pow(Math.abs(i10), 2.0d))) * f5);
            fAbs = this.mDelayMaxValue - (Math.abs(i10) * this.mRateY);
            fAbs2 = this.mDelayMaxValue - (Math.abs(i9) * this.mRateX);
            fAbs3 = this.mDelayMaxValue;
        }
        getContext().getApplicationContext().getSharedPreferences(CommonConstant.SHARED_PREFERENCE_NAME, 0).edit().putInt("eq_x", i).putInt("eq_y", i2).apply();
        boolean balance = CarSoundEffectManager.getInstance().setBalance(fSqrt, fAbs, fAbs2, fAbs3);
        LogUtil.i(TAG, "setDelay, x:" + i + ", y:" + i2 + ", fl:" + fSqrt + ", fr:" + fAbs + ", rl:" + fAbs2 + ", rr:" + fAbs3 + ", ret:" + balance);
        if (balance) {
            this.mLastX = i;
            this.mLastY = i2;
        }
        return balance;
    }

    private boolean setDelayValue(int i, int i2) {
        if (this.mDtsStateSetThread == null) {
            return false;
        }
        this.mDtsStateSetThread.setDelayValue(i, i2);
        return true;
    }

    private boolean setEQType(int i) {
        boolean zIsEQEnable = CarSoundEffectManager.getInstance().isEQEnable();
        if (i < 0 || i >= this.EQ_TYPE.length) {
            return false;
        }
        if (!CarSoundEffectManager.getInstance().isEQEnable()) {
            CarSoundEffectManager.getInstance().setEQEnable(true);
            zIsEQEnable = CarSoundEffectManager.getInstance().isEQEnable();
        }
        boolean eQType = CarSoundEffectManager.getInstance().setEQType(this.EQ_TYPE[i]);
        Log.i(TAG, "setEQType() isOpenEQ:" + zIsEQEnable + " setEQType result:" + eQType);
        return eQType;
    }

    private boolean setInterfaceEffectsEnable(boolean z) {
        return Settings.Global.putInt(this.mContext.getContentResolver(), KEY_INTERFACE_SOUND_EFFECT, z ? 1 : 0);
    }

    private boolean setKeepMuteWarning(int i) {
        if (i < 0 || i >= this.KEEP_MUTE_WARNING.length) {
            return false;
        }
        return CarDataManager.set(new CarData(new CarData.CarDataEntry(KEY_KEEP_MUTE_WARNING_ENABLE, this.KEEP_MUTE_WARNING[i])), true);
    }

    private boolean setKeySoundType(int i) {
        if (i < 0 || i >= this.KEY_SOUND_TYPE.length) {
            return false;
        }
        boolean zPutInt = Settings.System.putInt(getContext().getApplicationContext().getContentResolver(), "sound_effects_enabled", this.KEY_SOUND_TYPE[i] != this.KEY_SOUND_TYPE_CLOSE ? 1 : 0);
        SystemProperties.set("persist.yf.sound_effect_index", String.valueOf(this.KEY_SOUND_TYPE[i]));
        return zPutInt;
    }

    private boolean setSpeedGainEnable(boolean z) {
        return CarAudioManager.getInstance().setSpeedGainLevel(z ? 1 : 0);
    }

    private boolean startDelay() {
        this.mDtsStateSetThread = new DtsStateSetThread();
        this.mDtsStateSetThread.start();
        return true;
    }

    @Override // com.yftech.settings.manager.BaseManager
    public void deInit() {
        super.deInit();
        CarSoundEffectManager.getInstance().unregisterCarSoundEffectCallback(this.mCarSoundEffectCallback);
    }

    public int[] getDtsSoundPosition() {
        return this.DTS_SOUND_POSITION;
    }

    @Override // com.yftech.settings.manager.BaseManager
    public boolean getEnabled(Function function) {
        switch (function) {
            case DTS_ENABLE:
                return getDTSEnable();
            case SPEED_GAIN_ENABLE:
                return getSpeedGainEnable();
            case INTERFACE_EFFECTS_ENABLE:
                return getInterfaceEffectsEnable();
            default:
                return false;
        }
    }

    public boolean getFunctionPresent(Function function) {
        int i = AnonymousClass2.$SwitchMap$com$yftech$settings$manager$SoundManager$Function[function.ordinal()];
        if (i == 5) {
            return HostConfig.getInterfaceSound() != IHostConfig.InterfaceSound.NOT_PRESENT;
        }
        switch (i) {
            case 10:
                return CarConfig.isDriverAssistanceWarningPresent();
            case 11:
                return HostConfig.getKeytone() != IHostConfig.Keytone.NOT_PRESENT;
            default:
                return false;
        }
    }

    @Override // com.yftech.settings.manager.BaseManager
    public int getOption(Function function) {
        switch (function) {
            case DTS_TYEP_OPTION:
                return getDTSType();
            case DTS_SOUND_POSITION_OPTION:
                return getDTSSoundPosition();
            case EQ_TYPE_OPTION:
                return getEQType();
            case BOOT_VOLUME_OPTION:
                return getBootVolumeType();
            case KEEP_MUTE_WARNING_OPTION:
                return getKeepMuteWarning();
            case KEY_SOUND_OPTION:
                return getKeySoundType();
            default:
                return -1;
        }
    }

    @Override // com.yftech.settings.manager.BaseManager
    public Object getValue(Function function) {
        switch (function) {
            case SOUND_DELAY_VALUE:
                return getDelay();
            case BAND_HIGH_VALUE:
                return Float.valueOf(getBandCurValue(8));
            case BAND_MID_VALUE:
                return Float.valueOf(getBandCurValue(4));
            case BAND_LOW_VALUE:
                return Float.valueOf(getBandCurValue(1));
            case BAND_HIGH_INTERVAL_VALUE:
                return Float.valueOf(getDbInterval(8));
            case BAND_MID_INTERVAL_VALUE:
                return Float.valueOf(getDbInterval(4));
            case BAND_LOW_INTERVAL_VALUE:
                return Float.valueOf(getDbInterval(1));
            default:
                return -1;
        }
    }

    @Override // com.yftech.settings.manager.BaseManager
    public void init(Context context) {
        super.init(context);
        CarSoundEffectManager.getInstance().registerCarSoundEffectCallback(this.mCarSoundEffectCallback, this.mCarAudioCallbackHandler);
        this.mContext = context;
        this.mDelayMinValue = CarSoundEffectManager.getInstance().getBalanceMinValue();
        this.mDelayMaxValue = CarSoundEffectManager.getInstance().getBalanceMaxValue();
        this.mRateX = (this.mDelayMaxValue - this.mDelayMinValue) / 10.0f;
        this.mRateY = (this.mDelayMaxValue - this.mDelayMinValue) / 10.0f;
        this.mRateZ = (this.mDelayMaxValue - this.mDelayMinValue) / ((float) Math.sqrt(Math.pow(10.0d, 2.0d) + Math.pow(10.0d, 2.0d)));
        LogUtil.d(TAG, "init() mDelayMinValue:" + this.mDelayMinValue + ", mDelayMaxValue:" + this.mDelayMaxValue + ", mRateX:" + this.mRateX + ", mRateY:" + this.mRateY + ", mRateZ:" + this.mRateZ);
        initMiddleBands();
    }

    @Override // com.yftech.settings.manager.BaseManager
    public boolean setAction(Function function) {
        boolean zStartDelay;
        switch (function) {
            case SOUND_DELAY_START_ACTION:
                zStartDelay = startDelay();
                break;
            case SOUND_DELAY_CANCEL_ACTION:
                zStartDelay = cancelDelay();
                break;
            default:
                zStartDelay = false;
                break;
        }
        LogUtil.i(TAG, "setAction function:" + function + ", result:" + zStartDelay);
        return zStartDelay;
    }

    @Override // com.yftech.settings.manager.BaseManager
    public boolean setEnabled(Function function, boolean z) {
        boolean dTSEnable;
        switch (function) {
            case DTS_ENABLE:
                dTSEnable = setDTSEnable(z);
                break;
            case SPEED_GAIN_ENABLE:
                dTSEnable = setSpeedGainEnable(z);
                break;
            case INTERFACE_EFFECTS_ENABLE:
                dTSEnable = setInterfaceEffectsEnable(z);
                break;
            default:
                dTSEnable = false;
                break;
        }
        LogUtil.i(TAG, "setEnabled function:" + function + ", enable:" + z + ", result:" + dTSEnable);
        return dTSEnable;
    }

    @Override // com.yftech.settings.manager.BaseManager
    public boolean setOption(Function function, int i) {
        boolean dTSType;
        switch (function) {
            case DTS_TYEP_OPTION:
                dTSType = setDTSType(i);
                break;
            case DTS_SOUND_POSITION_OPTION:
                dTSType = setDTSSoundPosition(i);
                break;
            case EQ_TYPE_OPTION:
                dTSType = setEQType(i);
                break;
            case BOOT_VOLUME_OPTION:
                dTSType = setBootVolumeType(i);
                break;
            case KEEP_MUTE_WARNING_OPTION:
                dTSType = setKeepMuteWarning(i);
                break;
            case KEY_SOUND_OPTION:
                dTSType = setKeySoundType(i);
                break;
            default:
                dTSType = false;
                break;
        }
        LogUtil.i(TAG, "setOption function:" + function + ", index:" + i + ", result:" + dTSType);
        return dTSType;
    }

    @Override // com.yftech.settings.manager.BaseManager
    public boolean setValue(Function function, Object obj) {
        boolean delayValue = false;
        switch (function) {
            case SOUND_DELAY_VALUE:
                int[] iArr = (int[]) obj;
                delayValue = setDelayValue(iArr[0], iArr[1]);
                break;
            case BAND_HIGH_VALUE:
                delayValue = setBandValue(8, ((Float) obj).floatValue());
                break;
            case BAND_MID_VALUE:
                delayValue = setBandValue(4, ((Float) obj).floatValue());
                break;
            case BAND_LOW_VALUE:
                delayValue = setBandValue(1, ((Float) obj).floatValue());
                break;
        }
        LogUtil.i(TAG, "setValue function:" + function + ", value:" + obj + ", result:" + delayValue);
        return delayValue;
    }
}
