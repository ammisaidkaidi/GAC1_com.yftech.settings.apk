package com.yftech.settings.chassis;

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
public class ChassisPowerMainFragment extends BaseFragment implements View.OnClickListener {
    private static final String TAB_CHASSIS = "chassis";
    private static final String TAG = "ChassisPowerMainFragment";
    private ChassisFragment mChassisFragment;
    private String mShowTab = TAB_CHASSIS;
    private RelativeLayout tabChassis;

    private void initView(View view) {
        this.tabChassis = (RelativeLayout) view.findViewById(R.id.tabChassis);
        this.tabChassis.setOnClickListener(this);
        this.tabChassis.setOnTouchListener(this);
    }

    private void showTabFragment(String str) {
        ChassisFragment chassisFragment;
        this.tabChassis.setSelected(false);
        this.mShowTab = str;
        if (TAB_CHASSIS.equals(str)) {
            this.tabChassis.setSelected(true);
            if (this.mChassisFragment == null) {
                this.mChassisFragment = new ChassisFragment();
            }
            chassisFragment = this.mChassisFragment;
        } else {
            chassisFragment = null;
        }
        if (chassisFragment != null) {
            FragmentManager childFragmentManager = getChildFragmentManager();
            LogUtil.i(TAG, "showTabFragment, showTab:" + this.mShowTab + ", exist:" + (childFragmentManager.findFragmentByTag(this.mShowTab) != null));
            childFragmentManager.beginTransaction().replace(R.id.container, chassisFragment, this.mShowTab).addToBackStack(null).commitAllowingStateLoss();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.tabChassis && !TAB_CHASSIS.equals(this.mShowTab)) {
            showTabFragment(TAB_CHASSIS);
        }
    }

    @Override // android.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_chassis_power_main, viewGroup, false);
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
