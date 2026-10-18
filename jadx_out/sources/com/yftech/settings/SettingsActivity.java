package com.yftech.settings;

import android.app.Fragment;
import android.app.FragmentManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.provider.Settings;
import android.view.KeyEvent;
import android.view.View;
import android.widget.HorizontalScrollView;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.yftech.settings.ac.AcSeatMainFragment;
import com.yftech.settings.aid.DriveAidsMainFragment;
import com.yftech.settings.chassis.ChassisPowerMainFragment;
import com.yftech.settings.connect.ConnectMainFragment;
import com.yftech.settings.display.DisplayMainFragment;
import com.yftech.settings.parts.CarPartsMainFragment;
import com.yftech.settings.sound.SoundFragment;
import com.yftech.settings.system.SystemMainFragment;
import com.yftech.settings.utils.ConfigUtils;
import com.yftech.settings.utils.LogUtil;
import com.yftech.settings.utils.Utils;
import com.yftech.settings.voice.VoiceMainFragment;
import com.yftech.settings.widget.dialog.CarPlayAvailableListDialog;
import com.yftech.vehicle.sdk.CarPowerManager;

/* JADX INFO: loaded from: classes.dex */
public class SettingsActivity extends BaseActivity implements View.OnClickListener {
    private static final int TAB_AC_SEAT = 5;
    private static final int TAB_CHASSIS_DYNAMIC = 3;
    private static final int TAB_CONNECT = 0;
    private static final int TAB_DISPLAY = 6;
    private static final int TAB_DRIVE = 2;
    private static final int TAB_PARTS = 4;
    private static final int TAB_SOUND = 1;
    private static final int TAB_SYSTEM = 7;
    private static final int TAB_VOICE = 8;
    private static final String TAG = "SettingsActivity1";
    private static final String TAG_AC_SEAT = "AcSeat";
    private static final String TAG_CHASSIS_DYNAMIC = "ChassisDynamic";
    private static final String TAG_CONNECT = "Connect";
    private static final String TAG_DISPLAY = "Display";
    private static final String TAG_DRIVE = "Drive";
    private static final String TAG_PARTS = "Parts";
    private static final String TAG_SOUND = "Sound";
    private static final String TAG_SYSTEM = "System";
    private static final String TAG_VOICE = "Voice";
    private AcSeatMainFragment mAcSeatMainFragment;
    private CarPartsMainFragment mCarPartsMainFragment;
    private CarPlayAvailableListDialog mCarPlayAvailableListDialog;
    private ChassisPowerMainFragment mChassisPowerMainFragment;
    private TextView mCheckTab;
    private ConnectMainFragment mConnectMainFragment;
    private DisplayMainFragment mDisplayMainFragment;
    private DriveAidsMainFragment mDriveAidsMainFragment;
    private SoundFragment mSoundFragment;
    private int mSubView;
    private SystemMainFragment mSystemMainFragment;
    private VoiceMainFragment mVoiceMainFragment;
    private HorizontalScrollView menu;
    private TextView tvAcSeat;
    private TextView tvChassisDynamic;
    private TextView tvConnect;
    private TextView tvDisplay;
    private TextView tvDrive;
    private TextView tvParts;
    private TextView tvSound;
    private TextView tvSystem;
    private TextView tvVoice;
    private int mTabId = 0;
    private boolean isBack = false;
    private Handler mHandler = new Handler();
    private BroadcastReceiver mExitReceiver = new BroadcastReceiver() { // from class: com.yftech.settings.SettingsActivity.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null || intent.getAction() == null || !intent.getAction().equals("com.yftech.settings.EXIT")) {
                return;
            }
            LogUtil.i(SettingsActivity.TAG, "receive exit broadcast");
            SettingsActivity.this.moveTaskToBack(true);
            SettingsActivity.this.mHandler.postDelayed(new Runnable() { // from class: com.yftech.settings.SettingsActivity.1.1
                @Override // java.lang.Runnable
                public void run() {
                    LogUtil.i(SettingsActivity.TAG, "exit");
                    System.exit(0);
                }
            }, 500L);
        }
    };

    /* JADX WARN: Code duplicated, block: B:44:0x00df  */
    private String getTabExtras(Intent intent) {
        String string;
        if (intent != null) {
            String action = intent.getAction();
            LogUtil.i(TAG, "getTabExtras() action:" + action);
            if ("com.yftech.intent.action.start.bt.setting".equals(action)) {
                string = TAG_CONNECT;
                if (this.mConnectMainFragment == null) {
                    this.mConnectMainFragment = new ConnectMainFragment();
                }
                this.mConnectMainFragment.setSkipToBt();
            } else if ("com.yftech.intent.action.start.carplay.setting".equals(action)) {
                this.mSubView = intent.getIntExtra("subView", 0);
                if (this.mConnectMainFragment == null) {
                    this.mConnectMainFragment = new ConnectMainFragment();
                }
                this.mConnectMainFragment.setSkipToLink();
                string = TAG_CONNECT;
            } else if ("com.yftech.intent.action.start.hicar.setting".equals(action)) {
                string = TAG_CONNECT;
                if (this.mConnectMainFragment == null) {
                    this.mConnectMainFragment = new ConnectMainFragment();
                }
                this.mConnectMainFragment.setSkipToLink();
            } else if ("com.yftech.intent.action.start.time.setting".equals(action)) {
                string = TAG_SYSTEM;
                if (this.mSystemMainFragment == null) {
                    this.mSystemMainFragment = new SystemMainFragment();
                }
                this.mSystemMainFragment.setToTimeSettingFlag();
            } else if ("com.yftech.intent.action.start.phonenumber.setting".equals(action)) {
                string = TAG_PARTS;
                if (this.mCarPartsMainFragment == null) {
                    this.mCarPartsMainFragment = new CarPartsMainFragment();
                }
                this.mCarPartsMainFragment.skipToMoreAndShowPhoneNumView();
            } else if ("com.yftech.intent.action.start.steeringwheelcustombutton.setting".equals(action)) {
                string = TAG_PARTS;
                if (this.mCarPartsMainFragment == null) {
                    this.mCarPartsMainFragment = new CarPartsMainFragment();
                }
                this.mCarPartsMainFragment.skipToMore();
            } else {
                Bundle extras = intent.getExtras();
                if (extras == null || !extras.containsKey("activity")) {
                    string = null;
                } else {
                    string = extras.getString("activity");
                }
            }
        } else {
            string = null;
        }
        LogUtil.i(TAG, "getTabExtras() tabExtras:" + string);
        return string;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:45:0x009d A[PHI: r0
      0x009d: PHI (r0v1 android.widget.TextView) = (r0v0 android.widget.TextView), (r0v0 android.widget.TextView), (r0v3 android.widget.TextView) binds: [B:3:0x000c, B:34:0x0071, B:44:0x009b] A[DONT_GENERATE, DONT_INLINE]] */
    private void setChooseTab(String str) {
        TextView textView = this.tvConnect;
        int i = 8;
        if (str != null) {
            switch (str) {
                case "Connect":
                    textView = this.tvConnect;
                    i = 0;
                    break;
                case "Sound":
                    textView = this.tvSound;
                    i = 1;
                    break;
                case "Drive":
                    textView = this.tvDrive;
                    i = 2;
                    break;
                case "ChassisDynamic":
                    textView = this.tvChassisDynamic;
                    i = 3;
                    break;
                case "Parts":
                    textView = this.tvParts;
                    i = 4;
                    break;
                case "AcSeat":
                    textView = this.tvAcSeat;
                    i = 5;
                    break;
                case "Display":
                    textView = this.tvDisplay;
                    i = 6;
                    break;
                case "System":
                    textView = this.tvSystem;
                    this.menu.fullScroll(66);
                    i = 7;
                    break;
                case "Voice":
                    textView = this.tvVoice;
                    break;
                default:
                    i = 0;
                    break;
            }
        } else {
            i = 0;
        }
        if (this.mCheckTab != null) {
            this.mCheckTab.setSelected(false);
        }
        this.mTabId = i;
        this.mCheckTab = textView;
        this.mCheckTab.setSelected(true);
    }

    private void showCarPlayAvailableListDialog() {
        if (this.mSubView == 1 && Utils.isCarPlayCertificate()) {
            this.mCarPlayAvailableListDialog = new CarPlayAvailableListDialog(getApplicationContext());
            this.mCarPlayAvailableListDialog.show();
            this.mCarPlayAvailableListDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.yftech.settings.SettingsActivity.2
                @Override // android.content.DialogInterface.OnDismissListener
                public void onDismiss(DialogInterface dialogInterface) {
                    SettingsActivity.this.mCarPlayAvailableListDialog = null;
                }
            });
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.tvAcSeat /* 2131231222 */:
                if (this.mCheckTab != this.tvAcSeat) {
                    showTabFragment(5);
                    this.mCheckTab.setSelected(false);
                    this.tvAcSeat.setSelected(true);
                    this.mCheckTab = this.tvAcSeat;
                    this.mTabId = 5;
                }
                if (!isPower()) {
                    showPowerToast();
                }
                break;
            case R.id.tvChassisDynamic /* 2131231226 */:
                if (this.mCheckTab != this.tvChassisDynamic) {
                    showTabFragment(3);
                    this.mCheckTab.setSelected(false);
                    this.tvChassisDynamic.setSelected(true);
                    this.mCheckTab = this.tvChassisDynamic;
                    this.mTabId = 3;
                }
                if (!isPower()) {
                    showPowerToast();
                }
                break;
            case R.id.tvConnect /* 2131231227 */:
                if (this.mCheckTab != this.tvConnect) {
                    showTabFragment(0);
                    this.mCheckTab.setSelected(false);
                    this.tvConnect.setSelected(true);
                    this.mCheckTab = this.tvConnect;
                    this.mTabId = 0;
                }
                break;
            case R.id.tvDisplay /* 2131231234 */:
                if (this.mCheckTab != this.tvDisplay) {
                    showTabFragment(6);
                    this.mCheckTab.setSelected(false);
                    this.tvDisplay.setSelected(true);
                    this.mCheckTab = this.tvDisplay;
                    this.mTabId = 6;
                }
                break;
            case R.id.tvDrive /* 2131231235 */:
                if (this.mCheckTab != this.tvDrive) {
                    showTabFragment(2);
                    this.mCheckTab.setSelected(false);
                    this.tvDrive.setSelected(true);
                    this.mCheckTab = this.tvDrive;
                    this.mTabId = 2;
                }
                if (!isPower()) {
                    showPowerToast();
                }
                break;
            case R.id.tvParts /* 2131231246 */:
                if (this.mCheckTab != this.tvParts) {
                    showTabFragment(4);
                    this.mCheckTab.setSelected(false);
                    this.tvParts.setSelected(true);
                    this.mCheckTab = this.tvParts;
                    this.mTabId = 4;
                }
                if (!isPower()) {
                    showPowerToast();
                }
                break;
            case R.id.tvSound /* 2131231250 */:
                if (this.mCheckTab != this.tvSound) {
                    showTabFragment(1);
                    this.mCheckTab.setSelected(false);
                    this.tvSound.setSelected(true);
                    this.mCheckTab = this.tvSound;
                    this.mTabId = 1;
                }
                break;
            case R.id.tvSystem /* 2131231253 */:
                if (this.mCheckTab != this.tvSystem) {
                    showTabFragment(7);
                    this.mCheckTab.setSelected(false);
                    this.tvSystem.setSelected(true);
                    this.mCheckTab = this.tvSystem;
                    this.mTabId = 7;
                }
                break;
            case R.id.tvVoice /* 2131231260 */:
                if (this.mCheckTab != this.tvVoice) {
                    showTabFragment(8);
                    this.mCheckTab.setSelected(false);
                    this.tvVoice.setSelected(true);
                    this.mCheckTab = this.tvVoice;
                    this.mTabId = 8;
                }
                break;
        }
    }

    @Override // com.yftech.settings.BaseActivity, android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_settings);
        String tabExtras = getTabExtras(getIntent());
        LogUtil.i(TAG, "onCreate() activity:" + tabExtras);
        this.menu = (HorizontalScrollView) findViewById(R.id.menu);
        this.tvConnect = (TextView) findViewById(R.id.tvConnect);
        this.tvSound = (TextView) findViewById(R.id.tvSound);
        this.tvDrive = (TextView) findViewById(R.id.tvDrive);
        this.tvChassisDynamic = (TextView) findViewById(R.id.tvChassisDynamic);
        this.tvParts = (TextView) findViewById(R.id.tvParts);
        this.tvAcSeat = (TextView) findViewById(R.id.tvAcSeat);
        this.tvDisplay = (TextView) findViewById(R.id.tvDisplay);
        this.tvSystem = (TextView) findViewById(R.id.tvSystem);
        this.tvVoice = (TextView) findViewById(R.id.tvVoice);
        this.tvDrive.setVisibility(ConfigUtils.getInstance().isAidConfig() ? 0 : 8);
        this.tvParts.setVisibility(ConfigUtils.getInstance().isCarPartsConfig() ? 0 : 8);
        this.tvAcSeat.setVisibility(ConfigUtils.getInstance().isAcSeatConfig() ? 0 : 8);
        setChooseTab(tabExtras);
        this.tvConnect.setOnClickListener(this);
        this.tvSound.setOnClickListener(this);
        this.tvDrive.setOnClickListener(this);
        this.tvChassisDynamic.setOnClickListener(this);
        this.tvParts.setOnClickListener(this);
        this.tvAcSeat.setOnClickListener(this);
        this.tvDisplay.setOnClickListener(this);
        this.tvSystem.setOnClickListener(this);
        this.tvVoice.setOnClickListener(this);
        registerReceiver(this.mExitReceiver, new IntentFilter("com.yftech.settings.EXIT"));
    }

    @Override // com.yftech.settings.BaseActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        LogUtil.i(TAG, "onDestroy: ");
        unregisterReceiver(this.mExitReceiver);
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
        String tabExtras = getTabExtras(intent);
        LogUtil.i(TAG, "onNewIntent() activity:" + tabExtras);
        if (tabExtras == null) {
            return;
        }
        setChooseTab(tabExtras);
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        LogUtil.i(TAG, "onPause: ");
        if (this.mCarPlayAvailableListDialog == null || !this.mCarPlayAvailableListDialog.isShowing()) {
            return;
        }
        this.mCarPlayAvailableListDialog.dismiss();
    }

    @Override // android.app.Activity
    protected void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        LogUtil.i(TAG, "onRestoreInstanceState: ");
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        if (Settings.Global.getInt(getApplicationContext().getContentResolver(), CommonConstant.SETTING_LANGUAGE_CHANGE, 0) == 1) {
            setChooseTab(TAG_SYSTEM);
        }
        LogUtil.i(TAG, "onResume, tabId:" + this.mTabId + " powerMode:" + CarPowerManager.get().getPowerMode());
        showTabFragment(this.mTabId);
        showCarPlayAvailableListDialog();
        Settings.Global.putInt(getApplicationContext().getContentResolver(), CommonConstant.SETTING_LANGUAGE_CHANGE, 0);
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        LogUtil.i(TAG, "onSaveInstanceState: ");
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        LogUtil.i(TAG, "onStop: ");
    }

    public void removeTabFragment(int i) {
        String str;
        Fragment fragment = null;
        switch (i) {
            case 0:
                if (this.mConnectMainFragment == null) {
                    return;
                }
                fragment = this.mConnectMainFragment;
                str = TAG_CONNECT;
                break;
            case 1:
                if (this.mSoundFragment == null) {
                    return;
                }
                fragment = this.mSoundFragment;
                str = TAG_SOUND;
                break;
            case 2:
                if (this.mDriveAidsMainFragment == null) {
                    return;
                }
                fragment = this.mDriveAidsMainFragment;
                str = TAG_DRIVE;
                break;
            case 3:
                if (this.mChassisPowerMainFragment == null) {
                    return;
                }
                fragment = this.mChassisPowerMainFragment;
                str = TAG_CHASSIS_DYNAMIC;
                break;
            case 4:
                if (this.mCarPartsMainFragment == null) {
                    return;
                }
                fragment = this.mCarPartsMainFragment;
                str = TAG_PARTS;
                break;
            case 5:
                if (this.mAcSeatMainFragment == null) {
                    return;
                }
                fragment = this.mAcSeatMainFragment;
                str = TAG_AC_SEAT;
                break;
            case 6:
                if (this.mDisplayMainFragment == null) {
                    return;
                }
                fragment = this.mDisplayMainFragment;
                str = TAG_DISPLAY;
                break;
            case 7:
                if (this.mSystemMainFragment == null) {
                    return;
                }
                fragment = this.mSystemMainFragment;
                str = TAG_SYSTEM;
                break;
            case 8:
                if (this.mVoiceMainFragment == null) {
                    return;
                }
                fragment = this.mVoiceMainFragment;
                str = TAG_VOICE;
                break;
            default:
                str = null;
                break;
        }
        if (fragment != null) {
            FragmentManager fragmentManager = getFragmentManager();
            LogUtil.i(TAG, "removeTabFragment, tabId:" + i + ", tag:" + str + ", exist:" + (fragmentManager.findFragmentByTag(str) != null) + ", count:" + fragmentManager.getBackStackEntryCount() + ", destroy:" + fragmentManager.isDestroyed());
            fragmentManager.beginTransaction().remove(fragment).commitAllowingStateLoss();
        }
    }

    public void showTabFragment(int i) {
        Fragment fragment;
        String str;
        switch (i) {
            case 0:
                if (this.mConnectMainFragment == null) {
                    this.mConnectMainFragment = new ConnectMainFragment();
                }
                fragment = this.mConnectMainFragment;
                str = TAG_CONNECT;
                break;
            case 1:
                if (this.mSoundFragment == null) {
                    this.mSoundFragment = new SoundFragment();
                }
                fragment = this.mSoundFragment;
                str = TAG_SOUND;
                break;
            case 2:
                if (this.mDriveAidsMainFragment == null) {
                    this.mDriveAidsMainFragment = new DriveAidsMainFragment();
                }
                fragment = this.mDriveAidsMainFragment;
                str = TAG_DRIVE;
                break;
            case 3:
                if (this.mChassisPowerMainFragment == null) {
                    this.mChassisPowerMainFragment = new ChassisPowerMainFragment();
                }
                fragment = this.mChassisPowerMainFragment;
                str = TAG_CHASSIS_DYNAMIC;
                break;
            case 4:
                if (this.mCarPartsMainFragment == null) {
                    this.mCarPartsMainFragment = new CarPartsMainFragment();
                }
                fragment = this.mCarPartsMainFragment;
                str = TAG_PARTS;
                break;
            case 5:
                if (this.mAcSeatMainFragment == null) {
                    this.mAcSeatMainFragment = new AcSeatMainFragment();
                }
                fragment = this.mAcSeatMainFragment;
                str = TAG_AC_SEAT;
                break;
            case 6:
                if (this.mDisplayMainFragment == null) {
                    this.mDisplayMainFragment = new DisplayMainFragment();
                }
                fragment = this.mDisplayMainFragment;
                str = TAG_DISPLAY;
                break;
            case 7:
                if (this.mSystemMainFragment == null) {
                    this.mSystemMainFragment = new SystemMainFragment();
                }
                if (Settings.Global.getInt(getApplicationContext().getContentResolver(), CommonConstant.SETTING_LANGUAGE_CHANGE, 0) == 1) {
                    this.mSystemMainFragment.setSkipToVehicleInfoFragment();
                }
                fragment = this.mSystemMainFragment;
                str = TAG_SYSTEM;
                break;
            case 8:
                if (this.mVoiceMainFragment == null) {
                    this.mVoiceMainFragment = new VoiceMainFragment();
                }
                fragment = this.mVoiceMainFragment;
                str = TAG_VOICE;
                break;
            default:
                fragment = null;
                str = null;
                break;
        }
        if (fragment != null) {
            FragmentManager fragmentManager = getFragmentManager();
            LogUtil.i(TAG, "showTabFragment, tabId:" + i + ", tag:" + str + ", exist:" + (fragmentManager.findFragmentByTag(str) != null) + ", count:" + fragmentManager.getBackStackEntryCount() + ", destroy:" + fragmentManager.isDestroyed());
            fragmentManager.beginTransaction().replace(R.id.container, fragment, str).addToBackStack(null).commitAllowingStateLoss();
        }
    }
}
