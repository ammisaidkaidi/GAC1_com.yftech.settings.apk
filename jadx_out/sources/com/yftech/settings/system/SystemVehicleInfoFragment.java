package com.yftech.settings.system;

import android.content.Intent;
import android.os.Bundle;
import android.provider.Settings;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.yftech.settings.BaseFragment;
import com.yftech.settings.CommonConstant;
import com.yftech.settings.R;
import com.yftech.settings.manager.SettingsManager;
import com.yftech.settings.utils.LogUtil;
import com.yftech.settings.utils.Utils;
import com.yftech.settings.widget.MultiSelectView;
import com.yftech.vehicle.internal.adapter.ICarConfig;
import com.yftech.vehicle.internal.adapter.IHostConfig;
import com.yftech.vehicle.sdk.CarConfig;
import com.yftech.vehicle.sdk.HostConfig;

/* JADX INFO: loaded from: classes.dex */
public class SystemVehicleInfoFragment extends BaseFragment implements MultiSelectView.OnSwitchListener {
    private static final int COUNTS = 10;
    private static final String TAG = "SystemVehicleInfoFragment";
    private static SystemVehicleInfoFragment mInstance;
    private String[] language;
    private int mClickLogCount = 0;
    private MultiSelectView mSmbCurrentLanguage;
    private TextView mTvCurrentLanguage;
    private TextView mTvHardwareVersion;
    private TextView mTvSerialNumber;

    /* JADX INFO: renamed from: com.yftech.settings.system.SystemVehicleInfoFragment$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$yftech$settings$manager$SettingsManager$Function = new int[SettingsManager.Function.values().length];
        static final /* synthetic */ int[] $SwitchMap$com$yftech$vehicle$internal$adapter$IHostConfig$Language;

        static {
            try {
                $SwitchMap$com$yftech$settings$manager$SettingsManager$Function[SettingsManager.Function.LANGUAGE_SETTING_OPTION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            $SwitchMap$com$yftech$vehicle$internal$adapter$IHostConfig$Language = new int[IHostConfig.Language.values().length];
            try {
                $SwitchMap$com$yftech$vehicle$internal$adapter$IHostConfig$Language[IHostConfig.Language.CHINESE.ordinal()] = 1;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$yftech$vehicle$internal$adapter$IHostConfig$Language[IHostConfig.Language.ENGLISH.ordinal()] = 2;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$yftech$vehicle$internal$adapter$IHostConfig$Language[IHostConfig.Language.CHINESE_PLUSENGLISH.ordinal()] = 3;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    static /* synthetic */ int access$008(SystemVehicleInfoFragment systemVehicleInfoFragment) {
        int i = systemVehicleInfoFragment.mClickLogCount;
        systemVehicleInfoFragment.mClickLogCount = i + 1;
        return i;
    }

    private void initView(View view) {
        LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.systemInfoManufacturer);
        LinearLayout linearLayout2 = (LinearLayout) view.findViewById(R.id.systemInfoVehicleModel);
        if (CarConfig.isGACLogoPresent()) {
            ((TextView) linearLayout.findViewById(R.id.tvTitle)).setText(R.string.system_info_item_manufacturer);
            ((TextView) linearLayout.findViewById(R.id.tvContent)).setText("GAC");
            ((TextView) linearLayout2.findViewById(R.id.tvTitle)).setText(R.string.system_info_item_model);
            ((TextView) linearLayout2.findViewById(R.id.tvContent)).setText("A79-G");
        } else {
            linearLayout.setVisibility(8);
            linearLayout2.setVisibility(8);
        }
        LinearLayout linearLayout3 = (LinearLayout) view.findViewById(R.id.systemInfoSerialNumber);
        TextView textView = (TextView) linearLayout3.findViewById(R.id.tvTitle);
        textView.setText(R.string.system_info_item_serial_number);
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.yftech.settings.system.SystemVehicleInfoFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                SystemVehicleInfoFragment.access$008(SystemVehicleInfoFragment.this);
                if (SystemVehicleInfoFragment.this.mClickLogCount >= 10) {
                    LogUtil.i(SystemVehicleInfoFragment.TAG, "setOnClickListener() tvSystemVersion log");
                    SystemVehicleInfoFragment.this.mClickLogCount = 0;
                    Intent intent = new Intent("com.yftech.intent.action.engineeringmode.log");
                    intent.setPackage("com.yftech.engineeringmode");
                    SystemVehicleInfoFragment.this.getContext().sendBroadcast(intent);
                }
            }
        });
        this.mTvSerialNumber = (TextView) linearLayout3.findViewById(R.id.tvContent);
        LinearLayout linearLayout4 = (LinearLayout) view.findViewById(R.id.systemInfoHardwareVersion);
        ((TextView) linearLayout4.findViewById(R.id.tvTitle)).setText(R.string.system_info_item_hardware_version);
        this.mTvHardwareVersion = (TextView) linearLayout4.findViewById(R.id.tvContent);
        LinearLayout linearLayout5 = (LinearLayout) view.findViewById(R.id.systemInfoSystemCurrentLanguage);
        ((TextView) linearLayout5.findViewById(R.id.tvTitle)).setText(R.string.system_info_item_current_language);
        this.mTvCurrentLanguage = (TextView) linearLayout5.findViewById(R.id.tvContent);
        LinearLayout linearLayout6 = (LinearLayout) view.findViewById(R.id.systemInfoSystemCurrentLanguageOption);
        ((TextView) linearLayout6.findViewById(R.id.tvTitle)).setText(R.string.system_info_item_current_language);
        this.mSmbCurrentLanguage = (MultiSelectView) linearLayout6.findViewById(R.id.multiSelectView);
        this.mSmbCurrentLanguage.setTag(Integer.valueOf(R.id.systemInfoSystemCurrentLanguageOption));
        if (Utils.isRightDrive()) {
            this.mSmbCurrentLanguage.setText(getResources().getStringArray(R.array.system_info_language_setting_right));
        } else if (CarConfig.getVehiclePlatform() == ICarConfig.VehiclePlatform.CS112) {
            this.mSmbCurrentLanguage.setText(getResources().getStringArray(R.array.system_info_language_setting_cs112));
        } else {
            this.mSmbCurrentLanguage.setText(getResources().getStringArray(R.array.system_info_language_setting));
        }
        this.mSmbCurrentLanguage.setOnSwitchListener(this);
        if (AnonymousClass2.$SwitchMap$com$yftech$vehicle$internal$adapter$IHostConfig$Language[HostConfig.getLanguage().ordinal()] == 1) {
            linearLayout6.setVisibility(8);
            linearLayout5.setVisibility(8);
        }
        LinearLayout linearLayout7 = (LinearLayout) view.findViewById(R.id.systemInfoSystemSupportLanguage);
        ((TextView) linearLayout7.findViewById(R.id.tvTitle)).setText(R.string.system_info_item_support_language);
        ((TextView) linearLayout7.findViewById(R.id.tvContent)).setText(R.string.system_info_item_support_language_value);
    }

