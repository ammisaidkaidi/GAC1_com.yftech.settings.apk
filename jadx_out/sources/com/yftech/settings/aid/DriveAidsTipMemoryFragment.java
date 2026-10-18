package com.yftech.settings.aid;

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
import com.yftech.settings.manager.CarDriveModeManager;
import com.yftech.settings.widget.SeekBarNumber;
import com.yftech.settings.widget.Switcher;

/* JADX INFO: loaded from: classes.dex */
public class DriveAidsTipMemoryFragment extends BaseFragment implements SeekBarNumber.OnSeekChangeListener, CompoundButton.OnCheckedChangeListener {
    private static final int SPEED_REMINDER_MAX = 200;
    private static final int SPEED_REMINDER_STEP = 10;
    private BaseManager.ModelCallback<CarAssistantManager.Function> mCarAssistantModelCallback = new BaseManager.ModelCallback<CarAssistantManager.Function>() { // from class: com.yftech.settings.aid.DriveAidsTipMemoryFragment.1
        @Override // com.yftech.settings.manager.BaseManager.ModelCallback
        public void onEnableChanged(CarAssistantManager.Function function, boolean z) {
            super.onEnableChanged(function, z);
        }

        @Override // com.yftech.settings.manager.BaseManager.ModelCallback
        public void onTimeout() {
            super.onTimeout();
            DriveAidsTipMemoryFragment.this.initAssistantViewData();
        }

        @Override // com.yftech.settings.manager.BaseManager.ModelCallback
        public void onValueChanged(CarAssistantManager.Function function, Object obj) {
            super.onValueChanged(function, obj);
            DriveAidsTipMemoryFragment.this.setValueView(function, obj);
        }
    };
    private BaseManager.ModelCallback<CarDriveModeManager.Function> mCarDriveModeModelCallback = new BaseManager.ModelCallback<CarDriveModeManager.Function>() { // from class: com.yftech.settings.aid.DriveAidsTipMemoryFragment.2
        @Override // com.yftech.settings.manager.BaseManager.ModelCallback
        public void onEnableChanged(CarDriveModeManager.Function function, boolean z) {
            super.onEnableChanged(function, z);
            DriveAidsTipMemoryFragment.this.setSwitcherView(function, z);
        }

        @Override // com.yftech.settings.manager.BaseManager.ModelCallback
        public void onOptionChanged(CarDriveModeManager.Function function, int i) {
            super.onOptionChanged(function, i);
        }

        @Override // com.yftech.settings.manager.BaseManager.ModelCallback
        public void onTimeout() {
            super.onTimeout();
            DriveAidsTipMemoryFragment.this.initDriveModeViewData();
        }
    };
    private SeekBarNumber mSpeedRemindeSB;
    private Switcher mSwRememberDrivingMode;
    private TextView mTvSpeedReminder;

