package com.yftech.settings.connect;

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
import com.yftech.settings.utils.Utils;

/* JADX INFO: loaded from: classes.dex */
public class ConnectMainFragment extends BaseFragment implements View.OnClickListener {
    private static final int SKIP_TO_BT = 1;
    private static final int SKIP_TO_LINK = 2;
    private static final String TAB_BLUETOOTH = "bluetooth";
    private static final String TAB_HOTSPOT = "hotspot";
    private static final String TAB_LINK = "link";
    private static final String TAG = "ConnectMainFragment";
    private View lineBt;
    private BluetoothFragment mBluetoothFragment;
    private HotspotFragment mHotspotFragment;
    private LinkFragment mLinkFragment;
    private String mShowTab = TAB_BLUETOOTH;
    private int skipToTab = 0;
    private RelativeLayout tabBluetooth;
    private RelativeLayout tabHotspot;
    private RelativeLayout tabLink;

    private void initView(View view) {
        this.tabBluetooth = (RelativeLayout) view.findViewById(R.id.tabBluetooth);
        this.tabLink = (RelativeLayout) view.findViewById(R.id.tabLink);
        this.tabHotspot = (RelativeLayout) view.findViewById(R.id.tabHotspot);
        this.tabLink.setVisibility(ConfigUtils.isLinkConfig ? 0 : 8);
        this.lineBt = this.tabBluetooth.findViewById(R.id.lineBt);
        this.tabBluetooth.setOnClickListener(this);
        this.tabHotspot.setOnClickListener(this);
        this.tabLink.setOnClickListener(this);
    }

    private void showTabFragment(String str) {
        Fragment fragment;
        this.tabBluetooth.setSelected(false);
        this.tabLink.setSelected(false);
        this.tabHotspot.setSelected(false);
        this.lineBt.setVisibility(0);
        this.mShowTab = str;
        if (TAB_BLUETOOTH.equals(str)) {
            this.tabBluetooth.setSelected(true);
            this.lineBt.setVisibility(4);
            if (this.mBluetoothFragment == null) {
                this.mBluetoothFragment = new BluetoothFragment();
            }
            fragment = this.mBluetoothFragment;
        } else if (TAB_LINK.equals(str)) {
            this.tabLink.setSelected(true);
            if (this.mLinkFragment == null) {
                this.mLinkFragment = new LinkFragment();
            }
            fragment = this.mLinkFragment;
        } else if (TAB_HOTSPOT.equals(str)) {
            this.tabHotspot.setSelected(true);
            if (this.mHotspotFragment == null) {
                this.mHotspotFragment = new HotspotFragment();
            }
            fragment = this.mHotspotFragment;
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
        if (id == R.id.tabBluetooth) {
            if (TAB_BLUETOOTH.equals(this.mShowTab)) {
                return;
            }
            showTabFragment(TAB_BLUETOOTH);
        } else if (id == R.id.tabHotspot) {
            if (TAB_HOTSPOT.equals(this.mShowTab)) {
                return;
            }
            showTabFragment(TAB_HOTSPOT);
        } else if (id == R.id.tabLink && !TAB_LINK.equals(this.mShowTab)) {
            showTabFragment(TAB_LINK);
        }
    }

    @Override // android.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_connect_main, viewGroup, false);
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
        this.tabHotspot.setVisibility(Utils.isCarPlayCertificate() ? 0 : 8);
        if (!Utils.isCarPlayCertificate() && this.mShowTab.equals(TAB_HOTSPOT)) {
            this.mShowTab = TAB_BLUETOOTH;
        }
        if (this.skipToTab == 1) {
            showTabFragment(TAB_BLUETOOTH);
        } else if (this.skipToTab == 2) {
            showTabFragment(TAB_LINK);
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

    public void setSkipToBt() {
        this.skipToTab = 1;
    }

    public void setSkipToLink() {
        this.skipToTab = 2;
    }
}
