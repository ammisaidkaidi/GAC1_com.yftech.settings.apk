package com.yftech.settings.avdc;

import android.content.Context;
import android.graphics.drawable.AnimationDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageButton;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatSeekBar;
import com.yftech.settings.R;
import com.yftech.settings.manager.BaseManager;
import com.yftech.settings.manager.CarDriveModeManager;
import com.yftech.settings.utils.LogUtil;
import com.yftech.settings.widget.NumImageView;
import com.yftech.settings.widget.dialog.CommonDialog;
import com.yftech.vehicle.internal.adapter.ICarDoor;
import com.yftech.vehicle.internal.adapter.ICarDrive;
import com.yftech.vehicle.sdk.CarInfoManager;

/* JADX INFO: loaded from: classes.dex */
public class DrivingModeTrackDialDialog extends CommonDialog {
    private static final String TAG = "DrivingModeTrackDialDialog";
    private AnimationDrawable animationDrawable;
    private final CarInfoManager.CarInfoListener carInfoListener;
    private ImageView ivAnimation;
    private final Handler mMainHandler;
    BaseManager.ModelCallback<CarDriveModeManager.Function> modelCallback;
    private NumImageView numIvAirTemp;
    private NumImageView numIvOilPress;
    private NumImageView numIvOilTemp;
    private NumImageView numIvWaterTemp;
    private NumImageView numTurbo;
    private AppCompatSeekBar seekBarAirTemp;
    private AppCompatSeekBar seekBarOilPress;
    private AppCompatSeekBar seekBarOilTemp;
    private AppCompatSeekBar seekBarTurboLeftBottom;
    private AppCompatSeekBar seekBarTurboLeftTop;
    private AppCompatSeekBar seekBarTurboRightBottom;
    private AppCompatSeekBar seekBarTurboRightTop;
    private AppCompatSeekBar seekBarWaterTemp;

