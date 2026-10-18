package com.yftech.settings.chassis;

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
import com.yftech.settings.manager.CarDriveModeManager;
import com.yftech.settings.widget.MultiSelectView;
import com.yftech.settings.widget.Switcher;

/* JADX INFO: loaded from: classes.dex */
public class ChassisFragment extends BaseFragment implements CompoundButton.OnCheckedChangeListener, MultiSelectView.OnSwitchListener {
    private BaseManager.ModelCallback<CarDriveModeManager.Function> mCarDriveModeModelCallback = new BaseManager.ModelCallback<CarDriveModeManager.Function>() { // from class: com.yftech.settings.chassis.ChassisFragment.1
        @Override // com.yftech.settings.manager.BaseManager.ModelCallback
        public void onEnableChanged(CarDriveModeManager.Function function, boolean z) {
            super.onEnableChanged(function, z);
            ChassisFragment.this.setSwitcherView(function, z);
        }

        @Override // com.yftech.settings.manager.BaseManager.ModelCallback
        public void onOptionChanged(CarDriveModeManager.Function function, int i) {
            super.onOptionChanged(function, i);
            ChassisFragment.this.setSwitchMultiButtonView(function, i);
        }

        @Override // com.yftech.settings.manager.BaseManager.ModelCallback
        public void onTimeout() {
            super.onTimeout();
            ChassisFragment.this.initViewData();
        }
    };
    private MultiSelectView mSmbSteeringSteeringHand;
    private Switcher mSwRememberDrivingMode;

    /* JADX INFO: renamed from: com.yftech.settings.chassis.ChassisFragment$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function = new int[CarDriveModeManager.Function.values().length];

        static {
            try {
                $SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function[CarDriveModeManager.Function.REMEMBER_DRIVING_MODE_ENABLED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function[CarDriveModeManager.Function.EPS_STYLE_OPTION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    private void initView(View view) {
        LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.chassisPowerRememberMode);
        linearLayout.setVisibility(CarDriveModeManager.getInstance().getFunctionPresent(CarDriveModeManager.Function.REMEMBER_DRIVING_MODE_ENABLED) ? 0 : 8);
        if (linearLayout.getVisibility() == 0) {
            ((TextView) linearLayout.findViewById(R.id.tvTitle)).setText(R.string.chassis_power_item_remember_driving_mode);
            ((TextView) linearLayout.findViewById(R.id.tvDescribe)).setText(R.string.chassis_power_item_remember_driving_mode_describe);
            this.mSwRememberDrivingMode = (Switcher) linearLayout.findViewById(R.id.switcher);
            this.mSwRememberDrivingMode.setTag(Integer.valueOf(R.id.chassisPowerRememberMode));
            this.mSwRememberDrivingMode.setOnCheckedChangeListener(this);
            this.mSwRememberDrivingMode.setOnTouchListener(this);
        }
        LinearLayout linearLayout2 = (LinearLayout) view.findViewById(R.id.chassisPowerSteeringSteeringHand);
        linearLayout2.setVisibility(CarDriveModeManager.getInstance().getFunctionPresent(CarDriveModeManager.Function.EPS_STYLE_OPTION) ? 0 : 8);
        if (linearLayout2.getVisibility() == 0) {
            ((TextView) linearLayout2.findViewById(R.id.tvTitle)).setText(R.string.avdc_item_steering_steering_hand);
            ((TextView) linearLayout2.findViewById(R.id.tvDescribe)).setText(R.string.avdc_item_steering_steering_hand_describe);
            this.mSmbSteeringSteeringHand = (MultiSelectView) linearLayout2.findViewById(R.id.multiSelectView);
            this.mSmbSteeringSteeringHand.setTag(Integer.valueOf(R.id.chassisPowerSteeringSteeringHand));
            this.mSmbSteeringSteeringHand.setText(getResources().getStringArray(R.array.avdc_steering_steering_hand_a88));
            this.mSmbSteeringSteeringHand.setOnSwitchListener(this);
            linearLayout2.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initViewData() {
        if (CarDriveModeManager.getInstance().getFunctionPresent(CarDriveModeManager.Function.REMEMBER_DRIVING_MODE_ENABLED)) {
            setSwitcherView(CarDriveModeManager.Function.REMEMBER_DRIVING_MODE_ENABLED, CarDriveModeManager.getInstance().getEnabled(CarDriveModeManager.Function.REMEMBER_DRIVING_MODE_ENABLED));
        }
        if (CarDriveModeManager.getInstance().getFunctionPresent(CarDriveModeManager.Function.EPS_STYLE_OPTION)) {
            setSwitchMultiButtonView(CarDriveModeManager.Function.EPS_STYLE_OPTION, CarDriveModeManager.getInstance().getOption(CarDriveModeManager.Function.EPS_STYLE_OPTION));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSwitchMultiButtonView(CarDriveModeManager.Function function, int i) {
        MultiSelectView multiSelectView = AnonymousClass2.$SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function[function.ordinal()] != 2 ? null : this.mSmbSteeringSteeringHand;
        if (multiSelectView == null || multiSelectView.getTabNum() == i) {
            return;
        }
        multiSelectView.setSelectedTab(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSwitcherView(CarDriveModeManager.Function function, boolean z) {
        Switcher switcher = AnonymousClass2.$SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function[function.ordinal()] != 1 ? null : this.mSwRememberDrivingMode;
        if (switcher == null || switcher.isChecked() == z) {
            return;
        }
        switcher.setChecked(z);
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
        View viewInflate = layoutInflater.inflate(R.layout.fragment_chassis, viewGroup, false);
        initView(viewInflate);
        return viewInflate;
    }

    @Override // com.yftech.settings.BaseFragment, android.app.Fragment
    public void onPause() {
        super.onPause();
        CarDriveModeManager.getInstance().unregisterModelCallback(this.mCarDriveModeModelCallback);
        CarDriveModeManager.getInstance().setAction(CarDriveModeManager.Function.STOP_TIMEOUT_ACTION);
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        initViewData();
        CarDriveModeManager.getInstance().registerModelCallback(this.mCarDriveModeModelCallback);
    }

    @Override // com.yftech.settings.widget.MultiSelectView.OnSwitchListener
    public void onSwitch(MultiSelectView multiSelectView, int i, String str, boolean z) {
        if (z) {
            CarDriveModeManager.Function function = CarDriveModeManager.Function.UNKNOWN;
            if (((Integer) multiSelectView.getTag()).intValue() == R.id.chassisPowerSteeringSteeringHand) {
                function = CarDriveModeManager.Function.EPS_STYLE_OPTION;
            }
            if (function != CarDriveModeManager.Function.UNKNOWN) {
                CarDriveModeManager.getInstance().setOption(function, i);
            }
        }
    }
}
