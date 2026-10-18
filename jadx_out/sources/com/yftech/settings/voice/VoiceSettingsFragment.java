package com.yftech.settings.voice;

import android.graphics.Color;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.yftech.settings.BaseFragment;
import com.yftech.settings.R;
import com.yftech.settings.manager.BaseManager;
import com.yftech.settings.manager.VoiceSettingsManager;
import com.yftech.settings.widget.MultiSelectView;
import com.yftech.settings.widget.Switcher;

/* JADX INFO: loaded from: classes.dex */
public class VoiceSettingsFragment extends BaseFragment implements CompoundButton.OnCheckedChangeListener, View.OnClickListener, MultiSelectView.OnSwitchListener {
    private BaseManager.ModelCallback<VoiceSettingsManager.Function> mModelCallback = new BaseManager.ModelCallback<VoiceSettingsManager.Function>() { // from class: com.yftech.settings.voice.VoiceSettingsFragment.1
        @Override // com.yftech.settings.manager.BaseManager.ModelCallback
        public void onEnableChanged(VoiceSettingsManager.Function function, boolean z) {
            super.onEnableChanged(function, z);
            VoiceSettingsFragment.this.setSwitcherView(function, z);
        }

        @Override // com.yftech.settings.manager.BaseManager.ModelCallback
        public void onOptionChanged(VoiceSettingsManager.Function function, int i) {
            super.onOptionChanged(function, i);
            VoiceSettingsFragment.this.setSwitchMultiButtonView(function, i);
        }

        @Override // com.yftech.settings.manager.BaseManager.ModelCallback
        public void onValueChanged(VoiceSettingsManager.Function function, Object obj) {
            super.onValueChanged(function, obj);
            VoiceSettingsFragment.this.setValueView(function, obj);
        }
    };
    private MultiSelectView mSmbVoiceFreeWakeUpDuration;
    private MultiSelectView mSmbVoiceRecognitionEngine;
    private MultiSelectView mSmbVoiceSpeakSetting;
    private Switcher mSwVoiceFreeWakeUpSetting;
    private Switcher mSwVoiceWakeUp;
    private TextView mTvVoiceCustomWakeUpWord;

