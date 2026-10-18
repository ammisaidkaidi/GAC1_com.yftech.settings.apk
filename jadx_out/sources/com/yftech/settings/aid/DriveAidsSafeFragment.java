package com.yftech.settings.aid;

import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.yftech.settings.BaseFragment;
import com.yftech.settings.R;
import com.yftech.settings.manager.BaseManager;
import com.yftech.settings.manager.CarAssistantManager;
import com.yftech.settings.widget.MultiSelectView;
import com.yftech.settings.widget.Switcher;
import com.yftech.settings.widget.dialog.CommonDialog;
import com.yftech.vehicle.internal.adapter.ICarConfig;
import com.yftech.vehicle.sdk.CarConfig;

/* JADX INFO: loaded from: classes.dex */
public class DriveAidsSafeFragment extends BaseFragment implements CompoundButton.OnCheckedChangeListener, MultiSelectView.OnSwitchListener {
    private static final int MULTI_SELECT_OFF = 3;
    private static final int SPEED_REMINDER_MAX = 200;
    private static final int SPEED_REMINDER_STEP = 10;
    private LinearLayout activeSafetyIntelligentSpeedLimitControl;
    private LinearLayout activeSafetyLaneDepartureOption;
    private LinearLayout activeSafetyPreCollisionWarningOption;
    private LinearLayout activeSafetySpeedingAlarm;
    private BaseManager.ModelCallback<CarAssistantManager.Function> mCarAssistantModelCallback = new BaseManager.ModelCallback<CarAssistantManager.Function>() { // from class: com.yftech.settings.aid.DriveAidsSafeFragment.1
        @Override // com.yftech.settings.manager.BaseManager.ModelCallback
        public void onEnableChanged(CarAssistantManager.Function function, boolean z) {
            super.onEnableChanged(function, z);
            DriveAidsSafeFragment.this.setSwitcherView(function, z);
        }

        @Override // com.yftech.settings.manager.BaseManager.ModelCallback
        public void onOptionChanged(CarAssistantManager.Function function, int i) {
            super.onOptionChanged(function, i);
            DriveAidsSafeFragment.this.setSwitchMultiButtonView(function, i);
        }

        @Override // com.yftech.settings.manager.BaseManager.ModelCallback
        public void onTimeout() {
            super.onTimeout();
            DriveAidsSafeFragment.this.initViewData();
        }
    };
    private CommonDialog mCommonDialog;
    private boolean mIsFcwOffPresent;
    private boolean mIsFcwWarningDistancePresent;
    private boolean mIsIntelligentSpeedLimitControlPresent;
    private boolean mIsLdwLkaPresent;
    private boolean mIsLksModePresent;
    private boolean mIsSpeedingAlarmPresent;
    private MultiSelectView mSmbDriverStatusAlert;
    private MultiSelectView mSmbLaneDeparture;
    private MultiSelectView mSmbPreCollisionWarning;
    private MultiSelectView mSmbTipMode;
    private Switcher mSwActiveBrake;
    private Switcher mSwIntelligentSpeedLimitControl;
    private Switcher mSwPreCollisionWarning;
    private Switcher mSwSpeedLimitSignRecognition;
    private boolean mSwSpeedLimitSignRecognitionPresent;
    private Switcher mSwSpeedingAlarm;
    private Switcher mSwbLaneDeparture;

    private CarAssistantManager.Function getFcwFunction(int i) {
        if (i >= 3) {
            CarAssistantManager.getInstance().setEnabled(CarAssistantManager.Function.FCW_OFF_ENABLED, false);
            return CarAssistantManager.Function.UNKNOWN;
        }
        if (!CarAssistantManager.getInstance().getEnabled(CarAssistantManager.Function.FCW_OFF_ENABLED)) {
            CarAssistantManager.getInstance().setEnabled(CarAssistantManager.Function.FCW_OFF_ENABLED, true);
        }
        return CarAssistantManager.Function.FCW_WARNING_DISTANCE_OPTION;
    }

    private CarAssistantManager.Function getLksModeFunction(int i) {
        if (i < 3) {
            return CarAssistantManager.Function.LKS_MODE_OPTION;
        }
        CarAssistantManager.getInstance().setEnabled(CarAssistantManager.Function.LDW_LKA_ENABLED, false);
        return CarAssistantManager.Function.UNKNOWN;
    }

