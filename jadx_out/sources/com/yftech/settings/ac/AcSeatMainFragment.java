package com.yftech.settings.ac;

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
public class AcSeatMainFragment extends BaseFragment implements View.OnClickListener {
    private static final String TAB_AC = "ac";
    private static final String TAB_SEAT = "seat";
    private static final String TAG = "AcSeatMainFragment";
    private View lineAc;
    private AcFragment mAcFragment;
    private SeatFragment mSeatFragment;
    private String mShowTab = TAB_AC;
    private RelativeLayout tabAc;
    private RelativeLayout tabSeat;

    private void initView(View view) {
        this.tabAc = (RelativeLayout) view.findViewById(R.id.tabAc);
        this.tabSeat = (RelativeLayout) view.findViewById(R.id.tabSeat);
        this.tabAc.setVisibility(ConfigUtils.isAcConfig ? 0 : 8);
        this.tabSeat.setVisibility(ConfigUtils.isSeatConfig ? 0 : 8);
        this.lineAc = this.tabAc.findViewById(R.id.lineAc);
        String[] strArr = {TAB_AC, TAB_SEAT};
        boolean[] zArr = {ConfigUtils.isAcConfig, ConfigUtils.isSeatConfig};
        for (int i = 0; i < zArr.length; i++) {
            if (zArr[i]) {
                this.mShowTab = strArr[i];
                break;
            }
        }
        this.tabAc.setOnClickListener(this);
        this.tabSeat.setOnClickListener(this);
        this.tabAc.setOnTouchListener(this);
        this.tabSeat.setOnTouchListener(this);
    }

    private void showTabFragment(String str) {
        Fragment fragment;
        this.tabAc.setSelected(false);
        this.tabSeat.setSelected(false);
        this.lineAc.setVisibility(0);
        this.mShowTab = str;
        if (TAB_AC.equals(str)) {
            this.tabAc.setSelected(true);
            this.lineAc.setVisibility(4);
            if (this.mAcFragment == null) {
                this.mAcFragment = new AcFragment();
            }
            fragment = this.mAcFragment;
        } else if (TAB_SEAT.equals(str)) {
            this.tabSeat.setSelected(true);
            if (this.mSeatFragment == null) {
                this.mSeatFragment = new SeatFragment();
            }
            fragment = this.mSeatFragment;
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
        if (id == R.id.tabAc) {
            if (TAB_AC.equals(this.mShowTab)) {
                return;
            }
            showTabFragment(TAB_AC);
        } else if (id == R.id.tabSeat && !TAB_SEAT.equals(this.mShowTab)) {
            showTabFragment(TAB_SEAT);
        }
    }

    @Override // android.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_ac_seat_main, viewGroup, false);
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
