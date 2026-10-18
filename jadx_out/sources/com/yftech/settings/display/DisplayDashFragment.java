package com.yftech.settings.display;

import android.annotation.SuppressLint;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.Nullable;
import com.yftech.settings.BaseFragment;
import com.yftech.settings.R;
import com.yftech.settings.manager.BaseManager;
import com.yftech.settings.manager.CarDashboardManager;
import com.yftech.settings.utils.LogUtil;
import com.yftech.settings.widget.MultiSelectView;
import com.yftech.settings.widget.SeekBarNumber;
import com.yftech.settings.widget.dialog.CommonDialog;
import com.yftech.vehicle.sdk.CarLightManager;

/* JADX INFO: loaded from: classes.dex */
public class DisplayDashFragment extends BaseFragment implements SeekBarNumber.OnSeekChangeListener, MultiSelectView.OnSwitchListener, View.OnClickListener {
    private static final String TAG = "DisplayDashFragment";
    private CommonDialog mCommonDialog;
    private SeekBarNumber mDashBrightnessSB;
    private Toast mDashBrightnessToast;
    private boolean mIsTouchSmallLightEnabled;
    private ImageView mIvDashBrightness;
    private MultiSelectView mSmbDashDistanceUnit;
    private MultiSelectView mSmbDashLanguage;
    private MultiSelectView mSmbDashPressureUnit;
    private MultiSelectView mSmbDashTemperatureUnit;
    private MultiSelectView mSmbDashVolume;
    private int mLastDashBrightness = 0;
    private Handler mHandler = new Handler(Looper.getMainLooper());
    private boolean flag = false;
    private BaseManager.ModelCallback<CarDashboardManager.Function> mCarDashboardModelCallback = new BaseManager.ModelCallback<CarDashboardManager.Function>() { // from class: com.yftech.settings.display.DisplayDashFragment.1
        @Override // com.yftech.settings.manager.BaseManager.ModelCallback
        public void onOptionChanged(CarDashboardManager.Function function, int i) {
            super.onOptionChanged(function, i);
            DisplayDashFragment.this.setSwitchMultiButtonView(function, i);
        }

        @Override // com.yftech.settings.manager.BaseManager.ModelCallback
        public void onTimeout() {
            super.onTimeout();
            DisplayDashFragment.this.initViewData();
        }

        @Override // com.yftech.settings.manager.BaseManager.ModelCallback
        public void onValueChanged(CarDashboardManager.Function function, Object obj) {
            super.onValueChanged(function, obj);
            DisplayDashFragment.this.setValueView(function, obj);
            if (function == CarDashboardManager.Function.DASH_BACK_LIGHT_LEVEL_VALUE) {
                Integer num = (Integer) obj;
                if (num.intValue() > 0) {
                    DisplayDashFragment.this.mLastDashBrightness = num.intValue();
                }
            }
        }
    };

    private int getBrightnessIcon(int i) {
        if (i <= 0) {
            return R.mipmap.set_03_icon_common_light_light_off;
        }
        if (i > 2 || i <= 0) {
            return (i > 5 || i <= 2) ? R.mipmap.set_03_icon_common_light_light_on_03 : R.mipmap.set_03_icon_common_light_light_on_02;
        }
        return R.mipmap.set_03_icon_common_light_light_on_01;
    }

