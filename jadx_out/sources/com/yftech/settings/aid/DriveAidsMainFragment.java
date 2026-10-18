package com.yftech.settings.aid;

import android.app.Fragment;
import android.app.FragmentManager;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.yftech.settings.BaseFragment;
import com.yftech.settings.R;
import com.yftech.settings.utils.ConfigUtils;
import com.yftech.settings.utils.LogUtil;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class DriveAidsMainFragment extends BaseFragment implements View.OnClickListener {
    private static final String TAB_ASSISTANCE = "assistance";
    private static final String TAB_PARKING = "parking";
    private static final String TAB_SAFE = "safe";
    private static final String TAB_TIP_MEMORY = "tip_memory";
    private static final String TAG = "DriveAidsMainFragment";
    private static DriveAidsMainFragment mInstance;
    private View lineAssistance;
    private View lineSafe;
    private View lineTipMemory;
    private DriveAidsAssistanceFragment mDriveAidsAssistanceFragment;
    private DriveAidsParkingFragment mDriveAidsParkingFragment;
    private DriveAidsSafeFragment mDriveAidsSafeFragment;
    private DriveAidsTipMemoryFragment mDriveAidsTipMemoryFragment;
    private String mShowTab = TAB_TIP_MEMORY;
    private RelativeLayout tabAssistance;
    private RelativeLayout tabParking;
    private RelativeLayout tabSafe;
    private RelativeLayout tabTipMemory;
    private TextView tvSafe;

    public static DriveAidsMainFragment getInstance() {
        if (mInstance == null) {
            mInstance = new DriveAidsMainFragment();
        }
        return mInstance;
    }

    private void initView(View view) {
        this.tabTipMemory = (RelativeLayout) view.findViewById(R.id.tabTip_memory);
        this.tabSafe = (RelativeLayout) view.findViewById(R.id.tabSafe);
        this.tabAssistance = (RelativeLayout) view.findViewById(R.id.tabDriving_aid);
        this.tabParking = (RelativeLayout) view.findViewById(R.id.tabParking);
        this.tabTipMemory.setVisibility(ConfigUtils.isAidTipMemoryConfig ? 0 : 8);
        this.tabSafe.setVisibility(ConfigUtils.isAidsSafeConfig ? 0 : 8);
        this.tabAssistance.setVisibility(ConfigUtils.isAidsAssistanceConfig ? 0 : 8);
        this.tabParking.setVisibility(ConfigUtils.isAidsParkingConfig ? 0 : 8);
        if (!ConfigUtils.isAidTipMemoryConfig) {
            this.tabSafe.setBackgroundResource(R.drawable.selector_item_tab_bar_top_btn_bg);
        } else if (!ConfigUtils.isAidsAssistanceConfig && !ConfigUtils.isAidsParkingConfig) {
            this.tabSafe.setBackgroundResource(R.drawable.selector_item_tab_bar_bottom_btn_bg);
        }
        if (!ConfigUtils.isAidTipMemoryConfig && !ConfigUtils.isAidsSafeConfig) {
            this.tabAssistance.setBackgroundResource(R.drawable.selector_item_tab_bar_top_btn_bg);
        } else if (!ConfigUtils.isAidsParkingConfig) {
            this.tabAssistance.setBackgroundResource(R.drawable.selector_item_tab_bar_bottom_btn_bg);
        }
        this.tvSafe = (TextView) view.findViewById(R.id.tvSafe);
        String[] strArr = {TAB_TIP_MEMORY, TAB_SAFE, TAB_ASSISTANCE, TAB_PARKING};
        boolean[] zArr = {ConfigUtils.isAidTipMemoryConfig, ConfigUtils.isAidsSafeConfig, ConfigUtils.isAidsAssistanceConfig, ConfigUtils.isAidsParkingConfig};
        for (int i = 0; i < zArr.length; i++) {
            if (zArr[i]) {
                this.mShowTab = strArr[i];
                break;
            }
        }
        this.lineTipMemory = this.tabTipMemory.findViewById(R.id.lineTip_memory);
        this.lineSafe = this.tabSafe.findViewById(R.id.lineSafe);
        this.lineAssistance = this.tabAssistance.findViewById(R.id.lineDriving_aid);
        this.tabTipMemory.setOnClickListener(this);
        this.tabTipMemory.setOnTouchListener(this);
        this.tabSafe.setOnClickListener(this);
        this.tabSafe.setOnTouchListener(this);
        this.tabAssistance.setOnClickListener(this);
        this.tabAssistance.setOnTouchListener(this);
        this.tabParking.setOnClickListener(this);
        this.tabParking.setOnTouchListener(this);
        if (new Locale("ru").getLanguage().equals(Locale.getDefault().getLanguage())) {
            this.tvSafe.setTextSize(30.0f);
        }
    }

    private void invisibleLine(String str) {
        this.lineTipMemory.setVisibility(0);
        this.lineSafe.setVisibility(0);
        this.lineAssistance.setVisibility(0);
        if (TAB_SAFE.equals(str) || TAB_PARKING.equals(str) || TAB_ASSISTANCE.equals(str)) {
            return;
        }
        TAB_TIP_MEMORY.equals(str);
    }

    private void showTabFragment(String str) {
        Fragment fragment;
        this.tabSafe.setSelected(false);
        this.tabParking.setSelected(false);
        this.tabAssistance.setSelected(false);
        this.tabTipMemory.setSelected(false);
        this.lineTipMemory.setVisibility(0);
        this.lineSafe.setVisibility(0);
        this.lineAssistance.setVisibility(0);
        this.mShowTab = str;
        if (TAB_SAFE.equals(str)) {
            this.tabSafe.setSelected(true);
            this.lineSafe.setVisibility(4);
            if (this.mDriveAidsSafeFragment == null) {
                this.mDriveAidsSafeFragment = new DriveAidsSafeFragment();
            }
            fragment = this.mDriveAidsSafeFragment;
        } else if (TAB_PARKING.equals(str)) {
            this.tabParking.setSelected(true);
            if (this.mDriveAidsParkingFragment == null) {
                this.mDriveAidsParkingFragment = new DriveAidsParkingFragment();
            }
            fragment = this.mDriveAidsParkingFragment;
        } else if (TAB_ASSISTANCE.equals(str)) {
            this.tabAssistance.setSelected(true);
            this.lineAssistance.setVisibility(4);
            if (this.mDriveAidsAssistanceFragment == null) {
                this.mDriveAidsAssistanceFragment = new DriveAidsAssistanceFragment();
            }
            fragment = this.mDriveAidsAssistanceFragment;
        } else if (TAB_TIP_MEMORY.equals(str)) {
            this.tabTipMemory.setSelected(true);
            this.lineTipMemory.setVisibility(4);
            if (this.mDriveAidsTipMemoryFragment == null) {
                this.mDriveAidsTipMemoryFragment = new DriveAidsTipMemoryFragment();
            }
            fragment = this.mDriveAidsTipMemoryFragment;
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
        if (id == R.id.tabDriving_aid) {
            if (TAB_ASSISTANCE.equals(this.mShowTab)) {
                return;
            }
            showTabFragment(TAB_ASSISTANCE);
        } else if (id == R.id.tabParking) {
            if (TAB_PARKING.equals(this.mShowTab)) {
                return;
            }
            showTabFragment(TAB_PARKING);
        } else if (id == R.id.tabSafe) {
            if (TAB_SAFE.equals(this.mShowTab)) {
                return;
            }
            showTabFragment(TAB_SAFE);
        } else if (id == R.id.tabTip_memory && !TAB_TIP_MEMORY.equals(this.mShowTab)) {
            showTabFragment(TAB_TIP_MEMORY);
        }
    }

    @Override // android.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_aid_main, viewGroup, false);
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
