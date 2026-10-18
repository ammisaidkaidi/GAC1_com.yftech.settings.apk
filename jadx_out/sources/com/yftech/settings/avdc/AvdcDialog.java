package com.yftech.settings.avdc;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.NonNull;
import com.yftech.settings.R;
import com.yftech.settings.manager.BaseManager;
import com.yftech.settings.manager.CarDriveModeManager;
import com.yftech.settings.manager.CarPartsManager;
import com.yftech.vehicle.internal.adapter.ICarDrive;
import com.yftech.vehicle.internal.adapter.ICarPower;
import com.yftech.vehicle.internal.adapter.ICarSettings;
import com.yftech.vehicle.sdk.CarPowerManager;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class AvdcDialog extends Dialog implements View.OnClickListener, View.OnTouchListener {
    private String[] acComfortCurveStr;
    private Button btnComfort;
    private Button btnDynamic;
    private Button btnEco;
    private String[] energyRecoveryLeveltr;
    private ImageView ivBg;
    private ImageView ivCar;
    private ImageView ivLight;
    private BaseManager.ModelCallback<CarDriveModeManager.Function> mCarDriveModeModelCallback;
    private BaseManager.ModelCallback<CarPartsManager.Function> mCarPartsModelCallback;
    private boolean mIsPower;
    private Toast mPowerToast;
    private String[] shadowDrivertr;
    private String[] soundWavesStr;
    private String[] steeringHandStr;
    private String[] suspensionModeStr;
    private TextView tvAcComfortCurve;
    private TextView tvEnergyRecoveryLevel;
    private TextView tvModeDescribe;
    private TextView tvModeName;
    private TextView tvShadowDriver;
    private TextView tvSoundWaves;
    private TextView tvSteeringHand;
    private TextView tvSuspensionMode;

    /* JADX INFO: renamed from: com.yftech.settings.avdc.AvdcDialog$3, reason: invalid class name */
    static /* synthetic */ class AnonymousClass3 {
        static final /* synthetic */ int[] $SwitchMap$com$yftech$settings$manager$CarPartsManager$Function = new int[CarPartsManager.Function.values().length];

        static {
            try {
                $SwitchMap$com$yftech$settings$manager$CarPartsManager$Function[CarPartsManager.Function.AC_COMFORT_CURVE_MODE_OPTION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            $SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function = new int[CarDriveModeManager.Function.values().length];
            try {
                $SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function[CarDriveModeManager.Function.EPS_STYLE_OPTION.ordinal()] = 1;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function[CarDriveModeManager.Function.SUSPENSION_MODE_OPTION.ordinal()] = 2;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function[CarDriveModeManager.Function.SHADOW_DRIVER_OPTION.ordinal()] = 3;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function[CarDriveModeManager.Function.EMS_ENGINE_WAVE_ENABLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function[CarDriveModeManager.Function.ENERGY_RECOVERY_LEVEL_OPTION.ordinal()] = 5;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function[CarDriveModeManager.Function.DRIVE_MODE_VALUE.ordinal()] = 6;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public AvdcDialog(@NonNull Context context) {
        super(context);
        this.mCarDriveModeModelCallback = new BaseManager.ModelCallback<CarDriveModeManager.Function>() { // from class: com.yftech.settings.avdc.AvdcDialog.1
            @Override // com.yftech.settings.manager.BaseManager.ModelCallback
            public void onOptionChanged(CarDriveModeManager.Function function, int i) {
                super.onOptionChanged(function, i);
                AvdcDialog.this.setOptionText(function, i);
            }

            @Override // com.yftech.settings.manager.BaseManager.ModelCallback
            public void onTimeout() {
                super.onTimeout();
                AvdcDialog.this.initCarDriveModeViewData();
            }

            @Override // com.yftech.settings.manager.BaseManager.ModelCallback
            public void onValueChanged(CarDriveModeManager.Function function, Object obj) {
                super.onValueChanged(function, obj);
                AvdcDialog.this.setValueView(function, obj);
            }
        };
        this.mCarPartsModelCallback = new BaseManager.ModelCallback<CarPartsManager.Function>() { // from class: com.yftech.settings.avdc.AvdcDialog.2
            @Override // com.yftech.settings.manager.BaseManager.ModelCallback
            public void onOptionChanged(CarPartsManager.Function function, int i) {
                super.onOptionChanged(function, i);
                AvdcDialog.this.setOptionText(function, i);
            }

            @Override // com.yftech.settings.manager.BaseManager.ModelCallback
            public void onTimeout() {
                super.onTimeout();
                AvdcDialog.this.initCarPartsViewData();
            }
        };
    }

    private String getFunctionStr(CarDriveModeManager.Function function, int i) {
        switch (function) {
            case EPS_STYLE_OPTION:
                return (i < 0 || i >= this.steeringHandStr.length) ? "" : this.steeringHandStr[i];
            case SUSPENSION_MODE_OPTION:
                return (i < 0 || i >= this.suspensionModeStr.length) ? "" : this.suspensionModeStr[i];
            case SHADOW_DRIVER_OPTION:
                return (i < 0 || i >= this.shadowDrivertr.length) ? "" : this.shadowDrivertr[i];
            case EMS_ENGINE_WAVE_ENABLE:
                return (i < 0 || i >= this.soundWavesStr.length) ? "" : this.soundWavesStr[i];
            case ENERGY_RECOVERY_LEVEL_OPTION:
                return (i < 0 || i >= this.energyRecoveryLeveltr.length) ? "" : this.energyRecoveryLeveltr[i];
            default:
                return "";
        }
    }

    private String getFunctionStr(CarPartsManager.Function function, int i) {
        return (AnonymousClass3.$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function[function.ordinal()] == 1 && i >= 0 && i < this.acComfortCurveStr.length) ? this.acComfortCurveStr[i] : "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initCarDriveModeViewData() {
        if (CarDriveModeManager.getInstance().getFunctionPresent(CarDriveModeManager.Function.DRIVE_MODE_VALUE)) {
            setValueView(CarDriveModeManager.Function.DRIVE_MODE_VALUE, CarDriveModeManager.getInstance().getValue(CarDriveModeManager.Function.DRIVE_MODE_VALUE));
        }
        if (CarDriveModeManager.getInstance().getFunctionPresent(CarDriveModeManager.Function.EPS_STYLE_OPTION)) {
            setOptionText(CarDriveModeManager.Function.EPS_STYLE_OPTION, CarDriveModeManager.getInstance().getOption(CarDriveModeManager.Function.EPS_STYLE_OPTION));
        }
        if (CarDriveModeManager.getInstance().getFunctionPresent(CarDriveModeManager.Function.SUSPENSION_MODE_OPTION)) {
            setOptionText(CarDriveModeManager.Function.SUSPENSION_MODE_OPTION, CarDriveModeManager.getInstance().getOption(CarDriveModeManager.Function.SUSPENSION_MODE_OPTION));
        }
        if (CarDriveModeManager.getInstance().getFunctionPresent(CarDriveModeManager.Function.SHADOW_DRIVER_OPTION)) {
            setOptionText(CarDriveModeManager.Function.SHADOW_DRIVER_OPTION, CarDriveModeManager.getInstance().getOption(CarDriveModeManager.Function.SHADOW_DRIVER_OPTION));
        }
        if (CarDriveModeManager.getInstance().getFunctionPresent(CarDriveModeManager.Function.EMS_ENGINE_WAVE_ENABLE)) {
            setOptionText(CarDriveModeManager.Function.EMS_ENGINE_WAVE_ENABLE, CarDriveModeManager.getInstance().getOption(CarDriveModeManager.Function.EMS_ENGINE_WAVE_ENABLE));
        }
        if (CarDriveModeManager.getInstance().getFunctionPresent(CarDriveModeManager.Function.ENERGY_RECOVERY_LEVEL_OPTION)) {
            setOptionText(CarDriveModeManager.Function.ENERGY_RECOVERY_LEVEL_OPTION, CarDriveModeManager.getInstance().getOption(CarDriveModeManager.Function.ENERGY_RECOVERY_LEVEL_OPTION));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initCarPartsViewData() {
        if (CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.AC_COMFORT_CURVE_MODE_OPTION)) {
            setOptionText(CarPartsManager.Function.AC_COMFORT_CURVE_MODE_OPTION, CarPartsManager.getInstance().getOption(CarPartsManager.Function.AC_COMFORT_CURVE_MODE_OPTION));
        }
    }

    private void initView(View view) {
        this.ivBg = (ImageView) view.findViewById(R.id.iv_bg);
        this.ivCar = (ImageView) view.findViewById(R.id.iv_car);
        this.ivLight = (ImageView) view.findViewById(R.id.iv_light);
        this.btnEco = (Button) view.findViewById(R.id.btn_eco);
        this.btnComfort = (Button) view.findViewById(R.id.btn_comfort);
        this.btnDynamic = (Button) view.findViewById(R.id.btn_dynamic);
        this.tvModeName = (TextView) view.findViewById(R.id.tv_mode_name);
        this.tvModeDescribe = (TextView) view.findViewById(R.id.tv_mode_describe);
        this.tvSteeringHand = (TextView) view.findViewById(R.id.tv_steering_hand);
        this.tvSuspensionMode = (TextView) view.findViewById(R.id.tv_suspension_mode);
        this.tvShadowDriver = (TextView) view.findViewById(R.id.tv_shadow_driver);
        this.tvSoundWaves = (TextView) view.findViewById(R.id.tv_sound_waves);
        this.tvAcComfortCurve = (TextView) view.findViewById(R.id.tv_ac_comfort_curve);
        this.tvEnergyRecoveryLevel = (TextView) view.findViewById(R.id.tv_energy_recovery_level);
        this.btnEco.setOnClickListener(this);
        this.btnComfort.setOnClickListener(this);
        this.btnDynamic.setOnClickListener(this);
        view.findViewById(R.id.btn_close).setOnClickListener(this);
        view.findViewById(R.id.btn_setting_mode).setOnClickListener(this);
        this.tvSteeringHand.setVisibility(CarDriveModeManager.getInstance().getFunctionPresent(CarDriveModeManager.Function.EPS_STYLE_OPTION) ? 0 : 8);
        this.tvSoundWaves.setVisibility(CarDriveModeManager.getInstance().getFunctionPresent(CarDriveModeManager.Function.EMS_ENGINE_WAVE_ENABLE) ? 0 : 8);
        this.tvAcComfortCurve.setVisibility(CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.AC_COMFORT_CURVE_MODE_OPTION) ? 0 : 8);
        this.tvEnergyRecoveryLevel.setVisibility(CarDriveModeManager.getInstance().getFunctionPresent(CarDriveModeManager.Function.ENERGY_RECOVERY_LEVEL_OPTION) ? 0 : 8);
        this.tvSuspensionMode.setVisibility(CarDriveModeManager.getInstance().getFunctionPresent(CarDriveModeManager.Function.SUSPENSION_MODE_OPTION) ? 0 : 8);
        this.tvShadowDriver.setVisibility(CarDriveModeManager.getInstance().getFunctionPresent(CarDriveModeManager.Function.SHADOW_DRIVER_OPTION) ? 0 : 8);
        this.btnEco.setOnTouchListener(this);
        this.btnComfort.setOnTouchListener(this);
        this.btnDynamic.setOnTouchListener(this);
        view.findViewById(R.id.btn_setting_mode).setOnTouchListener(this);
    }

    private void initViewData() {
        initCarDriveModeViewData();
        initCarPartsViewData();
    }

    private boolean isPower() {
        ICarPower.PowerMode powerMode = CarPowerManager.get().getPowerMode();
        return powerMode == ICarPower.PowerMode.ON || powerMode == ICarPower.PowerMode.CRANK;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setOptionText(CarDriveModeManager.Function function, int i) {
        switch (function) {
            case EPS_STYLE_OPTION:
                this.tvSteeringHand.setText(getContext().getApplicationContext().getString(R.string.avdc_item_steering_steering_hand) + "：" + getFunctionStr(function, i));
                break;
            case SUSPENSION_MODE_OPTION:
                this.tvSuspensionMode.setText(getContext().getApplicationContext().getString(R.string.avdc_item_suspension_mode) + "：" + getFunctionStr(function, i));
                break;
            case SHADOW_DRIVER_OPTION:
                this.tvShadowDriver.setText(getContext().getApplicationContext().getString(R.string.avdc_item_shadow_driver) + "：" + getFunctionStr(function, i));
                break;
            case EMS_ENGINE_WAVE_ENABLE:
                this.tvSoundWaves.setText(getContext().getApplicationContext().getString(R.string.avdc_item_sound_waves) + "：" + getFunctionStr(function, i));
                break;
            case ENERGY_RECOVERY_LEVEL_OPTION:
                this.tvEnergyRecoveryLevel.setText(getContext().getApplicationContext().getString(R.string.avdc_item_energy_recovery_level) + "：" + getFunctionStr(function, i));
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setOptionText(CarPartsManager.Function function, int i) {
        if (AnonymousClass3.$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function[function.ordinal()] != 1) {
            return;
        }
        this.tvAcComfortCurve.setText(getContext().getApplicationContext().getString(R.string.avdc_item_ac_comfort_curve) + "：" + getFunctionStr(function, i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValueView(CarDriveModeManager.Function function, Object obj) {
        if (AnonymousClass3.$SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function[function.ordinal()] != 6) {
            return;
        }
        updateView((ICarDrive.DriveMode) obj);
    }

    private void showPowerToast() {
        if (this.mPowerToast != null) {
            this.mPowerToast.cancel();
            this.mPowerToast = null;
        }
        this.mPowerToast = Toast.makeText(getContext().getApplicationContext(), getContext().getApplicationContext().getString(R.string.toast_start_the_vehicle_and_set_it), 1);
        this.mPowerToast.show();
    }

    private void updateView(ICarDrive.DriveMode driveMode) {
        if (driveMode == ICarDrive.DriveMode.ECO_PRO_MODE) {
            this.btnEco.setSelected(true);
            this.btnComfort.setSelected(false);
            this.btnDynamic.setSelected(false);
            this.ivBg.setImageResource(R.mipmap.avdc_eco_bg);
            this.ivCar.setImageResource(R.mipmap.avdc_eco_car);
            this.ivLight.setImageResource(R.mipmap.avdc_eco_light);
            this.tvModeName.setText(R.string.avdc_driving_mode_eco);
            this.tvModeDescribe.setText(R.string.avdc_driving_mode_eco_describe);
            return;
        }
        if (driveMode == ICarDrive.DriveMode.COMFORT_MODE) {
            this.btnEco.setSelected(false);
            this.btnComfort.setSelected(true);
            this.btnDynamic.setSelected(false);
            this.ivBg.setImageResource(R.mipmap.avdc_comfort_bg);
            this.ivCar.setImageResource(R.mipmap.avdc_comfort_car);
            this.ivLight.setImageResource(R.mipmap.avdc_comfort_light);
            this.tvModeName.setText(R.string.avdc_driving_mode_comfort);
            this.tvModeDescribe.setText(R.string.avdc_driving_mode_comfort_describe);
            return;
        }
        if (driveMode == ICarDrive.DriveMode.SPORT_MODE) {
            this.btnEco.setSelected(false);
            this.btnComfort.setSelected(false);
            this.btnDynamic.setSelected(true);
            this.ivBg.setImageResource(R.mipmap.avdc_dynamic_bg);
            this.ivCar.setImageResource(R.mipmap.avdc_dynamic_car);
            this.ivLight.setImageResource(R.mipmap.avdc_dynamic_light);
            this.tvModeName.setText(R.string.avdc_driving_mode_dynamic);
            this.tvModeDescribe.setText(R.string.avdc_driving_mode_dynamic_describe);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.btn_close /* 2131230820 */:
                dismiss();
                break;
            case R.id.btn_comfort /* 2131230821 */:
                updateView(ICarDrive.DriveMode.COMFORT_MODE);
                CarDriveModeManager.getInstance().setValue(CarDriveModeManager.Function.DRIVE_MODE_VALUE, (Object) ICarDrive.DriveMode.COMFORT_MODE);
                break;
            case R.id.btn_dynamic /* 2131230824 */:
                updateView(ICarDrive.DriveMode.SPORT_MODE);
                CarDriveModeManager.getInstance().setValue(CarDriveModeManager.Function.DRIVE_MODE_VALUE, (Object) ICarDrive.DriveMode.SPORT_MODE);
                break;
            case R.id.btn_eco /* 2131230825 */:
                updateView(ICarDrive.DriveMode.ECO_PRO_MODE);
                CarDriveModeManager.getInstance().setValue(CarDriveModeManager.Function.DRIVE_MODE_VALUE, (Object) ICarDrive.DriveMode.ECO_PRO_MODE);
                break;
            case R.id.btn_setting_mode /* 2131230827 */:
                Intent intent = new Intent();
                intent.setAction("com.yftech.intent.action.start.settings.avdc");
                intent.putExtra("activity", "mode_settings");
                getContext().getApplicationContext().startActivity(intent);
                dismiss();
                break;
        }
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        View viewInflate = LayoutInflater.from(getContext().getApplicationContext()).inflate(R.layout.dialog_avdc, (ViewGroup) null);
        setContentView(viewInflate);
        Window window = getWindow();
        if (window != null) {
            window.getDecorView().setPadding(0, 0, 0, 0);
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.flags = 2050;
            attributes.gravity = 17;
            attributes.format = 1;
            attributes.width = 1240;
            attributes.height = ICarSettings.HUD_ADAS_TSR_DIS_SHOW_SETTING;
            attributes.type = 2038;
            window.setAttributes(attributes);
            window.setBackgroundDrawableResource(R.color.transparent);
        }
        setCanceledOnTouchOutside(false);
        setCancelable(false);
        this.steeringHandStr = getContext().getApplicationContext().getResources().getStringArray(R.array.avdc_steering_steering_hand_a88);
        this.soundWavesStr = getContext().getApplicationContext().getResources().getStringArray(R.array.avdc_sound_waves);
        this.acComfortCurveStr = getContext().getApplicationContext().getResources().getStringArray(R.array.avdc_ac_comfort_curve);
        this.energyRecoveryLeveltr = getContext().getApplicationContext().getResources().getStringArray(R.array.avdc_energy_recovery_level);
        this.suspensionModeStr = getContext().getApplicationContext().getResources().getStringArray(R.array.avdc_suspension_mode);
        this.shadowDrivertr = getContext().getApplicationContext().getResources().getStringArray(R.array.avdc_shadow_driver);
        initView(viewInflate);
    }

    @Override // android.app.Dialog
    public void onStart() {
        super.onStart();
        initViewData();
        CarDriveModeManager.getInstance().registerModelCallback(this.mCarDriveModeModelCallback);
        CarPartsManager.getInstance().registerModelCallback(this.mCarPartsModelCallback);
    }

    @Override // android.app.Dialog
    public void onStop() {
        super.onStop();
        CarDriveModeManager.getInstance().unregisterModelCallback(this.mCarDriveModeModelCallback);
        CarPartsManager.getInstance().unregisterModelCallback(this.mCarPartsModelCallback);
        CarDriveModeManager.getInstance().setAction(CarDriveModeManager.Function.STOP_TIMEOUT_ACTION);
        CarPartsManager.getInstance().setAction(CarPartsManager.Function.STOP_TIMEOUT_ACTION);
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() != 0) {
            if (this.mIsPower || motionEvent.getAction() != 2) {
                return !this.mIsPower && motionEvent.getAction() == 1;
            }
            return true;
        }
        this.mIsPower = isPower();
        if (this.mIsPower) {
            return false;
        }
        showPowerToast();
        return true;
    }
}
