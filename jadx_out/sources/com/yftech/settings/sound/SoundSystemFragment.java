package com.yftech.settings.sound;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.yftech.settings.BaseFragment;
import com.yftech.settings.R;
import com.yftech.settings.manager.BaseManager;
import com.yftech.settings.manager.CarPartsManager;
import com.yftech.settings.manager.SoundManager;
import com.yftech.settings.manager.SoundVolumeManager;
import com.yftech.settings.utils.LogUtil;
import com.yftech.settings.utils.Utils;
import com.yftech.settings.widget.MultiSelectView;
import com.yftech.settings.widget.SeekBarNumber;
import com.yftech.settings.widget.SoundStage;
import com.yftech.settings.widget.Switcher;
import com.yftech.vehicle.internal.adapter.ICarConfig;
import com.yftech.vehicle.sdk.CarConfig;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class SoundSystemFragment extends BaseFragment implements SeekBarNumber.OnSeekChangeListener, SoundStage.OnThumbPositionChanged, View.OnClickListener, CompoundButton.OnCheckedChangeListener, MultiSelectView.OnSwitchListener, SoundVolumeManager.SoundVolumeListener {
    private static final int DTS_INDEX_BASS = 2;
    private static final int DTS_INDEX_CLEAR = 1;
    private static final int DTS_INDEX_NATURAL = 0;
    private static final int DTS_INDEX_REST = 3;
    private static final int EQ_INDEX_CLASSIC = 0;
    private static final int EQ_INDEX_CUSTOM = 5;
    private static final int EQ_INDEX_DEFAULT = 4;
    private static final int EQ_INDEX_JAZZ = 2;
    private static final int EQ_INDEX_POP = 1;
    private static final int EQ_INDEX_ROCK = 3;
    private static final int MIN_DB = -10;
    private static final int MSG_UPDATE_STAGE_UI = 1;
    private static final int SEEK_BAR_MAX = 20;
    private static final String TAG = "SoundSystemFragment";
    private float bandHighInterval;
    private float bandLowInterval;
    private float bandMidInterval;
    private Button mBtnDtsBass;
    private Button mBtnDtsClear;
    private Button mBtnDtsNatural;
    private Button mBtnDtsRest;
    private Button mBtnEqClassic;
    private Button mBtnEqCustom;
    private Button mBtnEqDefault;
    private Button mBtnEqJazz;
    private Button mBtnEqPop;
    private Button mBtnEqRock;
    private SeekBarNumber mCallVolumeSB;
    private SeekBarNumber mHighSB;
    private ImageView mIvCallVolumeIcon;
    private ImageView mIvMediaVolumeIcon;
    private ImageView mIvNaviVolumeIcon;
    private ImageView mIvVoiceVolumeIcon;
    private LinearLayout mLlEqEffect;
    private LinearLayout mLlSoundSystemDTSMode;
    private SeekBarNumber mLowSB;
    private SeekBarNumber mMediaVolumeSB;
    private SeekBarNumber mMidSB;
    private SeekBarNumber mNaviVolumeSB;
    private MultiSelectView mSmbAidMediaSound;
    private MultiSelectView mSmbBestEffectPosition;
    private MultiSelectView mSmbVolumeByPower;
    private ImageView mSoundStageBg;
    private SoundStage mStage;
    private Switcher mSwUnlockingLockSound;
    private Switcher mSwVolumeBySpeed;
    private TextView mTvHighValue;
    private TextView mTvLowValue;
    private TextView mTvMidValue;
    private SeekBarNumber mVoiceVolumeSB;
    private int mLastCallVolume = 3;
    private int mLastVoiceVolume = 3;
    private int mLastNaviVolume = 0;
    private final ViewTreeObserver.OnGlobalLayoutListener mGlobalLayoutListener = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.yftech.settings.sound.SoundSystemFragment.1
        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            LogUtil.i(SoundSystemFragment.TAG, "onGlobalLayout, x:" + SoundSystemFragment.this.mStage.getX() + ", y:" + SoundSystemFragment.this.mStage.getY());
            SoundSystemFragment.this.mHandler.sendEmptyMessageDelayed(1, 10L);
            SoundSystemFragment.this.mStage.getViewTreeObserver().removeOnGlobalLayoutListener(SoundSystemFragment.this.mGlobalLayoutListener);
        }
    };
    private Handler mHandler = new Handler() { // from class: com.yftech.settings.sound.SoundSystemFragment.2
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            if (message.what == 1) {
                int[] iArr = (int[]) SoundManager.getInstance().getValue(SoundManager.Function.SOUND_DELAY_VALUE);
                LogUtil.i(SoundSystemFragment.TAG, "handleMessage() MSG_UPDATE_STAGE_UI x=" + iArr[0] + " y=" + iArr[1]);
                SoundSystemFragment.this.setValueView(SoundManager.Function.SOUND_DELAY_VALUE, iArr);
            }
        }
    };
    private BaseManager.ModelCallback<SoundManager.Function> mSoundModelCallback = new BaseManager.ModelCallback<SoundManager.Function>() { // from class: com.yftech.settings.sound.SoundSystemFragment.3
        @Override // com.yftech.settings.manager.BaseManager.ModelCallback
        public void onEnableChanged(SoundManager.Function function, boolean z) {
            super.onEnableChanged(function, z);
            SoundSystemFragment.this.setSwitcherView(function, z);
            if (SoundManager.Function.DTS_SOUND_POSITION_OPTION == function) {
                SoundSystemFragment.this.updateDtsView(function, z);
            }
        }

        @Override // com.yftech.settings.manager.BaseManager.ModelCallback
        public void onOptionChanged(SoundManager.Function function, int i) {
            super.onOptionChanged(function, i);
            SoundSystemFragment.this.setSwitchMultiButtonView(function, i);
        }

        @Override // com.yftech.settings.manager.BaseManager.ModelCallback
        public void onValueChanged(SoundManager.Function function, Object obj) {
            super.onValueChanged(function, obj);
            SoundSystemFragment.this.setValueView(function, obj);
        }
    };
    private BaseManager.ModelCallback<CarPartsManager.Function> mCarPartsModelCallback = new BaseManager.ModelCallback<CarPartsManager.Function>() { // from class: com.yftech.settings.sound.SoundSystemFragment.4
        @Override // com.yftech.settings.manager.BaseManager.ModelCallback
        public void onEnableChanged(CarPartsManager.Function function, boolean z) {
            super.onEnableChanged(function, z);
            SoundSystemFragment.this.setSwitcherView(function, z);
        }

        @Override // com.yftech.settings.manager.BaseManager.ModelCallback
        public void onTimeout() {
            super.onTimeout();
            SoundSystemFragment.this.initCarPartsViewData();
        }
    };

    /* JADX INFO: renamed from: com.yftech.settings.sound.SoundSystemFragment$5, reason: invalid class name */
    static /* synthetic */ class AnonymousClass5 {
        static final /* synthetic */ int[] $SwitchMap$com$yftech$settings$manager$CarPartsManager$Function = new int[CarPartsManager.Function.values().length];

        static {
            try {
                $SwitchMap$com$yftech$settings$manager$CarPartsManager$Function[CarPartsManager.Function.LOCK_UNLOCK_SOUND_ENABLED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            $SwitchMap$com$yftech$settings$manager$SoundManager$Function = new int[SoundManager.Function.values().length];
            try {
                $SwitchMap$com$yftech$settings$manager$SoundManager$Function[SoundManager.Function.BAND_HIGH_VALUE.ordinal()] = 1;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$yftech$settings$manager$SoundManager$Function[SoundManager.Function.BAND_MID_VALUE.ordinal()] = 2;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$yftech$settings$manager$SoundManager$Function[SoundManager.Function.BAND_LOW_VALUE.ordinal()] = 3;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$yftech$settings$manager$SoundManager$Function[SoundManager.Function.SPEED_GAIN_ENABLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$yftech$settings$manager$SoundManager$Function[SoundManager.Function.DTS_TYEP_OPTION.ordinal()] = 5;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$yftech$settings$manager$SoundManager$Function[SoundManager.Function.DTS_SOUND_POSITION_OPTION.ordinal()] = 6;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$yftech$settings$manager$SoundManager$Function[SoundManager.Function.EQ_TYPE_OPTION.ordinal()] = 7;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$yftech$settings$manager$SoundManager$Function[SoundManager.Function.BOOT_VOLUME_OPTION.ordinal()] = 8;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$yftech$settings$manager$SoundManager$Function[SoundManager.Function.KEEP_MUTE_WARNING_OPTION.ordinal()] = 9;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$yftech$settings$manager$SoundManager$Function[SoundManager.Function.SOUND_DELAY_VALUE.ordinal()] = 10;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    private float changeToOriginalBand(SoundManager.Function function, int i) {
        return (i + MIN_DB) * (getDbInterval(function) / 20.0f);
    }

    private int changeToProgress(SoundManager.Function function, float f) {
        return ((int) (f / (getDbInterval(function) / 20.0f))) + 10;
    }

    private float getDbInterval(SoundManager.Function function) {
        switch (function) {
            case BAND_HIGH_VALUE:
                return this.bandHighInterval;
            case BAND_MID_VALUE:
                return this.bandMidInterval;
            case BAND_LOW_VALUE:
                return this.bandLowInterval;
            default:
                return 20.0f;
        }
    }

    private int getVolumeIcon(int i, int i2) {
        if (i == 3) {
            if (i2 <= 0) {
                return R.mipmap.set_03_icon_common_volume_light_off;
            }
            if (i2 > 13 || i2 <= 0) {
                return (i2 > 26 || i2 <= 13) ? R.mipmap.set_03_icon_common_volume_light_on_03 : R.mipmap.set_03_icon_common_volume_light_on_02;
            }
            return R.mipmap.set_03_icon_common_volume_light_on_01;
        }
        if (i2 <= 0) {
            return R.mipmap.set_03_icon_common_volume_light_off;
        }
        if (i2 > 3 || i2 <= 0) {
            return (i2 > 6 || i2 <= 3) ? R.mipmap.set_03_icon_common_volume_light_on_03 : R.mipmap.set_03_icon_common_volume_light_on_02;
        }
        return R.mipmap.set_03_icon_common_volume_light_on_01;
    }

    private void handleBandsChanged(SoundManager.Function function, int i) {
        setBandsProgress(function, i);
        SoundManager.getInstance().setValue(function, (Object) Float.valueOf(changeToOriginalBand(function, i)));
    }

    private void handleVolumeChanged(int i, int i2) {
        ImageView imageView;
        ImageView imageView2;
        int i3 = 0;
        if (i == 3) {
            imageView = this.mIvMediaVolumeIcon;
        } else {
            if (i == 6) {
                imageView2 = this.mIvCallVolumeIcon;
            } else if (i == 9) {
                imageView2 = this.mIvVoiceVolumeIcon;
            } else {
                imageView = i == 11 ? this.mIvNaviVolumeIcon : null;
            }
            ImageView imageView3 = imageView2;
            i3 = 3;
            imageView = imageView3;
        }
        if (i2 < i3) {
            setVolumeProgress(i, i3);
            SoundVolumeManager.getInstance().slideVolume(i, i3);
        } else {
            SoundVolumeManager.getInstance().slideVolume(i, i2);
            if (imageView != null) {
                imageView.setImageResource(getVolumeIcon(i, i2));
            }
        }
    }

    private void initBands() {
        this.bandHighInterval = ((Float) SoundManager.getInstance().getValue(SoundManager.Function.BAND_HIGH_INTERVAL_VALUE)).floatValue();
        this.bandMidInterval = ((Float) SoundManager.getInstance().getValue(SoundManager.Function.BAND_MID_INTERVAL_VALUE)).floatValue();
        this.bandLowInterval = ((Float) SoundManager.getInstance().getValue(SoundManager.Function.BAND_LOW_INTERVAL_VALUE)).floatValue();
        float fFloatValue = ((Float) SoundManager.getInstance().getValue(SoundManager.Function.BAND_HIGH_VALUE)).floatValue();
        int iChangeToProgress = changeToProgress(SoundManager.Function.BAND_HIGH_VALUE, fFloatValue);
        setBandsProgress(SoundManager.Function.BAND_HIGH_VALUE, iChangeToProgress);
        float fFloatValue2 = ((Float) SoundManager.getInstance().getValue(SoundManager.Function.BAND_MID_VALUE)).floatValue();
        int iChangeToProgress2 = changeToProgress(SoundManager.Function.BAND_MID_VALUE, fFloatValue2);
        setBandsProgress(SoundManager.Function.BAND_MID_VALUE, iChangeToProgress2);
        float fFloatValue3 = ((Float) SoundManager.getInstance().getValue(SoundManager.Function.BAND_LOW_VALUE)).floatValue();
        int iChangeToProgress3 = changeToProgress(SoundManager.Function.BAND_LOW_VALUE, fFloatValue3);
        setBandsProgress(SoundManager.Function.BAND_LOW_VALUE, iChangeToProgress3);
        LogUtil.i(TAG, "initBands bandCurValueHigh:" + fFloatValue + ", bandCurValueMid:" + fFloatValue2 + ", bandCurValueLow:" + fFloatValue3 + ", progressHigh:" + iChangeToProgress + ", progressMid:" + iChangeToProgress2 + ", progressLow:" + iChangeToProgress3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initCarPartsViewData() {
        if (CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.LOCK_UNLOCK_SOUND_ENABLED)) {
            setSwitcherView(CarPartsManager.Function.LOCK_UNLOCK_SOUND_ENABLED, CarPartsManager.getInstance().getEnabled(CarPartsManager.Function.LOCK_UNLOCK_SOUND_ENABLED));
        }
    }

    private void initView(View view) {
        LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.soundSystemMediaVolume);
        ((TextView) linearLayout.findViewById(R.id.tvTitle)).setText(R.string.sound_system_item_media_volume);
        this.mIvMediaVolumeIcon = (ImageView) linearLayout.findViewById(R.id.ivIcon);
        this.mIvMediaVolumeIcon.setTag(Integer.valueOf(R.id.soundSystemMediaVolume));
        this.mIvMediaVolumeIcon.setOnClickListener(this);
        this.mMediaVolumeSB = (SeekBarNumber) linearLayout.findViewById(R.id.seekBarNumber);
        this.mMediaVolumeSB.setTag(Integer.valueOf(R.id.soundSystemMediaVolume));
        this.mMediaVolumeSB.setOnSeekChangeListener(this);
        LinearLayout linearLayout2 = (LinearLayout) view.findViewById(R.id.soundSystemPhoneVolume);
        ((TextView) linearLayout2.findViewById(R.id.tvTitle)).setText(R.string.sound_system_item_phone_volume);
        this.mIvCallVolumeIcon = (ImageView) linearLayout2.findViewById(R.id.ivIcon);
        this.mIvCallVolumeIcon.setTag(Integer.valueOf(R.id.soundSystemPhoneVolume));
        this.mIvCallVolumeIcon.setOnClickListener(this);
        this.mCallVolumeSB = (SeekBarNumber) linearLayout2.findViewById(R.id.seekBarNumber);
        this.mCallVolumeSB.setTag(Integer.valueOf(R.id.soundSystemPhoneVolume));
        this.mCallVolumeSB.setOnSeekChangeListener(this);
        LinearLayout linearLayout3 = (LinearLayout) view.findViewById(R.id.soundSystemVoiceVolume);
        ((TextView) linearLayout3.findViewById(R.id.tvTitle)).setText(R.string.sound_system_item_voice_volume);
        this.mIvVoiceVolumeIcon = (ImageView) linearLayout3.findViewById(R.id.ivIcon);
        this.mIvVoiceVolumeIcon.setTag(Integer.valueOf(R.id.soundSystemVoiceVolume));
        this.mIvVoiceVolumeIcon.setOnClickListener(this);
        this.mVoiceVolumeSB = (SeekBarNumber) linearLayout3.findViewById(R.id.seekBarNumber);
        this.mVoiceVolumeSB.setTag(Integer.valueOf(R.id.soundSystemVoiceVolume));
        this.mVoiceVolumeSB.setOnSeekChangeListener(this);
        linearLayout3.setVisibility(8);
        LinearLayout linearLayout4 = (LinearLayout) view.findViewById(R.id.soundSystemNaviVolume);
        ((TextView) linearLayout4.findViewById(R.id.tvTitle)).setText(R.string.sound_system_item_navi_volume);
        this.mIvNaviVolumeIcon = (ImageView) linearLayout4.findViewById(R.id.ivIcon);
        this.mIvNaviVolumeIcon.setTag(Integer.valueOf(R.id.soundSystemNaviVolume));
        this.mIvNaviVolumeIcon.setOnClickListener(this);
        this.mNaviVolumeSB = (SeekBarNumber) linearLayout4.findViewById(R.id.seekBarNumber);
        this.mNaviVolumeSB.setTag(Integer.valueOf(R.id.soundSystemNaviVolume));
        this.mNaviVolumeSB.setOnSeekChangeListener(this);
        linearLayout4.setVisibility(8);
        LinearLayout linearLayout5 = (LinearLayout) view.findViewById(R.id.soundSystemBestEffectPosition);
        ((TextView) linearLayout5.findViewById(R.id.tvTitle)).setText(R.string.sound_system_item_dts);
        this.mSmbBestEffectPosition = (MultiSelectView) linearLayout5.findViewById(R.id.multiSelectView);
        this.mSmbBestEffectPosition.setTag(Integer.valueOf(R.id.soundSystemBestEffectPosition));
        this.mSmbBestEffectPosition.setText(getResources().getStringArray(R.array.sound_best_effect_position));
        this.mSmbBestEffectPosition.setOnSwitchListener(this);
        linearLayout5.setVisibility((CarConfig.getLoudspeakerNumber() == ICarConfig.LoudspeakerNumber.TWO || CarConfig.getLoudspeakerNumber() == ICarConfig.LoudspeakerNumber.__UNKNOWN__) ? 8 : 0);
        this.mLlSoundSystemDTSMode = (LinearLayout) view.findViewById(R.id.soundSystemDTSMode);
        this.mBtnDtsNatural = (Button) view.findViewById(R.id.btnDtsNatural);
        this.mBtnDtsNatural.setTag(Integer.valueOf(R.id.btnDtsNatural));
        this.mBtnDtsClear = (Button) view.findViewById(R.id.btnDtsClear);
        this.mBtnDtsClear.setTag(Integer.valueOf(R.id.btnDtsClear));
        this.mBtnDtsBass = (Button) view.findViewById(R.id.btnDtsBass);
        this.mBtnDtsBass.setTag(Integer.valueOf(R.id.btnDtsBass));
        this.mBtnDtsRest = (Button) view.findViewById(R.id.btnDtsRest);
        this.mBtnDtsRest.setTag(Integer.valueOf(R.id.btnDtsRest));
        this.mBtnDtsNatural.setOnClickListener(this);
        this.mBtnDtsClear.setOnClickListener(this);
        this.mBtnDtsBass.setOnClickListener(this);
        this.mBtnDtsRest.setOnClickListener(this);
        this.mLlEqEffect = (LinearLayout) view.findViewById(R.id.llEqEffect);
        if (new Locale("ru").getLanguage().equals(Locale.getDefault().getLanguage())) {
            this.mBtnDtsNatural.setTextSize(26.0f);
            this.mBtnDtsClear.setTextSize(25.0f);
            this.mBtnDtsBass.setTextSize(26.0f);
            this.mBtnDtsRest.setTextSize(26.0f);
        }
        this.mBtnEqClassic = (Button) view.findViewById(R.id.btnEqClassic);
        this.mBtnEqClassic.setTag(Integer.valueOf(R.id.btnEqClassic));
        this.mBtnEqPop = (Button) view.findViewById(R.id.btnEqPop);
        this.mBtnEqPop.setTag(Integer.valueOf(R.id.btnEqPop));
        this.mBtnEqJazz = (Button) view.findViewById(R.id.btnEqJazz);
        this.mBtnEqJazz.setTag(Integer.valueOf(R.id.btnEqJazz));
        this.mBtnEqRock = (Button) view.findViewById(R.id.btnEqRock);
        this.mBtnEqRock.setTag(Integer.valueOf(R.id.btnEqRock));
        this.mBtnEqDefault = (Button) view.findViewById(R.id.btnEqDefault);
        this.mBtnEqDefault.setTag(Integer.valueOf(R.id.btnEqDefault));
        this.mBtnEqCustom = (Button) view.findViewById(R.id.btnEqCustom);
        this.mBtnEqCustom.setTag(Integer.valueOf(R.id.btnEqCustom));
        this.mBtnEqClassic.setOnClickListener(this);
        this.mBtnEqPop.setOnClickListener(this);
        this.mBtnEqJazz.setOnClickListener(this);
        this.mBtnEqRock.setOnClickListener(this);
        this.mBtnEqDefault.setOnClickListener(this);
        this.mBtnEqCustom.setOnClickListener(this);
        LinearLayout linearLayout6 = (LinearLayout) view.findViewById(R.id.soundSystemEqEffectHigh);
        ((TextView) linearLayout6.findViewById(R.id.tvTitle)).setText(R.string.sound_system_eq_effects_high);
        this.mTvHighValue = (TextView) linearLayout6.findViewById(R.id.tvContent);
        this.mHighSB = (SeekBarNumber) linearLayout6.findViewById(R.id.seekBarNumber);
        this.mHighSB.setTag(Integer.valueOf(R.id.soundSystemEqEffectHigh));
        this.mHighSB.setNumberMin(MIN_DB);
        this.mHighSB.setMax(20);
        this.mHighSB.setPaintProgress(true);
        this.mHighSB.setOnSeekChangeListener(this);
        LinearLayout linearLayout7 = (LinearLayout) view.findViewById(R.id.soundSystemEqEffectMiddle);
        ((TextView) linearLayout7.findViewById(R.id.tvTitle)).setText(R.string.sound_system_eq_effects_middle);
        this.mTvMidValue = (TextView) linearLayout7.findViewById(R.id.tvContent);
        this.mMidSB = (SeekBarNumber) linearLayout7.findViewById(R.id.seekBarNumber);
        this.mMidSB.setTag(Integer.valueOf(R.id.soundSystemEqEffectMiddle));
        this.mMidSB.setNumberMin(MIN_DB);
        this.mMidSB.setMax(20);
        this.mMidSB.setPaintProgress(true);
        this.mMidSB.setOnSeekChangeListener(this);
        LinearLayout linearLayout8 = (LinearLayout) view.findViewById(R.id.soundSystemEqEffectLow);
        ((TextView) linearLayout8.findViewById(R.id.tvTitle)).setText(R.string.sound_system_eq_effects_low);
        this.mTvLowValue = (TextView) linearLayout8.findViewById(R.id.tvContent);
        this.mLowSB = (SeekBarNumber) linearLayout8.findViewById(R.id.seekBarNumber);
        this.mLowSB.setTag(Integer.valueOf(R.id.soundSystemEqEffectLow));
        this.mLowSB.setNumberMin(MIN_DB);
        this.mLowSB.setMax(20);
        this.mLowSB.setPaintProgress(true);
        this.mLowSB.setOnSeekChangeListener(this);
        LinearLayout linearLayout9 = (LinearLayout) view.findViewById(R.id.soundSystemSoundStage);
        linearLayout9.setVisibility((CarConfig.getLoudspeakerNumber() == ICarConfig.LoudspeakerNumber.TWO || CarConfig.getLoudspeakerNumber() == ICarConfig.LoudspeakerNumber.__UNKNOWN__) ? 8 : 0);
        Button button = (Button) linearLayout9.findViewById(R.id.button);
        button.setTag(Integer.valueOf(R.id.soundSystemSoundStage));
        button.setOnClickListener(this);
        this.mStage = (SoundStage) linearLayout9.findViewById(R.id.stage);
        this.mStage.setMaxX(20);
        this.mStage.setMaxY(20);
        this.mStage.setPositionChangedListener(this);
        this.mStage.getViewTreeObserver().addOnGlobalLayoutListener(this.mGlobalLayoutListener);
        this.mStage.changeToTouchMode(true);
        this.mSoundStageBg = (ImageView) linearLayout9.findViewById(R.id.soundStageBg);
        if (Utils.isRightDrive()) {
            this.mSoundStageBg.setImageResource(R.mipmap.sound_stage_bg_right);
        } else {
            this.mSoundStageBg.setImageResource(R.mipmap.sound_stage_bg);
        }
        LinearLayout linearLayout10 = (LinearLayout) view.findViewById(R.id.soundSystemVolumeBySpeed);
        ((TextView) linearLayout10.findViewById(R.id.tvTitle)).setText(R.string.sound_system_item_volume_by_speed);
        ((TextView) linearLayout10.findViewById(R.id.tvDescribe)).setText(R.string.sound_system_item_volume_by_speed_describe);
        this.mSwVolumeBySpeed = (Switcher) linearLayout10.findViewById(R.id.switcher);
        this.mSwVolumeBySpeed.setTag(Integer.valueOf(R.id.soundSystemVolumeBySpeed));
        this.mSwVolumeBySpeed.setOnCheckedChangeListener(this);
        LinearLayout linearLayout11 = (LinearLayout) view.findViewById(R.id.soundSystemVolumeByPower);
        ((TextView) linearLayout11.findViewById(R.id.tvTitle)).setText(R.string.sound_system_item_volume_by_power);
        ((TextView) linearLayout11.findViewById(R.id.tvDescribe)).setText(R.string.sound_system_item_volume_by_power_describe);
        this.mSmbVolumeByPower = (MultiSelectView) linearLayout11.findViewById(R.id.multiSelectView);
        this.mSmbVolumeByPower.setTag(Integer.valueOf(R.id.soundSystemVolumeByPower));
        this.mSmbVolumeByPower.setText(getResources().getStringArray(R.array.sound_by_volume_power));
        this.mSmbVolumeByPower.setOnSwitchListener(this);
        LinearLayout linearLayout12 = (LinearLayout) view.findViewById(R.id.soundSystemAidMediaVolume);
        linearLayout12.setVisibility(SoundManager.getInstance().getFunctionPresent(SoundManager.Function.KEEP_MUTE_WARNING_OPTION) ? 0 : 8);
        if (linearLayout12.getVisibility() == 0) {
            ((TextView) linearLayout12.findViewById(R.id.tvTitle)).setText(R.string.sound_system_item_aid_media_volume);
            ((TextView) linearLayout12.findViewById(R.id.tvDescribe)).setText(R.string.sound_system_item_aid_media_volume_describe);
            this.mSmbAidMediaSound = (MultiSelectView) linearLayout12.findViewById(R.id.multiSelectView);
            this.mSmbAidMediaSound.setTag(Integer.valueOf(R.id.soundSystemAidMediaVolume));
            this.mSmbAidMediaSound.setText(getResources().getStringArray(R.array.sound_alarm_media));
            this.mSmbAidMediaSound.setOnSwitchListener(this);
        }
        LinearLayout linearLayout13 = (LinearLayout) view.findViewById(R.id.soundSystemUnlockingLockVolume);
        linearLayout13.setVisibility(CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.LOCK_UNLOCK_SOUND_ENABLED) ? 0 : 8);
        if (linearLayout13.getVisibility() == 0) {
            ((TextView) linearLayout13.findViewById(R.id.tvTitle)).setText(R.string.sound_system_item_unlocking_lock_volume);
            this.mSwUnlockingLockSound = (Switcher) linearLayout13.findViewById(R.id.switcher);
            this.mSwUnlockingLockSound.setTag(Integer.valueOf(R.id.soundSystemUnlockingLockVolume));
            this.mSwUnlockingLockSound.setOnCheckedChangeListener(this);
        }
    }

    private void initViewData() {
        initVolume();
        initBands();
        setSwitchMultiButtonView(SoundManager.Function.DTS_SOUND_POSITION_OPTION, SoundManager.getInstance().getOption(SoundManager.Function.DTS_SOUND_POSITION_OPTION));
        setSwitchMultiButtonView(SoundManager.Function.DTS_TYEP_OPTION, SoundManager.getInstance().getOption(SoundManager.Function.DTS_TYEP_OPTION));
        setSwitcherView(SoundManager.Function.SPEED_GAIN_ENABLE, SoundManager.getInstance().getEnabled(SoundManager.Function.SPEED_GAIN_ENABLE));
        setSwitchMultiButtonView(SoundManager.Function.BOOT_VOLUME_OPTION, SoundManager.getInstance().getOption(SoundManager.Function.BOOT_VOLUME_OPTION));
        if (SoundManager.getInstance().getFunctionPresent(SoundManager.Function.KEEP_MUTE_WARNING_OPTION)) {
            setSwitchMultiButtonView(SoundManager.Function.KEEP_MUTE_WARNING_OPTION, SoundManager.getInstance().getOption(SoundManager.Function.KEEP_MUTE_WARNING_OPTION));
        }
        setSwitchMultiButtonView(SoundManager.Function.EQ_TYPE_OPTION, SoundManager.getInstance().getOption(SoundManager.Function.EQ_TYPE_OPTION));
        initCarPartsViewData();
    }

    private void initVolume() {
        int maxVolume = SoundVolumeManager.getInstance().getMaxVolume(3);
        this.mMediaVolumeSB.setMax(maxVolume);
        this.mMediaVolumeSB.setShowWarn(true);
        this.mMediaVolumeSB.setWarnMax((int) (((double) maxVolume) * 0.6d));
        int volume = SoundVolumeManager.getInstance().getVolume(3);
        boolean zIsMute = SoundVolumeManager.getInstance().isMute(3);
        if (zIsMute) {
            setVolumeProgress(3, 0);
        } else {
            setVolumeProgress(3, volume);
        }
        LogUtil.i(TAG, "isMuteMusic: " + zIsMute + " mediaVolume: " + volume);
        int maxVolume2 = SoundVolumeManager.getInstance().getMaxVolume(6);
        this.mCallVolumeSB.setMax(maxVolume2);
        this.mCallVolumeSB.setShowWarn(true);
        this.mCallVolumeSB.setWarnMax((int) (((double) maxVolume2) * 0.6d));
        int volume2 = SoundVolumeManager.getInstance().getVolume(6);
        setVolumeProgress(6, volume2);
        int maxVolume3 = SoundVolumeManager.getInstance().getMaxVolume(9);
        this.mVoiceVolumeSB.setMax(maxVolume3);
        this.mVoiceVolumeSB.setShowWarn(true);
        this.mVoiceVolumeSB.setWarnMax((int) (((double) maxVolume3) * 0.6d));
        setVolumeProgress(9, SoundVolumeManager.getInstance().getVolume(9));
        int maxVolume4 = SoundVolumeManager.getInstance().getMaxVolume(11);
        this.mNaviVolumeSB.setMax(maxVolume4);
        this.mNaviVolumeSB.setShowWarn(true);
        this.mNaviVolumeSB.setWarnMax((int) (((double) maxVolume4) * 0.6d));
        int volume3 = SoundVolumeManager.getInstance().getVolume(11);
        setVolumeProgress(11, volume3);
        LogUtil.d(TAG, "initVolume mediaVolumeMax:" + maxVolume + ", callVolumeMax:" + maxVolume2 + ", naviVolumeMax:" + maxVolume4 + ", mediaVolume:" + volume + ", callVolume:" + volume2 + ", naviVolume:" + volume3 + ", isMuteMusic:" + zIsMute);
    }

    private void setBandsProgress(SoundManager.Function function, int i) {
        TextView textView;
        SeekBarNumber seekBarNumber = null;
        switch (function) {
            case BAND_HIGH_VALUE:
                seekBarNumber = this.mHighSB;
                textView = this.mTvHighValue;
                break;
            case BAND_MID_VALUE:
                seekBarNumber = this.mMidSB;
                textView = this.mTvMidValue;
                break;
            case BAND_LOW_VALUE:
                seekBarNumber = this.mLowSB;
                textView = this.mTvLowValue;
                break;
            default:
                textView = null;
                break;
        }
        if (seekBarNumber != null && i != seekBarNumber.getProgress()) {
            seekBarNumber.setProgress(i);
        }
        if (textView != null) {
            textView.setText(String.valueOf(i + MIN_DB));
        }
    }

    private void setDtsMode(int i) {
        SoundManager.getInstance().setOption(SoundManager.Function.DTS_TYEP_OPTION, i);
    }

    private void setDtsModeView(int i) {
        LogUtil.i(TAG, "setDtsModeView() index:" + i);
        this.mBtnDtsNatural.setSelected(false);
        this.mBtnDtsClear.setSelected(false);
        this.mBtnDtsBass.setSelected(false);
        this.mBtnDtsRest.setSelected(false);
        switch (i) {
            case 0:
                this.mBtnDtsNatural.setSelected(true);
                break;
            case 1:
                this.mBtnDtsClear.setSelected(true);
                break;
            case 2:
                this.mBtnDtsBass.setSelected(true);
                break;
            case 3:
                this.mBtnDtsRest.setSelected(true);
                break;
        }
    }

    private void setEqMode(int i) {
        SoundManager.getInstance().setOption(SoundManager.Function.EQ_TYPE_OPTION, i);
    }

    private void setEqModeView(int i) {
        LogUtil.i(TAG, "setEqModeView() index:" + i);
        this.mBtnEqClassic.setSelected(false);
        this.mBtnEqPop.setSelected(false);
        this.mBtnEqJazz.setSelected(false);
        this.mBtnEqRock.setSelected(false);
        this.mBtnEqDefault.setSelected(false);
        this.mBtnEqCustom.setSelected(false);
        switch (i) {
            case 0:
                this.mBtnEqClassic.setSelected(true);
                break;
            case 1:
                this.mBtnEqPop.setSelected(true);
                break;
            case 2:
                this.mBtnEqJazz.setSelected(true);
                break;
            case 3:
                this.mBtnEqRock.setSelected(true);
                break;
            case 4:
                this.mBtnEqDefault.setSelected(true);
                break;
            case 5:
                this.mBtnEqCustom.setSelected(true);
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public void setSwitchMultiButtonView(SoundManager.Function function, int i) {
        MultiSelectView multiSelectView;
        switch (function) {
            case DTS_TYEP_OPTION:
                setDtsModeView(i);
                multiSelectView = null;
                break;
            case DTS_SOUND_POSITION_OPTION:
                MultiSelectView multiSelectView2 = this.mSmbBestEffectPosition;
                updateDtsView(function, i);
                multiSelectView = multiSelectView2;
                break;
            case EQ_TYPE_OPTION:
                setEqModeView(i);
                multiSelectView = null;
                break;
            case BOOT_VOLUME_OPTION:
                multiSelectView = this.mSmbVolumeByPower;
                break;
            case KEEP_MUTE_WARNING_OPTION:
                multiSelectView = this.mSmbAidMediaSound;
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
    public void setSwitcherView(CarPartsManager.Function function, boolean z) {
        Switcher switcher = AnonymousClass5.$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function[function.ordinal()] != 1 ? null : this.mSwUnlockingLockSound;
        if (switcher == null || switcher.isChecked() == z) {
            return;
        }
        switcher.setChecked(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSwitcherView(SoundManager.Function function, boolean z) {
        Switcher switcher = AnonymousClass5.$SwitchMap$com$yftech$settings$manager$SoundManager$Function[function.ordinal()] != 4 ? null : this.mSwVolumeBySpeed;
        if (switcher == null || switcher.isChecked() == z) {
            return;
        }
        switcher.setChecked(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValueView(SoundManager.Function function, Object obj) {
        int i = AnonymousClass5.$SwitchMap$com$yftech$settings$manager$SoundManager$Function[function.ordinal()];
        if (i == 10) {
            int[] iArr = (int[]) obj;
            if (iArr == null || iArr.length < 2) {
                return;
            }
            int i2 = iArr[0];
            int i3 = iArr[1];
            this.mStage.setThumbX(i2);
            this.mStage.setThumbY(i3);
        }
        switch (i) {
            case 1:
                int iChangeToProgress = changeToProgress(function, ((Float) obj).floatValue());
                if (iChangeToProgress != this.mHighSB.getProgress()) {
                    setBandsProgress(function, iChangeToProgress);
                }
                break;
            case 2:
                int iChangeToProgress2 = changeToProgress(function, ((Float) obj).floatValue());
                if (iChangeToProgress2 != this.mMidSB.getProgress()) {
                    setBandsProgress(function, iChangeToProgress2);
                }
                break;
            case 3:
                int iChangeToProgress3 = changeToProgress(function, ((Float) obj).floatValue());
                if (iChangeToProgress3 != this.mLowSB.getProgress()) {
                    setBandsProgress(function, iChangeToProgress3);
                }
                break;
        }
    }

    private void setVolumeProgress(int i, int i2) {
        if (i == 3) {
            this.mMediaVolumeSB.setProgress(i2);
            this.mIvMediaVolumeIcon.setImageResource(getVolumeIcon(i, i2));
            LogUtil.i(TAG, "progress: " + i2 + " streamType: " + i);
            return;
        }
        if (i == 6) {
            this.mCallVolumeSB.setProgress(i2);
            this.mIvCallVolumeIcon.setImageResource(getVolumeIcon(i, i2));
        } else if (i == 9) {
            this.mVoiceVolumeSB.setProgress(i2);
            this.mIvVoiceVolumeIcon.setImageResource(getVolumeIcon(i, i2));
        } else {
            if (i != 11) {
                return;
            }
            this.mNaviVolumeSB.setProgress(i2);
            this.mIvNaviVolumeIcon.setImageResource(getVolumeIcon(i, i2));
        }
    }

    private void updateDtsView(SoundManager.Function function, int i) {
        if (CarConfig.getLoudspeakerNumber() == ICarConfig.LoudspeakerNumber.TWO || CarConfig.getLoudspeakerNumber() == ICarConfig.LoudspeakerNumber.__UNKNOWN__) {
            updateDtsView(SoundManager.Function.DTS_SOUND_POSITION_OPTION, false);
        } else if (SoundManager.getInstance().getDtsSoundPosition()[i] == SoundManager.getInstance().DTS_CLOSE) {
            updateDtsView(function, false);
        } else {
            updateDtsView(function, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateDtsView(SoundManager.Function function, boolean z) {
        if (z) {
            this.mLlSoundSystemDTSMode.setVisibility(0);
            this.mLlEqEffect.setVisibility(8);
            return;
        }
        this.mLlSoundSystemDTSMode.setVisibility(8);
        if (this.mLlEqEffect.getVisibility() != 0) {
            this.mLlEqEffect.setVisibility(0);
            this.mHandler.sendEmptyMessageDelayed(1, 10L);
        }
    }

    @Override // com.yftech.settings.manager.SoundVolumeManager.SoundVolumeListener
    public void onChangedVolume(int i, int i2, int i3, boolean z, int i4) {
        if (i == 6 && i2 > 3) {
            this.mLastCallVolume = i2;
        } else if (i == 9 && i2 > 3) {
            this.mLastVoiceVolume = i2;
        } else if (i == 11 && i2 > 0) {
            this.mLastNaviVolume = i2;
        }
        if ((1073741824 & i4) > 0 && i4 != -1) {
            LogUtil.i(TAG, "onChangedVolume, adjust by self");
            return;
        }
        if (i == 3 && z) {
            setVolumeProgress(i, 0);
        } else {
            setVolumeProgress(i, i2);
        }
        LogUtil.i(TAG, "streamType: " + i + " curValue: " + i2);
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        if (compoundButton.isPressed()) {
            if (((Integer) compoundButton.getTag()).intValue() == R.id.soundSystemUnlockingLockVolume) {
                CarPartsManager.Function function = CarPartsManager.Function.UNKNOWN;
                if (((Integer) compoundButton.getTag()).intValue() == R.id.soundSystemUnlockingLockVolume) {
                    function = CarPartsManager.Function.LOCK_UNLOCK_SOUND_ENABLED;
                }
                if (function != CarPartsManager.Function.UNKNOWN) {
                    CarPartsManager.getInstance().setEnabled(function, z);
                    return;
                }
                return;
            }
            SoundManager.Function function2 = SoundManager.Function.UNKNOWN;
            if (((Integer) compoundButton.getTag()).intValue() == R.id.soundSystemVolumeBySpeed) {
                function2 = SoundManager.Function.SPEED_GAIN_ENABLE;
            }
            if (function2 != SoundManager.Function.UNKNOWN) {
                SoundManager.getInstance().setEnabled(function2, z);
            }
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int iIntValue = ((Integer) view.getTag()).intValue();
        if (iIntValue == R.id.soundSystemVoiceVolume) {
            int progress = this.mVoiceVolumeSB.getProgress();
            if (progress > 3) {
                this.mLastVoiceVolume = progress;
                SoundVolumeManager.getInstance().setVolume(9, 3);
                return;
            }
            SoundVolumeManager.getInstance().setVolume(9, this.mLastVoiceVolume);
        }
        switch (iIntValue) {
            case R.id.btnDtsBass /* 2131230808 */:
                setDtsMode(2);
                break;
            case R.id.btnDtsClear /* 2131230809 */:
                setDtsMode(1);
                break;
            case R.id.btnDtsNatural /* 2131230810 */:
                setDtsMode(0);
                break;
            case R.id.btnDtsRest /* 2131230811 */:
                setDtsMode(3);
                break;
            case R.id.btnEqClassic /* 2131230812 */:
                setEqMode(0);
                break;
            case R.id.btnEqCustom /* 2131230813 */:
                setEqMode(5);
                break;
            case R.id.btnEqDefault /* 2131230814 */:
                setEqMode(4);
                break;
            case R.id.btnEqJazz /* 2131230815 */:
                setEqMode(2);
                break;
            case R.id.btnEqPop /* 2131230816 */:
                setEqMode(1);
                break;
            case R.id.btnEqRock /* 2131230817 */:
                setEqMode(3);
                break;
            default:
                switch (iIntValue) {
                    case R.id.soundSystemMediaVolume /* 2131231134 */:
                        this.mMediaVolumeSB.getProgress();
                        boolean zIsMute = SoundVolumeManager.getInstance().isMute(3);
                        LogUtil.i(TAG, "soundSystemMediaVolume isMuteMusic:" + zIsMute);
                        SoundVolumeManager.getInstance().setMute(3, zIsMute ^ true);
                        break;
                    case R.id.soundSystemNaviVolume /* 2131231135 */:
                        int progress2 = this.mNaviVolumeSB.getProgress();
                        if (progress2 <= 0) {
                            SoundVolumeManager.getInstance().setVolume(11, this.mLastNaviVolume);
                        } else {
                            this.mLastNaviVolume = progress2;
                            SoundVolumeManager.getInstance().setVolume(11, 0);
                        }
                        break;
                    case R.id.soundSystemPhoneVolume /* 2131231136 */:
                        int progress3 = this.mCallVolumeSB.getProgress();
                        if (progress3 <= 3) {
                            SoundVolumeManager.getInstance().setVolume(6, this.mLastCallVolume);
                        } else {
                            this.mLastCallVolume = progress3;
                            SoundVolumeManager.getInstance().setVolume(6, 3);
                        }
                        break;
                    case R.id.soundSystemSoundStage /* 2131231137 */:
                        this.mStage.setThumbX(10);
                        this.mStage.setThumbY(10);
                        SoundManager.getInstance().setValue(SoundManager.Function.SOUND_DELAY_VALUE, (Object) new int[]{10, 10});
                        break;
                }
                break;
        }
    }

    @Override // android.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_sound_system, viewGroup, false);
        initView(viewInflate);
        return viewInflate;
    }

    @Override // com.yftech.settings.BaseFragment, android.app.Fragment
    public void onPause() {
        super.onPause();
        SoundVolumeManager.getInstance().removeSoundVolumeListener(this);
        SoundManager.getInstance().unregisterModelCallback(this.mSoundModelCallback);
        SoundManager.getInstance().setAction(SoundManager.Function.SOUND_DELAY_CANCEL_ACTION);
        CarPartsManager.getInstance().unregisterModelCallback(this.mCarPartsModelCallback);
        CarPartsManager.getInstance().setAction(CarPartsManager.Function.STOP_TIMEOUT_ACTION);
    }

    @Override // com.yftech.settings.widget.SoundStage.OnThumbPositionChanged
    public void onPositionChanged(int i, int i2) {
        SoundManager.getInstance().setValue(SoundManager.Function.SOUND_DELAY_VALUE, (Object) new int[]{i, i2});
    }

    @Override // com.yftech.settings.widget.SeekBarNumber.OnSeekChangeListener
    public void onProgressChanged(SeekBarNumber seekBarNumber, int i) {
        int iIntValue = ((Integer) seekBarNumber.getTag()).intValue();
        if (iIntValue == R.id.soundSystemVoiceVolume) {
            handleVolumeChanged(9, i);
        }
        switch (iIntValue) {
            case R.id.soundSystemEqEffectHigh /* 2131231131 */:
                handleBandsChanged(SoundManager.Function.BAND_HIGH_VALUE, i);
                break;
            case R.id.soundSystemEqEffectLow /* 2131231132 */:
                handleBandsChanged(SoundManager.Function.BAND_LOW_VALUE, i);
                break;
            case R.id.soundSystemEqEffectMiddle /* 2131231133 */:
                handleBandsChanged(SoundManager.Function.BAND_MID_VALUE, i);
                break;
            case R.id.soundSystemMediaVolume /* 2131231134 */:
                handleVolumeChanged(3, i);
                break;
            case R.id.soundSystemNaviVolume /* 2131231135 */:
                handleVolumeChanged(11, i);
                break;
            case R.id.soundSystemPhoneVolume /* 2131231136 */:
                handleVolumeChanged(6, i);
                break;
        }
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        initViewData();
        SoundVolumeManager.getInstance().addSoundVolumeListener(this);
        SoundManager.getInstance().registerModelCallback(this.mSoundModelCallback);
        SoundManager.getInstance().setAction(SoundManager.Function.SOUND_DELAY_START_ACTION);
        CarPartsManager.getInstance().registerModelCallback(this.mCarPartsModelCallback);
    }

    @Override // com.yftech.settings.widget.SeekBarNumber.OnSeekChangeListener
    public void onStartTrackingTouch(SeekBarNumber seekBarNumber) {
    }

    @Override // com.yftech.settings.widget.SeekBarNumber.OnSeekChangeListener
    public void onStopTrackingTouch(SeekBarNumber seekBarNumber) {
    }

    @Override // com.yftech.settings.widget.MultiSelectView.OnSwitchListener
    public void onSwitch(MultiSelectView multiSelectView, int i, String str, boolean z) {
        if (z) {
            SoundManager.Function function = SoundManager.Function.UNKNOWN;
            int iIntValue = ((Integer) multiSelectView.getTag()).intValue();
            if (iIntValue != R.id.soundSystemVolumeByPower) {
                switch (iIntValue) {
                    case R.id.soundSystemAidMediaVolume /* 2131231127 */:
                        function = SoundManager.Function.KEEP_MUTE_WARNING_OPTION;
                        break;
                    case R.id.soundSystemBestEffectPosition /* 2131231128 */:
                        function = SoundManager.Function.DTS_SOUND_POSITION_OPTION;
                        break;
                }
            } else {
                function = SoundManager.Function.BOOT_VOLUME_OPTION;
            }
            Log.i(TAG, "Function:" + function + " position:" + i);
            if (function != SoundManager.Function.UNKNOWN) {
                SoundManager.getInstance().setOption(function, i);
            }
        }
    }
}
