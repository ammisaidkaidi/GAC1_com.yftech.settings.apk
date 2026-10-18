package com.yftech.settings.display;

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
public class DisplayMainFragment extends BaseFragment implements View.OnClickListener {
    private static final String TAB_CONSOLE = "console";
    private static final String TAB_DASH = "dash";
    private static final String TAG = "DisplayMainFragment";
    private View lineConsole;
    private DisplayConsoleFragment mDisplayConsoleFragment;
    private DisplayDashFragment mDisplayDashFragment;
    private String mShowTab = TAB_CONSOLE;
    private RelativeLayout tabConsole;
    private RelativeLayout tabDash;

    private void initView(View view) {
        this.tabConsole = (RelativeLayout) view.findViewById(R.id.tabConsole);
        this.tabDash = (RelativeLayout) view.findViewById(R.id.tabDash);
        this.tabDash.setVisibility(ConfigUtils.isCarDashboardConfig ? 0 : 8);
        this.lineConsole = this.tabConsole.findViewById(R.id.lineConsole);
        this.tabConsole.setOnClickListener(this);
        this.tabDash.setOnClickListener(this);
    }

    private void showTabFragment(String str) {
        Fragment fragment;
        this.tabConsole.setSelected(false);
        this.tabDash.setSelected(false);
        this.lineConsole.setVisibility(0);
        this.mShowTab = str;
        if (TAB_CONSOLE.equals(str)) {
            this.tabConsole.setSelected(true);
            this.lineConsole.setVisibility(4);
            if (this.mDisplayConsoleFragment == null) {
                this.mDisplayConsoleFragment = new DisplayConsoleFragment();
            }
            fragment = this.mDisplayConsoleFragment;
        } else if (TAB_DASH.equals(str)) {
            this.tabDash.setSelected(true);
            if (this.mDisplayDashFragment == null) {
                this.mDisplayDashFragment = new DisplayDashFragment();
            }
            fragment = this.mDisplayDashFragment;
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
        switch (view.getId()) {
            case R.id.tabConsole /* 2131231188 */:
                if (!TAB_CONSOLE.equals(this.mShowTab)) {
                    showTabFragment(TAB_CONSOLE);
                }
                break;
            case R.id.tabDash /* 2131231189 */:
                if (!TAB_DASH.equals(this.mShowTab)) {
                    showTabFragment(TAB_DASH);
                }
                break;
        }
    }

    @Override // android.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_display_main, viewGroup, false);
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
