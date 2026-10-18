package com.yftech.settings.avdc;

import android.annotation.SuppressLint;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.Nullable;
import com.yftech.settings.BaseFragment;
import com.yftech.settings.R;
import com.yftech.settings.SettingsApp;
import com.yftech.settings.manager.BaseManager;
import com.yftech.settings.manager.CarDriveModeManager;
import com.yftech.settings.manager.CarPartsManager;
import com.yftech.settings.utils.LogUtil;
import com.yftech.settings.utils.MySoundPool;
import com.yftech.settings.utils.Utils;
import com.yftech.settings.widget.VideoView;
import com.yftech.vehicle.internal.adapter.ICarDrive;
import com.yftech.vehicle.internal.adapter.ICarPower;
import com.yftech.vehicle.sdk.CarConfig;
import com.yftech.vehicle.sdk.CarPowerManager;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class DrivingModeFragment extends BaseFragment implements View.OnClickListener {
    private static final String TAG = "DrivingModeFragment";
    private static DrivingModeFragment mInstance;
    private String[] EPS_STYLE;
    private String[] ESP_STYLE;
    private String[] TCU_DRIVE_MODE;
    private Button btnComfort;
    private Button btnEco;
    private Button btnSport;
    private Button btnSportPlus;
    private Button checkBtn;
    private RelativeLayout drivingMode;
    private DrivingModeTrackDialDialog drivingModeTrackDialDialog;
    private VideoView modeSettingBg;
    private MySoundPool mySoundPool;
    private ICarDrive.DriveMode tempDriveMode;
    private Toast tipToast;
    private TextView tvDirection;
    private TextView tvESPStyle;
    private TextView tvPower;
    private Handler mHandler = new Handler();
    private ICarDrive.DriveMode[] driveMode = {ICarDrive.DriveMode.ECO_PRO_MODE, ICarDrive.DriveMode.COMFORT_MODE, ICarDrive.DriveMode.SPORT_MODE, ICarDrive.DriveMode.SPORT_PLUS_MODE};
    private int NULL = -1;
    private int[] ECO_VIDEO = {this.NULL, R.raw.eco_comfort, R.raw.eco_sport, R.raw.eco_sport_plus};
    private int[] COMFORT_VIDEO = {R.raw.comfort_eco, this.NULL, R.raw.comfort_sport, R.raw.comfort_sport_plus};
    private int[] SPORT_VIDEO = {R.raw.sport_eco, R.raw.sport_comfort, this.NULL, R.raw.sport_sport_plus};
    private int[] SPORT_PLUS_VIDEO = {R.raw.sport_plus_eco, R.raw.sport_plus_comfort, R.raw.sport_plus_sport, this.NULL};
    private int[] ECO_VIDEO_NO_GAC = {this.NULL, R.raw.eco_comfort_no_gac, R.raw.eco_sport_no_gac, R.raw.eco_sport_plus_no_gac};
    private int[] COMFORT_VIDEO_NO_GAC = {R.raw.comfort_eco_no_gac, this.NULL, R.raw.comfort_sport_no_gac, R.raw.comfort_sport_plus_no_gac};
    private int[] SPORT_VIDEO_NO_GAC = {R.raw.sport_eco_no_gac, R.raw.sport_comfort_no_gac, this.NULL, R.raw.sport_sport_plus_no_gac};
    private int[] SPORT_PLUS_VIDEO_NO_GAC = {R.raw.sport_plus_eco_no_gac, R.raw.sport_plus_comfort_no_gac, R.raw.sport_plus_sport_no_gac, this.NULL};
    CarPowerManager.CarPowerListener carPowerListener = new CarPowerManager.CarPowerListener() { // from class: com.yftech.settings.avdc.DrivingModeFragment.1
        @Override // com.yftech.vehicle.sdk.CarPowerManager.CarPowerListener
        public void onPowerModeChanged(ICarPower.PowerMode powerMode) {
            super.onPowerModeChanged(powerMode);
            LogUtil.i(DrivingModeFragment.TAG, "onPowerModeChanged: " + powerMode);
            if (powerMode == ICarPower.PowerMode.ON) {
                DrivingModeFragment.this.mHandler.post(new Runnable() { // from class: com.yftech.settings.avdc.DrivingModeFragment.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        DrivingModeFragment.this.initViewData();
                    }
                });
            }
        }
    };
    private BaseManager.ModelCallback<CarDriveModeManager.Function> mCarDriveModeModelCallback = new BaseManager.ModelCallback<CarDriveModeManager.Function>() { // from class: com.yftech.settings.avdc.DrivingModeFragment.2
        @Override // com.yftech.settings.manager.BaseManager.ModelCallback
        public void onOptionChanged(CarDriveModeManager.Function function, int i) {
            super.onOptionChanged(function, i);
            DrivingModeFragment.this.setOptionText(function, i);
        }

        @Override // com.yftech.settings.manager.BaseManager.ModelCallback
        public void onTimeout() {
            super.onTimeout();
            DrivingModeFragment.this.initCarDriveModeViewData();
        }

        @Override // com.yftech.settings.manager.BaseManager.ModelCallback
        public void onValueChanged(CarDriveModeManager.Function function, Object obj) {
            super.onValueChanged(function, obj);
            Log.d(DrivingModeFragment.TAG, "onValueChanged: ");
            if (function == CarDriveModeManager.Function.DRIVE_MODE_VALUE) {
                ICarDrive.DriveMode driveMode = (ICarDrive.DriveMode) obj;
                DrivingModeFragment.this.play(driveMode);
                DrivingModeFragment.this.tempDriveMode = driveMode;
            }
        }
    };
    private BaseManager.ModelCallback<CarPartsManager.Function> mCarPartsModelCallback = new BaseManager.ModelCallback<CarPartsManager.Function>() { // from class: com.yftech.settings.avdc.DrivingModeFragment.3
        @Override // com.yftech.settings.manager.BaseManager.ModelCallback
        public void onOptionChanged(CarPartsManager.Function function, int i) {
            super.onOptionChanged(function, i);
            DrivingModeFragment.this.setOptionText(function, i);
        }

        @Override // com.yftech.settings.manager.BaseManager.ModelCallback
        public void onTimeout() {
            super.onTimeout();
            DrivingModeFragment.this.initCarPartsViewData();
        }
    };

    /* JADX INFO: renamed from: com.yftech.settings.avdc.DrivingModeFragment$6, reason: invalid class name */
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
            try {
                $SwitchMap$com$yftech$vehicle$internal$adapter$ICarDrive$DriveMode[ICarDrive.DriveMode.SPORT_PLUS_MODE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $SwitchMap$com$yftech$settings$manager$CarPartsManager$Function = new int[CarPartsManager.Function.values().length];
            try {
                $SwitchMap$com$yftech$settings$manager$CarPartsManager$Function[CarPartsManager.Function.AC_COMFORT_CURVE_MODE_OPTION.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            $SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function = new int[CarDriveModeManager.Function.values().length];
            try {
                $SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function[CarDriveModeManager.Function.EPS_STYLE_OPTION.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function[CarDriveModeManager.Function.TCU_DRIVE_MODE_OPTION.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function[CarDriveModeManager.Function.ESP_STYLE_OPTION.ordinal()] = 3;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function[CarDriveModeManager.Function.DRIVE_MODE_VALUE.ordinal()] = 4;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    private String getFunctionStr(CarDriveModeManager.Function function, int i) {
        return (AnonymousClass6.$SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function[function.ordinal()] == 1 && i >= 0 && i < this.EPS_STYLE.length) ? this.EPS_STYLE[i] : "";
    }

    private String getFunctionStr(CarPartsManager.Function function, int i) {
        int i2 = AnonymousClass6.$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function[function.ordinal()];
        return "";
    }

    public static DrivingModeFragment getInstance() {
        if (mInstance == null) {
            mInstance = new DrivingModeFragment();
        }
        return mInstance;
    }

    private int[] getVideoId(ICarDrive.DriveMode driveMode) {
        if (!Utils.isGACLogoPresent()) {
            return getVideoIdNoGac(driveMode);
        }
        switch (driveMode) {
            case ECO_PRO_MODE:
                return this.ECO_VIDEO;
            case COMFORT_MODE:
                return this.COMFORT_VIDEO;
            case SPORT_MODE:
                return this.SPORT_VIDEO;
            case SPORT_PLUS_MODE:
                return this.SPORT_PLUS_VIDEO;
            default:
                return new int[]{0};
        }
    }

    private int[] getVideoIdNoGac(ICarDrive.DriveMode driveMode) {
        switch (driveMode) {
            case ECO_PRO_MODE:
                return this.ECO_VIDEO_NO_GAC;
            case COMFORT_MODE:
                return this.COMFORT_VIDEO_NO_GAC;
            case SPORT_MODE:
                return this.SPORT_VIDEO_NO_GAC;
            case SPORT_PLUS_MODE:
                return this.SPORT_PLUS_VIDEO_NO_GAC;
            default:
                return new int[]{0};
        }
    }

    private int getVideoIndex(ICarDrive.DriveMode driveMode) {
        int i = this.NULL;
        for (int i2 = 0; i2 < this.driveMode.length; i2++) {
            if (this.driveMode[i2] == driveMode) {
                i = i2;
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initCarDriveModeViewData() {
        this.tempDriveMode = (ICarDrive.DriveMode) CarDriveModeManager.getInstance().getValue(CarDriveModeManager.Function.DRIVE_MODE_VALUE);
        if (CarDriveModeManager.getInstance().getFunctionPresent(CarDriveModeManager.Function.DRIVE_MODE_VALUE)) {
            setValueView(CarDriveModeManager.Function.DRIVE_MODE_VALUE, CarDriveModeManager.getInstance().getValue(CarDriveModeManager.Function.DRIVE_MODE_VALUE));
        }
        if (CarDriveModeManager.getInstance().getFunctionPresent(CarDriveModeManager.Function.EPS_STYLE_OPTION)) {
            setOptionText(CarDriveModeManager.Function.EPS_STYLE_OPTION, CarDriveModeManager.getInstance().getOption(CarDriveModeManager.Function.EPS_STYLE_OPTION));
        }
        setOptionText(CarDriveModeManager.Function.TCU_DRIVE_MODE_OPTION, CarDriveModeManager.getInstance().getOption(CarDriveModeManager.Function.TCU_DRIVE_MODE_OPTION));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initCarPartsViewData() {
        if (CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.AC_COMFORT_CURVE_MODE_OPTION)) {
            setOptionText(CarPartsManager.Function.AC_COMFORT_CURVE_MODE_OPTION, CarPartsManager.getInstance().getOption(CarPartsManager.Function.AC_COMFORT_CURVE_MODE_OPTION));
        }
    }

    private void initView(View view) {
        this.mySoundPool = new MySoundPool(SettingsApp.getInstance());
        this.drivingMode = (RelativeLayout) view.findViewById(R.id.avdc_driving_mode);
        this.modeSettingBg = (VideoView) view.findViewById(R.id.driving_mode_bg);
        this.tvPower = (TextView) view.findViewById(R.id.avdc_driving_mode_value_power_tcu);
        this.tvDirection = (TextView) view.findViewById(R.id.avdc_driving_mode_value_direction);
        this.tvESPStyle = (TextView) view.findViewById(R.id.avdc_driving_mode_value_ESP_style);
        this.btnEco = (Button) view.findViewById(R.id.avdc_driving_mode_btn_eco);
        this.btnComfort = (Button) view.findViewById(R.id.avdc_driving_mode_btn_comfort);
        this.btnSport = (Button) view.findViewById(R.id.avdc_driving_mode_btn_sport);
        this.btnSportPlus = (Button) view.findViewById(R.id.avdc_driving_mode_btn_sport_plus);
        this.btnSportPlus.setVisibility(CarConfig.isSportPlusPresent() ? 0 : 8);
        this.btnEco.setOnClickListener(this);
        this.btnComfort.setOnClickListener(this);
        this.btnSport.setOnClickListener(this);
        this.btnSportPlus.setOnClickListener(this);
        this.btnEco.setOnTouchListener(this);
        this.btnComfort.setOnTouchListener(this);
        this.btnSport.setOnTouchListener(this);
        this.btnSportPlus.setOnTouchListener(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initViewData() {
        initCarDriveModeViewData();
        initCarPartsViewData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void play(ICarDrive.DriveMode driveMode) {
        int i;
        this.btnEco.setSelected(false);
        this.btnComfort.setSelected(false);
        this.btnSport.setSelected(false);
        this.btnSportPlus.setSelected(false);
        if (driveMode == ICarDrive.DriveMode.ECO_PRO_MODE) {
            this.btnEco.setSelected(true);
        } else if (driveMode == ICarDrive.DriveMode.COMFORT_MODE) {
            this.btnComfort.setSelected(true);
        } else if (driveMode == ICarDrive.DriveMode.SPORT_MODE) {
            this.btnSport.setSelected(true);
        } else if (driveMode == ICarDrive.DriveMode.SPORT_PLUS_MODE) {
            this.btnSportPlus.setSelected(true);
        }
        int[] videoId = getVideoId(this.tempDriveMode);
        if (videoId.length == 0 || (i = videoId[getVideoIndex(driveMode)]) == this.NULL) {
            return;
        }
        this.modeSettingBg.setVideoPath(Uri.parse("android.resource://com.yftech.settings/" + i).toString());
        this.modeSettingBg.start();
        this.modeSettingBg.setOnPreparedListener(new MediaPlayer.OnPreparedListener() { // from class: com.yftech.settings.avdc.DrivingModeFragment.4
            @Override // android.media.MediaPlayer.OnPreparedListener
            public void onPrepared(MediaPlayer mediaPlayer) {
                mediaPlayer.setOnInfoListener(new MediaPlayer.OnInfoListener() { // from class: com.yftech.settings.avdc.DrivingModeFragment.4.1
                    @Override // android.media.MediaPlayer.OnInfoListener
                    public boolean onInfo(MediaPlayer mediaPlayer2, int i2, int i3) {
                        if (i2 == 3) {
                            DrivingModeFragment.this.modeSettingBg.setBackgroundResource(0);
                        }
                        return false;
                    }
                });
            }
        });
        this.modeSettingBg.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: com.yftech.settings.avdc.DrivingModeFragment.5
            @Override // android.media.MediaPlayer.OnCompletionListener
            public void onCompletion(MediaPlayer mediaPlayer) {
                DrivingModeFragment.this.updateView((ICarDrive.DriveMode) CarDriveModeManager.getInstance().getValue(CarDriveModeManager.Function.DRIVE_MODE_VALUE));
                DrivingModeFragment.this.modeSettingBg.suspend();
                LogUtil.i(DrivingModeFragment.TAG, "onCompletion: VideoView play complete !!");
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setOptionText(CarDriveModeManager.Function function, int i) {
        switch (function) {
            case EPS_STYLE_OPTION:
                this.tvDirection.setText(getFunctionStr(function, i));
                break;
            case TCU_DRIVE_MODE_OPTION:
                this.tvPower.setText(this.TCU_DRIVE_MODE[i]);
                break;
            case ESP_STYLE_OPTION:
                this.tvESPStyle.setText(this.ESP_STYLE[i]);
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setOptionText(CarPartsManager.Function function, int i) {
        int i2 = AnonymousClass6.$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function[function.ordinal()];
    }

    private void setValueView(CarDriveModeManager.Function function, Object obj) {
        if (AnonymousClass6.$SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function[function.ordinal()] != 4) {
            return;
        }
        Log.i(TAG, "setValueView: function:" + function);
        if (this.modeSettingBg.isPlaying()) {
            LogUtil.i(TAG, "VideoView is playing ！！");
        } else {
            updateView((ICarDrive.DriveMode) obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateView(ICarDrive.DriveMode driveMode) {
        LogUtil.i(TAG, "updateView()" + driveMode);
        this.btnEco.setSelected(false);
        this.btnComfort.setSelected(false);
        this.btnSport.setSelected(false);
        this.btnSportPlus.setSelected(false);
        if (driveMode == ICarDrive.DriveMode.ECO_PRO_MODE) {
            this.btnEco.setSelected(true);
            if (Utils.isGACLogoPresent()) {
                this.modeSettingBg.setBackgroundResource(R.mipmap.avdc_eco_bg);
            } else {
                this.modeSettingBg.setBackgroundResource(R.mipmap.avdc_eco_bg_no_gac);
            }
        } else if (driveMode == ICarDrive.DriveMode.COMFORT_MODE) {
            this.btnComfort.setSelected(true);
            if (Utils.isGACLogoPresent()) {
                this.modeSettingBg.setBackgroundResource(R.mipmap.avdc_comfort_bg);
            } else {
                this.modeSettingBg.setBackgroundResource(R.mipmap.avdc_comfort_bg_no_gac);
            }
        } else if (driveMode == ICarDrive.DriveMode.SPORT_MODE) {
            this.btnSport.setSelected(true);
            if (Utils.isGACLogoPresent()) {
                this.modeSettingBg.setBackgroundResource(R.mipmap.avdc_sport_bg);
            } else {
                this.modeSettingBg.setBackgroundResource(R.mipmap.avdc_sport_bg_no_gac);
            }
        } else if (driveMode == ICarDrive.DriveMode.SPORT_PLUS_MODE) {
            this.btnSportPlus.setSelected(true);
            if (Utils.isGACLogoPresent()) {
                this.modeSettingBg.setBackgroundResource(R.mipmap.avdc_sport_plus_bg);
            } else {
                this.modeSettingBg.setBackgroundResource(R.mipmap.avdc_sport_plus_bg_no_gac);
            }
        }
        this.tvESPStyle.setText(this.ESP_STYLE[CarDriveModeManager.getInstance().getOption(CarDriveModeManager.Function.ESP_STYLE_OPTION)]);
    }

    @Override // com.yftech.settings.BaseFragment
    protected void dismissAllDialog() {
        super.dismissAllDialog();
        if (this.drivingModeTrackDialDialog == null || !this.drivingModeTrackDialDialog.isShowing()) {
            return;
        }
        this.drivingModeTrackDialDialog.dismiss();
    }

    @Override // android.view.View.OnClickListener
    @SuppressLint({"NonConstantResourceId"})
    public void onClick(View view) {
        if (this.checkBtn != null) {
            this.checkBtn.setSelected(false);
        }
        switch (view.getId()) {
            case R.id.avdc_driving_mode_btn_comfort /* 2131230772 */:
                play(ICarDrive.DriveMode.COMFORT_MODE);
                CarDriveModeManager.getInstance().setValue(CarDriveModeManager.Function.DRIVE_MODE_VALUE, (Object) ICarDrive.DriveMode.COMFORT_MODE);
                this.tempDriveMode = ICarDrive.DriveMode.COMFORT_MODE;
                break;
            case R.id.avdc_driving_mode_btn_eco /* 2131230773 */:
                play(ICarDrive.DriveMode.ECO_PRO_MODE);
                CarDriveModeManager.getInstance().setValue(CarDriveModeManager.Function.DRIVE_MODE_VALUE, (Object) ICarDrive.DriveMode.ECO_PRO_MODE);
                this.tempDriveMode = ICarDrive.DriveMode.ECO_PRO_MODE;
                break;
            case R.id.avdc_driving_mode_btn_sport /* 2131230774 */:
                play(ICarDrive.DriveMode.SPORT_MODE);
                CarDriveModeManager.getInstance().setValue(CarDriveModeManager.Function.DRIVE_MODE_VALUE, (Object) ICarDrive.DriveMode.SPORT_MODE);
                this.tempDriveMode = ICarDrive.DriveMode.SPORT_MODE;
                break;
            case R.id.avdc_driving_mode_btn_sport_plus /* 2131230775 */:
                play(ICarDrive.DriveMode.SPORT_PLUS_MODE);
                CarDriveModeManager.getInstance().setValue(CarDriveModeManager.Function.DRIVE_MODE_VALUE, (Object) ICarDrive.DriveMode.SPORT_PLUS_MODE);
                this.tempDriveMode = ICarDrive.DriveMode.SPORT_PLUS_MODE;
                break;
        }
    }

    @Override // android.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, Bundle bundle) {
        LogUtil.i(TAG, "onCreateView: ");
        View viewInflate = Locale.US.getLanguage().equals(Locale.getDefault().getLanguage()) ? layoutInflater.inflate(R.layout.fragment_avdc_driving_mode_en, viewGroup, false) : layoutInflater.inflate(R.layout.fragment_avdc_driving_mode, viewGroup, false);
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
        CarPowerManager.get().unregisterListener(this.carPowerListener);
        LogUtil.i(TAG, "onPause: ");
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        this.ESP_STYLE = getResources().getStringArray(R.array.avdc_ESP_style_a79);
        this.EPS_STYLE = getResources().getStringArray(R.array.avdc_steering_steering_hand_a79);
        initViewData();
        CarDriveModeManager.getInstance().registerModelCallback(this.mCarDriveModeModelCallback);
        CarPartsManager.getInstance().registerModelCallback(this.mCarPartsModelCallback);
        CarPowerManager.get().registerListener(this.carPowerListener);
        LogUtil.i(TAG, "onResume: ");
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        this.TCU_DRIVE_MODE = getResources().getStringArray(R.array.avdc_tcu_drive_mode);
    }

    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
        CarDriveModeManager.getInstance().unregisterModelCallback(this.mCarDriveModeModelCallback);
        CarPartsManager.getInstance().unregisterModelCallback(this.mCarPartsModelCallback);
        LogUtil.i(TAG, "onStop: ");
    }
}