    /* JADX INFO: renamed from: com.yftech.settings.aid.DriveAidsTipMemoryFragment$3, reason: invalid class name */
    static /* synthetic */ class AnonymousClass3 {
        static final /* synthetic */ int[] $SwitchMap$com$yftech$settings$manager$CarAssistantManager$Function;
        static final /* synthetic */ int[] $SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function = new int[CarDriveModeManager.Function.values().length];

        static {
            try {
                $SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function[CarDriveModeManager.Function.REMEMBER_DRIVING_MODE_ENABLED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            $SwitchMap$com$yftech$settings$manager$CarAssistantManager$Function = new int[CarAssistantManager.Function.values().length];
            try {
                $SwitchMap$com$yftech$settings$manager$CarAssistantManager$Function[CarAssistantManager.Function.SPEED_WARNING_VALUE.ordinal()] = 1;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initAssistantViewData() {
        if (CarAssistantManager.getInstance().getFunctionPresent(CarAssistantManager.Function.SPEED_WARNING_VALUE)) {
            setValueView(CarAssistantManager.Function.SPEED_WARNING_VALUE, CarAssistantManager.getInstance().getValue(CarAssistantManager.Function.SPEED_WARNING_VALUE));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initDriveModeViewData() {
        if (CarDriveModeManager.getInstance().getFunctionPresent(CarDriveModeManager.Function.REMEMBER_DRIVING_MODE_ENABLED)) {
            setSwitcherView(CarDriveModeManager.Function.REMEMBER_DRIVING_MODE_ENABLED, CarDriveModeManager.getInstance().getEnabled(CarDriveModeManager.Function.REMEMBER_DRIVING_MODE_ENABLED));
        }
    }

    private void initView(View view) {
        LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.activeSafetySpeedReminder);
        linearLayout.setVisibility(CarAssistantManager.getInstance().getFunctionPresent(CarAssistantManager.Function.SPEED_WARNING_VALUE) ? 0 : 8);
        if (linearLayout.getVisibility() == 0) {
            ((TextView) linearLayout.findViewById(R.id.tvTitle)).setText(R.string.active_safety_aid_item_speed_reminder);
            ((TextView) linearLayout.findViewById(R.id.tvDescribe)).setText(R.string.active_safety_aid_item_speed_reminder_describe);
            this.mSpeedRemindeSB = (SeekBarNumber) linearLayout.findViewById(R.id.seekBarNumber);
            this.mSpeedRemindeSB.setTag(Integer.valueOf(R.id.activeSafetySpeedReminder));
            this.mSpeedRemindeSB.setMax(20);
            this.mSpeedRemindeSB.setOnSeekChangeListener(this);
            this.mSpeedRemindeSB.setOnTouchListener(this);
            this.mTvSpeedReminder = (TextView) linearLayout.findViewById(R.id.tvContent);
            this.mTvSpeedReminder.setTextColor(getResources().getColor(R.color.describe_text_color));
            this.mTvSpeedReminder.setTextSize(getResources().getDimension(R.dimen.item_describe_text_size));
        }
        LinearLayout linearLayout2 = (LinearLayout) view.findViewById(R.id.chassisPowerRememberMode);
        linearLayout2.setVisibility(CarDriveModeManager.getInstance().getFunctionPresent(CarDriveModeManager.Function.REMEMBER_DRIVING_MODE_ENABLED) ? 0 : 8);
        if (linearLayout2.getVisibility() == 0) {
            ((TextView) linearLayout2.findViewById(R.id.tvTitle)).setText(R.string.chassis_power_item_remember_driving_mode);
            ((TextView) linearLayout2.findViewById(R.id.tvDescribe)).setText(R.string.chassis_power_item_remember_driving_mode_describe);
            this.mSwRememberDrivingMode = (Switcher) linearLayout2.findViewById(R.id.switcher);
            this.mSwRememberDrivingMode.setTag(Integer.valueOf(R.id.chassisPowerRememberMode));
            this.mSwRememberDrivingMode.setOnCheckedChangeListener(this);
            this.mSwRememberDrivingMode.setOnTouchListener(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSwitcherView(CarDriveModeManager.Function function, boolean z) {
        Switcher switcher = AnonymousClass3.$SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function[function.ordinal()] != 1 ? null : this.mSwRememberDrivingMode;
        if (switcher == null || switcher.isChecked() == z) {
            return;
        }
        switcher.setChecked(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValueView(CarAssistantManager.Function function, Object obj) {
        String string;
        if (AnonymousClass3.$SwitchMap$com$yftech$settings$manager$CarAssistantManager$Function[function.ordinal()] != 1) {
            return;
        }
        int iIntValue = ((Integer) obj).intValue() / 10;
        if (this.mSpeedRemindeSB != null) {
            this.mSpeedRemindeSB.setProgress(iIntValue);
        }
        if (this.mTvSpeedReminder != null) {
            TextView textView = this.mTvSpeedReminder;
            if (iIntValue > 0) {
                string = obj + "km/h";
            } else {
                string = getString(R.string.active_safety_aid_speed_reminder_close);
            }
            textView.setText(string);
        }
    }

    @Override // com.yftech.settings.BaseFragment
    protected void dismissAllDialog() {
        super.dismissAllDialog();
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        if (compoundButton.isPressed()) {
            CarDriveModeManager.Function function = CarDriveModeManager.Function.UNKNOWN;
            if (((Integer) compoundButton.getTag()).intValue() == R.id.chassisPowerRememberMode) {
                function = CarDriveModeManager.Function.REMEMBER_DRIVING_MODE_ENABLED;
            }
            if (function != CarDriveModeManager.Function.UNKNOWN) {
                CarDriveModeManager.getInstance().setEnabled(function, z);
            }
        }
    }

    @Override // android.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_aid_tip_memory, viewGroup, false);
        initView(viewInflate);
        return viewInflate;
    }

    @Override // com.yftech.settings.BaseFragment, android.app.Fragment
    public void onPause() {
        super.onPause();
        CarAssistantManager.getInstance().unregisterModelCallback(this.mCarAssistantModelCallback);
        CarAssistantManager.getInstance().setAction(CarAssistantManager.Function.STOP_TIMEOUT_ACTION);
        CarDriveModeManager.getInstance().unregisterModelCallback(this.mCarDriveModeModelCallback);
        CarDriveModeManager.getInstance().setAction(CarDriveModeManager.Function.STOP_TIMEOUT_ACTION);
    }

    @Override // com.yftech.settings.widget.SeekBarNumber.OnSeekChangeListener
    public void onProgressChanged(SeekBarNumber seekBarNumber, int i) {
        String string;
        if (((Integer) seekBarNumber.getTag()).intValue() == R.id.activeSafetySpeedReminder) {
            int i2 = i * 10;
            CarAssistantManager.getInstance().setValue(CarAssistantManager.Function.SPEED_WARNING_VALUE, (Object) Integer.valueOf(i2));
            TextView textView = this.mTvSpeedReminder;
            if (i > 0) {
                string = i2 + "km/h";
            } else {
                string = getString(R.string.active_safety_aid_speed_reminder_close);
            }
            textView.setText(string);
        }
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        initAssistantViewData();
        initDriveModeViewData();
        CarAssistantManager.getInstance().registerModelCallback(this.mCarAssistantModelCallback);
        CarDriveModeManager.getInstance().registerModelCallback(this.mCarDriveModeModelCallback);
    }

    @Override // com.yftech.settings.widget.SeekBarNumber.OnSeekChangeListener
    public void onStartTrackingTouch(SeekBarNumber seekBarNumber) {
    }

    @Override // com.yftech.settings.widget.SeekBarNumber.OnSeekChangeListener
    public void onStopTrackingTouch(SeekBarNumber seekBarNumber) {
    }
}
