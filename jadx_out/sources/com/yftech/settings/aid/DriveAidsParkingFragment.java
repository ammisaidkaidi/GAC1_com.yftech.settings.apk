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
import com.yftech.settings.manager.CarParkingManager;
import com.yftech.settings.widget.Switcher;

/* JADX INFO: loaded from: classes.dex */
public class DriveAidsParkingFragment extends BaseFragment implements CompoundButton.OnCheckedChangeListener {
    private BaseManager.ModelCallback<CarParkingManager.Function> mCarParkingModelCallback = new BaseManager.ModelCallback<CarParkingManager.Function>() { // from class: com.yftech.settings.aid.DriveAidsParkingFragment.1
        @Override // com.yftech.settings.manager.BaseManager.ModelCallback
        public void onEnableChanged(CarParkingManager.Function function, boolean z) {
            super.onEnableChanged(function, z);
            DriveAidsParkingFragment.this.setSwitcherView(function, z);
        }

        @Override // com.yftech.settings.manager.BaseManager.ModelCallback
        public void onTimeout() {
            super.onTimeout();
            DriveAidsParkingFragment.this.initViewData();
        }
    };
    private Switcher mSwAutoParkingPush;
    private Switcher mSwAutoParkingVoiceTip;
    private Switcher mSwRadarAlarm;

    private void initView(View view) {
        LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.parkingRadarAlarm);
        linearLayout.setVisibility(CarParkingManager.getInstance().getFunctionPresent(CarParkingManager.Function.PARKING_RADAR_WARNING_TONE_ENABLED) ? 0 : 8);
        if (linearLayout.getVisibility() == 0) {
            ((TextView) linearLayout.findViewById(R.id.tvTitle)).setText(R.string.parking_aid_item_radar_alarm);
            ((TextView) linearLayout.findViewById(R.id.tvDescribe)).setText(R.string.parking_aid_item_radar_alarm_describe);
            this.mSwRadarAlarm = (Switcher) linearLayout.findViewById(R.id.switcher);
            this.mSwRadarAlarm.setTag(Integer.valueOf(R.id.parkingRadarAlarm));
            this.mSwRadarAlarm.setOnCheckedChangeListener(this);
            this.mSwRadarAlarm.setOnTouchListener(this);
        }
        LinearLayout linearLayout2 = (LinearLayout) view.findViewById(R.id.parkingAutoParkingPush);
        linearLayout2.setVisibility(CarParkingManager.getInstance().getFunctionPresent(CarParkingManager.Function.PARKING_PUSH_ENABLED) ? 0 : 8);
        if (linearLayout2.getVisibility() == 0) {
            ((TextView) linearLayout2.findViewById(R.id.tvTitle)).setText(R.string.parking_aid_item_auto_parking_push);
            this.mSwAutoParkingPush = (Switcher) linearLayout2.findViewById(R.id.switcher);
            this.mSwAutoParkingPush.setTag(Integer.valueOf(R.id.parkingAutoParkingPush));
            this.mSwAutoParkingPush.setOnCheckedChangeListener(this);
            this.mSwAutoParkingPush.setOnTouchListener(this);
        }
        LinearLayout linearLayout3 = (LinearLayout) view.findViewById(R.id.parkingAutoParkingVoiceTip);
        linearLayout3.setVisibility(CarParkingManager.getInstance().getFunctionPresent(CarParkingManager.Function.PARKING_VOICE_TIP_ENABLED) ? 0 : 8);
        if (linearLayout3.getVisibility() == 0) {
            ((TextView) linearLayout3.findViewById(R.id.tvTitle)).setText(R.string.parking_aid_item_auto_parking_voice_tip);
            this.mSwAutoParkingVoiceTip = (Switcher) linearLayout3.findViewById(R.id.switcher);
            this.mSwAutoParkingVoiceTip.setTag(Integer.valueOf(R.id.parkingAutoParkingVoiceTip));
            this.mSwAutoParkingVoiceTip.setOnCheckedChangeListener(this);
            this.mSwAutoParkingVoiceTip.setOnTouchListener(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initViewData() {
        if (CarParkingManager.getInstance().getFunctionPresent(CarParkingManager.Function.PARKING_RADAR_WARNING_TONE_ENABLED)) {
            setSwitcherView(CarParkingManager.Function.PARKING_RADAR_WARNING_TONE_ENABLED, CarParkingManager.getInstance().getEnabled(CarParkingManager.Function.PARKING_RADAR_WARNING_TONE_ENABLED));
        }
        if (CarParkingManager.getInstance().getFunctionPresent(CarParkingManager.Function.PARKING_PUSH_ENABLED)) {
            setSwitcherView(CarParkingManager.Function.PARKING_PUSH_ENABLED, CarParkingManager.getInstance().getEnabled(CarParkingManager.Function.PARKING_PUSH_ENABLED));
        }
        if (CarParkingManager.getInstance().getFunctionPresent(CarParkingManager.Function.PARKING_VOICE_TIP_ENABLED)) {
            setSwitcherView(CarParkingManager.Function.PARKING_VOICE_TIP_ENABLED, CarParkingManager.getInstance().getEnabled(CarParkingManager.Function.PARKING_VOICE_TIP_ENABLED));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSwitcherView(CarParkingManager.Function function, boolean z) {
        Switcher switcher;
        switch (function) {
            case PARKING_RADAR_WARNING_TONE_ENABLED:
                switcher = this.mSwRadarAlarm;
                break;
            case PARKING_PUSH_ENABLED:
                switcher = this.mSwAutoParkingPush;
                break;
            case PARKING_VOICE_TIP_ENABLED:
                switcher = this.mSwAutoParkingVoiceTip;
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
            CarParkingManager.Function function = CarParkingManager.Function.UNKNOWN;
            switch (((Integer) compoundButton.getTag()).intValue()) {
                case R.id.parkingAutoParkingPush /* 2131231081 */:
                    function = CarParkingManager.Function.PARKING_PUSH_ENABLED;
                    break;
                case R.id.parkingAutoParkingVoiceTip /* 2131231082 */:
                    function = CarParkingManager.Function.PARKING_VOICE_TIP_ENABLED;
                    break;
                case R.id.parkingRadarAlarm /* 2131231083 */:
                    function = CarParkingManager.Function.PARKING_RADAR_WARNING_TONE_ENABLED;
                    break;
            }
            if (function != CarParkingManager.Function.UNKNOWN) {
                CarParkingManager.getInstance().setEnabled(function, z);
            }
        }
    }

    @Override // android.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_aid_parking, viewGroup, false);
        initView(viewInflate);
        return viewInflate;
    }

    @Override // com.yftech.settings.BaseFragment, android.app.Fragment
    public void onPause() {
        super.onPause();
        CarParkingManager.getInstance().unregisterModelCallback(this.mCarParkingModelCallback);
        CarParkingManager.getInstance().setAction(CarParkingManager.Function.STOP_TIMEOUT_ACTION);
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        initViewData();
        CarParkingManager.getInstance().registerModelCallback(this.mCarParkingModelCallback);
    }
}