    public DrivingModeTrackDialDialog(Context context) {
        super(context);
        this.mMainHandler = new Handler(Looper.getMainLooper());
        this.carInfoListener = new CarInfoManager.CarInfoListener() { // from class: com.yftech.settings.avdc.DrivingModeTrackDialDialog.1
            @Override // com.yftech.vehicle.sdk.CarInfoManager.CarInfoListener
            public void onPressureOfOilChanged(final int i) {
                LogUtil.i(DrivingModeTrackDialDialog.TAG, "onPressureOfOilChanged: " + i);
                super.onPressureOfOilChanged(i);
                DrivingModeTrackDialDialog.this.mMainHandler.post(new Runnable() { // from class: com.yftech.settings.avdc.DrivingModeTrackDialDialog.1.3
                    @Override // java.lang.Runnable
                    public void run() {
                        DrivingModeTrackDialDialog.this.numIvOilPress.setNumber(i);
                        DrivingModeTrackDialDialog.this.seekBarOilPress.setProgress(i);
                    }
                });
            }

            @Override // com.yftech.vehicle.sdk.CarInfoManager.CarInfoListener
            public void onPressureOfTurbineChanged(final int i) {
                LogUtil.i(DrivingModeTrackDialDialog.TAG, "onPressureOfTurbineChanged: " + i);
                super.onPressureOfTurbineChanged(i);
                DrivingModeTrackDialDialog.this.mMainHandler.post(new Runnable() { // from class: com.yftech.settings.avdc.DrivingModeTrackDialDialog.1.5
                    @Override // java.lang.Runnable
                    public void run() {
                        DrivingModeTrackDialDialog.this.numTurbo.setNumber(i);
                        DrivingModeTrackDialDialog.this.seekBarTurboLeftTop.setProgress(i);
                        DrivingModeTrackDialDialog.this.seekBarTurboLeftBottom.setProgress(i);
                        DrivingModeTrackDialDialog.this.seekBarTurboRightTop.setProgress(i);
                        DrivingModeTrackDialDialog.this.seekBarTurboRightBottom.setProgress(i);
                    }
                });
            }

            @Override // com.yftech.vehicle.sdk.CarInfoManager.CarInfoListener
            public void onTemperatureOfEngineWaterChanged(final int i) {
                super.onTemperatureOfEngineWaterChanged(i);
                LogUtil.i(DrivingModeTrackDialDialog.TAG, "onTemperatureOfEngineWaterChanged: " + i);
                DrivingModeTrackDialDialog.this.mMainHandler.post(new Runnable() { // from class: com.yftech.settings.avdc.DrivingModeTrackDialDialog.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        DrivingModeTrackDialDialog.this.numIvWaterTemp.setNumber(i);
                        DrivingModeTrackDialDialog.this.seekBarWaterTemp.setProgress(i);
                    }
                });
            }

            @Override // com.yftech.vehicle.sdk.CarInfoManager.CarInfoListener
            public void onTemperatureOfIntakeAirChanged(final float f) {
                LogUtil.i(DrivingModeTrackDialDialog.TAG, "onTemperatureOfIntakeAirChanged: " + f);
                super.onTemperatureOfIntakeAirChanged(f);
                DrivingModeTrackDialDialog.this.mMainHandler.post(new Runnable() { // from class: com.yftech.settings.avdc.DrivingModeTrackDialDialog.1.4
                    @Override // java.lang.Runnable
                    public void run() {
                        DrivingModeTrackDialDialog.this.numIvAirTemp.setNumber(f);
                        DrivingModeTrackDialDialog.this.seekBarAirTemp.setProgress((int) f);
                    }
                });
            }

            @Override // com.yftech.vehicle.sdk.CarInfoManager.CarInfoListener
            public void onTemperatureOfTransmissionOilChanged(final int i) {
                super.onTemperatureOfTransmissionOilChanged(i);
                LogUtil.i(DrivingModeTrackDialDialog.TAG, "onTemperatureOfTransmissionOilChanged: " + i);
                DrivingModeTrackDialDialog.this.mMainHandler.post(new Runnable() { // from class: com.yftech.settings.avdc.DrivingModeTrackDialDialog.1.2
                    @Override // java.lang.Runnable
                    public void run() {
                        DrivingModeTrackDialDialog.this.numIvOilTemp.setNumber(i);
                        DrivingModeTrackDialDialog.this.seekBarOilTemp.setProgress(i);
                    }
                });
            }
        };
        this.modelCallback = new BaseManager.ModelCallback<CarDriveModeManager.Function>() { // from class: com.yftech.settings.avdc.DrivingModeTrackDialDialog.2
            @Override // com.yftech.settings.manager.BaseManager.ModelCallback
            public void onValueChanged(CarDriveModeManager.Function function, Object obj) {
                super.onValueChanged(function, obj);
                if (function != CarDriveModeManager.Function.DRIVE_MODE_VALUE || ((ICarDrive.DriveMode) obj) == ICarDrive.DriveMode.SPORT_PLUS_MODE) {
                    return;
                }
                DrivingModeTrackDialDialog.this.dismiss();
            }
        };
    }

    private void initData() {
        int temperatureOfEngineWater = CarInfoManager.get().getTemperatureOfEngineWater();
        int temperatureOfTransmissionOil = CarInfoManager.get().getTemperatureOfTransmissionOil();
        int pressureOfOil = CarInfoManager.get().getPressureOfOil();
        float temperatureOfIntakeAir = CarInfoManager.get().getTemperatureOfIntakeAir();
        int pressureOfTurbine = CarInfoManager.get().getPressureOfTurbine();
        StringBuffer stringBuffer = new StringBuffer("initData: ");
        stringBuffer.append(" CarInfoManager.get().getTemperatureOfEngineWater() -- > ");
        stringBuffer.append(temperatureOfEngineWater);
        stringBuffer.append("\n");
        stringBuffer.append(" CarInfoManager.get().getTemperatureOfTransmissionOil() --> ");
        stringBuffer.append(temperatureOfTransmissionOil);
        stringBuffer.append("\n");
        stringBuffer.append(" CarInfoManager.get().getPressureOfOil() --> ");
        stringBuffer.append(pressureOfOil);
        stringBuffer.append("\n");
        stringBuffer.append(" CarInfoManager.get().getTemperatureOfIntakeAir() --> ");
        stringBuffer.append(temperatureOfIntakeAir);
        stringBuffer.append("\n");
        stringBuffer.append(" CarInfoManager.get().getPressureOfTurbine() --> ");
        stringBuffer.append(pressureOfTurbine);
        LogUtil.i(TAG, stringBuffer.toString());
        this.numIvWaterTemp.setNumber(temperatureOfEngineWater);
        this.seekBarWaterTemp.setProgress(temperatureOfEngineWater);
        this.numIvOilTemp.setNumber(temperatureOfTransmissionOil);
        this.seekBarOilTemp.setProgress(temperatureOfTransmissionOil);
        this.numIvOilPress.setNumber(pressureOfOil);
        this.seekBarOilPress.setProgress(pressureOfOil);
        this.numIvAirTemp.setNumber(temperatureOfIntakeAir);
        this.seekBarAirTemp.setProgress((int) temperatureOfIntakeAir);
        this.numTurbo.setNumber(pressureOfTurbine);
        this.seekBarTurboLeftTop.setProgress(pressureOfTurbine);
        this.seekBarTurboLeftBottom.setProgress(pressureOfTurbine);
        this.seekBarTurboRightTop.setProgress(pressureOfTurbine);
        this.seekBarTurboRightBottom.setProgress(pressureOfTurbine);
    }

    @Override // com.yftech.settings.widget.dialog.CommonDialog, com.yftech.settings.widget.dialog.BaseDialog, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_avdc_track_indicatoe);
        Window window = getWindow();
        if (window != null) {
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.flags = 8;
            attributes.gravity = 17;
            attributes.width = -1;
            attributes.height = -1;
            attributes.type = 2051;
            window.setAttributes(attributes);
        }
        this.ivAnimation = (ImageView) findViewById(R.id.iv_animation);
        this.ivAnimation.setImageResource(R.drawable.avdc_track_2000);
        this.animationDrawable = (AnimationDrawable) this.ivAnimation.getDrawable();
        if (this.animationDrawable.isRunning()) {
            this.animationDrawable.stop();
        }
        this.animationDrawable.start();
        this.mMainHandler.postDelayed(new Runnable() { // from class: com.yftech.settings.avdc.DrivingModeTrackDialDialog.3
            @Override // java.lang.Runnable
            public void run() {
                DrivingModeTrackDialDialog.this.ivAnimation.setVisibility(8);
            }
        }, 2000L);
        this.numIvWaterTemp = (NumImageView) findViewById(R.id.numIv_water_temp);
        this.numIvOilTemp = (NumImageView) findViewById(R.id.numIv_oil_temp);
        this.numIvOilPress = (NumImageView) findViewById(R.id.numIv_oil_press);
        this.numIvAirTemp = (NumImageView) findViewById(R.id.numIv_air_temp);
        this.numTurbo = (NumImageView) findViewById(R.id.numIv_bar);
        this.seekBarWaterTemp = (AppCompatSeekBar) findViewById(R.id.vertical_seekbar_water_temp);
        this.seekBarOilPress = (AppCompatSeekBar) findViewById(R.id.vertical_seekbar_oil_press);
        this.seekBarOilTemp = (AppCompatSeekBar) findViewById(R.id.vertical_seekbar_oil_temp);
        this.seekBarAirTemp = (AppCompatSeekBar) findViewById(R.id.vertical_seekbar_air_temp);
        this.seekBarTurboLeftTop = (AppCompatSeekBar) findViewById(R.id.vertical_seekbar_turbo_left_top);
        this.seekBarTurboLeftBottom = (AppCompatSeekBar) findViewById(R.id.vertical_seekbar_turbo_left_bottom);
        this.seekBarTurboRightTop = (AppCompatSeekBar) findViewById(R.id.vertical_seekbar_turbo_right_top);
        this.seekBarTurboRightBottom = (AppCompatSeekBar) findViewById(R.id.vertical_seekbar_turbo_right_bottom);
        this.seekBarWaterTemp.setMax(ICarDoor.TRUNK_DOOR_STATE);
        this.seekBarWaterTemp.setMin(-40);
        this.seekBarOilTemp.setMax(ICarDoor.TRUNK_DOOR_STATE);
        this.seekBarOilTemp.setMin(-40);
        this.seekBarWaterTemp.setEnabled(false);
        this.seekBarOilPress.setEnabled(false);
        this.seekBarOilTemp.setEnabled(false);
        this.seekBarAirTemp.setEnabled(false);
        this.seekBarTurboLeftTop.setEnabled(false);
        this.seekBarTurboLeftBottom.setEnabled(false);
        this.seekBarTurboRightTop.setEnabled(false);
        this.seekBarTurboRightBottom.setEnabled(false);
        ((ImageButton) findViewById(R.id.iv_btn_exit)).setOnClickListener(new View.OnClickListener() { // from class: com.yftech.settings.avdc.DrivingModeTrackDialDialog.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DrivingModeTrackDialDialog.this.dismiss();
            }
        });
    }

    @Override // android.app.Dialog
    protected void onStart() {
        super.onStart();
        initData();
        CarDriveModeManager.getInstance().registerModelCallback(this.modelCallback);
        CarInfoManager.get().registerListener(this.carInfoListener);
    }

    @Override // android.app.Dialog
    protected void onStop() {
        super.onStop();
        CarDriveModeManager.getInstance().unregisterModelCallback(this.modelCallback);
        CarInfoManager.get().unregisterListener(this.carInfoListener);
    }

    public void setNumIvWaterTempText(float f) {
    }
}
