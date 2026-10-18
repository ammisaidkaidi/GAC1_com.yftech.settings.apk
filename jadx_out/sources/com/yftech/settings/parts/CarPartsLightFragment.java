package com.yftech.settings.parts;

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
import com.yftech.settings.widget.Switcher;

/* JADX INFO: loaded from: classes.dex */
public class CarPartsLightFragment extends BaseFragment implements CompoundButton.OnCheckedChangeListener {
    private BaseManager.ModelCallback<CarPartsManager.Function> mCarPartsModelCallback = new BaseManager.ModelCallback<CarPartsManager.Function>() { // from class: com.yftech.settings.parts.CarPartsLightFragment.1
        @Override // com.yftech.settings.manager.BaseManager.ModelCallback
        public void onEnableChanged(CarPartsManager.Function function, boolean z) {
            super.onEnableChanged(function, z);
            CarPartsLightFragment.this.setSwitcherView(function, z);
        }

        @Override // com.yftech.settings.manager.BaseManager.ModelCallback
        public void onTimeout() {
            super.onTimeout();
            CarPartsLightFragment.this.initViewData();
        }
    };
    private Switcher mSwLightDelayedHeadlightOff;
    private Switcher mSwLightHigh;

    private void initView(View view) {
        LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.carLightHigh);
        linearLayout.setVisibility(CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.IHBC_ENABLED) ? 0 : 8);
        if (linearLayout.getVisibility() == 0) {
            ((TextView) linearLayout.findViewById(R.id.tvTitle)).setText(R.string.car_light_item_high);
            ((TextView) linearLayout.findViewById(R.id.tvDescribe)).setText(R.string.car_light_item_high_describe);
            this.mSwLightHigh = (Switcher) linearLayout.findViewById(R.id.switcher);
            this.mSwLightHigh.setTag(Integer.valueOf(R.id.carLightHigh));
            this.mSwLightHigh.setOnCheckedChangeListener(this);
            this.mSwLightHigh.setOnTouchListener(this);
        }
        LinearLayout linearLayout2 = (LinearLayout) view.findViewById(R.id.carLightDelayedHeadlightOff);
        linearLayout2.setVisibility(CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.HEAD_LIGHT_DELAY_ENABLED) ? 0 : 8);
        if (linearLayout2.getVisibility() == 0) {
            ((TextView) linearLayout2.findViewById(R.id.tvTitle)).setText(R.string.car_light_delayed_headlight_off);
            ((TextView) linearLayout2.findViewById(R.id.tvDescribe)).setText(R.string.car_light_delayed_headlight_off_describe);
            this.mSwLightDelayedHeadlightOff = (Switcher) linearLayout2.findViewById(R.id.switcher);
            this.mSwLightDelayedHeadlightOff.setTag(Integer.valueOf(R.id.carLightDelayedHeadlightOff));
            this.mSwLightDelayedHeadlightOff.setOnCheckedChangeListener(this);
            this.mSwLightDelayedHeadlightOff.setOnTouchListener(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initViewData() {
        if (CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.IHBC_ENABLED)) {
            setSwitcherView(CarPartsManager.Function.IHBC_ENABLED, CarPartsManager.getInstance().getEnabled(CarPartsManager.Function.IHBC_ENABLED));
        }
        if (CarPartsManager.getInstance().getFunctionPresent(CarPartsManager.Function.HEAD_LIGHT_DELAY_ENABLED)) {
            setSwitcherView(CarPartsManager.Function.HEAD_LIGHT_DELAY_ENABLED, CarPartsManager.getInstance().getEnabled(CarPartsManager.Function.HEAD_LIGHT_DELAY_ENABLED));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSwitcherView(CarPartsManager.Function function, boolean z) {
        Switcher switcher;
        switch (function) {
            case IHBC_ENABLED:
                switcher = this.mSwLightHigh;
                break;
            case HEAD_LIGHT_DELAY_ENABLED:
                switcher = this.mSwLightDelayedHeadlightOff;
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
                case R.id.carLightDelayedHeadlightOff /* 2131230834 */:
                    function = CarPartsManager.Function.HEAD_LIGHT_DELAY_ENABLED;
                    break;
                case R.id.carLightHigh /* 2131230835 */:
                    function = CarPartsManager.Function.IHBC_ENABLED;
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
        View viewInflate = layoutInflater.inflate(R.layout.fragment_parts_light, viewGroup, false);
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
}
