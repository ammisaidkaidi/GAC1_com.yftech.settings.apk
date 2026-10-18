package com.yftech.vehicle.sdk;

import com.yftech.vehicle.internal.BaseApiManager;
import com.yftech.vehicle.internal.SignalReceiver;
import com.yftech.vehicle.internal.adapter.IBaseApi;
import com.yftech.vehicle.internal.adapter.ICarSwc;

/* JADX INFO: loaded from: classes.dex */
public class CarSwcManager extends BaseApiManager implements ICarSwc {
    private static final String TAG = "CarSwcManager";
    private static CarSwcManager sMe;

    public static abstract class CarSwcListener {
        @SignalReceiver(signalId = ICarSwc.SWC_ANGLE_STATE)
        public void onSwcAngleChanged(float f) {
        }

        @SignalReceiver(signalId = ICarSwc.SWC_ANGLE_VD_STATE)
        public void onSwcAngleVdEnableStateChanged(IBaseApi.EnableState enableState) {
        }

        @SignalReceiver(signalId = ICarSwc.SWC_HEAT_STATE)
        public void onSwcHeatStateChanged(ICarSwc.SwcHeatState swcHeatState) {
        }
    }

    private CarSwcManager() {
    }

    public static synchronized CarSwcManager get() {
        CarSwcManager carSwcManager;
        if (sMe != null) {
            carSwcManager = sMe;
        } else {
            carSwcManager = new CarSwcManager();
            sMe = carSwcManager;
        }
        return carSwcManager;
    }

    public float getSwcAngle() {
        return getSignalValue(ICarSwc.SWC_ANGLE_STATE).floatValue();
    }

    public IBaseApi.EnableState getSwcAngleVdEnableState() {
        return IBaseApi.EnableState.valueOf(getSignalValue(ICarSwc.SWC_ANGLE_VD_STATE).intValue());
    }

    public ICarSwc.SwcHeatState getSwcHeatState() {
        return ICarSwc.SwcHeatState.valueOf(getSignalValue(ICarSwc.SWC_HEAT_STATE).intValue());
    }

    public boolean performSwcStarKeyButtonClick() {
        return setSignalValue(ICarSwc.SWC_STAR_KEY_SETTING, (byte) 1);
    }

    public boolean performSwcStarKeyVDButtonClick() {
        return setSignalValue(ICarSwc.SWC_STAR_KEY_VD_SETTING, (byte) 1);
    }

    public void registerListener(CarSwcListener carSwcListener) {
        registerReceiver(carSwcListener);
    }

    public boolean setSwcHeatState(IBaseApi.SwitchStateOp switchStateOp) {
        return setSignalValue(ICarSwc.SWC_HEAT_STATE_SWITCH_SWITCH, switchStateOp.value);
    }

    public boolean setSwcHeatStateEnabled(boolean z) {
        return setSignalValue(ICarSwc.SWC_HEAT_STATE_SETTING, z ? (byte) 1 : (byte) 2);
    }

    public void unregisterListener(CarSwcListener carSwcListener) {
        unregisterReceiver(carSwcListener);
    }
}
