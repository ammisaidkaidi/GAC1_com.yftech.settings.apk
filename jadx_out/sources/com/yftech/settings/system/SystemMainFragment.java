package com.yftech.settings.system;

import android.app.Fragment;
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
public class SystemMainFragment extends BaseFragment implements View.OnClickListener {
    private static final int SKIP_TO_TIME_SETTING = 1;
    private static final int SKIP_TO_VEHICLE_INFO = 3;
    private static final String TAB_BASIC = "basic";
    private static final String TAB_INFO = "info";
    private static final String TAB_VEHICLE = "vehicle";
    private static final String TAG = "SystemMainFragment";
    private View lineBasic;
    private View lineInfo;
    private SystemBasicFragment mSystemBasicFragment;
    private SystemInfoFragment mSystemInfoFragment;
    private SystemVehicleInfoFragment mSystemVehicleInfoFragment;
    private RelativeLayout tabBasic;
    private RelativeLayout tabInfo;
    private RelativeLayout tabVehicle;
    private String mShowTab = TAB_BASIC;
    private int skipToTab = 0;

    private void initView(View view) {
        this.tabBasic = (RelativeLayout) view.findViewById(R.id.tabBasic);
        this.tabInfo = (RelativeLayout) view.findViewById(R.id.tabInfo);
        this.tabVehicle = (RelativeLayout) view.findViewById(R.id.tabVehicleInfo);
        this.lineBasic = this.tabBasic.findViewById(R.id.lineBasic);
        this.lineInfo = this.tabInfo.findViewById(R.id.lineInfo);
        this.tabBasic.setOnClickListener(this);
        this.tabInfo.setOnClickListener(this);
        this.tabVehicle.setOnClickListener(this);
    }

    private void showTabFragment(String str) {
        Fragment fragment;
        this.tabBasic.setSelected(false);
        this.tabInfo.setSelected(false);
        this.tabVehicle.setSelected(false);
        this.lineBasic.setVisibility(0);
        this.lineInfo.setVisibility(0);
        this.mShowTab = str;
        if (TAB_BASIC.equals(str)) {
            this.tabBasic.setSelected(true);
            this.lineBasic.setVisibility(4);
            if (this.mSystemBasicFragment == null) {
                this.mSystemBasicFragment = new SystemBasicFragment();
            }
            fragment = this.mSystemBasicFragment;
        } else if (TAB_INFO.equals(str)) {
            this.tabInfo.setSelected(true);
            this.lineInfo.setVisibility(4);
            if (this.mSystemInfoFragment == null) {
                this.mSystemInfoFragment = new SystemInfoFragment();
            }
            fragment = this.mSystemInfoFragment;
        } else if (TAB_VEHICLE.equals(str)) {
            this.tabVehicle.setSelected(true);
            if (this.mSystemVehicleInfoFragment == null) {
                this.mSystemVehicleInfoFragment = new SystemVehicleInfoFragment();
            }
            fragment = this.mSystemVehicleInfoFragment;
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
        if (id == R.id.tabBasic) {
            if (TAB_BASIC.equals(this.mShowTab)) {
                return;
            }
            showTabFragment(TAB_BASIC);
        } else if (id == R.id.tabInfo) {
            if (TAB_INFO.equals(this.mShowTab)) {
                return;
            }
            showTabFragment(TAB_INFO);
        } else if (id == R.id.tabVehicleInfo && !TAB_VEHICLE.equals(this.mShowTab)) {
            showTabFragment(TAB_VEHICLE);
        }
    }

    @Override // android.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_system_main, viewGroup, false);
        initView(viewInflate);
        return viewInflate;
    }

    @Override // com.yftech.settings.BaseFragment, android.app.Fragment
    public void onPause() {
        super.onPause();
        this.skipToTab = 0;
        LogUtil.i(TAG, "onPause()");
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        LogUtil.i(TAG, "onResume()");
        if (this.skipToTab == 1) {
            showTabFragment(TAB_BASIC);
        } else if (this.skipToTab == 3) {
            showTabFragment(TAB_VEHICLE);
        } else {
            showTabFragment(this.mShowTab);
        }
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

    public void setSkipToVehicleInfoFragment() {
        this.skipToTab = 3;
    }

    public void setToTimeSettingFlag() {
        this.skipToTab = 1;
    }
}
