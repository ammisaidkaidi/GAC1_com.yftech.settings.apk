package com.yftech.settings.manager;

import android.content.Context;
import com.yftech.settings.utils.LogUtil;

/* JADX INFO: loaded from: classes.dex */
public class VoiceSettingsManager extends BaseManager<Function> {
    private static final String TAG = "VoiceSettingsManager";
    private static VoiceSettingsManager sVoiceSettingsManager;
    private int[] FREE_WAKE_UP_DURATION_TYPE = {15, 30, 60, 90};
    private int[] RECOGNITION_ENGINE_TYPE = {0, 1};
    private int[] SPEAK_SETTING_TYPE = {0, 1, 2, 3};

    public enum Function {
        UNKNOWN,
        WAKE_UP_ENABLE,
        CUSTOM_WAKE_UP_WORD_VALUE,
        FREE_WAKE_UP_DURATION_OPTION,
        FREE_WAKE_UP_SETTING_ENABLE,
        RECOGNITION_ENGINE_OPTION,
        SPEAK_SETTING_OPTION
    }

    private VoiceSettingsManager() {
    }

    public static synchronized VoiceSettingsManager getInstance() {
        if (sVoiceSettingsManager == null) {
            sVoiceSettingsManager = new VoiceSettingsManager();
        }
        return sVoiceSettingsManager;
    }

    private String getVoiceCustomWakeUpWord() {
        return "";
    }

    private int getVoiceFreeWakeUpDuration() {
        for (int i = 0; i < this.FREE_WAKE_UP_DURATION_TYPE.length; i++) {
            if (this.FREE_WAKE_UP_DURATION_TYPE[i] == 15) {
                return i;
            }
        }
        return -1;
    }

    private boolean getVoiceFreeWakeUpSettingEnabled() {
        return false;
    }

    private int getVoiceRecognitionEngine() {
        for (int i = 0; i < this.RECOGNITION_ENGINE_TYPE.length; i++) {
            if (this.RECOGNITION_ENGINE_TYPE[i] == 0) {
                return i;
            }
        }
        return -1;
    }

    private int getVoiceSpeakSetting() {
        for (int i = 0; i < this.SPEAK_SETTING_TYPE.length; i++) {
            if (this.SPEAK_SETTING_TYPE[i] == 0) {
                return i;
            }
        }
        return -1;
    }

    private boolean getVoiceWakeUpEnabled() {
        return false;
    }

    private boolean setVoiceCustomWakeUpWord(String str) {
        return false;
    }

    private boolean setVoiceFreeWakeUpDuration(int i) {
        if (i < 0) {
            return false;
        }
        int length = this.FREE_WAKE_UP_DURATION_TYPE.length;
        return false;
    }

    private boolean setVoiceFreeWakeUpSettingEnabled(boolean z) {
        return false;
    }

    private boolean setVoiceRecognitionEngine(int i) {
        if (i < 0) {
            return false;
        }
        int length = this.RECOGNITION_ENGINE_TYPE.length;
        return false;
    }

    private boolean setVoiceSpeakSetting(int i) {
        if (i < 0) {
            return false;
        }
        int length = this.SPEAK_SETTING_TYPE.length;
        return false;
    }

    private boolean setVoiceWakeUpEnabled(boolean z) {
        return false;
    }

    @Override // com.yftech.settings.manager.BaseManager
    public void deInit() {
        super.deInit();
    }

    @Override // com.yftech.settings.manager.BaseManager
    public boolean getEnabled(Function function) {
        switch (function) {
            case WAKE_UP_ENABLE:
                return getVoiceWakeUpEnabled();
            case FREE_WAKE_UP_SETTING_ENABLE:
                return getVoiceFreeWakeUpSettingEnabled();
            default:
                return false;
        }
    }

    @Override // com.yftech.settings.manager.BaseManager
    public int getOption(Function function) {
        switch (function) {
            case FREE_WAKE_UP_DURATION_OPTION:
                return getVoiceFreeWakeUpDuration();
            case RECOGNITION_ENGINE_OPTION:
                return getVoiceRecognitionEngine();
            case SPEAK_SETTING_OPTION:
                return getVoiceSpeakSetting();
            default:
                return -1;
        }
    }

    @Override // com.yftech.settings.manager.BaseManager
    public Object getValue(Function function) {
        if (AnonymousClass1.$SwitchMap$com$yftech$settings$manager$VoiceSettingsManager$Function[function.ordinal()] != 6) {
            return -1;
        }
        return getVoiceCustomWakeUpWord();
    }

    @Override // com.yftech.settings.manager.BaseManager
    public void init(Context context) {
        super.init(context);
    }

    @Override // com.yftech.settings.manager.BaseManager
    public boolean setEnabled(Function function, boolean z) {
        boolean voiceWakeUpEnabled;
        switch (function) {
            case WAKE_UP_ENABLE:
                voiceWakeUpEnabled = setVoiceWakeUpEnabled(z);
                break;
            case FREE_WAKE_UP_SETTING_ENABLE:
                voiceWakeUpEnabled = setVoiceFreeWakeUpSettingEnabled(z);
                break;
            default:
                voiceWakeUpEnabled = false;
                break;
        }
        LogUtil.i(TAG, "setEnabled function:" + function + ", enable:" + z + ", result:" + voiceWakeUpEnabled);
        return voiceWakeUpEnabled;
    }

    @Override // com.yftech.settings.manager.BaseManager
    public boolean setOption(Function function, int i) {
        boolean voiceFreeWakeUpDuration;
        switch (function) {
            case FREE_WAKE_UP_DURATION_OPTION:
                voiceFreeWakeUpDuration = setVoiceFreeWakeUpDuration(i);
                break;
            case RECOGNITION_ENGINE_OPTION:
                voiceFreeWakeUpDuration = setVoiceRecognitionEngine(i);
                break;
            case SPEAK_SETTING_OPTION:
                voiceFreeWakeUpDuration = setVoiceSpeakSetting(i);
                break;
            default:
                voiceFreeWakeUpDuration = false;
                break;
        }
        LogUtil.i(TAG, "setOption function:" + function + ", index:" + i + ", result:" + voiceFreeWakeUpDuration);
        return voiceFreeWakeUpDuration;
    }

    @Override // com.yftech.settings.manager.BaseManager
    public boolean setValue(Function function, Object obj) {
        boolean voiceCustomWakeUpWord = AnonymousClass1.$SwitchMap$com$yftech$settings$manager$VoiceSettingsManager$Function[function.ordinal()] != 6 ? false : setVoiceCustomWakeUpWord((String) obj);
        LogUtil.i(TAG, "setValue function:" + function + ", result:" + voiceCustomWakeUpWord);
        return voiceCustomWakeUpWord;
    }
}
