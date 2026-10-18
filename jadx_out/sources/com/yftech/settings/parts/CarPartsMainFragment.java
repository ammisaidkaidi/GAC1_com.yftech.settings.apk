package com.yftech.settings.parts;

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
import com.yftech.settings.utils.ConfigUtils;
import com.yftech.settings.utils.LogUtil;

/* JADX INFO: loaded from: classes.dex */
public class CarPartsMainFragment extends BaseFragment implements View.OnClickListener {
    private static final String TAB_LIGHT = "light";
    private static final String TAB_LOCK = "lock";
    private static final String TAB_MORE = "more";
    private static final String TAB_REARVIEW = "rearview";
    private static final String TAG = "CarPartsMainFragment";
    private View lineLight;
    private View lineLock;
    private View lineRearview;
    private CarPartsLightFragment mCarPartsLightFragment;
    private CarPartsLockFragment mCarPartsLockFragment;
    private CarPartsMoreFragment mCarPartsMoreFragment;
    private CarPartsRearviewFragment mCarPartsRearviewFragment;
    private RelativeLayout tabLight;
    private RelativeLayout tabLock;
    private RelativeLayout tabMore;
    private RelativeLayout tabRearview;
    private String mShowTab = TAB_LIGHT;
    private int SKIP_TO_MORE = 2;
    private int mSkipToTab = 0;

    private void initView(View view) {
        this.tabLight = (RelativeLayout) view.findViewById(R.id.tabLight);
        this.tabLock = (RelativeLayout) view.findViewById(R.id.tabLock);
        this.tabRearview = (RelativeLayout) view.findViewById(R.id.tabRearview);
        this.tabMore = (RelativeLayout) view.findViewById(R.id.tabMore);
        this.tabLight.setVisibility(ConfigUtils.isCarPartsLightConfig ? 0 : 8);
        this.tabLock.setVisibility(ConfigUtils.isCarPartsLockConfig ? 0 : 8);
        this.tabRearview.setVisibility(ConfigUtils.isCarPartsRearviewConfig ? 0 : 8);
        this.tabMore.setVisibility(ConfigUtils.isCarPartsMoreConfig ? 0 : 8);
        if (!ConfigUtils.isCarPartsLightConfig) {
            this.tabLock.setBackgroundResource(R.drawable.selector_item_tab_bar_top_btn_bg);
        } else if (!ConfigUtils.isCarPartsRearviewConfig && !ConfigUtils.isCarPartsMoreConfig) {
            this.tabLock.setBackgroundResource(R.drawable.selector_item_tab_bar_bottom_btn_bg);
        }
        if (!ConfigUtils.isCarPartsLightConfig && !ConfigUtils.isCarPartsLockConfig) {
            this.tabRearview.setBackgroundResource(R.drawable.selector_item_tab_bar_top_btn_bg);
        } else if (!ConfigUtils.isCarPartsMoreConfig) {
            this.tabRearview.setBackgroundResource(R.drawable.selector_item_tab_bar_bottom_btn_bg);
        }
        String[] strArr = {TAB_LIGHT, TAB_LOCK, TAB_MORE};
        boolean[] zArr = {ConfigUtils.isCarPartsLightConfig, ConfigUtils.isCarPartsLockConfig, ConfigUtils.isCarPartsMoreConfig};
        for (int i = 0; i < zArr.length; i++) {
            if (zArr[i]) {
                this.mShowTab = strArr[i];
                break;
            }
        }
        this.lineLight = this.tabLight.findViewById(R.id.lineLight);
        this.lineLock = this.tabLock.findViewById(R.id.lineLock);
        this.lineRearview = this.tabRearview.findViewById(R.id.lineRearview);
        this.tabLight.setOnClickListener(this);
        this.tabLock.setOnClickListener(this);
        this.tabRearview.setOnClickListener(this);
        this.tabMore.setOnClickListener(this);
        this.tabLight.setOnTouchListener(this);
        this.tabLock.setOnTouchListener(this);
        this.tabMore.setOnTouchListener(this);
        this.tabRearview.setOnTouchListener(this);
    }

    private void showTabFragment(String str) {
        Fragment fragment;
        this.tabLight.setSelected(false);
        this.tabLock.setSelected(false);
        this.tabRearview.setSelected(false);
        this.tabMore.setSelected(false);
        this.lineLight.setVisibility(0);
        this.lineLock.setVisibility(0);
        this.lineRearview.setVisibility(0);
        this.mShowTab = str;
        if (TAB_LIGHT.equals(str)) {
            this.tabLight.setSelected(true);
            this.lineLight.setVisibility(4);
            if (this.mCarPartsLightFragment == null) {
                this.mCarPartsLightFragment = new CarPartsLightFragment();
            }
            fragment = this.mCarPartsLightFragment;
        } else if (TAB_LOCK.equals(str)) {
            this.tabLock.setSelected(true);
            this.lineLock.setVisibility(4);
            if (this.mCarPartsLockFragment == null) {
                this.mCarPartsLockFragment = new CarPartsLockFragment();
            }
            fragment = this.mCarPartsLockFragment;
        } else if (TAB_REARVIEW.equals(str)) {
            this.tabRearview.setSelected(true);
            this.lineRearview.setVisibility(4);
            if (this.mCarPartsRearviewFragment == null) {
                this.mCarPartsRearviewFragment = new CarPartsRearviewFragment();
            }
            fragment = this.mCarPartsRearviewFragment;
        } else if (TAB_MORE.equals(str)) {
            this.tabMore.setSelected(true);
            if (this.mCarPartsMoreFragment == null) {
                this.mCarPartsMoreFragment = new CarPartsMoreFragment();
            }
            fragment = this.mCarPartsMoreFragment;
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
        if (id == R.id.tabLight) {
            if (TAB_LIGHT.equals(this.mShowTab)) {
                return;
            }
            showTabFragment(TAB_LIGHT);
        } else if (id == R.id.tabLock) {
            if (TAB_LOCK.equals(this.mShowTab)) {
                return;
            }
            showTabFragment(TAB_LOCK);
        } else if (id == R.id.tabMore) {
            if (TAB_MORE.equals(this.mShowTab)) {
                return;
            }
            showTabFragment(TAB_MORE);
        } else if (id == R.id.tabRearview && !TAB_REARVIEW.equals(this.mShowTab)) {
            showTabFragment(TAB_REARVIEW);
        }
    }

    @Override // android.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_parts_main, viewGroup, false);
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
        if (this.mSkipToTab == this.SKIP_TO_MORE) {
            showTabFragment(TAB_MORE);
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

    public void skipToMore() {
        this.mSkipToTab = this.SKIP_TO_MORE;
        if (this.mCarPartsMoreFragment == null) {
            this.mCarPartsMoreFragment = new CarPartsMoreFragment();
        }
    }

    public void skipToMoreAndShowPhoneNumView() {
        this.mSkipToTab = this.SKIP_TO_MORE;
        if (this.mCarPartsMoreFragment == null) {
            this.mCarPartsMoreFragment = new CarPartsMoreFragment();
        }
        this.mCarPartsMoreFragment.showPhoneNumberView();
    }
}
