package com.yftech.settings.ac;

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
import com.yftech.settings.manager.CarPartsManager;
import com.yftech.settings.widget.MultiSelectView;
import com.yftech.settings.widget.Switcher;

/* JADX INFO: loaded from: classes.dex */
public class AcFragment extends BaseFragment implements MultiSelectView.OnSwitchListener, CompoundButton.OnCheckedChangeListener {
    private BaseManager.ModelCallback<CarPartsManager.Function> mCarPartsModelCallback = new BaseManager.ModelCallback<CarPartsManager.Function>() { // from class: com.yftech.settings.ac.AcFragment.1
        @Override // com.yftech.settings.manager.BaseManager.ModelCallback
        public void onEnableChanged(CarPartsManager.Function function, boolean z) {
            super.onEnableChanged(function, z);
            AcFragment.this.setSwitcherView(function, z);
        }

        @Override // com.yftech.settings.manager.BaseManager.ModelCallback
        public void onOptionChanged(CarPartsManager.Function function, int i) {
            super.onOptionChanged(function, i);
            AcFragment.this.setSwitchMultiButtonView(function, i);
        }

        @Override // com.yftech.settings.manager.BaseManager.ModelCallback
        public void onTimeout() {
            super.onTimeout();
            AcFragment.this.initViewData();
        }
    };
    private MultiSelectView mSmbAcAutoBlowingSetting;
    private Switcher mSwAcAutoDrying;
    private Switcher mSwAcInOutCirculationControl;
    private Switcher mSwAeration;

