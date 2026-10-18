package com.yftech.settings.avdc;

import android.annotation.SuppressLint;
import android.content.DialogInterface;
import android.graphics.drawable.AnimationDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.Nullable;
import com.yftech.settings.BaseFragment;
import com.yftech.settings.R;
import com.yftech.settings.manager.BaseManager;
import com.yftech.settings.manager.CarDriveModeManager;
import com.yftech.settings.manager.CarPartsManager;
import com.yftech.settings.utils.LogUtil;
import com.yftech.settings.utils.Utils;
import com.yftech.settings.widget.SeekBarNumber;
import com.yftech.settings.widget.SwitchMultiButton;
import com.yftech.settings.widget.Switcher;
import com.yftech.settings.widget.dialog.CommonDialog;
import com.yftech.vehicle.internal.adapter.ICarDrive;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class ModeSettingsFragment extends BaseFragment implements View.OnClickListener, SwitchMultiButton.OnSwitchListener, SeekBarNumber.OnSeekChangeListener, CompoundButton.OnCheckedChangeListener {
    private static final int THROTTLE_SENSITIVITY_PROGRESS_MAX = 8;
    private static ModeSettingsFragment mInstance;
    private String[] AC_COMFORT_CURVE_VALUE;
    private String[] DRIVE_SYSTEM_MODE;
    private String[] ESP_STYLE;
    private String[] SOUND_WAVES;
    private String[] STEERING_HAND;
    private AnimationDrawable animationDrawable;
    private RelativeLayout drivingModeSettingBg;
    private ImageView ivBg;
    private ImageView ivWindLoop;
    private View layoutAcComfortCurve;
    private RelativeLayout layoutAcComfortCurveSportPlus;
    private View layoutEspStyle;
    private RelativeLayout layoutEspStyleSportPlus;
    private View layoutModeReset;
    private View layoutSoundWaves;
    private RelativeLayout layoutSoundWavesSportPlus;
    private View layoutSteeringHand;
    private RelativeLayout layoutSteeringHandSportPlus;
    private CommonDialog mCommonDialog;
    private SwitchMultiButton smbAcComfortCurve;
    private SwitchMultiButton smbEspStyle;
    private SwitchMultiButton smbSteeringHand;
    private Switcher swSoundWave;
    private TextView tvAcComfortCurve;
    private TextView tvEspStyle;
    private TextView tvSoundWaves;
    private TextView tvSteeringHand;
    private TextView valueCurrentDrivingMode;
    private TextView valuePowerSystemValue;
    private int[] IMG_DIRECTION_STEER_HAND = {R.mipmap.avdc_driving_mode_setting_car_direction_eco, R.mipmap.avdc_driving_mode_setting_car_direction_comfort, R.mipmap.avdc_driving_mode_setting_car_direction_sport};
    private int[] IMG_DIRECTION_STEER_HAND_NO_GAC = {R.mipmap.avdc_driving_mode_setting_car_direction_eco_no_gac, R.mipmap.avdc_driving_mode_setting_car_direction_comfort_no_gac, R.mipmap.avdc_driving_mode_setting_car_direction_sport_no_gac};
    private int[] IMG_DIRECTION_STEER_HAND_RIGHT = {R.mipmap.avdc_driving_mode_setting_car_direction_eco_right, R.mipmap.avdc_driving_mode_setting_car_direction_comfort_right, R.mipmap.avdc_driving_mode_setting_car_direction_sport_right};
    private int[] AC_COMFORT_CURVE = {R.drawable.avdc_wind_loop_6000, R.drawable.avdc_wind_loop_3000, R.drawable.avdc_wind_loop_1500};
    private long[] AC_COMFORT_CURVE_PLAY_TIME = {6000, 3000, 1500};
    private BaseManager.ModelCallback<CarDriveModeManager.Function> mCarDriveModeModelCallback = new BaseManager.ModelCallback<CarDriveModeManager.Function>() { // from class: com.yftech.settings.avdc.ModeSettingsFragment.1
        @Override // com.yftech.settings.manager.BaseManager.ModelCallback
        public void onEnableChanged(CarDriveModeManager.Function function, boolean z) {
            super.onEnableChanged(function, z);
            ModeSettingsFragment.this.setSwitcherView(function, z);
        }

        @Override // com.yftech.settings.manager.BaseManager.ModelCallback
        public void onOptionChanged(CarDriveModeManager.Function function, int i) {
            super.onOptionChanged(function, i);
            ModeSettingsFragment.this.setSwitchMultiButtonView(function, i);
            ModeSettingsFragment.this.setOptionText(function, i);
        }

        @Override // com.yftech.settings.manager.BaseManager.ModelCallback
        public void onTimeout() {
            super.onTimeout();
            ModeSettingsFragment.this.initCarDriveModeViewData();
        }

        @Override // com.yftech.settings.manager.BaseManager.ModelCallback
        public void onValueChanged(CarDriveModeManager.Function function, Object obj) {
            super.onValueChanged(function, obj);
            ModeSettingsFragment.this.setValueView(function, obj);
            ModeSettingsFragment.this.updateSportPlusView(obj == ICarDrive.DriveMode.SPORT_PLUS_MODE);
            ModeSettingsFragment.this.setSoundWaveView(function, obj != ICarDrive.DriveMode.ECO_PRO_MODE);
        }
    };
    private BaseManager.ModelCallback<CarPartsManager.Function> mCarPartsModelCallback = new BaseManager.ModelCallback<CarPartsManager.Function>() { // from class: com.yftech.settings.avdc.ModeSettingsFragment.2
        @Override // com.yftech.settings.manager.BaseManager.ModelCallback
        public void onOptionChanged(CarPartsManager.Function function, int i) {
            super.onOptionChanged(function, i);
            ModeSettingsFragment.this.setSwitchMultiButtonView(function, i);
            ModeSettingsFragment.this.updateAcComfortCurveSportPlus(function, i);
        }

        @Override // com.yftech.settings.manager.BaseManager.ModelCallback
        public void onTimeout() {
            super.onTimeout();
            ModeSettingsFragment.this.initCarPartsViewData();
            ModeSettingsFragment.this.resetIvBgHandler.post(ModeSettingsFragment.this.setImageViewRunnable);
        }
    };
    private Handler resetIvBgHandler = new Handler();
    private Runnable setImageViewRunnable = new Runnable() { // from class: com.yftech.settings.avdc.ModeSettingsFragment.3
        @Override // java.lang.Runnable
        public void run() {
            ModeSettingsFragment.this.updateCarBgNor();
            ModeSettingsFragment.this.stopAcComfortCurveView();
        }
    };

    /* JADX INFO: renamed from: com.yftech.settings.avdc.ModeSettingsFragment$6, reason: invalid class name */
    static /* synthetic */ class AnonymousClass6 {
        static final /* synthetic */ int[] $SwitchMap$com$yftech$settings$manager$CarPartsManager$Function;

        static {
            try {
                $SwitchMap$com$yftech$vehicle$internal$adapter$ICarDrive$DriveMode[ICarDrive.DriveMode.ECO_PRO_MODE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$yftech$vehicle$internal$adapter$ICarDrive$DriveMode[ICarDrive.DriveMode.COMFORT_MODE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$yftech$vehicle$internal$adapter$ICarDrive$DriveMode[ICarDrive.DriveMode.SPORT_MODE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $SwitchMap$com$yftech$settings$manager$CarPartsManager$Function = new int[CarPartsManager.Function.values().length];
            try {
                $SwitchMap$com$yftech$settings$manager$CarPartsManager$Function[CarPartsManager.Function.AC_COMFORT_CURVE_MODE_OPTION.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            $SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function = new int[CarDriveModeManager.Function.values().length];
            try {
                $SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function[CarDriveModeManager.Function.DRIVE_SYSTEM_MODE_OPTION.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function[CarDriveModeManager.Function.ESP_STYLE_OPTION.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function[CarDriveModeManager.Function.EPS_STYLE_OPTION.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function[CarDriveModeManager.Function.THROTTLE_SENSITIVITY_VALUE.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function[CarDriveModeManager.Function.DRIVE_MODE_VALUE.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function[CarDriveModeManager.Function.EMS_ENGINE_WAVE_ENABLE.ordinal()] = 6;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function[CarDriveModeManager.Function.EPS_STYLE_ENABLE_STATE.ordinal()] = 7;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    public static ModeSettingsFragment getInstance() {
        if (mInstance == null) {
            mInstance = new ModeSettingsFragment();
        }
        return mInstance;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initCarDriveModeViewData() {
        this.DRIVE_SYSTEM_MODE = getResources().getStringArray(R.array.avdc_drive_system_mode);
        this.STEERING_HAND = getResources().getStringArray(R.array.avdc_steering_steering_hand_a79);
        this.ESP_STYLE = getResources().getStringArray(R.array.avdc_ESP_style_a79);
        this.SOUND_WAVES = getResources().getStringArray(R.array.avdc_sound_waves);
        this.AC_COMFORT_CURVE_VALUE = getResources().getStringArray(R.array.avdc_ac_comfort_curve_a79);
        if (CarDriveModeManager.getInstance().getFunctionPresent(CarDriveModeManager.Function.DRIVE_MODE_VALUE)) {
            setValueView(CarDriveModeManager.Function.DRIVE_MODE_VALUE, CarDriveModeManager.getInstance().getValue(CarDriveModeManager.Function.DRIVE_MODE_VALUE));
        }
        setOptionText(CarDriveModeManager.Function.DRIVE_SYSTEM_MODE_OPTION, CarDriveModeManager.getInstance().getOption(CarDriveModeManager.Function.DRIVE_SYSTEM_MODE_OPTION));
        this.tvSteeringHand.setText(this.STEERING_HAND[CarDriveModeManager.getInstance().getOption(CarDriveModeManager.Function.EPS_STYLE_OPTION)]);
        this.tvEspStyle.setText(this.ESP_STYLE[CarDriveModeManager.getInstance().getOption(CarDriveModeManager.Function.ESP_STYLE_OPTION)]);
        this.tvSoundWaves.setText(CarDriveModeManager.getInstance().getEnabled(CarDriveModeManager.Function.EMS_ENGINE_WAVE_ENABLE) ? this.SOUND_WAVES[1] : this.SOUND_WAVES[0]);
        if (CarDriveModeManager.getInstance().getFunctionPresent(CarDriveModeManager.Function.EPS_STYLE_OPTION)) {
            setSwitchMultiButtonView(CarDriveModeManager.Function.EPS_STYLE_OPTION, CarDriveModeManager.getInstance().getOption(CarDriveModeManager.Function.EPS_STYLE_OPTION));
        }
        if (CarDriveModeManager.getInstance().getFunctionPresent(CarDriveModeManager.Function.EMS_ENGINE_WAVE_ENABLE)) {
            setSwitchMultiButtonView(CarDriveModeManager.Function.EMS_ENGINE_WAVE_ENABLE, CarDriveModeManager.getInstance().getOption(CarDriveModeManager.Function.EMS_ENGINE_WAVE_ENABLE));
        }
        if (CarDriveModeManager.getInstance().getFunctionPresent(CarDriveModeManager.Function.ESP_STYLE_OPTION)) {
            this.tvEspStyle.setText(this.ESP_STYLE[CarDriveModeManager.getInstance().getOption(CarDriveModeManager.Function.ESP_STYLE_OPTION)]);
        }
        if (CarDriveModeManager.getInstance().getFunctionPresent(CarDriveModeManager.Function.EMS_ENGINE_WAVE_ENABLE)) {
            setSoundWaveView(CarDriveModeManager.Function.EMS_ENGINE_WAVE_ENABLE, CarDriveModeManager.getInstance().getValue(CarDriveModeManager.Function.DRIVE_MODE_VALUE) != ICarDrive.DriveMode.ECO_PRO_MODE);
            setSwitcherView(CarDriveModeManager.Function.EMS_ENGINE_WAVE_ENABLE, CarDriveModeManager.getInstance().getEnabled(CarDriveModeManager.Function.EMS_ENGINE_WAVE_ENABLE));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initCarPartsViewData() {
        if (CarDriveModeManager.getInstance().getValue(CarDriveModeManager.Function.DRIVE_MODE_VALUE) == ICarDrive.DriveMode.SPORT_PLUS_MODE) {
            this.tvAcComfortCurve.setText(this.AC_COMFORT_CURVE_VALUE[CarPartsManager.getInstance().getOption(CarPartsManager.Function.AC_COMFORT_CURVE_MODE_OPTION)]);
        } else if (CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.AC_COMFORT_CURVE_MODE_OPTION)) {
            setSwitchMultiButtonView(CarPartsManager.Function.AC_COMFORT_CURVE_MODE_OPTION, CarPartsManager.getInstance().getOption(CarPartsManager.Function.AC_COMFORT_CURVE_MODE_OPTION));
        }
    }

    private void initSportPlusView(View view) {
        this.tvSteeringHand = (TextView) view.findViewById(R.id.avdc_steering_hand_sport_plus);
        this.tvSoundWaves = (TextView) view.findViewById(R.id.avdc_sound_waves_sport_plus);
        this.tvEspStyle = (TextView) view.findViewById(R.id.avdc_esp_style);
        this.tvAcComfortCurve = (TextView) view.findViewById(R.id.avdc_ac_comfort_curve_sport_plus);
    }

    private void initView(View view) {
        this.ivBg = (ImageView) view.findViewById(R.id.iv_bg);
        this.ivWindLoop = (ImageView) view.findViewById(R.id.iv_ac_comfort_curve);
        this.drivingModeSettingBg = (RelativeLayout) view.findViewById(R.id.avdc_driving_mode_setting_bg);
        this.valueCurrentDrivingMode = (TextView) view.findViewById(R.id.avdc_current_driving_mode);
        this.valuePowerSystemValue = (TextView) view.findViewById(R.id.avdc_power_system);
        this.layoutSteeringHand = view.findViewById(R.id.layout_steering_hand);
        this.layoutEspStyle = view.findViewById(R.id.layout_esp_style_sport_plus);
        this.layoutSoundWaves = view.findViewById(R.id.layout_sound_waves);
        this.layoutAcComfortCurve = view.findViewById(R.id.layout_ac_comfort_curve);
        this.layoutModeReset = view.findViewById(R.id.layout_mode_reset);
        this.layoutSteeringHandSportPlus = (RelativeLayout) view.findViewById(R.id.layout_steering_wheel_sport_plus);
        this.layoutSoundWavesSportPlus = (RelativeLayout) view.findViewById(R.id.layout_sound_waves_sport_plus);
        this.layoutAcComfortCurveSportPlus = (RelativeLayout) view.findViewById(R.id.layout_ac_comfort_curve_sport_plus);
        this.layoutEspStyleSportPlus = (RelativeLayout) view.findViewById(R.id.layout_esp_style_sport_plus);
        initSportPlusView(view);
        this.layoutSteeringHand.setVisibility(CarDriveModeManager.getInstance().getFunctionPresent(CarDriveModeManager.Function.EPS_STYLE_OPTION) ? 0 : 8);
        this.smbSteeringHand = (SwitchMultiButton) view.findViewById(R.id.smb_steering_hand);
        this.smbSteeringHand.setText(getResources().getStringArray(R.array.avdc_steering_steering_hand_a79));
        this.smbSteeringHand.setOnSwitchListener(this);
        this.smbSteeringHand.setOnTouchListener(this);
        this.smbSteeringHand.setEnabled(CarDriveModeManager.getInstance().getEnabled(CarDriveModeManager.Function.EPS_STYLE_ENABLE_STATE));
        this.layoutEspStyle.setVisibility(CarDriveModeManager.getInstance().getFunctionPresent(CarDriveModeManager.Function.EPS_STYLE_OPTION) ? 0 : 8);
        this.tvEspStyle = (TextView) view.findViewById(R.id.avdc_esp_style);
        this.layoutSoundWaves.setVisibility(CarDriveModeManager.getInstance().getFunctionPresent(CarDriveModeManager.Function.EMS_ENGINE_WAVE_ENABLE) ? 0 : 8);
        this.swSoundWave = (Switcher) view.findViewById(R.id.sw_sound_waves);
        this.swSoundWave.setOnCheckedChangeListener(this);
        this.swSoundWave.setOnTouchListener(this);
        this.layoutAcComfortCurve.setVisibility(CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.AC_COMFORT_CURVE_MODE_OPTION) ? 0 : 8);
        this.smbAcComfortCurve = (SwitchMultiButton) view.findViewById(R.id.smb_ac_comfort_curve);
        this.smbAcComfortCurve.setText(getResources().getStringArray(R.array.avdc_ac_comfort_curve_a79));
        this.smbAcComfortCurve.setOnSwitchListener(this);
        this.smbAcComfortCurve.setOnTouchListener(this);
        this.layoutModeReset.setVisibility(CarDriveModeManager.getInstance().getFunctionPresent(CarDriveModeManager.Function.RESET_ACTION) ? 0 : 8);
        view.findViewById(R.id.btn_mode_reset).setOnClickListener(this);
        view.findViewById(R.id.btn_mode_reset).setOnTouchListener(this);
        if (CarDriveModeManager.getInstance().getValue(CarDriveModeManager.Function.DRIVE_MODE_VALUE) == ICarDrive.DriveMode.SPORT_PLUS_MODE) {
            this.layoutSteeringHand.setVisibility(8);
            this.layoutSoundWaves.setVisibility(8);
            this.layoutAcComfortCurve.setVisibility(8);
            this.layoutModeReset.setVisibility(8);
            this.layoutSteeringHandSportPlus.setVisibility(CarDriveModeManager.getInstance().getFunctionPresent(CarDriveModeManager.Function.EPS_STYLE_OPTION) ? 0 : 8);
            this.layoutEspStyleSportPlus.setVisibility(CarDriveModeManager.getInstance().getFunctionPresent(CarDriveModeManager.Function.ESP_STYLE_OPTION) ? 0 : 8);
            this.layoutSoundWavesSportPlus.setVisibility(CarDriveModeManager.getInstance().getFunctionPresent(CarDriveModeManager.Function.EMS_ENGINE_WAVE_ENABLE) ? 0 : 8);
            this.layoutAcComfortCurveSportPlus.setVisibility(CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.AC_COMFORT_CURVE_MODE_OPTION) ? 0 : 8);
        }
    }

    private void initViewData() {
        updateCarBgNor();
        initCarDriveModeViewData();
        initCarPartsViewData();
    }

    private void playAcComfortCurveView(int i) {
        if (Utils.isGACLogoPresent()) {
            this.ivBg.setImageResource(R.mipmap.avdc_driving_mode_setting_car_air);
        } else {
            this.ivBg.setImageResource(R.mipmap.avdc_driving_mode_setting_car_air_no_gac);
        }
        this.ivWindLoop.setImageResource(this.AC_COMFORT_CURVE[i]);
        this.ivWindLoop.setVisibility(0);
        this.animationDrawable = (AnimationDrawable) this.ivWindLoop.getDrawable();
        if (this.animationDrawable.isRunning()) {
            this.animationDrawable.stop();
        }
        this.animationDrawable.start();
        this.resetIvBgHandler.postDelayed(this.setImageViewRunnable, this.AC_COMFORT_CURVE_PLAY_TIME[i]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetUpdateView(ICarDrive.DriveMode driveMode) {
        int i;
        int i2 = 1;
        boolean z = false;
        switch (driveMode) {
            case ECO_PRO_MODE:
                i = 1;
                i2 = 0;
                break;
            case COMFORT_MODE:
                i = 0;
                break;
            case SPORT_MODE:
                i = 2;
                z = true;
                break;
            default:
                i = -1;
                i2 = -1;
                break;
        }
        if (i != -1 && CarDriveModeManager.getInstance().getFunctionPresent(CarDriveModeManager.Function.EPS_STYLE_OPTION)) {
            setSwitchMultiButtonView(CarDriveModeManager.Function.EPS_STYLE_OPTION, i);
        }
        if (CarDriveModeManager.getInstance().getFunctionPresent(CarDriveModeManager.Function.EMS_ENGINE_WAVE_ENABLE)) {
            setSwitcherView(CarDriveModeManager.Function.EMS_ENGINE_WAVE_ENABLE, z);
        }
        if (i2 == -1 || !CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.AC_COMFORT_CURVE_MODE_OPTION)) {
            return;
        }
        setSwitchMultiButtonView(CarPartsManager.Function.AC_COMFORT_CURVE_MODE_OPTION, i2);
    }

    private void setImageView(CarDriveModeManager.Function function, int i) {
        if (AnonymousClass6.$SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function[function.ordinal()] != 3) {
            return;
        }
        if (!Utils.isGACLogoPresent()) {
            this.ivBg.setImageResource(this.IMG_DIRECTION_STEER_HAND_NO_GAC[i]);
        } else if (Utils.isRightDrive()) {
            this.ivBg.setImageResource(this.IMG_DIRECTION_STEER_HAND_RIGHT[i]);
        } else {
            this.ivBg.setImageResource(this.IMG_DIRECTION_STEER_HAND[i]);
        }
        this.resetIvBgHandler.postDelayed(this.setImageViewRunnable, 2000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setOptionText(CarDriveModeManager.Function function, int i) {
        switch (function) {
            case DRIVE_SYSTEM_MODE_OPTION:
                this.valuePowerSystemValue.setText(this.DRIVE_SYSTEM_MODE[i]);
                break;
            case ESP_STYLE_OPTION:
                this.tvEspStyle.setText(this.ESP_STYLE[i]);
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSoundWaveView(CarDriveModeManager.Function function, boolean z) {
        switch (function) {
            case DRIVE_MODE_VALUE:
            case EMS_ENGINE_WAVE_ENABLE:
                if (CarDriveModeManager.getInstance().getFunctionPresent(CarDriveModeManager.Function.EMS_ENGINE_WAVE_ENABLE)) {
                    this.layoutSoundWaves.setVisibility(z ? 0 : 8);
                    this.layoutSoundWavesSportPlus.setVisibility(z ? 8 : 0);
                    this.tvSoundWaves.setText(this.SOUND_WAVES[0]);
                }
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSwitchMultiButtonView(CarDriveModeManager.Function function, int i) {
        SwitchMultiButton switchMultiButton;
        switch (function) {
            case ESP_STYLE_OPTION:
                switchMultiButton = this.smbEspStyle;
                break;
            case EPS_STYLE_OPTION:
                switchMultiButton = this.smbSteeringHand;
                break;
            default:
                switchMultiButton = null;
                break;
        }
        if (switchMultiButton == null || switchMultiButton.getTabNum() == i) {
            return;
        }
        switchMultiButton.setSelectedTab(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSwitchMultiButtonView(CarPartsManager.Function function, int i) {
        LogUtil.i("CarDriveModeManager", "setSwitchMultiButtonView: index:" + i + " " + function);
        SwitchMultiButton switchMultiButton = AnonymousClass6.$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function[function.ordinal()] != 1 ? null : this.smbAcComfortCurve;
        if (switchMultiButton == null || switchMultiButton.getTabNum() == i) {
            return;
        }
        switchMultiButton.setSelectedTab(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSwitcherView(CarDriveModeManager.Function function, boolean z) {
        switch (function) {
            case EMS_ENGINE_WAVE_ENABLE:
                this.swSoundWave.setChecked(z);
                break;
            case EPS_STYLE_ENABLE_STATE:
                this.smbSteeringHand.setEnabled(z);
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValueView(CarDriveModeManager.Function function, Object obj) {
        Locale locale = Locale.getDefault();
        switch (function) {
            case THROTTLE_SENSITIVITY_VALUE:
            case DRIVE_MODE_VALUE:
                if (!new Locale("ar").getLanguage().equals(locale.getLanguage())) {
                    updateView((ICarDrive.DriveMode) obj);
                } else {
                    updateViewByar((ICarDrive.DriveMode) obj);
                }
                break;
        }
    }

    private void showAvdcResetTipDialog() {
        final ICarDrive.DriveMode driveMode = (ICarDrive.DriveMode) CarDriveModeManager.getInstance().getValue(CarDriveModeManager.Function.DRIVE_MODE_VALUE);
        this.mCommonDialog = new CommonDialog(getContext().getApplicationContext());
        this.mCommonDialog.show();
        this.mCommonDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.yftech.settings.avdc.ModeSettingsFragment.4
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                ModeSettingsFragment.this.mCommonDialog = null;
            }
        });
        this.mCommonDialog.setContent(getString(R.string.avdc_dialog_tip_reset));
        this.mCommonDialog.setButtonText(getString(R.string.dialog_btn_yes), getString(R.string.dialog_btn_no));
        this.mCommonDialog.setOnBtnClickListener(new CommonDialog.OnBtnClickListener() { // from class: com.yftech.settings.avdc.ModeSettingsFragment.5
            @Override // com.yftech.settings.widget.dialog.CommonDialog.OnBtnClickListener
            public void onCancelClick() {
            }

            @Override // com.yftech.settings.widget.dialog.CommonDialog.OnBtnClickListener
            public void onIconClick() {
            }

            @Override // com.yftech.settings.widget.dialog.CommonDialog.OnBtnClickListener
            public void onSureClick() {
                String string;
                boolean action = CarDriveModeManager.getInstance().setAction(CarDriveModeManager.Function.RESET_ACTION);
                ModeSettingsFragment.this.resetUpdateView(driveMode);
                switch (AnonymousClass6.$SwitchMap$com$yftech$vehicle$internal$adapter$ICarDrive$DriveMode[driveMode.ordinal()]) {
                    case 1:
                        string = ModeSettingsFragment.this.getString(action ? R.string.avdc_reset_toast_eco_successful : R.string.avdc_reset_toast_eco_fail);
                        break;
                    case 2:
                        string = ModeSettingsFragment.this.getString(action ? R.string.avdc_reset_toast_comfort_successful : R.string.avdc_reset_toast_comfort_fail);
                        break;
                    case 3:
                        string = ModeSettingsFragment.this.getString(action ? R.string.avdc_reset_toast_sport_successful : R.string.avdc_reset_toast_sport_fail);
                        break;
                    default:
                        string = null;
                        break;
                }
                Toast.makeText(ModeSettingsFragment.this.getContext().getApplicationContext(), string, 1).show();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopAcComfortCurveView() {
        this.ivWindLoop.setVisibility(8);
        this.animationDrawable = (AnimationDrawable) this.ivWindLoop.getDrawable();
        if (this.animationDrawable == null || !this.animationDrawable.isRunning()) {
            return;
        }
        this.animationDrawable.stop();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateAcComfortCurveSportPlus(CarPartsManager.Function function, int i) {
        if (AnonymousClass6.$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function[function.ordinal()] != 1) {
            return;
        }
        this.tvAcComfortCurve.setText(this.AC_COMFORT_CURVE_VALUE[i]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCarBgNor() {
        if (!Utils.isGACLogoPresent()) {
            this.ivBg.setImageResource(R.mipmap.avdc_driving_mode_setting_car_nor_left_no_gac);
        } else if (Utils.isRightDrive()) {
            this.ivBg.setImageResource(R.mipmap.avdc_driving_mode_setting_car_nor_right);
        } else {
            this.ivBg.setImageResource(R.mipmap.avdc_driving_mode_setting_car_nor);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateSportPlusView(boolean z) {
        if (z) {
            this.layoutSteeringHand.setVisibility(8);
            this.layoutSoundWaves.setVisibility(8);
            this.layoutAcComfortCurve.setVisibility(8);
            this.layoutModeReset.setVisibility(8);
            this.layoutSteeringHandSportPlus.setVisibility(CarDriveModeManager.getInstance().getFunctionPresent(CarDriveModeManager.Function.EPS_STYLE_OPTION) ? 0 : 8);
            this.layoutEspStyleSportPlus.setVisibility(CarDriveModeManager.getInstance().getFunctionPresent(CarDriveModeManager.Function.ESP_STYLE_OPTION) ? 0 : 8);
            this.layoutSoundWavesSportPlus.setVisibility(CarDriveModeManager.getInstance().getFunctionPresent(CarDriveModeManager.Function.EMS_ENGINE_WAVE_ENABLE) ? 0 : 8);
            this.layoutAcComfortCurveSportPlus.setVisibility(CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.AC_COMFORT_CURVE_MODE_OPTION) ? 0 : 8);
        } else {
            this.layoutSteeringHandSportPlus.setVisibility(8);
            this.layoutSoundWavesSportPlus.setVisibility(8);
            this.layoutAcComfortCurveSportPlus.setVisibility(8);
            this.layoutEspStyleSportPlus.setVisibility(8);
            this.layoutSteeringHand.setVisibility(CarDriveModeManager.getInstance().getFunctionPresent(CarDriveModeManager.Function.EPS_STYLE_OPTION) ? 0 : 8);
            this.layoutEspStyle.setVisibility(CarDriveModeManager.getInstance().getFunctionPresent(CarDriveModeManager.Function.EPS_STYLE_OPTION) ? 0 : 8);
            this.layoutSoundWaves.setVisibility(CarDriveModeManager.getInstance().getFunctionPresent(CarDriveModeManager.Function.EMS_ENGINE_WAVE_ENABLE) ? 0 : 8);
            this.layoutAcComfortCurve.setVisibility(CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.AC_COMFORT_CURVE_MODE_OPTION) ? 0 : 8);
            this.layoutModeReset.setVisibility(CarDriveModeManager.getInstance().getFunctionPresent(CarDriveModeManager.Function.RESET_ACTION) ? 0 : 8);
        }
        initViewData();
    }

    private void updateView(ICarDrive.DriveMode driveMode) {
        if (driveMode == ICarDrive.DriveMode.ECO_PRO_MODE) {
            this.drivingModeSettingBg.setBackgroundResource(R.mipmap.avdc_driving_mode_setting_bg_eco);
            this.valueCurrentDrivingMode.setText("ECO");
            return;
        }
        if (driveMode == ICarDrive.DriveMode.COMFORT_MODE) {
            this.drivingModeSettingBg.setBackgroundResource(R.mipmap.avdc_driving_mode_setting_bg_comfort);
            this.valueCurrentDrivingMode.setText("COMFORT");
        } else if (driveMode == ICarDrive.DriveMode.SPORT_MODE) {
            this.drivingModeSettingBg.setBackgroundResource(R.mipmap.avdc_driving_mode_setting_bg_sport);
            this.valueCurrentDrivingMode.setText("SPORT");
        } else if (driveMode == ICarDrive.DriveMode.SPORT_PLUS_MODE) {
            this.drivingModeSettingBg.setBackgroundResource(R.mipmap.avdc_driving_mode_setting_bg_sport_plus);
            this.valueCurrentDrivingMode.setText("SPORT+");
        }
    }

    private void updateViewByar(ICarDrive.DriveMode driveMode) {
        if (driveMode == ICarDrive.DriveMode.ECO_PRO_MODE) {
            this.drivingModeSettingBg.setBackgroundResource(R.mipmap.avdc_driving_mode_setting_bg_eco_ar);
            this.valueCurrentDrivingMode.setText("ECO");
            return;
        }
        if (driveMode == ICarDrive.DriveMode.COMFORT_MODE) {
            this.drivingModeSettingBg.setBackgroundResource(R.mipmap.avdc_driving_mode_setting_bg_comfort_ar);
            this.valueCurrentDrivingMode.setText("COMFORT");
        } else if (driveMode == ICarDrive.DriveMode.SPORT_MODE) {
            this.drivingModeSettingBg.setBackgroundResource(R.mipmap.avdc_driving_mode_setting_bg_sport_ar);
            this.valueCurrentDrivingMode.setText("SPORT");
        } else if (driveMode == ICarDrive.DriveMode.SPORT_PLUS_MODE) {
            this.drivingModeSettingBg.setBackgroundResource(R.mipmap.avdc_driving_mode_setting_bg_sport_plus_ar);
            this.valueCurrentDrivingMode.setText("SPORT+");
        }
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    @SuppressLint({"NonConstantResourceId"})
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        if (compoundButton.isPressed() && compoundButton.getId() == R.id.sw_sound_waves) {
            CarDriveModeManager.getInstance().setEnabled(CarDriveModeManager.Function.EMS_ENGINE_WAVE_ENABLE, z);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() != R.id.btn_mode_reset) {
            return;
        }
        showAvdcResetTipDialog();
    }

    @Override // android.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_avdc_mode_settings, viewGroup, false);
        initView(viewInflate);
        return viewInflate;
    }

    @Override // com.yftech.settings.BaseFragment, android.app.Fragment
    public void onPause() {
        super.onPause();
        if (this.smbSteeringHand != null) {
            this.smbSteeringHand.removeCallbacks(this.setImageViewRunnable);
        }
    }

    @Override // com.yftech.settings.widget.SeekBarNumber.OnSeekChangeListener
    public void onProgressChanged(SeekBarNumber seekBarNumber, int i) {
        seekBarNumber.getId();
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        initViewData();
        CarDriveModeManager.getInstance().registerModelCallback(this.mCarDriveModeModelCallback);
        CarPartsManager.getInstance().registerModelCallback(this.mCarPartsModelCallback);
    }

    @Override // com.yftech.settings.widget.SeekBarNumber.OnSeekChangeListener
    public void onStartTrackingTouch(SeekBarNumber seekBarNumber) {
    }

    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
        CarDriveModeManager.getInstance().unregisterModelCallback(this.mCarDriveModeModelCallback);
        CarPartsManager.getInstance().unregisterModelCallback(this.mCarPartsModelCallback);
        if (this.mCommonDialog != null) {
            this.mCommonDialog.dismiss();
        }
    }

    @Override // com.yftech.settings.widget.SeekBarNumber.OnSeekChangeListener
    public void onStopTrackingTouch(SeekBarNumber seekBarNumber) {
    }

    @Override // com.yftech.settings.widget.SwitchMultiButton.OnSwitchListener
    public void onSwitch(SwitchMultiButton switchMultiButton, int i, String str, boolean z) {
        if (z) {
            if (switchMultiButton.getId() == R.id.smb_ac_comfort_curve) {
                CarPartsManager.Function function = CarPartsManager.Function.UNKNOWN;
                if (switchMultiButton.getId() == R.id.smb_ac_comfort_curve) {
                    function = CarPartsManager.Function.AC_COMFORT_CURVE_MODE_OPTION;
                    this.resetIvBgHandler.removeCallbacks(this.setImageViewRunnable);
                    playAcComfortCurveView(i);
                }
                if (function != CarPartsManager.Function.UNKNOWN) {
                    CarPartsManager.getInstance().setOption(function, i);
                    return;
                }
                return;
            }
            CarDriveModeManager.Function function2 = CarDriveModeManager.Function.UNKNOWN;
            if (switchMultiButton.getId() == R.id.smb_steering_hand) {
                function2 = CarDriveModeManager.Function.EPS_STYLE_OPTION;
                this.resetIvBgHandler.removeCallbacks(this.setImageViewRunnable);
                setImageView(function2, i);
            }
            if (function2 != CarDriveModeManager.Function.UNKNOWN) {
                CarDriveModeManager.getInstance().setOption(function2, i);
            }
        }
    }
}