    @SuppressLint({"ClickableViewAccessibility"})
    private void initView(View view) {
        LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.dashBrightness);
        linearLayout.setVisibility(CarDashboardManager.getInstance().getFunctionPresent(CarDashboardManager.Function.DASH_BACK_LIGHT_LEVEL_VALUE) ? 0 : 8);
        if (linearLayout.getVisibility() == 0) {
            ((TextView) linearLayout.findViewById(R.id.tvTitle)).setText(R.string.dash_item_brightness);
            ((TextView) linearLayout.findViewById(R.id.tvDescribe)).setText(R.string.dash_item_brightness_describe);
            linearLayout.findViewById(R.id.ivIcon).setVisibility(0);
            this.mIvDashBrightness = (ImageView) linearLayout.findViewById(R.id.ivIcon);
            this.mIvDashBrightness.setImageResource(R.mipmap.set_03_icon_common_light_light_off);
            this.mIvDashBrightness.setTag(Integer.valueOf(R.id.dashBrightness));
            this.mIvDashBrightness.setOnClickListener(this);
            this.mDashBrightnessSB = (SeekBarNumber) linearLayout.findViewById(R.id.seekBarNumber);
            this.mDashBrightnessSB.setTag(Integer.valueOf(R.id.dashBrightness));
            this.mDashBrightnessSB.setMin(0);
            this.mDashBrightnessSB.setMax(7);
            this.mDashBrightnessSB.setOnSeekChangeListener(this);
            this.mDashBrightnessSB.setOnTouchListener(new View.OnTouchListener() { // from class: com.yftech.settings.display.DisplayDashFragment.2
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view2, MotionEvent motionEvent) {
                    if (motionEvent.getAction() != 0) {
                        if (DisplayDashFragment.this.mIsTouchSmallLightEnabled || motionEvent.getAction() != 2) {
                            return !DisplayDashFragment.this.mIsTouchSmallLightEnabled && motionEvent.getAction() == 1;
                        }
                        return true;
                    }
                    DisplayDashFragment.this.mIsTouchSmallLightEnabled = CarLightManager.get().isSmallLightEnabled();
                    LogUtil.i(DisplayDashFragment.TAG, "onTouch() ACTION_DOWN isSmallLightEnabled:" + DisplayDashFragment.this.mIsTouchSmallLightEnabled);
                    if (DisplayDashFragment.this.mIsTouchSmallLightEnabled) {
                        return false;
                    }
                    DisplayDashFragment.this.showDashBrightnessToast();
                    return true;
                }
            });
        }
        LinearLayout linearLayout2 = (LinearLayout) view.findViewById(R.id.dashLanguageSetting);
        linearLayout2.setVisibility(CarDashboardManager.getInstance().getFunctionPresent(CarDashboardManager.Function.DASH_LANGUAGE_OPTION) ? 0 : 8);
        if (linearLayout2.getVisibility() == 0) {
            ((TextView) linearLayout2.findViewById(R.id.tvTitle)).setText(R.string.dash_item_language_setting);
            this.mSmbDashLanguage = (MultiSelectView) linearLayout2.findViewById(R.id.multiSelectView);
            this.mSmbDashLanguage.setTag(Integer.valueOf(R.id.dashLanguageSetting));
            this.mSmbDashLanguage.setText(getResources().getStringArray(R.array.dash_language_setting));
            this.mSmbDashLanguage.setOnSwitchListener(this);
        }
        LinearLayout linearLayout3 = (LinearLayout) view.findViewById(R.id.dashVolume);
        linearLayout3.setVisibility(CarDashboardManager.getInstance().getFunctionPresent(CarDashboardManager.Function.DASH_VOLUME_OPTION) ? 0 : 8);
        if (linearLayout3.getVisibility() == 0) {
            ((TextView) linearLayout3.findViewById(R.id.tvTitle)).setText(R.string.dash_item_volume);
            this.mSmbDashVolume = (MultiSelectView) linearLayout3.findViewById(R.id.multiSelectView);
            this.mSmbDashVolume.setTag(Integer.valueOf(R.id.dashVolume));
            this.mSmbDashVolume.setText(getResources().getStringArray(R.array.dash_volume));
            this.mSmbDashVolume.setOnSwitchListener(this);
        }
        LinearLayout linearLayout4 = (LinearLayout) view.findViewById(R.id.dashCumulativeTravel);
        linearLayout4.setVisibility(CarDashboardManager.getInstance().getFunctionPresent(CarDashboardManager.Function.DASH_RESET_CUMULATIVE_TRAVEL_ACTION) ? 0 : 8);
        if (linearLayout4.getVisibility() == 0) {
            ((TextView) linearLayout4.findViewById(R.id.tvTitle)).setText(R.string.dash_item_cumulative_travel);
            Button button = (Button) linearLayout4.findViewById(R.id.button);
            button.setTag(Integer.valueOf(R.id.dashCumulativeTravel));
            button.setText(R.string.dash_cumulative_travel_reset);
            button.setOnClickListener(this);
        }
        LinearLayout linearLayout5 = (LinearLayout) view.findViewById(R.id.dashDistanceUnit);
        linearLayout5.setVisibility(CarDashboardManager.getInstance().getFunctionPresent(CarDashboardManager.Function.DASH_FUEL_ECONOMY_AND_DISTANCE_UNIT_OPTION) ? 0 : 8);
        if (linearLayout5.getVisibility() == 0) {
            ((TextView) linearLayout5.findViewById(R.id.tvTitle)).setText(R.string.dash_item_distance_unit);
            this.mSmbDashDistanceUnit = (MultiSelectView) linearLayout5.findViewById(R.id.multiSelectView);
            this.mSmbDashDistanceUnit.setTag(Integer.valueOf(R.id.dashDistanceUnit));
            this.mSmbDashDistanceUnit.setText(getResources().getStringArray(R.array.dash_distance_unit));
            this.mSmbDashDistanceUnit.setOnSwitchListener(this);
        }
        LinearLayout linearLayout6 = (LinearLayout) view.findViewById(R.id.dashTemperatureUnit);
        linearLayout6.setVisibility(CarDashboardManager.getInstance().getFunctionPresent(CarDashboardManager.Function.DASH_TEMPERATURE_UNIT_OPTION) ? 0 : 8);
        if (linearLayout6.getVisibility() == 0) {
            ((TextView) linearLayout6.findViewById(R.id.tvTitle)).setText(R.string.dash_item_temperature_unit);
            this.mSmbDashTemperatureUnit = (MultiSelectView) linearLayout6.findViewById(R.id.multiSelectView);
            this.mSmbDashTemperatureUnit.setTag(Integer.valueOf(R.id.dashTemperatureUnit));
            this.mSmbDashTemperatureUnit.setText(getResources().getStringArray(R.array.dash_temperature_unit));
            this.mSmbDashTemperatureUnit.setOnSwitchListener(this);
        }
        LinearLayout linearLayout7 = (LinearLayout) view.findViewById(R.id.dashPressureUnit);
        linearLayout7.setVisibility(CarDashboardManager.getInstance().getFunctionPresent(CarDashboardManager.Function.DASH_PRESSURE_UNIT_OPTION) ? 0 : 8);
        if (linearLayout7.getVisibility() == 0) {
            ((TextView) linearLayout7.findViewById(R.id.tvTitle)).setText(R.string.dash_item_pressure_unit);
            this.mSmbDashPressureUnit = (MultiSelectView) linearLayout7.findViewById(R.id.multiSelectView);
            this.mSmbDashPressureUnit.setTag(Integer.valueOf(R.id.dashPressureUnit));
            this.mSmbDashPressureUnit.setText(getResources().getStringArray(R.array.dash_pressure_unit));
            this.mSmbDashPressureUnit.setOnSwitchListener(this);
        }
        LinearLayout linearLayout8 = (LinearLayout) view.findViewById(R.id.dashDefaultSetting);
        linearLayout8.setVisibility(CarDashboardManager.getInstance().getFunctionPresent(CarDashboardManager.Function.DASH_RESTORE_FACTORY_SETTINGS_ACTION) ? 0 : 8);
        if (linearLayout8.getVisibility() == 0) {
            ((TextView) linearLayout8.findViewById(R.id.tvTitle)).setText(R.string.dash_item_default_setting);
            Button button2 = (Button) linearLayout8.findViewById(R.id.button);
            button2.setTag(Integer.valueOf(R.id.dashDefaultSetting));
            button2.setText(R.string.dash_recovery);
            button2.setOnClickListener(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initViewData() {
        if (CarDashboardManager.getInstance().getFunctionPresent(CarDashboardManager.Function.DASH_BACK_LIGHT_LEVEL_VALUE)) {
            setValueView(CarDashboardManager.Function.DASH_BACK_LIGHT_LEVEL_VALUE, CarDashboardManager.getInstance().getValue(CarDashboardManager.Function.DASH_BACK_LIGHT_LEVEL_VALUE));
        }
        if (CarDashboardManager.getInstance().getFunctionPresent(CarDashboardManager.Function.DASH_LANGUAGE_OPTION)) {
            setSwitchMultiButtonView(CarDashboardManager.Function.DASH_LANGUAGE_OPTION, CarDashboardManager.getInstance().getOption(CarDashboardManager.Function.DASH_LANGUAGE_OPTION));
        }
        if (CarDashboardManager.getInstance().getFunctionPresent(CarDashboardManager.Function.DASH_VOLUME_OPTION)) {
            setSwitchMultiButtonView(CarDashboardManager.Function.DASH_VOLUME_OPTION, CarDashboardManager.getInstance().getOption(CarDashboardManager.Function.DASH_VOLUME_OPTION));
        }
        if (CarDashboardManager.getInstance().getFunctionPresent(CarDashboardManager.Function.DASH_FUEL_ECONOMY_AND_DISTANCE_UNIT_OPTION)) {
            setSwitchMultiButtonView(CarDashboardManager.Function.DASH_FUEL_ECONOMY_AND_DISTANCE_UNIT_OPTION, CarDashboardManager.getInstance().getOption(CarDashboardManager.Function.DASH_DISTANCE_UNIT_OPTION));
        }
        if (CarDashboardManager.getInstance().getFunctionPresent(CarDashboardManager.Function.DASH_TEMPERATURE_UNIT_OPTION)) {
            setSwitchMultiButtonView(CarDashboardManager.Function.DASH_TEMPERATURE_UNIT_OPTION, CarDashboardManager.getInstance().getOption(CarDashboardManager.Function.DASH_TEMPERATURE_UNIT_OPTION));
        }
        if (CarDashboardManager.getInstance().getFunctionPresent(CarDashboardManager.Function.DASH_PRESSURE_UNIT_OPTION)) {
            setSwitchMultiButtonView(CarDashboardManager.Function.DASH_PRESSURE_UNIT_OPTION, CarDashboardManager.getInstance().getOption(CarDashboardManager.Function.DASH_PRESSURE_UNIT_OPTION));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSwitchMultiButtonView(CarDashboardManager.Function function, int i) {
        MultiSelectView multiSelectView;
        switch (function) {
            case DASH_LANGUAGE_OPTION:
                multiSelectView = this.mSmbDashLanguage;
                break;
            case DASH_VOLUME_OPTION:
                multiSelectView = this.mSmbDashVolume;
                break;
            case DASH_FUEL_ECONOMY_AND_DISTANCE_UNIT_OPTION:
                multiSelectView = this.mSmbDashDistanceUnit;
                break;
            case DASH_TEMPERATURE_UNIT_OPTION:
                multiSelectView = this.mSmbDashTemperatureUnit;
                break;
            case DASH_PRESSURE_UNIT_OPTION:
                multiSelectView = this.mSmbDashPressureUnit;
                break;
            default:
                multiSelectView = null;
                break;
        }
        if (multiSelectView == null || multiSelectView.getTabNum() == i) {
            return;
        }
        multiSelectView.setSelectedTab(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValueView(CarDashboardManager.Function function, Object obj) {
        if (AnonymousClass6.$SwitchMap$com$yftech$settings$manager$CarDashboardManager$Function[function.ordinal()] == 6 && !this.flag) {
            if (this.mDashBrightnessSB != null) {
                Integer num = (Integer) obj;
                if (num.intValue() != this.mDashBrightnessSB.getProgress()) {
                    this.mDashBrightnessSB.setProgress(num.intValue());
                }
            }
            this.mIvDashBrightness.setImageResource(getBrightnessIcon(((Integer) obj).intValue()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showDashBrightnessToast() {
        if (this.mDashBrightnessToast != null) {
            this.mDashBrightnessToast.cancel();
            this.mDashBrightnessToast = null;
        }
        this.mDashBrightnessToast = Toast.makeText(getContext().getApplicationContext().getApplicationContext(), getContext().getApplicationContext().getApplicationContext().getString(R.string.dash_item_brightness_describe), 1);
        this.mDashBrightnessToast.show();
    }

    private void showDashDefaultSettingDialog() {
        this.mCommonDialog = new CommonDialog(getContext().getApplicationContext());
        this.mCommonDialog.show();
        this.mCommonDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.yftech.settings.display.DisplayDashFragment.4
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                DisplayDashFragment.this.mCommonDialog = null;
            }
        });
        this.mCommonDialog.setContent(getString(R.string.dash_dialog_default_setting_content));
        this.mCommonDialog.setButtonText(getString(R.string.dash_dialog_default_setting_btn_sure), getString(R.string.dash_dialog_default_setting_btn_cancel));
        this.mCommonDialog.setOnBtnClickListener(new CommonDialog.OnBtnClickListener() { // from class: com.yftech.settings.display.DisplayDashFragment.5
            @Override // com.yftech.settings.widget.dialog.CommonDialog.OnBtnClickListener
            public void onCancelClick() {
            }

            @Override // com.yftech.settings.widget.dialog.CommonDialog.OnBtnClickListener
            public void onIconClick() {
            }

            @Override // com.yftech.settings.widget.dialog.CommonDialog.OnBtnClickListener
            public void onSureClick() {
                CarDashboardManager.getInstance().setAction(CarDashboardManager.Function.DASH_RESTORE_FACTORY_SETTINGS_ACTION);
            }
        });
    }

    @Override // com.yftech.settings.BaseFragment
    protected void dismissAllDialog() {
        super.dismissAllDialog();
        if (this.mCommonDialog == null || !this.mCommonDialog.isShowing()) {
            return;
        }
        this.mCommonDialog.dismiss();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int iIntValue = ((Integer) view.getTag()).intValue();
        if (iIntValue != R.id.dashBrightness) {
            if (iIntValue != R.id.dashDefaultSetting) {
                return;
            }
            showDashDefaultSettingDialog();
            return;
        }
        boolean zIsSmallLightEnabled = CarLightManager.get().isSmallLightEnabled();
        LogUtil.i(TAG, "onClick() dashBrightness isSmallLightEnabled:" + zIsSmallLightEnabled);
        if (!zIsSmallLightEnabled) {
            showDashBrightnessToast();
            return;
        }
        int progress = this.mDashBrightnessSB.getProgress();
        if (progress <= 0) {
            this.mDashBrightnessSB.setProgress(this.mLastDashBrightness);
            this.mIvDashBrightness.setImageResource(getBrightnessIcon(this.mLastDashBrightness));
            CarDashboardManager.getInstance().setValue(CarDashboardManager.Function.DASH_BACK_LIGHT_LEVEL_VALUE, (Object) Integer.valueOf(this.mLastDashBrightness));
        } else {
            this.mLastDashBrightness = progress;
            this.mDashBrightnessSB.setProgress(0);
            this.mIvDashBrightness.setImageResource(getBrightnessIcon(0));
            CarDashboardManager.getInstance().setValue(CarDashboardManager.Function.DASH_BACK_LIGHT_LEVEL_VALUE, (Object) 0);
        }
    }

    @Override // android.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_display_dash, viewGroup, false);
        initView(viewInflate);
        return viewInflate;
    }

    @Override // com.yftech.settings.BaseFragment, android.app.Fragment
    public void onPause() {
        super.onPause();
        CarDashboardManager.getInstance().unregisterModelCallback(this.mCarDashboardModelCallback);
        CarDashboardManager.getInstance().setAction(CarDashboardManager.Function.STOP_TIMEOUT_ACTION);
        this.flag = false;
        this.mHandler.removeCallbacksAndMessages(null);
    }

    @Override // com.yftech.settings.widget.SeekBarNumber.OnSeekChangeListener
    public void onProgressChanged(SeekBarNumber seekBarNumber, int i) {
        if (((Integer) seekBarNumber.getTag()).intValue() != R.id.dashBrightness) {
            return;
        }
        CarDashboardManager.getInstance().setValue(CarDashboardManager.Function.DASH_BACK_LIGHT_LEVEL_VALUE, (Object) Integer.valueOf(i));
        this.mIvDashBrightness.setImageResource(getBrightnessIcon(i));
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        initViewData();
        CarDashboardManager.getInstance().registerModelCallback(this.mCarDashboardModelCallback);
    }

    @Override // com.yftech.settings.widget.SeekBarNumber.OnSeekChangeListener
    public void onStartTrackingTouch(SeekBarNumber seekBarNumber) {
    }

    @Override // com.yftech.settings.widget.SeekBarNumber.OnSeekChangeListener
    public void onStopTrackingTouch(SeekBarNumber seekBarNumber) {
        if (((Integer) seekBarNumber.getTag()).intValue() != R.id.dashBrightness) {
            return;
        }
        this.flag = true;
        this.mHandler.postDelayed(new Runnable() { // from class: com.yftech.settings.display.DisplayDashFragment.3
            @Override // java.lang.Runnable
            public void run() {
                DisplayDashFragment.this.flag = false;
            }
        }, 500L);
    }

    @Override // com.yftech.settings.widget.MultiSelectView.OnSwitchListener
    public void onSwitch(MultiSelectView multiSelectView, int i, String str, boolean z) {
        if (z) {
            CarDashboardManager.Function function = CarDashboardManager.Function.UNKNOWN;
            switch (((Integer) multiSelectView.getTag()).intValue()) {
                case R.id.dashDistanceUnit /* 2131230881 */:
                    function = CarDashboardManager.Function.DASH_FUEL_ECONOMY_AND_DISTANCE_UNIT_OPTION;
                    break;
                case R.id.dashLanguageSetting /* 2131230882 */:
                    function = CarDashboardManager.Function.DASH_LANGUAGE_OPTION;
                    break;
                case R.id.dashPressureUnit /* 2131230883 */:
                    function = CarDashboardManager.Function.DASH_PRESSURE_UNIT_OPTION;
                    break;
                case R.id.dashTemperatureUnit /* 2131230884 */:
                    function = CarDashboardManager.Function.DASH_TEMPERATURE_UNIT_OPTION;
                    break;
                case R.id.dashVolume /* 2131230885 */:
                    function = CarDashboardManager.Function.DASH_VOLUME_OPTION;
                    break;
            }
            if (function != CarDashboardManager.Function.UNKNOWN) {
                CarDashboardManager.getInstance().setOption(function, i);
            }
        }
    }
}
