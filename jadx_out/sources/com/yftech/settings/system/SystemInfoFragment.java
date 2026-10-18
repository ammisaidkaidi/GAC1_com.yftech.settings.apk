package com.yftech.settings.system;

import android.app.ActivityManager;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.yftech.settings.BaseFragment;
import com.yftech.settings.R;
import com.yftech.settings.manager.SettingsManager;
import com.yftech.settings.utils.LogUtil;
import com.yftech.settings.widget.dialog.FactoryDialog;
import com.yftech.vehicle.sdk.CarConfig;

/* JADX INFO: loaded from: classes.dex */
public class SystemInfoFragment extends BaseFragment implements View.OnClickListener {
    private static final String FLAG_SYS_RESTORE_FACTORY = "system_info_restore_factory";
    private static final String FLAG_SYS_VERSION = "system_version";
    private static final String TAG = "SystemInfoFragment";
    private static SystemInfoFragment mInstance;
    private FactoryDialog mFactoryDialog;
    private TextView mTvHardwareVersion;
    private TextView mTvSerialNumber;
    private TextView mTvSystemVersion;
    private int clickCount = 0;
    private String mFlag = "init";
    private Handler mHandler = new Handler() { // from class: com.yftech.settings.system.SystemInfoFragment.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            if (SystemInfoFragment.this.clickCount >= 10) {
                SystemInfoFragment.this.startFota();
                LogUtil.d(SystemInfoFragment.TAG, "jump to Fota!");
                SystemInfoFragment.this.clickCount = 0;
            }
        }
    };

    private void initView(View view) {
        LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.systemInfoSystemVersion);
        ((TextView) linearLayout.findViewById(R.id.tvTitle)).setText(R.string.system_info_item_system_version);
        linearLayout.findViewById(R.id.tvTitle).setOnLongClickListener(new View.OnLongClickListener() { // from class: com.yftech.settings.system.SystemInfoFragment.2
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view2) {
                boolean zIsUserAMonkey = ActivityManager.isUserAMonkey();
                LogUtil.i(SystemInfoFragment.TAG, "onLongClick() isUserAMonkey:" + zIsUserAMonkey);
                if (zIsUserAMonkey) {
                    return false;
                }
                SystemInfoFragment.this.startAppLuanch();
                return false;
            }
        });
        linearLayout.findViewById(R.id.tvTitle).setOnClickListener(new View.OnClickListener() { // from class: com.yftech.settings.system.SystemInfoFragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (TextUtils.equals(SystemInfoFragment.this.mFlag, SystemInfoFragment.FLAG_SYS_VERSION)) {
                    SystemInfoFragment.this.clickCount++;
                } else {
                    SystemInfoFragment.this.clickCount = 1;
                }
                SystemInfoFragment.this.mFlag = SystemInfoFragment.FLAG_SYS_RESTORE_FACTORY;
                SystemInfoFragment.this.setCountDown();
            }
        });
        this.mTvSystemVersion = (TextView) linearLayout.findViewById(R.id.tvContent);
        LinearLayout linearLayout2 = (LinearLayout) view.findViewById(R.id.systemInfoSerialNumber);
        ((TextView) linearLayout2.findViewById(R.id.tvTitle)).setText(R.string.system_info_item_serial_number);
        this.mTvSerialNumber = (TextView) linearLayout2.findViewById(R.id.tvContent);
        LinearLayout linearLayout3 = (LinearLayout) view.findViewById(R.id.systemInfoHardwareVersion);
        ((TextView) linearLayout3.findViewById(R.id.tvTitle)).setText(R.string.system_info_item_hardware_version);
        this.mTvHardwareVersion = (TextView) linearLayout3.findViewById(R.id.tvContent);
        ((ProgressBar) ((LinearLayout) view.findViewById(R.id.systemInfoStorageSpace)).findViewById(R.id.progressBar)).setProgress(SettingsManager.getInstance().getStorageSpaceSize());
        LinearLayout linearLayout4 = (LinearLayout) view.findViewById(R.id.systemInfoStorageSpaceClear);
        ((TextView) linearLayout4.findViewById(R.id.tvTitle)).setText(R.string.system_info_item_storage_space_clear);
        Button button = (Button) linearLayout4.findViewById(R.id.button);
        button.setTag(Integer.valueOf(R.id.systemInfoStorageSpaceClear));
        button.setText(R.string.system_info_storage_space_clear);
        button.setOnClickListener(this);
        LinearLayout linearLayout5 = (LinearLayout) view.findViewById(R.id.systemInfoSystemCurrentLanguage);
        ((TextView) linearLayout5.findViewById(R.id.tvTitle)).setText(R.string.system_info_item_current_language);
        ((TextView) linearLayout5.findViewById(R.id.tvContent)).setText(R.string.system_info_item_current_language_value);
        LinearLayout linearLayout6 = (LinearLayout) view.findViewById(R.id.systemInfoSystemSupportLanguage);
        ((TextView) linearLayout6.findViewById(R.id.tvTitle)).setText(R.string.system_info_item_support_language);
        ((TextView) linearLayout6.findViewById(R.id.tvContent)).setText(R.string.system_info_item_support_language_value);
        LinearLayout linearLayout7 = (LinearLayout) view.findViewById(R.id.systemInfoRestoreFactory);
        ((TextView) linearLayout7.findViewById(R.id.tvTitle)).setText(R.string.system_info_item_restore_factory);
        Button button2 = (Button) linearLayout7.findViewById(R.id.button);
        button2.setTag(Integer.valueOf(R.id.systemInfoRestoreFactory));
        button2.setText(R.string.system_info_restore);
        button2.setOnClickListener(this);
        linearLayout7.findViewById(R.id.tvTitle).setOnClickListener(new View.OnClickListener() { // from class: com.yftech.settings.system.SystemInfoFragment.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (TextUtils.equals(SystemInfoFragment.this.mFlag, SystemInfoFragment.FLAG_SYS_RESTORE_FACTORY)) {
                    SystemInfoFragment.this.clickCount++;
                } else {
                    SystemInfoFragment.this.clickCount = 1;
                }
                SystemInfoFragment.this.mFlag = SystemInfoFragment.FLAG_SYS_VERSION;
                SystemInfoFragment.this.setCountDown();
            }
        });
        LinearLayout linearLayout8 = (LinearLayout) view.findViewById(R.id.systemInfoManufacturer);
        ((TextView) linearLayout8.findViewById(R.id.tvTitle)).setText("制造商");
        ((TextView) linearLayout8.findViewById(R.id.tvContent)).setText("GAC");
        LinearLayout linearLayout9 = (LinearLayout) view.findViewById(R.id.systemInfoVehicleModel);
        ((TextView) linearLayout9.findViewById(R.id.tvTitle)).setText("型号");
        ((TextView) linearLayout9.findViewById(R.id.tvContent)).setText("A79");
    }

    private void initViewData() {
        if (CarConfig.isGACLogoPresent()) {
            this.mTvSystemVersion.setText(SettingsManager.getInstance().getSystemVersion());
        } else {
            this.mTvSystemVersion.setText(SettingsManager.getInstance().getSystemVersion().replace("A79_G_", ""));
        }
        this.mTvSerialNumber.setText(SettingsManager.getInstance().getSerialNumber());
        this.mTvHardwareVersion.setText(SettingsManager.getInstance().getHardwareVersion());
    }

    private void showFactoryDialog() {
        this.mFactoryDialog = new FactoryDialog(getContext().getApplicationContext());
        this.mFactoryDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.yftech.settings.system.SystemInfoFragment.5
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                SystemInfoFragment.this.mFactoryDialog = null;
            }
        });
        this.mFactoryDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startAppLuanch() {
        try {
            Intent intent = new Intent();
            intent.setComponent(new ComponentName("com.hh.luanch", "com.hh.luanch.MainActivity"));
            startActivity(intent);
        } catch (ActivityNotFoundException e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startFota() {
        try {
            Intent intent = new Intent();
            intent.setComponent(new ComponentName("com.yftech.upgrade", "com.yftech.upgrade.app.MainActivity"));
            startActivity(intent);
        } catch (ActivityNotFoundException e) {
            e.printStackTrace();
        }
    }

    @Override // com.yftech.settings.BaseFragment
    protected void dismissAllDialog() {
        super.dismissAllDialog();
        if (this.mFactoryDialog == null || !this.mFactoryDialog.isShowing()) {
            return;
        }
        this.mFactoryDialog.dismiss();
        this.mFactoryDialog = null;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int iIntValue = ((Integer) view.getTag()).intValue();
        if (iIntValue == R.id.systemInfoRestoreFactory) {
            showFactoryDialog();
        } else {
            if (iIntValue != R.id.systemInfoStorageSpaceClear) {
                return;
            }
            SettingsManager.getInstance().cleanStorageSpace();
        }
    }

    @Override // android.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_system_info, viewGroup, false);
        initView(viewInflate);
        return viewInflate;
    }

    @Override // com.yftech.settings.BaseFragment, android.app.Fragment
    public void onPause() {
        super.onPause();
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        initViewData();
    }

    public void setCountDown() {
        Log.d(TAG, "setCountDown: clickCount = " + this.clickCount);
        Message message = new Message();
        message.what = this.clickCount;
        this.mHandler.sendMessage(message);
    }
}
