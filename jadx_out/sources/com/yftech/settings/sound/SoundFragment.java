package com.yftech.settings.sound;

import android.app.Fragment;
import android.app.FragmentManager;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.Nullable;
import com.yftech.settings.BaseFragment;
import com.yftech.settings.R;
import com.yftech.settings.utils.ConfigUtils;
import com.yftech.settings.utils.LogUtil;
import com.yftech.vehicle.internal.adapter.ICarConfig;
import com.yftech.vehicle.sdk.CarConfig;

/* JADX INFO: loaded from: classes.dex */
public class SoundFragment extends BaseFragment implements View.OnClickListener {
    private static final String TAB_INTERACTION = "interaction";
    private static final String TAB_SYSTEM = "system";
    private static final String TAG = "SoundFragment";
    private ImageView iconDts;
    private View lineSystem;
    private String mShowTab = TAB_SYSTEM;
    private SoundInteractionFragment mSoundInteractionFragment;
    private SoundSystemFragment mSoundSystemFragment;
    private RelativeLayout tabInteraction;
    private RelativeLayout tabSystem;

    private void initView(View view) {
        this.tabSystem = (RelativeLayout) view.findViewById(R.id.tabSystem);
        this.tabInteraction = (RelativeLayout) view.findViewById(R.id.tabInteraction);
        this.iconDts = (ImageView) view.findViewById(R.id.icon_dts);
        this.iconDts.setVisibility((CarConfig.getLoudspeakerNumber() == ICarConfig.LoudspeakerNumber.TWO || CarConfig.getLoudspeakerNumber() == ICarConfig.LoudspeakerNumber.__UNKNOWN__) ? 8 : 0);
        this.lineSystem = this.tabSystem.findViewById(R.id.lineSystem);
        this.tabInteraction.setVisibility(ConfigUtils.isSoundInteractionConfig ? 0 : 8);
        this.tabSystem.setOnClickListener(this);
        this.tabInteraction.setOnClickListener(this);
    }

    private void showTabFragment(String str) {
        Fragment fragment;
        this.tabSystem.setSelected(false);
        this.tabInteraction.setSelected(false);
        this.lineSystem.setVisibility(0);
        this.mShowTab = str;
        if (TAB_SYSTEM.equals(str)) {
            this.tabSystem.setSelected(true);
            this.lineSystem.setVisibility(4);
            if (this.mSoundSystemFragment == null) {
                this.mSoundSystemFragment = new SoundSystemFragment();
            }
            fragment = this.mSoundSystemFragment;
        } else if (TAB_INTERACTION.equals(str)) {
            this.tabInteraction.setSelected(true);
            if (this.mSoundInteractionFragment == null) {
                this.mSoundInteractionFragment = new SoundInteractionFragment();
            }
            fragment = this.mSoundInteractionFragment;
        } else {
            fragment = null;
        }
        if (fragment != null) {
            FragmentManager childFragmentManager = getChildFragmentManager();
            LogUtil.i(TAG, "showTabFragment, showTab:" + this.mShowTab + ", exist:" + (childFragmentManager.findFragmentByTag(this.mShowTab) != null));
            childFragmentManager.beginTransaction().replace(R.id.container, fragment, this.mShowTab).addToBackStack(null).commitAllowingStateLoss();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.tabInteraction) {
            if (TAB_INTERACTION.equals(this.mShowTab)) {
                return;
            }
            showTabFragment(TAB_INTERACTION);
        } else if (id == R.id.tabSystem && !TAB_SYSTEM.equals(this.mShowTab)) {
            showTabFragment(TAB_SYSTEM);
        }
    }

    @Override // android.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_sound_main, viewGroup, false);
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
