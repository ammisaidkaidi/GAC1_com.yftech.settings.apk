package com.yftech.settings.voice;

import android.app.FragmentManager;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.Nullable;
import com.yftech.settings.BaseFragment;
import com.yftech.settings.R;
import com.yftech.settings.utils.LogUtil;

/* JADX INFO: loaded from: classes.dex */
public class VoiceMainFragment extends BaseFragment implements View.OnClickListener {
    private static final String TAB_VOICE = "voice";
    private static final String TAG = "VoiceMainFragment";
    private String mShowTab = TAB_VOICE;
    private VoiceSettingsFragment mVoiceSettingsFragment;
    private RelativeLayout tabVoice;

    private void initView(View view) {
        this.tabVoice = (RelativeLayout) view.findViewById(R.id.tabVoice);
        this.tabVoice.setOnClickListener(this);
    }

    private void showTabFragment(String str) {
        VoiceSettingsFragment voiceSettingsFragment;
        this.tabVoice.setSelected(false);
        this.mShowTab = str;
        if (TAB_VOICE.equals(str)) {
            this.tabVoice.setSelected(true);
            if (this.mVoiceSettingsFragment == null) {
                this.mVoiceSettingsFragment = new VoiceSettingsFragment();
            }
            voiceSettingsFragment = this.mVoiceSettingsFragment;
        } else {
            voiceSettingsFragment = null;
        }
        if (voiceSettingsFragment != null) {
            FragmentManager childFragmentManager = getChildFragmentManager();
            LogUtil.i(TAG, "showTabFragment, showTab:" + this.mShowTab + ", exist:" + (childFragmentManager.findFragmentByTag(this.mShowTab) != null));
            childFragmentManager.beginTransaction().replace(R.id.container, voiceSettingsFragment, this.mShowTab).addToBackStack(null).commitAllowingStateLoss();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.tabVoice && !TAB_VOICE.equals(this.mShowTab)) {
            showTabFragment(TAB_VOICE);
        }
    }

    @Override // android.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_voice_main, viewGroup, false);
        initView(viewInflate);
        return viewInflate;
    }

    @Override // com.yftech.settings.BaseFragment, android.app.Fragment
    public void onPause() {
        super.onPause();
        LogUtil.i(TAG, "onPause()");
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        LogUtil.i(TAG, "onResume()");
        showTabFragment(this.mShowTab);
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        LogUtil.i(TAG, "onStart()");
    }

    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
        LogUtil.i(TAG, "onStop()");
    }
}