    private void initView(View view) {
        LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.systemVoiceWakeUp);
        ((TextView) linearLayout.findViewById(R.id.tvTitle)).setText(R.string.system_voice_item_wake_up);
        ((TextView) linearLayout.findViewById(R.id.tvDescribe)).setText(R.string.system_voice_item_wake_up_describe);
        this.mSwVoiceWakeUp = (Switcher) linearLayout.findViewById(R.id.switcher);
        this.mSwVoiceWakeUp.setTag(Integer.valueOf(R.id.systemVoiceWakeUp));
        this.mSwVoiceWakeUp.setOnCheckedChangeListener(this);
        linearLayout.setVisibility(0);
        LinearLayout linearLayout2 = (LinearLayout) view.findViewById(R.id.systemVoiceCustomWakeUpWord);
        ((TextView) linearLayout2.findViewById(R.id.tvTitle)).setText(R.string.system_voice_item_custom_wake_up_word);
        ((TextView) linearLayout2.findViewById(R.id.tvDescribe)).setText(R.string.system_voice_item_custom_wake_up_word_describe);
        this.mTvVoiceCustomWakeUpWord = (TextView) linearLayout2.findViewById(R.id.tvContent);
        this.mTvVoiceCustomWakeUpWord.setTextColor(Color.parseColor("#DD9D09"));
        Button button = (Button) linearLayout2.findViewById(R.id.button);
        button.setTag(Integer.valueOf(R.id.systemVoiceCustomWakeUpWord));
        button.setText("");
        button.setBackgroundResource(R.mipmap.set_button_pencil);
        ViewGroup.LayoutParams layoutParams = button.getLayoutParams();
        layoutParams.height = 56;
        layoutParams.width = 56;
        button.setLayoutParams(layoutParams);
        button.setOnClickListener(this);
        linearLayout2.setVisibility(0);
        LinearLayout linearLayout3 = (LinearLayout) view.findViewById(R.id.systemVoiceFreeWakeUpDuration);
        ((TextView) linearLayout3.findViewById(R.id.tvTitle)).setText(R.string.system_voice_item_free_wake_up_duration);
        this.mSmbVoiceFreeWakeUpDuration = (MultiSelectView) linearLayout3.findViewById(R.id.multiSelectView);
        this.mSmbVoiceFreeWakeUpDuration.setTag(Integer.valueOf(R.id.systemVoiceFreeWakeUpDuration));
        this.mSmbVoiceFreeWakeUpDuration.setText(getResources().getStringArray(R.array.system_voice_free_wake_up_duration));
        this.mSmbVoiceFreeWakeUpDuration.setOnSwitchListener(this);
        linearLayout3.setVisibility(0);
        LinearLayout linearLayout4 = (LinearLayout) view.findViewById(R.id.systemVoiceFreeWakeUpSetting);
        ((TextView) linearLayout4.findViewById(R.id.tvTitle)).setText(R.string.system_voice_item_free_wake_up_setting);
        this.mSwVoiceFreeWakeUpSetting = (Switcher) linearLayout4.findViewById(R.id.switcher);
        this.mSwVoiceFreeWakeUpSetting.setTag(Integer.valueOf(R.id.systemVoiceFreeWakeUpSetting));
        this.mSwVoiceFreeWakeUpSetting.setOnCheckedChangeListener(this);
        linearLayout4.setVisibility(0);
        LinearLayout linearLayout5 = (LinearLayout) view.findViewById(R.id.systemVoiceRecognitionEngine);
        ((TextView) linearLayout5.findViewById(R.id.tvTitle)).setText(R.string.system_voice_item_recognition_engine);
        this.mSmbVoiceRecognitionEngine = (MultiSelectView) linearLayout5.findViewById(R.id.multiSelectView);
        this.mSmbVoiceRecognitionEngine.setTag(Integer.valueOf(R.id.systemVoiceRecognitionEngine));
        this.mSmbVoiceRecognitionEngine.setText(getResources().getStringArray(R.array.system_voice_recognition_engine));
        this.mSmbVoiceRecognitionEngine.setOnSwitchListener(this);
        linearLayout5.setVisibility(0);
        LinearLayout linearLayout6 = (LinearLayout) view.findViewById(R.id.systemVoiceSpeakSetting);
        ((TextView) linearLayout6.findViewById(R.id.tvTitle)).setText(R.string.system_voice_item_speak_setting);
        this.mSmbVoiceSpeakSetting = (MultiSelectView) linearLayout6.findViewById(R.id.multiSelectView);
        this.mSmbVoiceSpeakSetting.setTag(Integer.valueOf(R.id.systemVoiceSpeakSetting));
        this.mSmbVoiceSpeakSetting.setText(getResources().getStringArray(R.array.system_voice_speak_setting));
        this.mSmbVoiceSpeakSetting.setOnSwitchListener(this);
        linearLayout6.setVisibility(0);
    }

    private void initViewData() {
        setSwitcherView(VoiceSettingsManager.Function.WAKE_UP_ENABLE, VoiceSettingsManager.getInstance().getEnabled(VoiceSettingsManager.Function.WAKE_UP_ENABLE));
        setSwitcherView(VoiceSettingsManager.Function.FREE_WAKE_UP_SETTING_ENABLE, VoiceSettingsManager.getInstance().getEnabled(VoiceSettingsManager.Function.FREE_WAKE_UP_SETTING_ENABLE));
        setSwitchMultiButtonView(VoiceSettingsManager.Function.FREE_WAKE_UP_DURATION_OPTION, VoiceSettingsManager.getInstance().getOption(VoiceSettingsManager.Function.FREE_WAKE_UP_DURATION_OPTION));
        setSwitchMultiButtonView(VoiceSettingsManager.Function.RECOGNITION_ENGINE_OPTION, VoiceSettingsManager.getInstance().getOption(VoiceSettingsManager.Function.RECOGNITION_ENGINE_OPTION));
        setSwitchMultiButtonView(VoiceSettingsManager.Function.SPEAK_SETTING_OPTION, VoiceSettingsManager.getInstance().getOption(VoiceSettingsManager.Function.SPEAK_SETTING_OPTION));
        setValueView(VoiceSettingsManager.Function.CUSTOM_WAKE_UP_WORD_VALUE, VoiceSettingsManager.getInstance().getValue(VoiceSettingsManager.Function.CUSTOM_WAKE_UP_WORD_VALUE));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSwitchMultiButtonView(VoiceSettingsManager.Function function, int i) {
        MultiSelectView multiSelectView;
        switch (function) {
            case FREE_WAKE_UP_DURATION_OPTION:
                multiSelectView = this.mSmbVoiceFreeWakeUpDuration;
                break;
            case RECOGNITION_ENGINE_OPTION:
                multiSelectView = this.mSmbVoiceRecognitionEngine;
                break;
            case SPEAK_SETTING_OPTION:
                multiSelectView = this.mSmbVoiceSpeakSetting;
                break;
            default:
                multiSelectView = null;
                break;
        }
        if (multiSelectView == null || multiSelectView.getTabNum() == i) {
            return;
        }
        multiSelectView.setSelectedTab(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSwitcherView(VoiceSettingsManager.Function function, boolean z) {
        Switcher switcher;
        switch (function) {
            case WAKE_UP_ENABLE:
                switcher = this.mSwVoiceWakeUp;
                break;
            case FREE_WAKE_UP_SETTING_ENABLE:
                switcher = this.mSwVoiceFreeWakeUpSetting;
                break;
            default:
                switcher = null;
                break;
        }
        if (switcher == null || switcher.isChecked() == z) {
            return;
        }
        switcher.setChecked(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValueView(VoiceSettingsManager.Function function, Object obj) {
        if (AnonymousClass2.$SwitchMap$com$yftech$settings$manager$VoiceSettingsManager$Function[function.ordinal()] != 6) {
            return;
        }
        this.mTvVoiceCustomWakeUpWord.setText((String) obj);
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        if (compoundButton.isPressed()) {
            VoiceSettingsManager.Function function = VoiceSettingsManager.Function.UNKNOWN;
            int iIntValue = ((Integer) compoundButton.getTag()).intValue();
            if (iIntValue == R.id.systemVoiceFreeWakeUpSetting) {
                function = VoiceSettingsManager.Function.FREE_WAKE_UP_SETTING_ENABLE;
            } else if (iIntValue == R.id.systemVoiceWakeUp) {
                function = VoiceSettingsManager.Function.WAKE_UP_ENABLE;
            }
            if (function != VoiceSettingsManager.Function.UNKNOWN) {
                VoiceSettingsManager.getInstance().setEnabled(function, z);
            }
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        ((Integer) view.getTag()).intValue();
    }

    @Override // android.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_voice_settings, viewGroup, false);
        initView(viewInflate);
        return viewInflate;
    }

    @Override // com.yftech.settings.BaseFragment, android.app.Fragment
    public void onPause() {
        super.onPause();
        VoiceSettingsManager.getInstance().unregisterModelCallback(this.mModelCallback);
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        initViewData();
        VoiceSettingsManager.getInstance().registerModelCallback(this.mModelCallback);
    }

    @Override // com.yftech.settings.widget.MultiSelectView.OnSwitchListener
    public void onSwitch(MultiSelectView multiSelectView, int i, String str, boolean z) {
        if (z) {
            VoiceSettingsManager.Function function = VoiceSettingsManager.Function.UNKNOWN;
            switch (((Integer) multiSelectView.getTag()).intValue()) {
                case R.id.systemVoiceFreeWakeUpDuration /* 2131231178 */:
                    function = VoiceSettingsManager.Function.FREE_WAKE_UP_DURATION_OPTION;
                    break;
                case R.id.systemVoiceRecognitionEngine /* 2131231180 */:
                    function = VoiceSettingsManager.Function.RECOGNITION_ENGINE_OPTION;
                    break;
                case R.id.systemVoiceSpeakSetting /* 2131231181 */:
                    function = VoiceSettingsManager.Function.SPEAK_SETTING_OPTION;
                    break;
            }
            if (function != VoiceSettingsManager.Function.UNKNOWN) {
                VoiceSettingsManager.getInstance().setOption(function, i);
            }
        }
    }
}
