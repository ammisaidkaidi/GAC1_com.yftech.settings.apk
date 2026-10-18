package com.yftech.settings.display;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.yftech.car.data.CarDataManager;
import com.yftech.settings.BaseFragment;
import com.yftech.settings.R;
import com.yftech.settings.manager.BaseManager;
import com.yftech.settings.manager.SettingsManager;
import com.yftech.settings.utils.LogUtil;
import com.yftech.settings.utils.Utils;
import com.yftech.settings.utils.WallpaperUtils;
import com.yftech.settings.widget.MultiSelectView;
import com.yftech.settings.widget.RoundedImageView;
import com.yftech.settings.widget.SeekBarNumber;
import com.yftech.settings.widget.dialog.WallpaperDialog;
import com.yftech.vehicle.sdk.HostConfig;
import java.io.File;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class DisplayConsoleFragment extends BaseFragment implements SeekBarNumber.OnSeekChangeListener, MultiSelectView.OnSwitchListener, View.OnClickListener {
    private static final int BRIGHTNESS_PROGRESS_MIN = 0;
    private static final String KEY_FOR_LAST_SCREEN_BRIGHTNESS = "last_screen_brightness";
    private static final String TAG = "DisplayConsoleFragment";
    private static final String WALLPAPER_SETTING_ACTION = "com.yftech.multimedia.action.wallpaper.setting";
    private static final String WALLPAPER_SETTING_DATA = "com.yftech.multimedia.data.wallpaper.setting";
    private SeekBarNumber mBrightnessSB;
    private ImageView mIvBrightnessIcon;
    private int mProgresss;
    private RoundedImageView mRivWallpaper;
    private MultiSelectView mSmbAcShowTime;
    private WallpaperBroadcastReceiver mWallpaperBroadcastReceiver;
    private WallpaperDialog mWallpaperDialog;
    private String wallpaperPath;
    private long lastProgressChangedTime = 0;
    private Handler mHandler = new Handler();
    private BaseManager.ModelCallback<SettingsManager.Function> mSettingsModelCallback = new BaseManager.ModelCallback<SettingsManager.Function>() { // from class: com.yftech.settings.display.DisplayConsoleFragment.1
        @Override // com.yftech.settings.manager.BaseManager.ModelCallback
        public void onOptionChanged(SettingsManager.Function function, int i) {
            super.onOptionChanged(function, i);
            DisplayConsoleFragment.this.setSwitchMultiButtonView(function, i);
        }

        @Override // com.yftech.settings.manager.BaseManager.ModelCallback
        public void onValueChanged(SettingsManager.Function function, Object obj) {
            super.onValueChanged(function, obj);
            DisplayConsoleFragment.this.setValueView(function, obj);
        }
    };
    private Runnable wallpaperSettingRunnable = new Runnable() { // from class: com.yftech.settings.display.DisplayConsoleFragment.2
        @Override // java.lang.Runnable
        public void run() {
            if (DisplayConsoleFragment.this.wallpaperPath != null) {
                DisplayConsoleFragment.this.mRivWallpaper.setImageBitmap(BitmapFactory.decodeFile(DisplayConsoleFragment.this.wallpaperPath));
            }
        }
    };

    /* JADX INFO: renamed from: com.yftech.settings.display.DisplayConsoleFragment$3, reason: invalid class name */
    static /* synthetic */ class AnonymousClass3 {
        static final /* synthetic */ int[] $SwitchMap$com$yftech$settings$manager$SettingsManager$Function = new int[SettingsManager.Function.values().length];

        static {
            try {
                $SwitchMap$com$yftech$settings$manager$SettingsManager$Function[SettingsManager.Function.AC_VIEW_HOLD_TIME_OPTION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$yftech$settings$manager$SettingsManager$Function[SettingsManager.Function.SCREEN_BRIGHTNESS_VALUE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    private class WallpaperBroadcastReceiver extends BroadcastReceiver {
        private WallpaperBroadcastReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String stringExtra = intent.getStringExtra("com.yftech.multimedia.data.wallpaper.setting");
            Log.i(DisplayConsoleFragment.TAG, "WallpaperBroadcastReceiver onReceive path:" + stringExtra);
            DisplayConsoleFragment.this.wallpaperPath = stringExtra;
            DisplayConsoleFragment.this.mHandler.post(DisplayConsoleFragment.this.wallpaperSettingRunnable);
        }
    }

    private int getBrightnessIcon(int i) {
        if (i <= 0) {
            return R.mipmap.set_03_icon_common_light_light_off;
        }
        if (i > 33 || i <= 0) {
            return (i > 66 || i <= 33) ? R.mipmap.set_03_icon_common_light_light_on_03 : R.mipmap.set_03_icon_common_light_light_on_02;
        }
        return R.mipmap.set_03_icon_common_light_light_on_01;
    }

    private int getScreenBrightness() {
        int iIntValue = ((Integer) SettingsManager.getInstance().getValue(SettingsManager.Function.SCREEN_BRIGHTNESS_VALUE)).intValue();
        int iOriginalToProgressBrightness = originalToProgressBrightness(iIntValue);
        LogUtil.i(TAG, "getScreenBrightness originalBrightness:" + iIntValue + ", brightness:" + iOriginalToProgressBrightness);
        return iOriginalToProgressBrightness;
    }

    private void handleBrightnessChanged(int i) {
        setScreenBrightness(i);
        this.mIvBrightnessIcon.setImageResource(getBrightnessIcon(i));
    }

    private void initView(View view) {
        LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.consoleBrightness);
        ((TextView) linearLayout.findViewById(R.id.tvTitle)).setText(R.string.console_item_brightness);
        this.mIvBrightnessIcon = (ImageView) linearLayout.findViewById(R.id.ivIcon);
        this.mBrightnessSB = (SeekBarNumber) linearLayout.findViewById(R.id.seekBarNumber);
        this.mBrightnessSB.setTag(Integer.valueOf(R.id.consoleBrightness));
        this.mBrightnessSB.setMax(((Integer) SettingsManager.getInstance().getValue(SettingsManager.Function.SCREEN_BRIGHTNESS_MAX_GET_VALUE)).intValue());
        this.mBrightnessSB.setOnSeekChangeListener(this);
        this.mIvBrightnessIcon.setTag(Integer.valueOf(R.id.consoleBrightness));
        this.mIvBrightnessIcon.setOnClickListener(this);
        LinearLayout linearLayout2 = (LinearLayout) view.findViewById(R.id.consoleAcShowTime);
        linearLayout2.setVisibility(SettingsManager.getInstance().getFunctionPresent(SettingsManager.Function.AC_VIEW_HOLD_TIME_OPTION) ? 0 : 8);
        ((TextView) linearLayout2.findViewById(R.id.tvTitle)).setText(R.string.console_item_ac_show_time);
        this.mSmbAcShowTime = (MultiSelectView) linearLayout2.findViewById(R.id.multiSelectView);
        this.mSmbAcShowTime.setTag(Integer.valueOf(R.id.consoleAcShowTime));
        this.mSmbAcShowTime.setText(getResources().getStringArray(R.array.console_ac_show_time));
        this.mSmbAcShowTime.setOnSwitchListener(this);
        RelativeLayout relativeLayout = (RelativeLayout) view.findViewById(R.id.consoleDesktopWallpaper);
        relativeLayout.setVisibility(HostConfig.isWallpaperPresent() ? 0 : 8);
        ((TextView) relativeLayout.findViewById(R.id.tvTitle)).setText(R.string.console_item_wallpaper);
        ((Button) relativeLayout.findViewById(R.id.btn_wallpaper)).setTag(Integer.valueOf(R.id.btn_wallpaper));
        ((Button) relativeLayout.findViewById(R.id.btn_wallpaper)).setOnClickListener(this);
        this.mRivWallpaper = (RoundedImageView) relativeLayout.findViewById(R.id.iv_wallpaper);
        this.mRivWallpaper.setTag(Integer.valueOf(R.id.consoleDesktopWallpaper));
        this.mRivWallpaper.setOnClickListener(this);
        if (new Locale("es").getLanguage().equals(Locale.getDefault().getLanguage())) {
            ((Button) relativeLayout.findViewById(R.id.btn_wallpaper)).setGravity(49);
            ((Button) relativeLayout.findViewById(R.id.btn_wallpaper)).setTextSize(24.0f);
        }
    }

    private void initViewData() {
        setBrightnessProgress(getScreenBrightness());
        setSwitchMultiButtonView(SettingsManager.Function.AC_VIEW_HOLD_TIME_OPTION, SettingsManager.getInstance().getOption(SettingsManager.Function.AC_VIEW_HOLD_TIME_OPTION));
    }

    private int originalToProgressBrightness(int i) {
        return i;
    }

    private int progressToOriginalBrightness(int i) {
        return i;
    }

    private void setBrightnessProgress(int i) {
        LogUtil.i(TAG, "setBrightnessProgress progress:" + i);
        this.mBrightnessSB.setProgress(i);
        this.mIvBrightnessIcon.setImageResource(getBrightnessIcon(i));
    }

    private void setScreenBrightness(int i) {
        int iProgressToOriginalBrightness = progressToOriginalBrightness(i);
        LogUtil.i(TAG, "setScreenBrightness, brightness:" + i + ", originalBrightness:" + iProgressToOriginalBrightness + ", ret:" + SettingsManager.getInstance().setValue(SettingsManager.Function.SCREEN_BRIGHTNESS_VALUE, (Object) Integer.valueOf(iProgressToOriginalBrightness)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSwitchMultiButtonView(SettingsManager.Function function, int i) {
        MultiSelectView multiSelectView = AnonymousClass3.$SwitchMap$com$yftech$settings$manager$SettingsManager$Function[function.ordinal()] != 1 ? null : this.mSmbAcShowTime;
        if (multiSelectView == null || multiSelectView.getTabNum() == i) {
            return;
        }
        multiSelectView.setSelectedTab(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValueView(SettingsManager.Function function, Object obj) {
        int iOriginalToProgressBrightness;
        if (AnonymousClass3.$SwitchMap$com$yftech$settings$manager$SettingsManager$Function[function.ordinal()] == 2 && (iOriginalToProgressBrightness = originalToProgressBrightness(((Integer) obj).intValue())) != this.mBrightnessSB.getProgress()) {
            setBrightnessProgress(iOriginalToProgressBrightness);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int iIntValue = ((Integer) view.getTag()).intValue();
        if (iIntValue != R.id.btn_wallpaper) {
            switch (iIntValue) {
                case R.id.consoleBrightness /* 2131230871 */:
                    int progress = this.mBrightnessSB.getProgress();
                    if (progress <= 0) {
                        int i = CarDataManager.getInt(KEY_FOR_LAST_SCREEN_BRIGHTNESS, 1);
                        LogUtil.i(TAG, "getInt(KEY_FOR_LAST_SCREEN_BRIGHTNESS): " + i);
                        SettingsManager.getInstance().setValue(SettingsManager.Function.SCREEN_BRIGHTNESS_VALUE, (Object) Integer.valueOf(i));
                    } else {
                        CarDataManager.setInt(KEY_FOR_LAST_SCREEN_BRIGHTNESS, progress, true);
                        LogUtil.i(TAG, "setInt(KEY_FOR_LAST_SCREEN_BRIGHTNESS): " + progress);
                        SettingsManager.getInstance().setValue(SettingsManager.Function.SCREEN_BRIGHTNESS_VALUE, (Object) 0);
                    }
                    break;
            }
        }
        this.mWallpaperDialog = new WallpaperDialog(getContext().getApplicationContext());
        this.mWallpaperDialog.show();
    }

    @Override // android.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_display_console, viewGroup, false);
        initView(viewInflate);
        return viewInflate;
    }

    @Override // com.yftech.settings.BaseFragment, android.app.Fragment
    public void onPause() {
        super.onPause();
        SettingsManager.getInstance().unregisterModelCallback(this.mSettingsModelCallback);
        if (this.mWallpaperDialog != null) {
            this.mWallpaperDialog.dismiss();
        }
        getContext().getApplicationContext().unregisterReceiver(this.mWallpaperBroadcastReceiver);
    }

    @Override // com.yftech.settings.widget.SeekBarNumber.OnSeekChangeListener
    public void onProgressChanged(SeekBarNumber seekBarNumber, int i) {
        if (((Integer) seekBarNumber.getTag()).intValue() != R.id.consoleBrightness) {
            return;
        }
        if (Utils.progressChangedEnable(this.lastProgressChangedTime)) {
            handleBrightnessChanged(i);
            this.lastProgressChangedTime = SystemClock.elapsedRealtime();
        }
        this.mProgresss = i;
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        initViewData();
        SettingsManager.getInstance().registerModelCallback(this.mSettingsModelCallback);
        IntentFilter intentFilter = new IntentFilter("com.yftech.multimedia.action.wallpaper.setting");
        this.mWallpaperBroadcastReceiver = new WallpaperBroadcastReceiver();
        getContext().getApplicationContext().registerReceiver(this.mWallpaperBroadcastReceiver, intentFilter);
        String wallPaperOutputPath = WallpaperUtils.getWallPaperOutputPath();
        File file = new File(wallPaperOutputPath);
        if (TextUtils.isEmpty(wallPaperOutputPath) || !file.exists()) {
            return;
        }
        this.mRivWallpaper.setImageBitmap(BitmapFactory.decodeFile(wallPaperOutputPath));
    }

    @Override // com.yftech.settings.widget.SeekBarNumber.OnSeekChangeListener
    public void onStartTrackingTouch(SeekBarNumber seekBarNumber) {
    }

    @Override // com.yftech.settings.widget.SeekBarNumber.OnSeekChangeListener
    public void onStopTrackingTouch(SeekBarNumber seekBarNumber) {
        Log.d(TAG, "onStopTrackingTouch: " + this.mProgresss);
        if (((Integer) seekBarNumber.getTag()).intValue() != R.id.consoleBrightness) {
            return;
        }
        if (seekBarNumber.getProgress() > 0) {
            CarDataManager.setInt(KEY_FOR_LAST_SCREEN_BRIGHTNESS, seekBarNumber.getProgress(), true);
        }
        handleBrightnessChanged(seekBarNumber.getProgress());
        this.lastProgressChangedTime = SystemClock.elapsedRealtime();
    }

    @Override // com.yftech.settings.widget.MultiSelectView.OnSwitchListener
    public void onSwitch(MultiSelectView multiSelectView, int i, String str, boolean z) {
        if (z) {
            SettingsManager.Function function = SettingsManager.Function.UNKNOWN;
            if (((Integer) multiSelectView.getTag()).intValue() == R.id.consoleAcShowTime) {
                function = SettingsManager.Function.AC_VIEW_HOLD_TIME_OPTION;
            }
            if (function != SettingsManager.Function.UNKNOWN) {
                SettingsManager.getInstance().setOption(function, i);
            }
        }
    }
}