    private void initView(View view) {
        String[] stringArray;
        LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.activeSafetyPreCollisionWarning);
        this.mIsFcwOffPresent = CarAssistantManager.getInstance().getFunctionPresent(CarAssistantManager.Function.FCW_OFF_ENABLED);
        linearLayout.setVisibility(this.mIsFcwOffPresent ? 0 : 8);
        if (linearLayout.getVisibility() == 0) {
            ((TextView) linearLayout.findViewById(R.id.tvTitle)).setText(R.string.active_safety_aid_item_pre_collision_warning);
            ((TextView) linearLayout.findViewById(R.id.tvDescribe)).setText(R.string.active_safety_aid_item_pre_collision_warning_describe);
            this.mSwPreCollisionWarning = (Switcher) linearLayout.findViewById(R.id.switcher);
            this.mSwPreCollisionWarning.setTag(Integer.valueOf(R.id.activeSafetyPreCollisionWarning));
            this.mSwPreCollisionWarning.setOnCheckedChangeListener(this);
            this.mSwPreCollisionWarning.setOnTouchListener(this);
        }
        this.activeSafetyPreCollisionWarningOption = (LinearLayout) view.findViewById(R.id.activeSafetyPreCollisionWarning_option);
        this.mIsFcwWarningDistancePresent = this.mIsFcwOffPresent && CarAssistantManager.getInstance().getFunctionPresent(CarAssistantManager.Function.FCW_WARNING_DISTANCE_OPTION);
        this.activeSafetyPreCollisionWarningOption.setVisibility(this.mIsFcwWarningDistancePresent ? 0 : 8);
        if (this.activeSafetyPreCollisionWarningOption.getVisibility() == 0) {
            ((TextView) this.activeSafetyPreCollisionWarningOption.findViewById(R.id.tvTitle)).setText(R.string.active_safety_aid_item_pre_collision_warning_sub);
            this.mSmbPreCollisionWarning = (MultiSelectView) this.activeSafetyPreCollisionWarningOption.findViewById(R.id.multiSelectView);
            this.mSmbPreCollisionWarning.setTag(Integer.valueOf(R.id.activeSafetyPreCollisionWarning_option));
            this.mSmbPreCollisionWarning.setText(getResources().getStringArray(R.array.active_safety_aid_pre_collision_warning));
            this.mSmbPreCollisionWarning.setOnSwitchListener(this);
            this.mSmbPreCollisionWarning.setOnTouchListener(this);
        }
        LinearLayout linearLayout2 = (LinearLayout) view.findViewById(R.id.activeSafetyActiveBrake);
        linearLayout2.setVisibility(CarAssistantManager.getInstance().getFunctionPresent(CarAssistantManager.Function.AEB_OFF_ENABLED) ? 0 : 8);
        if (linearLayout2.getVisibility() == 0) {
            ((TextView) linearLayout2.findViewById(R.id.tvTitle)).setText(R.string.active_safety_aid_item_active_brake);
            ((TextView) linearLayout2.findViewById(R.id.tvDescribe)).setText(R.string.active_safety_aid_item_active_brake_describe);
            this.mSwActiveBrake = (Switcher) linearLayout2.findViewById(R.id.switcher);
            this.mSwActiveBrake.setTag(Integer.valueOf(R.id.activeSafetyActiveBrake));
            this.mSwActiveBrake.setOnCheckedChangeListener(this);
            this.mSwActiveBrake.setOnTouchListener(this);
        }
        this.mIsLdwLkaPresent = CarAssistantManager.getInstance().getFunctionPresent(CarAssistantManager.Function.LDW_LKA_ENABLED);
        this.mIsLksModePresent = this.mIsLdwLkaPresent && CarAssistantManager.getInstance().getFunctionPresent(CarAssistantManager.Function.LKS_MODE_OPTION);
        LinearLayout linearLayout3 = (LinearLayout) view.findViewById(R.id.activeSafetyLaneDeparture);
        linearLayout3.setVisibility(this.mIsLdwLkaPresent ? 0 : 8);
        if (linearLayout3.getVisibility() == 0) {
            ((TextView) linearLayout3.findViewById(R.id.tvTitle)).setText(R.string.active_safety_aid_item_lane_departure);
            ((TextView) linearLayout3.findViewById(R.id.tvDescribe)).setText(R.string.active_safety_aid_item_lane_departure_describe);
            if (!this.mIsLksModePresent) {
                ((TextView) linearLayout3.findViewById(R.id.tvDescribe)).setText(R.string.active_safety_aid_item_lane_departure_describe_1);
            }
            this.mSwbLaneDeparture = (Switcher) linearLayout3.findViewById(R.id.switcher);
            this.mSwbLaneDeparture.setTag(Integer.valueOf(R.id.activeSafetyLaneDeparture));
            this.mSwbLaneDeparture.setOnCheckedChangeListener(this);
            this.mSwbLaneDeparture.setOnTouchListener(this);
        }
        this.activeSafetyLaneDepartureOption = (LinearLayout) view.findViewById(R.id.activeSafetyLaneDeparture_option);
        this.activeSafetyLaneDepartureOption.setVisibility(this.mIsLksModePresent ? 0 : 8);
        if (this.activeSafetyLaneDepartureOption.getVisibility() == 0) {
            ((TextView) this.activeSafetyLaneDepartureOption.findViewById(R.id.tvTitle)).setText(R.string.active_safety_aid_item_lane_departur_sub);
            this.mSmbLaneDeparture = (MultiSelectView) this.activeSafetyLaneDepartureOption.findViewById(R.id.multiSelectView);
            this.mSmbLaneDeparture.setTag(Integer.valueOf(R.id.activeSafetyLaneDeparture_option));
            this.mSmbLaneDeparture.setText(getResources().getStringArray(R.array.active_safety_aid_lane_departure));
            this.mSmbLaneDeparture.setOnSwitchListener(this);
            this.mSmbLaneDeparture.setOnTouchListener(this);
        }
        LinearLayout linearLayout4 = (LinearLayout) view.findViewById(R.id.activeSafetySpeedLimitSignRecognition);
        this.mSwSpeedLimitSignRecognitionPresent = CarAssistantManager.getInstance().getFunctionPresent(CarAssistantManager.Function.TSR_ENABLED);
        linearLayout4.setVisibility(this.mSwSpeedLimitSignRecognitionPresent ? 0 : 8);
        if (linearLayout4.getVisibility() == 0) {
            ((TextView) linearLayout4.findViewById(R.id.tvTitle)).setText(R.string.active_safety_aid_item_speed_limit_sign_recognition);
            ((TextView) linearLayout4.findViewById(R.id.tvDescribe)).setText(R.string.active_safety_aid_item_speed_limit_sign_recognition_describe);
            this.mSwSpeedLimitSignRecognition = (Switcher) linearLayout4.findViewById(R.id.switcher);
            this.mSwSpeedLimitSignRecognition.setTag(Integer.valueOf(R.id.activeSafetySpeedLimitSignRecognition));
            this.mSwSpeedLimitSignRecognition.setOnCheckedChangeListener(this);
            this.mSwSpeedLimitSignRecognition.setOnTouchListener(this);
        }
        this.activeSafetySpeedingAlarm = (LinearLayout) view.findViewById(R.id.activeSafetySpeedingAlarm);
        this.mIsSpeedingAlarmPresent = CarAssistantManager.getInstance().getFunctionPresent(CarAssistantManager.Function.TSR_AUDIO_WARNING_ENABLED);
        if (this.mSwSpeedLimitSignRecognitionPresent) {
            this.activeSafetySpeedingAlarm.setVisibility(this.mIsSpeedingAlarmPresent ? 0 : 8);
        } else {
            this.activeSafetySpeedingAlarm.setVisibility(8);
        }
        if (this.activeSafetySpeedingAlarm.getVisibility() == 0) {
            ((TextView) this.activeSafetySpeedingAlarm.findViewById(R.id.tvTitle)).setText(R.string.active_safety_aid_item_speeding_alarm);
            ((TextView) this.activeSafetySpeedingAlarm.findViewById(R.id.tvDescribe)).setText(R.string.active_safety_aid_item_speeding_alarm_describe);
            this.mSwSpeedingAlarm = (Switcher) this.activeSafetySpeedingAlarm.findViewById(R.id.switcher);
            this.mSwSpeedingAlarm.setTag(Integer.valueOf(R.id.activeSafetySpeedingAlarm));
            this.mSwSpeedingAlarm.setOnCheckedChangeListener(this);
            this.mSwSpeedingAlarm.setOnTouchListener(this);
        }
        this.activeSafetyIntelligentSpeedLimitControl = (LinearLayout) view.findViewById(R.id.activeSafetyIntelligentSpeedLimitControl);
        this.mIsIntelligentSpeedLimitControlPresent = CarAssistantManager.getInstance().getFunctionPresent(CarAssistantManager.Function.IACC_ENABLED);
        if (this.mSwSpeedLimitSignRecognitionPresent) {
            this.activeSafetyIntelligentSpeedLimitControl.setVisibility(this.mIsIntelligentSpeedLimitControlPresent ? 0 : 8);
        } else {
            this.activeSafetyIntelligentSpeedLimitControl.setVisibility(8);
        }
        if (this.activeSafetyIntelligentSpeedLimitControl.getVisibility() == 0) {
            ((TextView) this.activeSafetyIntelligentSpeedLimitControl.findViewById(R.id.tvTitle)).setText(R.string.active_safety_aid_item_intelligent_speed_limit_control);
            ((TextView) this.activeSafetyIntelligentSpeedLimitControl.findViewById(R.id.tvDescribe)).setText(R.string.active_safety_aid_item_intelligent_speed_limit_control_describe);
            this.mSwIntelligentSpeedLimitControl = (Switcher) this.activeSafetyIntelligentSpeedLimitControl.findViewById(R.id.switcher);
            this.mSwIntelligentSpeedLimitControl.setTag(Integer.valueOf(R.id.activeSafetyIntelligentSpeedLimitControl));
            this.mSwIntelligentSpeedLimitControl.setOnCheckedChangeListener(this);
            this.mSwIntelligentSpeedLimitControl.setOnTouchListener(this);
        }
        LinearLayout linearLayout5 = (LinearLayout) view.findViewById(R.id.drivingAidTipMode);
        linearLayout5.setVisibility(CarAssistantManager.getInstance().getFunctionPresent(CarAssistantManager.Function.ADAS_WARN_TYPE_OPTION) ? 0 : 8);
        if (linearLayout5.getVisibility() == 0) {
            ((TextView) linearLayout5.findViewById(R.id.tvTitle)).setText(R.string.driving_aid_item_tip_mode);
            ((TextView) linearLayout5.findViewById(R.id.tvDescribe)).setText(R.string.driving_aid_item_tip_mode_describe);
            this.mSmbTipMode = (MultiSelectView) linearLayout5.findViewById(R.id.multiSelectView);
            this.mSmbTipMode.setTag(Integer.valueOf(R.id.drivingAidTipMode));
            ICarConfig.PromptType promptType = CarConfig.getPromptType();
            if (promptType == ICarConfig.PromptType.SOUND_AND_VOICE) {
                stringArray = getResources().getStringArray(R.array.driving_aid_tip_mode_sound_and_voice);
            } else {
                stringArray = promptType == ICarConfig.PromptType.SOUND_AND_VOICE_AND_SEAT_VIBRATION ? getResources().getStringArray(R.array.driving_aid_tip_mode_sound_and_voice_and_seat_vibration) : getResources().getStringArray(R.array.driving_aid_tip_mode_alarm_and_seat_vibration_and_alarm_and_seat_vibration);
            }
            this.mSmbTipMode.setText(stringArray);
            this.mSmbTipMode.setOnSwitchListener(this);
            this.mSmbTipMode.setOnTouchListener(this);
        }
        LinearLayout linearLayout6 = (LinearLayout) view.findViewById(R.id.activeSafetyDriverStatusWarning);
        linearLayout6.setVisibility(CarAssistantManager.getInstance().getFunctionPresent(CarAssistantManager.Function.DSA_OFF_ENABLES) ? 0 : 8);
        ((TextView) linearLayout6.findViewById(R.id.tvTitle)).setText(R.string.active_safety_aid_item_status_alert);
        ((TextView) linearLayout6.findViewById(R.id.tvDescribe)).setText(R.string.active_safety_aid_item_status_alert_describe);
        this.mSmbDriverStatusAlert = (MultiSelectView) linearLayout6.findViewById(R.id.multiSelectView);
        this.mSmbDriverStatusAlert.setTag(Integer.valueOf(R.id.activeSafetyDriverStatusWarning));
        this.mSmbDriverStatusAlert.setVisibility(0);
        this.mSmbDriverStatusAlert.setText(getResources().getStringArray(R.array.active_safety_item_status_alert));
        this.mSmbDriverStatusAlert.setOnSwitchListener(this);
        this.mSmbDriverStatusAlert.setOnTouchListener(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initViewData() {
        if (CarAssistantManager.getInstance().getFunctionPresent(CarAssistantManager.Function.FCW_OFF_ENABLED)) {
            setSwitcherView(CarAssistantManager.Function.FCW_OFF_ENABLED, CarAssistantManager.getInstance().getEnabled(CarAssistantManager.Function.FCW_OFF_ENABLED));
        }
        if (CarAssistantManager.getInstance().getFunctionPresent(CarAssistantManager.Function.FCW_WARNING_DISTANCE_OPTION)) {
            setSwitchMultiButtonView(CarAssistantManager.Function.FCW_WARNING_DISTANCE_OPTION, CarAssistantManager.getInstance().getOption(CarAssistantManager.Function.FCW_WARNING_DISTANCE_OPTION));
        }
        if (CarAssistantManager.getInstance().getFunctionPresent(CarAssistantManager.Function.LDW_LKA_ENABLED)) {
            setSwitcherView(CarAssistantManager.Function.LDW_LKA_ENABLED, CarAssistantManager.getInstance().getEnabled(CarAssistantManager.Function.LDW_LKA_ENABLED));
        }
        if (CarAssistantManager.getInstance().getFunctionPresent(CarAssistantManager.Function.LKS_MODE_OPTION)) {
            setSwitchMultiButtonView(CarAssistantManager.Function.LKS_MODE_OPTION, CarAssistantManager.getInstance().getOption(CarAssistantManager.Function.LKS_MODE_OPTION));
        }
        if (CarAssistantManager.getInstance().getFunctionPresent(CarAssistantManager.Function.ADAS_WARN_TYPE_OPTION)) {
            setSwitchMultiButtonView(CarAssistantManager.Function.ADAS_WARN_TYPE_OPTION, CarAssistantManager.getInstance().getOption(CarAssistantManager.Function.ADAS_WARN_TYPE_OPTION));
        }
        if (CarAssistantManager.getInstance().getFunctionPresent(CarAssistantManager.Function.TSR_ENABLED)) {
            setSwitcherView(CarAssistantManager.Function.TSR_ENABLED, CarAssistantManager.getInstance().getEnabled(CarAssistantManager.Function.TSR_ENABLED));
        }
        if (CarAssistantManager.getInstance().getFunctionPresent(CarAssistantManager.Function.IACC_ENABLED)) {
            setSwitcherView(CarAssistantManager.Function.IACC_ENABLED, CarAssistantManager.getInstance().getEnabled(CarAssistantManager.Function.IACC_ENABLED));
        }
        if (CarAssistantManager.getInstance().getFunctionPresent(CarAssistantManager.Function.TSR_AUDIO_WARNING_ENABLED)) {
            setSwitcherView(CarAssistantManager.Function.TSR_AUDIO_WARNING_ENABLED, CarAssistantManager.getInstance().getEnabled(CarAssistantManager.Function.TSR_AUDIO_WARNING_ENABLED));
        }
        if (CarAssistantManager.getInstance().getFunctionPresent(CarAssistantManager.Function.AEB_OFF_ENABLED)) {
            setSwitcherView(CarAssistantManager.Function.AEB_OFF_ENABLED, CarAssistantManager.getInstance().getEnabled(CarAssistantManager.Function.AEB_OFF_ENABLED));
        }
        if (CarAssistantManager.getInstance().getFunctionPresent(CarAssistantManager.Function.DSA_MODE_OPTION)) {
            setSwitchMultiButtonView(CarAssistantManager.Function.DSA_MODE_OPTION, 2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSwitchMultiButtonView(CarAssistantManager.Function function, int i) {
        MultiSelectView multiSelectView;
        switch (function) {
            case FCW_WARNING_DISTANCE_OPTION:
                multiSelectView = this.mSmbPreCollisionWarning;
                break;
            case LKS_MODE_OPTION:
                multiSelectView = this.mSmbLaneDeparture;
                break;
            case ADAS_WARN_TYPE_OPTION:
                multiSelectView = this.mSmbTipMode;
                break;
            case DSA_MODE_OPTION:
                multiSelectView = this.mSmbDriverStatusAlert;
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
    public void setSwitcherView(CarAssistantManager.Function function, boolean z) {
        Switcher switcher;
        switch (function) {
            case TSR_ENABLED:
                switcher = this.mSwSpeedLimitSignRecognition;
                this.activeSafetySpeedingAlarm.setVisibility((this.mIsSpeedingAlarmPresent && z) ? 0 : 8);
                this.activeSafetyIntelligentSpeedLimitControl.setVisibility((this.mIsIntelligentSpeedLimitControlPresent && z) ? 0 : 8);
                break;
            case IACC_ENABLED:
                switcher = this.mSwIntelligentSpeedLimitControl;
                break;
            case TSR_AUDIO_WARNING_ENABLED:
                switcher = this.mSwSpeedingAlarm;
                break;
            case AEB_OFF_ENABLED:
                switcher = this.mSwActiveBrake;
                break;
            case LDW_LKA_ENABLED:
                switcher = this.mSwbLaneDeparture;
                this.activeSafetyLaneDepartureOption.setVisibility((this.mIsLksModePresent && z) ? 0 : 8);
                break;
            case FCW_OFF_ENABLED:
                switcher = this.mSwPreCollisionWarning;
                this.activeSafetyPreCollisionWarningOption.setVisibility((this.mIsFcwWarningDistancePresent && z) ? 0 : 8);
                break;
            default:
                switcher = null;
                break;
        }
        if (switcher == null || switcher.isChecked() == z) {
            return;
        }
        switcher.setChecked(z);
    }

    private void showAidsSafeTipDialog(final CarAssistantManager.Function function, final boolean z) {
        this.mCommonDialog = new CommonDialog(getContext().getApplicationContext());
        this.mCommonDialog.show();
        this.mCommonDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.yftech.settings.aid.DriveAidsSafeFragment.4
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                DriveAidsSafeFragment.this.mCommonDialog = null;
            }
        });
        int i = AnonymousClass6.$SwitchMap$com$yftech$settings$manager$CarAssistantManager$Function[function.ordinal()];
        if (i == 4) {
            this.mCommonDialog.setContent(getString(z ? R.string.dialog_open_pre_collision_warning_tip_ldw : R.string.dialog_close_pre_collision_warning_tip_ldw));
        } else if (i == 6) {
            this.mCommonDialog.setContent(getString(z ? R.string.dialog_open_pre_collision_warning_tip_fcw : R.string.dialog_close_pre_collision_warning_tip));
        }
        CommonDialog commonDialog = this.mCommonDialog;
        String[] strArr = new String[2];
        strArr[0] = getString(z ? R.string.dialog_open_pre_collision_warning_btn_sure : R.string.dialog_close_pre_collision_warning_btn_sure);
        strArr[1] = getString(R.string.dialog_close_pre_collision_warning_btn_cancel);
        commonDialog.setButtonText(strArr);
        this.mCommonDialog.setOnBtnClickListener(new CommonDialog.OnBtnClickListener() { // from class: com.yftech.settings.aid.DriveAidsSafeFragment.5
            @Override // com.yftech.settings.widget.dialog.CommonDialog.OnBtnClickListener
            public void onCancelClick() {
                DriveAidsSafeFragment.this.setSwitcherView(function, CarAssistantManager.getInstance().getEnabled(function));
            }

            @Override // com.yftech.settings.widget.dialog.CommonDialog.OnBtnClickListener
            public void onIconClick() {
            }

            @Override // com.yftech.settings.widget.dialog.CommonDialog.OnBtnClickListener
            public void onSureClick() {
                CarAssistantManager.getInstance().setEnabled(function, z);
                if (function == CarAssistantManager.Function.FCW_OFF_ENABLED) {
                    DriveAidsSafeFragment.this.activeSafetyPreCollisionWarningOption.setVisibility((DriveAidsSafeFragment.this.mIsFcwWarningDistancePresent && z) ? 0 : 8);
                }
            }
        });
    }

    private void showCloseFcwTipDialog() {
        this.mCommonDialog = new CommonDialog(getContext().getApplicationContext());
        this.mCommonDialog.show();
        this.mCommonDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.yftech.settings.aid.DriveAidsSafeFragment.2
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                DriveAidsSafeFragment.this.mCommonDialog = null;
            }
        });
        this.mCommonDialog.setContent(getString(R.string.dialog_close_pre_collision_warning_tip)).setButtonText(getString(R.string.dialog_close_pre_collision_warning_btn_sure), getString(R.string.dialog_close_pre_collision_warning_btn_cancel)).setOnBtnClickListener(new CommonDialog.OnBtnClickListener() { // from class: com.yftech.settings.aid.DriveAidsSafeFragment.3
            @Override // com.yftech.settings.widget.dialog.CommonDialog.OnBtnClickListener
            public void onCancelClick() {
                DriveAidsSafeFragment.this.setSwitcherView(CarAssistantManager.Function.FCW_OFF_ENABLED, CarAssistantManager.getInstance().getEnabled(CarAssistantManager.Function.FCW_OFF_ENABLED));
            }

            @Override // com.yftech.settings.widget.dialog.CommonDialog.OnBtnClickListener
            public void onIconClick() {
            }

            @Override // com.yftech.settings.widget.dialog.CommonDialog.OnBtnClickListener
            public void onSureClick() {
                CarAssistantManager.getInstance().setEnabled(CarAssistantManager.Function.FCW_OFF_ENABLED, false);
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

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        if (compoundButton.isPressed()) {
            CarAssistantManager.Function function = CarAssistantManager.Function.UNKNOWN;
            switch (((Integer) compoundButton.getTag()).intValue()) {
                case R.id.activeSafetyActiveBrake /* 2131230750 */:
                    showAidsSafeTipDialog(CarAssistantManager.Function.AEB_OFF_ENABLED, z);
                    break;
                case R.id.activeSafetyIntelligentSpeedLimitControl /* 2131230754 */:
                    function = CarAssistantManager.Function.IACC_ENABLED;
                    break;
                case R.id.activeSafetyLaneDeparture /* 2131230755 */:
                    function = CarAssistantManager.Function.LDW_LKA_ENABLED;
                    this.activeSafetyLaneDepartureOption.setVisibility((this.mIsLksModePresent && z) ? 0 : 8);
                    break;
                case R.id.activeSafetyPreCollisionWarning /* 2131230757 */:
                    showAidsSafeTipDialog(CarAssistantManager.Function.FCW_OFF_ENABLED, z);
                    break;
                case R.id.activeSafetySpeedLimitSignRecognition /* 2131230759 */:
                    function = CarAssistantManager.Function.TSR_ENABLED;
                    this.activeSafetySpeedingAlarm.setVisibility((this.mIsSpeedingAlarmPresent && z) ? 0 : 8);
                    this.activeSafetyIntelligentSpeedLimitControl.setVisibility((this.mIsIntelligentSpeedLimitControlPresent && z) ? 0 : 8);
                    break;
                case R.id.activeSafetySpeedingAlarm /* 2131230761 */:
                    function = CarAssistantManager.Function.TSR_AUDIO_WARNING_ENABLED;
                    break;
            }
            if (function != CarAssistantManager.Function.UNKNOWN) {
                CarAssistantManager.getInstance().setEnabled(function, z);
            }
        }
    }

    @Override // android.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_aid_safe, viewGroup, false);
        initView(viewInflate);
        return viewInflate;
    }

    @Override // com.yftech.settings.BaseFragment, android.app.Fragment
    public void onPause() {
        super.onPause();
        CarAssistantManager.getInstance().unregisterModelCallback(this.mCarAssistantModelCallback);
        CarAssistantManager.getInstance().setAction(CarAssistantManager.Function.STOP_TIMEOUT_ACTION);
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        initViewData();
        CarAssistantManager.getInstance().registerModelCallback(this.mCarAssistantModelCallback);
    }

    @Override // com.yftech.settings.widget.MultiSelectView.OnSwitchListener
    public void onSwitch(MultiSelectView multiSelectView, int i, String str, boolean z) {
        if (z) {
            CarAssistantManager.Function function = CarAssistantManager.Function.UNKNOWN;
            int iIntValue = ((Integer) multiSelectView.getTag()).intValue();
            if (iIntValue == R.id.activeSafetyLaneDeparture_option) {
                function = CarAssistantManager.Function.LKS_MODE_OPTION;
            } else if (iIntValue == R.id.activeSafetyPreCollisionWarning_option) {
                function = CarAssistantManager.Function.FCW_WARNING_DISTANCE_OPTION;
            } else if (iIntValue == R.id.drivingAidTipMode) {
                function = CarAssistantManager.Function.ADAS_WARN_TYPE_OPTION;
            }
            if (function != CarAssistantManager.Function.UNKNOWN) {
                CarAssistantManager.getInstance().setOption(function, i);
            }
        }
    }
}