    private void initViewData() {
        if (Utils.isRightDrive()) {
            this.language = getResources().getStringArray(R.array.system_info_language_setting_right);
        } else if (CarConfig.getVehiclePlatform() == ICarConfig.VehiclePlatform.CS112) {
            this.language = getResources().getStringArray(R.array.system_info_language_setting_cs112);
        } else {
            this.language = getResources().getStringArray(R.array.system_info_language_setting);
        }
        this.mTvSerialNumber.setText(SettingsManager.getInstance().getSerialNumber());
        this.mTvHardwareVersion.setText(SettingsManager.getInstance().getHardwareVersion());
        int option = SettingsManager.getInstance().getOption(SettingsManager.Function.LANGUAGE_SETTING_OPTION);
        if (option < 0 || option >= this.language.length) {
            return;
        }
        this.mTvCurrentLanguage.setText(this.language[option]);
        setSwitchMultiButtonView(SettingsManager.Function.LANGUAGE_SETTING_OPTION, option);
    }

    private void setSwitchMultiButtonView(SettingsManager.Function function, int i) {
        MultiSelectView multiSelectView = AnonymousClass2.$SwitchMap$com$yftech$settings$manager$SettingsManager$Function[function.ordinal()] != 1 ? null : this.mSmbCurrentLanguage;
        if (multiSelectView == null || multiSelectView.getTabNum() == i) {
            return;
        }
        multiSelectView.setSelectedTab(i);
    }

    @Override // android.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_system_vehicle_info, viewGroup, false);
        initView(viewInflate);
        return viewInflate;
    }

    @Override // com.yftech.settings.BaseFragment, android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        LogUtil.i(TAG, "onDestroy: ");
    }

    @Override // com.yftech.settings.BaseFragment, android.app.Fragment
    public void onPause() {
        super.onPause();
        LogUtil.i(TAG, "onPause: ");
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        this.mClickLogCount = 0;
        initViewData();
        LogUtil.i(TAG, "onResume: ");
    }

    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
        LogUtil.i(TAG, "onStop: ");
    }

    @Override // com.yftech.settings.widget.MultiSelectView.OnSwitchListener
    public void onSwitch(MultiSelectView multiSelectView, int i, String str, boolean z) {
        if (z) {
            SettingsManager.Function function = SettingsManager.Function.UNKNOWN;
            if (((Integer) multiSelectView.getTag()).intValue() == R.id.systemInfoSystemCurrentLanguageOption) {
                function = SettingsManager.Function.LANGUAGE_SETTING_OPTION;
                Settings.Global.putInt(getContext().getApplicationContext().getContentResolver(), CommonConstant.SETTING_LANGUAGE_CHANGE, 1);
            }
            if (function != SettingsManager.Function.UNKNOWN) {
                SettingsManager.getInstance().setOption(function, i);
            }
        }
    }
}
