package com.yftech.settings.sound;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.yftech.settings.BaseFragment;
import com.yftech.settings.R;
import com.yftech.settings.manager.BaseManager;
import com.yftech.settings.manager.SoundManager;
import com.yftech.settings.widget.MultiSelectView;
import com.yftech.settings.widget.Switcher;

/* JADX INFO: loaded from: classes.dex */
public class SoundInteractionFragment extends BaseFragment implements CompoundButton.OnCheckedChangeListener, MultiSelectView.OnSwitchListener {
    private static final String TAG = "SoundInteractionFragment";
    private BaseManager.ModelCallback<SoundManager.Function> mModelCallback = new BaseManager.ModelCallback<SoundManager.Function>() { // from class: com.yftech.settings.sound.SoundInteractionFragment.1
        @Override // com.yftech.settings.manager.BaseManager.ModelCallback
        public void onEnableChanged(SoundManager.Function function, boolean z) {
            super.onEnableChanged(function, z);
            SoundInteractionFragment.this.setSwitcherView(function, z);
        }

        @Override // com.yftech.settings.manager.BaseManager.ModelCallback
        public void onOptionChanged(SoundManager.Function function, int i) {
            super.onOptionChanged(function, i);
            SoundInteractionFragment.this.setSwitchMultiButtonView(function, i);
        }
    };
    private MultiSelectView mSmbKeyVolume;
    private Switcher mSwInterfaceEffects;

    /* JADX INFO: renamed from: com.yftech.settings.sound.SoundInteractionFragment$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$yftech$settings$manager$SoundManager$Function = new int[SoundManager.Function.values().length];

        static {
            try {
                $SwitchMap$com$yftech$settings$manager$SoundManager$Function[SoundManager.Function.INTERFACE_EFFECTS_ENABLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$yftech$settings$manager$SoundManager$Function[SoundManager.Function.KEY_SOUND_OPTION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    private void initView(View view) {
        LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.soundInteractionKeyVolume);
        linearLayout.setVisibility(SoundManager.getInstance().getFunctionPresent(SoundManager.Function.KEY_SOUND_OPTION) ? 0 : 8);
        if (linearLayout.getVisibility() == 0) {
            ((TextView) linearLayout.findViewById(R.id.tvTitle)).setText(R.string.sound_interaction_item_key_volume);
            this.mSmbKeyVolume = (MultiSelectView) linearLayout.findViewById(R.id.keypadToneMultiSelectView);
            this.mSmbKeyVolume.setTag(Integer.valueOf(R.id.soundInteractionKeyVolume));
            this.mSmbKeyVolume.setText(getResources().getStringArray(R.array.sound_key_tone));
            this.mSmbKeyVolume.setOnSwitchListener(this);
        }
        LinearLayout linearLayout2 = (LinearLayout) view.findViewById(R.id.soundInteractionInterfaceEffects);
        linearLayout2.setVisibility(SoundManager.getInstance().getFunctionPresent(SoundManager.Function.INTERFACE_EFFECTS_ENABLE) ? 0 : 8);
        if (linearLayout2.getVisibility() == 0) {
            ((TextView) linearLayout2.findViewById(R.id.tvTitle)).setText(R.string.sound_interaction_item_interface_effects);
            ((TextView) linearLayout2.findViewById(R.id.tvDescribe)).setText(R.string.sound_interaction_item_interface_effects_describe);
            this.mSwInterfaceEffects = (Switcher) linearLayout2.findViewById(R.id.switcher);
            this.mSwInterfaceEffects.setTag(Integer.valueOf(R.id.soundInteractionInterfaceEffects));
            this.mSwInterfaceEffects.setOnCheckedChangeListener(this);
        }
    }

    private void initViewData() {
        setSwitchMultiButtonView(SoundManager.Function.KEY_SOUND_OPTION, SoundManager.getInstance().getOption(SoundManager.Function.KEY_SOUND_OPTION));
        setSwitcherView(SoundManager.Function.INTERFACE_EFFECTS_ENABLE, SoundManager.getInstance().getEnabled(SoundManager.Function.INTERFACE_EFFECTS_ENABLE));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSwitchMultiButtonView(SoundManager.Function function, int i) {
        MultiSelectView multiSelectView = AnonymousClass2.$SwitchMap$com$yftech$settings$manager$SoundManager$Function[function.ordinal()] != 2 ? null : this.mSmbKeyVolume;
        if (multiSelectView == null || multiSelectView.getTabNum() == i) {
            return;
        }
        multiSelectView.setSelectedTab(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSwitcherView(SoundManager.Function function, boolean z) {
        Switcher switcher = AnonymousClass2.$SwitchMap$com$yftech$settings$manager$SoundManager$Function[function.ordinal()] != 1 ? null : this.mSwInterfaceEffects;
        if (switcher == null || switcher.isChecked() == z) {
            return;
        }
        switcher.setChecked(z);
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        if (compoundButton.isPressed()) {
            SoundManager.Function function = SoundManager.Function.UNKNOWN;
            if (((Integer) compoundButton.getTag()).intValue() == R.id.soundInteractionInterfaceEffects) {
                function = SoundManager.Function.INTERFACE_EFFECTS_ENABLE;
            }
            if (function != SoundManager.Function.UNKNOWN) {
                SoundManager.getInstance().setEnabled(function, z);
            }
        }
    }

    @Override // android.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_sound_interaction, viewGroup, false);
        initView(viewInflate);
        return viewInflate;
    }

    @Override // com.yftech.settings.BaseFragment, android.app.Fragment
    public void onPause() {
        super.onPause();
        SoundManager.getInstance().unregisterModelCallback(this.mModelCallback);
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        initViewData();
        SoundManager.getInstance().registerModelCallback(this.mModelCallback);
    }

    @Override // com.yftech.settings.widget.MultiSelectView.OnSwitchListener
    public void onSwitch(MultiSelectView multiSelectView, int i, String str, boolean z) {
        if (z) {
            SoundManager.Function function = SoundManager.Function.UNKNOWN;
            if (((Integer) multiSelectView.getTag()).intValue() == R.id.soundInteractionKeyVolume) {
                function = SoundManager.Function.KEY_SOUND_OPTION;
            }
            if (function != SoundManager.Function.UNKNOWN) {
                SoundManager.getInstance().setOption(function, i);
            }
        }
    }
}