    private void initView(View view) {
        LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.acAutoBlowingSetting);
        linearLayout.setVisibility(CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.AC_FAN_SPEED_OF_AUTO_MODE_OPTION) ? 0 : 8);
        if (linearLayout.getVisibility() == 0) {
            ((TextView) linearLayout.findViewById(R.id.tvTitle)).setText(getContext().getApplicationContext().getString(R.string.ac_item_auto_blowing_setting));
            ((TextView) linearLayout.findViewById(R.id.tvDescribe)).setText(getContext().getApplicationContext().getString(R.string.ac_item_auto_blowing_setting_describe));
            this.mSmbAcAutoBlowingSetting = (MultiSelectView) linearLayout.findViewById(R.id.multiSelectView);
            this.mSmbAcAutoBlowingSetting.setTag(Integer.valueOf(R.id.acAutoBlowingSetting));
            this.mSmbAcAutoBlowingSetting.setText(getContext().getApplicationContext().getResources().getStringArray(R.array.ac_auto_blowing_setting));
            this.mSmbAcAutoBlowingSetting.setOnSwitchListener(this);
            this.mSmbAcAutoBlowingSetting.setOnTouchListener(this);
        }
        LinearLayout linearLayout2 = (LinearLayout) view.findViewById(R.id.acInOutCirculationControl);
        linearLayout2.setVisibility(CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.AC_AIR_CIRCULATION_MODE_OF_AUTO_MODE_ENABLED) ? 0 : 8);
        if (linearLayout2.getVisibility() == 0) {
            ((TextView) linearLayout2.findViewById(R.id.tvTitle)).setText(getContext().getApplicationContext().getString(R.string.ac_item_in_out_circulation_control));
            ((TextView) linearLayout2.findViewById(R.id.tvDescribe)).setText(getContext().getApplicationContext().getString(R.string.ac_item_in_out_circulation_control_describe));
            this.mSwAcInOutCirculationControl = (Switcher) linearLayout2.findViewById(R.id.switcher);
            this.mSwAcInOutCirculationControl.setTag(Integer.valueOf(R.id.acInOutCirculationControl));
            this.mSwAcInOutCirculationControl.setOnCheckedChangeListener(this);
            this.mSwAcInOutCirculationControl.setOnTouchListener(this);
        }
        LinearLayout linearLayout3 = (LinearLayout) view.findViewById(R.id.acAutoDrying);
        linearLayout3.setVisibility(CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.AC_AUTO_DRYING_ENABLED) ? 0 : 8);
        if (linearLayout3.getVisibility() == 0) {
            ((TextView) linearLayout3.findViewById(R.id.tvTitle)).setText(getContext().getApplicationContext().getString(R.string.ac_item_auto_drying));
            ((TextView) linearLayout3.findViewById(R.id.tvDescribe)).setText(getContext().getApplicationContext().getString(R.string.ac_item_auto_drying_describe));
            this.mSwAcAutoDrying = (Switcher) linearLayout3.findViewById(R.id.switcher);
            this.mSwAcAutoDrying.setTag(Integer.valueOf(R.id.acAutoDrying));
            this.mSwAcAutoDrying.setOnCheckedChangeListener(this);
            this.mSwAcAutoDrying.setOnTouchListener(this);
        }
        LinearLayout linearLayout4 = (LinearLayout) view.findViewById(R.id.acAeration);
        linearLayout4.setVisibility(CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.AC_AIR_UNLOCK_VENTILATION_ENABLE) ? 0 : 8);
        if (linearLayout4.getVisibility() == 0) {
            ((TextView) linearLayout4.findViewById(R.id.tvTitle)).setText(getContext().getApplicationContext().getString(R.string.ac_item_aeration));
            ((TextView) linearLayout4.findViewById(R.id.tvDescribe)).setText(R.string.ac_item_aeration_describe);
            this.mSwAeration = (Switcher) linearLayout4.findViewById(R.id.switcher);
            this.mSwAeration.setTag(Integer.valueOf(R.id.acAeration));
            this.mSwAeration.setOnCheckedChangeListener(this);
            this.mSwAeration.setOnTouchListener(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initViewData() {
        if (CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.AC_FAN_SPEED_OF_AUTO_MODE_OPTION)) {
            setSwitchMultiButtonView(CarPartsManager.Function.AC_FAN_SPEED_OF_AUTO_MODE_OPTION, CarPartsManager.getInstance().getOption(CarPartsManager.Function.AC_FAN_SPEED_OF_AUTO_MODE_OPTION));
        }
        if (CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.AC_AIR_CIRCULATION_MODE_OF_AUTO_MODE_ENABLED)) {
            setSwitcherView(CarPartsManager.Function.AC_AIR_CIRCULATION_MODE_OF_AUTO_MODE_ENABLED, CarPartsManager.getInstance().getEnabled(CarPartsManager.Function.AC_AIR_CIRCULATION_MODE_OF_AUTO_MODE_ENABLED));
        }
        if (CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.AC_AUTO_DRYING_ENABLED)) {
            setSwitcherView(CarPartsManager.Function.AC_AUTO_DRYING_ENABLED, CarPartsManager.getInstance().getEnabled(CarPartsManager.Function.AC_AUTO_DRYING_ENABLED));
        }
        if (CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.AC_AIR_UNLOCK_VENTILATION_ENABLE)) {
            setSwitcherView(CarPartsManager.Function.AC_AIR_UNLOCK_VENTILATION_ENABLE, CarPartsManager.getInstance().getEnabled(CarPartsManager.Function.AC_AIR_UNLOCK_VENTILATION_ENABLE));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSwitchMultiButtonView(CarPartsManager.Function function, int i) {
        MultiSelectView multiSelectView = AnonymousClass2.$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function[function.ordinal()] != 4 ? null : this.mSmbAcAutoBlowingSetting;
        if (multiSelectView == null || multiSelectView.getTabNum() == i) {
            return;
        }
        multiSelectView.setSelectedTab(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSwitcherView(CarPartsManager.Function function, boolean z) {
        Switcher switcher;
        switch (function) {
            case AC_AIR_CIRCULATION_MODE_OF_AUTO_MODE_ENABLED:
                switcher = this.mSwAcInOutCirculationControl;
                break;
            case AC_AUTO_DRYING_ENABLED:
                switcher = this.mSwAcAutoDrying;
                break;
            case AC_AIR_UNLOCK_VENTILATION_ENABLE:
                switcher = this.mSwAeration;
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

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        if (compoundButton.isPressed()) {
            CarPartsManager.Function function = CarPartsManager.Function.UNKNOWN;
            switch (((Integer) compoundButton.getTag()).intValue()) {
                case R.id.acAeration /* 2131230726 */:
                    function = CarPartsManager.Function.AC_AIR_UNLOCK_VENTILATION_ENABLE;
                    break;
                case R.id.acAutoDrying /* 2131230728 */:
                    function = CarPartsManager.Function.AC_AUTO_DRYING_ENABLED;
                    break;
                case R.id.acInOutCirculationControl /* 2131230729 */:
                    function = CarPartsManager.Function.AC_AIR_CIRCULATION_MODE_OF_AUTO_MODE_ENABLED;
                    break;
            }
            if (function != CarPartsManager.Function.UNKNOWN) {
                CarPartsManager.getInstance().setEnabled(function, z);
            }
        }
    }

    @Override // android.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_ac, viewGroup, false);
        initView(viewInflate);
        return viewInflate;
    }

    @Override // com.yftech.settings.BaseFragment, android.app.Fragment
    public void onPause() {
        super.onPause();
        CarPartsManager.getInstance().unregisterModelCallback(this.mCarPartsModelCallback);
        CarPartsManager.getInstance().setAction(CarPartsManager.Function.STOP_TIMEOUT_ACTION);
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        initViewData();
        CarPartsManager.getInstance().registerModelCallback(this.mCarPartsModelCallback);
    }

    @Override // com.yftech.settings.widget.MultiSelectView.OnSwitchListener
    public void onSwitch(MultiSelectView multiSelectView, int i, String str, boolean z) {
        if (z) {
            CarPartsManager.Function function = CarPartsManager.Function.UNKNOWN;
            if (((Integer) multiSelectView.getTag()).intValue() == R.id.acAutoBlowingSetting) {
                function = CarPartsManager.Function.AC_FAN_SPEED_OF_AUTO_MODE_OPTION;
            }
            if (function != CarPartsManager.Function.UNKNOWN) {
                CarPartsManager.getInstance().setOption(function, i);
            }
        }
    }
}
