package com.yftech.settings.avdc;

import android.app.Fragment;
import android.app.FragmentManager;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.yftech.settings.BaseActivity;
import com.yftech.settings.R;
import com.yftech.settings.utils.LogUtil;
import com.yftech.vehicle.internal.adapter.ICarPower;
import com.yftech.vehicle.sdk.CarPowerManager;

/* JADX INFO: loaded from: classes.dex */
public class AvdcActivity extends BaseActivity implements View.OnClickListener {
    private static final String TAB_DRIVING_MODE = "driving_mode";
    private static final String TAB_MODE_SETTINGS = "mode_settings";
    private static final String TAG = "AvdcActivity";
    private RelativeLayout layoutPowerAcc;
    private DrivingModeFragment mDrivingModeFragment;
    private ModeSettingsFragment mModeSettingsFragment;
    private Toast mPowerToast;
    private String mShowTab;
    private Button tabDrivingMode;
    private Button tabModeSettings;
    private Handler mHandler = new Handler();
    private boolean isBack = false;
    private CarPowerManager.CarPowerListener listener = new CarPowerManager.CarPowerListener() { // from class: com.yftech.settings.avdc.AvdcActivity.1
        @Override // com.yftech.vehicle.sdk.CarPowerManager.CarPowerListener
        public void onPowerModeChanged(ICarPower.PowerMode powerMode) {
            super.onPowerModeChanged(powerMode);
            final boolean z = powerMode == ICarPower.PowerMode.ON || powerMode == ICarPower.PowerMode.CRANK;
            AvdcActivity.this.mHandler.post(new Runnable() { // from class: com.yftech.settings.avdc.AvdcActivity.1.1
                @Override // java.lang.Runnable
                public void run() {
                    AvdcActivity.this.updateView(z);
                }
            });
        }
    };

    private String getTabExtras(Intent intent) {
        Bundle extras;
        String string = TAB_DRIVING_MODE;
        if (intent != null && (extras = intent.getExtras()) != null && extras.containsKey("activity")) {
            string = extras.getString("activity");
        }
        LogUtil.i(TAG, "getTagExtras() tab:" + string);
        return string;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateView(boolean z) {
        this.layoutPowerAcc.setVisibility(z ? 8 : 0);
        this.tabDrivingMode.setEnabled(z);
        this.tabModeSettings.setEnabled(z);
    }

    @Override // com.yftech.settings.BaseActivity
    protected String getPowerToastStr() {
        return getApplicationContext().getString(R.string.toast_start_the_avdc_acc_power);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.avdc_tv_current_mode_setting /* 2131230786 */:
                if (!TAB_MODE_SETTINGS.equals(this.mShowTab)) {
                    showTabFragment(TAB_MODE_SETTINGS);
                }
                break;
            case R.id.avdc_tv_driving_mode /* 2131230787 */:
                if (!TAB_DRIVING_MODE.equals(this.mShowTab)) {
                    showTabFragment(TAB_DRIVING_MODE);
                }
                break;
        }
    }

    @Override // com.yftech.settings.BaseActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_avdc);
        this.tabDrivingMode = (Button) findViewById(R.id.avdc_tv_driving_mode);
        this.tabModeSettings = (Button) findViewById(R.id.avdc_tv_current_mode_setting);
        this.layoutPowerAcc = (RelativeLayout) findViewById(R.id.layout_power_acc);
        ((TextView) this.layoutPowerAcc.findViewById(R.id.acc_off_tip)).setText(R.string.toast_start_the_avdc_acc_power);
        this.tabDrivingMode.setOnClickListener(this);
        this.tabModeSettings.setOnClickListener(this);
        this.mShowTab = getTabExtras(getIntent());
        LogUtil.i(TAG, "onCreate() showTab:" + this.mShowTab);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            this.isBack = true;
        }
        finish();
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        this.mShowTab = getTabExtras(intent);
        LogUtil.i(TAG, "onNewIntent() showTab:" + this.mShowTab);
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        LogUtil.i(TAG, "onPause: ");
        if (this.isBack) {
            removeTabFragment(this.mShowTab);
            this.isBack = false;
        }
        CarPowerManager.get().unregisterListener(this.listener);
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        LogUtil.i(TAG, "onResume() showTab:" + this.mShowTab);
        CarPowerManager.get().registerListener(this.listener);
        updateView(isPower());
        showTabFragment(this.mShowTab);
    }

    public void removeTabFragment(String str) {
        Fragment fragment;
        this.tabDrivingMode.setSelected(false);
        this.tabModeSettings.setSelected(false);
        this.mShowTab = str;
        if (TAB_DRIVING_MODE.equals(str)) {
            this.tabDrivingMode.setSelected(true);
            if (this.mDrivingModeFragment == null) {
                this.mDrivingModeFragment = new DrivingModeFragment();
            }
            fragment = this.mDrivingModeFragment;
        } else if (TAB_MODE_SETTINGS.equals(str)) {
            this.tabModeSettings.setSelected(true);
            if (this.mModeSettingsFragment == null) {
                this.mModeSettingsFragment = new ModeSettingsFragment();
            }
            fragment = this.mModeSettingsFragment;
        } else {
            fragment = null;
        }
        if (fragment != null) {
            FragmentManager fragmentManager = getFragmentManager();
            LogUtil.i(TAG, "removeTabFragment, showTab:" + this.mShowTab + ", exist:" + (fragmentManager.findFragmentByTag(this.mShowTab) != null));
            fragmentManager.beginTransaction().remove(fragment).commitAllowingStateLoss();
        }
    }

    @Override // com.yftech.settings.BaseActivity
    protected void showPowerToast() {
    }

    public void showTabFragment(String str) {
        Fragment fragment;
        this.tabDrivingMode.setSelected(false);
        this.tabModeSettings.setSelected(false);
        this.mShowTab = str;
        if (TAB_DRIVING_MODE.equals(str)) {
            this.tabDrivingMode.setSelected(true);
            if (this.mDrivingModeFragment == null) {
                this.mDrivingModeFragment = new DrivingModeFragment();
            }
            fragment = this.mDrivingModeFragment;
        } else if (TAB_MODE_SETTINGS.equals(str)) {
            this.tabModeSettings.setSelected(true);
            if (this.mModeSettingsFragment == null) {
                this.mModeSettingsFragment = new ModeSettingsFragment();
            }
            fragment = this.mModeSettingsFragment;
        } else {
            fragment = null;
        }
        if (fragment != null) {
            FragmentManager fragmentManager = getFragmentManager();
            LogUtil.i(TAG, "showTabFragment, showTab:" + this.mShowTab + ", exist:" + (fragmentManager.findFragmentByTag(this.mShowTab) != null));
            fragmentManager.beginTransaction().replace(R.id.container, fragment, this.mShowTab).addToBackStack(null).commitAllowingStateLoss();
        }
    }
}
