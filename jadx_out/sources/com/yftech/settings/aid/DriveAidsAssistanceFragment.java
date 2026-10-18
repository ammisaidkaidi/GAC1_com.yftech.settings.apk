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
import com.yftech.settings.widget.MultiSelectView;
import com.yftech.settings.widget.Switcher;

/* JADX INFO: loaded from: classes.dex */
public class DriveAidsAssistanceFragment extends BaseFragment implements MultiSelectView.OnSwitchListener, CompoundButton.OnCheckedChangeListener {
    private BaseManager.ModelCallback<CarAssistantManager.Function> mCarAssistantModelCallback = new BaseManager.ModelCallback<CarAssistantManager.Function>() { // from class: com.yftech.settings.aid.DriveAidsAssistanceFragment.1
        @Override // com.yftech.settings.manager.BaseManager.ModelCallback
        public void onEnableChanged(CarAssistantManager.Function function, boolean z) {
            super.onEnableChanged(function, z);
            DriveAidsAssistanceFragment.this.setSwitcherView(function, z);
        }

        @Override // com.yftech.settings.manager.BaseManager.ModelCallback
        public void onOptionChanged(CarAssistantManager.Function function, int i) {
            super.onOptionChanged(function, i);
            DriveAidsAssistanceFragment.this.setSwitchMultiButtonView(function, i);
        }

        @Override // com.yftech.settings.manager.BaseManager.ModelCallback
        public void onTimeout() {
            super.onTimeout();
            DriveAidsAssistanceFragment.this.initViewData();
        }

        @Override // com.yftech.settings.manager.BaseManager.ModelCallback
        public void onValueChanged(CarAssistantManager.Function function, Object obj) {
            super.onValueChanged(function, obj);
        }
    };
    private MultiSelectView mSmbCruiseAidMode;
    private Switcher mSwDistanceFromFrontCar;
    private Switcher mSwIntelligentAvoidance;

