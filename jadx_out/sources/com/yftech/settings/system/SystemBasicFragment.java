package com.yftech.settings.system;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.yftech.settings.BaseFragment;
import com.yftech.settings.R;
import com.yftech.settings.manager.SettingsManager;
import com.yftech.settings.utils.LogUtil;
import com.yftech.settings.utils.Utils;
import com.yftech.settings.widget.Switcher;
import com.yftech.settings.widget.dialog.TimeSettingDialog;

/* JADX INFO: loaded from: classes.dex */
public class SystemBasicFragment extends BaseFragment implements CompoundButton.OnCheckedChangeListener, View.OnClickListener {
    private static final int COUNTS = 10;
    private Switcher mSw24Hour;
    private TimeSettingDialog mTimeSettingDialog;
    private TextView mTvTime;
    private int mClickCount = 0;
    private BroadcastReceiver mTimeChangeReceiver = new BroadcastReceiver() { // from class: com.yftech.settings.system.SystemBasicFragment.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            LogUtil.i("SystemBasicFragment", "onReceive() action:" + intent.getAction());
            if ("android.intent.action.TIME_TICK".equals(intent.getAction()) || "android.intent.action.TIME_SET".equals(intent.getAction())) {
                SystemBasicFragment.this.mTvTime.setText(SettingsManager.getInstance().getCurTime(SystemBasicFragment.this.getContext()));
            }
        }
    };

    static /* synthetic */ int access$108(SystemBasicFragment systemBasicFragment) {
        int i = systemBasicFragment.mClickCount;
        systemBasicFragment.mClickCount = i + 1;
        return i;
    }

    private void initView(View view) {
        LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.systemBasicTime);
        TextView textView = (TextView) linearLayout.findViewById(R.id.tvTitle);
        textView.setText(R.string.system_basic_item_time);
        if (Utils.isRightDrive()) {
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.yftech.settings.system.SystemBasicFragment.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    SystemBasicFragment.access$108(SystemBasicFragment.this);
                    if (SystemBasicFragment.this.mClickCount >= 10) {
                        SystemBasicFragment.this.mClickCount = 0;
                        SettingsManager.getInstance().setAction(SettingsManager.Function.CHECK_FACTORY_MODE_STATE_ACTION);
                    }
                }
            });
        }
        this.mTvTime = (TextView) linearLayout.findViewById(R.id.tvContent);
        Button button = (Button) linearLayout.findViewById(R.id.button);
        button.setVisibility(0);
        button.setTag(Integer.valueOf(R.id.systemBasicTime));
        button.setText(R.string.system_basic_setting);
        button.setOnClickListener(this);
        LinearLayout linearLayout2 = (LinearLayout) view.findViewById(R.id.systemBasic24HourSystem);
        ((TextView) linearLayout2.findViewById(R.id.tvTitle)).setText(R.string.system_basic_item_24_hour_system);
        this.mSw24Hour = (Switcher) linearLayout2.findViewById(R.id.switcher);
        this.mSw24Hour.setTag(Integer.valueOf(R.id.systemBasic24HourSystem));
        this.mSw24Hour.setOnCheckedChangeListener(this);
    }

    private void initViewData() {
        this.mTvTime.setText(SettingsManager.getInstance().getCurTime(getContext()));
        this.mSw24Hour.setChecked(SettingsManager.getInstance().get24HourFormatState(getContext()));
    }

    private void registerReceivers() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.TIME_TICK");
        intentFilter.addAction("android.intent.action.TIME_SET");
        getContext().registerReceiver(this.mTimeChangeReceiver, intentFilter);
    }

    private void showTimeSettingDialog() {
        this.mTimeSettingDialog = new TimeSettingDialog(getContext());
        this.mTimeSettingDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.yftech.settings.system.SystemBasicFragment.3
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                SystemBasicFragment.this.mTimeSettingDialog = null;
            }
        });
        this.mTimeSettingDialog.show();
    }

    private void unregisterReceivers() {
        getContext().unregisterReceiver(this.mTimeChangeReceiver);
    }

    @Override // com.yftech.settings.BaseFragment
    protected void dismissAllDialog() {
        super.dismissAllDialog();
        if (this.mTimeSettingDialog == null || !this.mTimeSettingDialog.isShowing()) {
            return;
        }
        this.mTimeSettingDialog.dismiss();
        this.mTimeSettingDialog = null;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        if (compoundButton.isPressed() && ((Integer) compoundButton.getTag()).intValue() == R.id.systemBasic24HourSystem) {
            SettingsManager.getInstance().set24HourFormatState(getContext(), z);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (((Integer) view.getTag()).intValue() == R.id.systemBasicTime) {
            showTimeSettingDialog();
        }
    }

    @Override // android.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_system_basic, viewGroup, false);
        initView(viewInflate);
        return viewInflate;
    }

    @Override // com.yftech.settings.BaseFragment, android.app.Fragment
    public void onPause() {
        super.onPause();
        unregisterReceivers();
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        this.mClickCount = 0;
        initViewData();
        registerReceivers();
    }
}