    private void initView(View view) {
        LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.drivingAidCruiseAidMode);
        linearLayout.setVisibility(CarAssistantManager.getInstance().getFunctionPresent(CarAssistantManager.Function.CRUISE_ASSIST_OPTION) ? 0 : 8);
        if (linearLayout.getVisibility() == 0) {
            ((TextView) linearLayout.findViewById(R.id.tvTitle)).setText(R.string.driving_aid_item_cruise_aid_mode);
            ((TextView) linearLayout.findViewById(R.id.tvDescribe)).setText(R.string.driving_aid_item_cruise_aid_mode_describe);
            this.mSmbCruiseAidMode = (MultiSelectView) linearLayout.findViewById(R.id.multiSelectView);
            this.mSmbCruiseAidMode.setTag(Integer.valueOf(R.id.drivingAidCruiseAidMode));
            this.mSmbCruiseAidMode.setText(getResources().getStringArray(R.array.driving_aid_cruise_assist_mode));
            this.mSmbCruiseAidMode.setOnSwitchListener(this);
            this.mSmbCruiseAidMode.setOnTouchListener(this);
        }
        LinearLayout linearLayout2 = (LinearLayout) view.findViewById(R.id.activeSafetyDistanceFromFrontCar);
        linearLayout2.setVisibility(CarAssistantManager.getInstance().getFunctionPresent(CarAssistantManager.Function.DFC_ENABLE) ? 0 : 8);
        if (linearLayout2.getVisibility() == 0) {
            ((TextView) linearLayout2.findViewById(R.id.tvTitle)).setText(R.string.driving_aid_item_dfc);
            ((TextView) linearLayout2.findViewById(R.id.tvDescribe)).setText(R.string.driving_aid_item_dfc_describe);
            this.mSwDistanceFromFrontCar = (Switcher) linearLayout2.findViewById(R.id.switcher);
            this.mSwDistanceFromFrontCar.setTag(Integer.valueOf(R.id.activeSafetyDistanceFromFrontCar));
            this.mSwDistanceFromFrontCar.setOnCheckedChangeListener(this);
            this.mSwDistanceFromFrontCar.setOnTouchListener(this);
        }
        LinearLayout linearLayout3 = (LinearLayout) view.findViewById(R.id.activeSafetyIntelligentAvoidance);
        linearLayout3.setVisibility(CarAssistantManager.getInstance().getFunctionPresent(CarAssistantManager.Function.IA_ENABLE) ? 0 : 8);
        if (linearLayout3.getVisibility() == 0) {
            ((TextView) linearLayout3.findViewById(R.id.tvTitle)).setText(R.string.driving_aid_item_ia);
            ((TextView) linearLayout3.findViewById(R.id.tvDescribe)).setText(R.string.driving_aid_item_ia_describe);
            this.mSwIntelligentAvoidance = (Switcher) linearLayout3.findViewById(R.id.switcher);
            this.mSwIntelligentAvoidance.setTag(Integer.valueOf(R.id.activeSafetyIntelligentAvoidance));
            this.mSwIntelligentAvoidance.setOnCheckedChangeListener(this);
            this.mSwIntelligentAvoidance.setOnTouchListener(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initViewData() {
        if (CarAssistantManager.getInstance().getFunctionPresent(CarAssistantManager.Function.CRUISE_ASSIST_OPTION)) {
            setSwitchMultiButtonView(CarAssistantManager.Function.CRUISE_ASSIST_OPTION, CarAssistantManager.getInstance().getOption(CarAssistantManager.Function.CRUISE_ASSIST_OPTION));
        }
        if (CarAssistantManager.getInstance().getFunctionPresent(CarAssistantManager.Function.DFC_ENABLE)) {
            setSwitcherView(CarAssistantManager.Function.DFC_ENABLE, CarAssistantManager.getInstance().getEnabled(CarAssistantManager.Function.DFC_ENABLE));
        }
        if (CarAssistantManager.getInstance().getFunctionPresent(CarAssistantManager.Function.IA_ENABLE)) {
            setSwitcherView(CarAssistantManager.Function.IA_ENABLE, CarAssistantManager.getInstance().getEnabled(CarAssistantManager.Function.IA_ENABLE));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSwitchMultiButtonView(CarAssistantManager.Function function, int i) {
        MultiSelectView multiSelectView = AnonymousClass2.$SwitchMap$com$yftech$settings$manager$CarAssistantManager$Function[function.ordinal()] != 3 ? null : this.mSmbCruiseAidMode;
        if (multiSelectView == null || multiSelectView.getTabNum() == i) {
            return;
        }
        multiSelectView.setSelectedTab(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSwitcherView(CarAssistantManager.Function function, boolean z) {
        Switcher switcher;
        switch (function) {
            case DFC_ENABLE:
                switcher = this.mSwDistanceFromFrontCar;
                break;
            case IA_ENABLE:
                switcher = this.mSwIntelligentAvoidance;
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

    @Override // com.yftech.settings.BaseFragment
    protected void dismissAllDialog() {
        super.dismissAllDialog();
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        if (compoundButton.isPressed()) {
            CarAssistantManager.Function function = CarAssistantManager.Function.UNKNOWN;
            int iIntValue = ((Integer) compoundButton.getTag()).intValue();
            if (iIntValue == R.id.activeSafetyDistanceFromFrontCar) {
                function = CarAssistantManager.Function.DFC_ENABLE;
            } else if (iIntValue == R.id.activeSafetyIntelligentAvoidance) {
                function = CarAssistantManager.Function.IA_ENABLE;
            }
            if (function != CarAssistantManager.Function.UNKNOWN) {
                CarAssistantManager.getInstance().setEnabled(function, z);
            }
        }
    }

    @Override // android.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_aid_assistance, viewGroup, false);
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
            if (((Integer) multiSelectView.getTag()).intValue() == R.id.drivingAidCruiseAidMode) {
                function = CarAssistantManager.Function.CRUISE_ASSIST_OPTION;
            }
            if (function != CarAssistantManager.Function.UNKNOWN) {
                CarAssistantManager.getInstance().setOption(function, i);
            }
        }
    }
}
