package com.yftech.vehicle.sdk;

import com.yftech.vehicle.internal.BaseApiManager;
import com.yftech.vehicle.internal.SignalReceiver;
import com.yftech.vehicle.internal.adapter.IBaseApi;
import com.yftech.vehicle.internal.adapter.ICarDrive;

/* JADX INFO: loaded from: classes.dex */
public class CarDriveManager extends BaseApiManager implements ICarDrive {
    private static final String TAG = "CarDriveManager";
    private static CarDriveManager sMe;

    public static abstract class CarDriveListener {
        @SignalReceiver(signalId = ICarDrive.ASSIST_PARA_SWITCH_REQ_STATE)
        public void onAssistParaSwitchReqStateChanged(IBaseApi.EnableState enableState) {
        }

        @SignalReceiver(signalId = ICarDrive.AUTO_HOLD_STATE)
        public void onAutoHoldChanged(ICarDrive.AutoHoldState autoHoldState) {
        }

        @SignalReceiver(signalId = ICarDrive.AVDC_MODE)
        public void onAvdcModeChanged(ICarDrive.AvdcMode avdcMode) {
        }

        @SignalReceiver(signalId = ICarDrive.BCS_VDC_OFF_STATE)
        public void onBcsVdcOffStateChanged(ICarDrive.VdcOffState vdcOffState) {
        }

        @SignalReceiver(signalId = ICarDrive.CDCSTYLE_MODE)
        public void onCDCStyleModeChanged(ICarDrive.CDCStyleMode cDCStyleMode) {
        }

        @SignalReceiver(signalId = ICarDrive.DRIVE_MODE)
        public void onDriveModeChanged(ICarDrive.DriveMode driveMode) {
        }

        @SignalReceiver(signalId = ICarDrive.DRIVE_MODE_HEV)
        public void onDriveModeHevChanged(ICarDrive.DriveModeHev driveModeHev) {
        }

        @SignalReceiver(signalId = ICarDrive.DRIVE_SYSTEM_MODE)
        public void onDriveSystemModeChanged(ICarDrive.DriveSystemMode driveSystemMode) {
        }

        @SignalReceiver(signalId = ICarDrive.EMS_ENGINE_WAVE_STATE)
        public void onEMSEngineWaveSwitchStateChanged(IBaseApi.SwitchState switchState) {
        }

        @SignalReceiver(signalId = ICarDrive.EPB_IND_STATE)
        public void onEPBIndChanged(int i) {
        }

        @SignalReceiver(signalId = 180)
        public void onEPSStyleChanged(ICarDrive.EPSStyle ePSStyle) {
        }

        @SignalReceiver(signalId = ICarDrive.EPS_MODE_STATE)
        public void onEpsModeStateChanged(ICarDrive.EpsModeState epsModeState) {
        }

        @SignalReceiver(signalId = 215)
        public void onEspStateChanged(ICarDrive.EspState espState) {
        }

        @SignalReceiver(signalId = ICarDrive.ESP_STYLE)
        public void onEspStyleChanged(ICarDrive.EspStyle espStyle) {
        }

        @SignalReceiver(signalId = ICarDrive.GAS_PEDAL_LEVEL)
        public void onGasPedalLevelChanged(ICarDrive.GasPedalLevel gasPedalLevel) {
        }

        @SignalReceiver(signalId = 217)
        public void onHdcStateChanged(ICarDrive.HdcState hdcState) {
        }

        @SignalReceiver(signalId = ICarDrive.MEMORY_DRIVE_MODE_A9E)
        public void onMemoryDriveModeA9EChanged(ICarDrive.MemoryDriveMode_A9E memoryDriveMode_A9E) {
        }

        @SignalReceiver(signalId = ICarDrive.MEMORY_DRIVE_MODE)
        public void onMemoryDriveModeChanged(ICarDrive.MemoryDriveMode memoryDriveMode) {
        }

        @SignalReceiver(signalId = ICarDrive.MRR_ACC_MODE)
        public void onMrrAccModeChanged(ICarDrive.MrrAccMode mrrAccMode) {
        }

        @SignalReceiver(signalId = ICarDrive.TCU_DRIVE_MODE)
        public void onTcuDriveModeChanged(ICarDrive.TcuDriveMode tcuDriveMode) {
        }

        @SignalReceiver(signalId = ICarDrive.XDRIVE_MODE)
        public void onXDriveModeChanged(ICarDrive.XDriveMode xDriveMode) {
        }
    }

    private CarDriveManager() {
    }

    public static synchronized CarDriveManager get() {
        CarDriveManager carDriveManager;
        if (sMe != null) {
            carDriveManager = sMe;
        } else {
            carDriveManager = new CarDriveManager();
            sMe = carDriveManager;
        }
        return carDriveManager;
    }

    public IBaseApi.EnableState getAssistParaSwitchReqState() {
        return IBaseApi.EnableState.valueOf(getSignalValue(ICarDrive.ASSIST_PARA_SWITCH_REQ_STATE).intValue());
    }

    public ICarDrive.AutoHoldState getAutoHold() {
        return ICarDrive.AutoHoldState.valueOf(getSignalValue(ICarDrive.AUTO_HOLD_STATE).intValue());
    }

    public ICarDrive.AvdcMode getAvdcMode() {
        return ICarDrive.AvdcMode.valueOf(getSignalValue(ICarDrive.AVDC_MODE).intValue());
    }

    public ICarDrive.VdcOffState getBcsVdcOffState() {
        return ICarDrive.VdcOffState.valueOf(getSignalValue(ICarDrive.BCS_VDC_OFF_STATE).intValue());
    }

    public ICarDrive.CDCStyleMode getCDCStyleMode() {
        return ICarDrive.CDCStyleMode.valueOf(getSignalValue(ICarDrive.CDCSTYLE_MODE).intValue());
    }

    public ICarDrive.DriveMode getDriveMode() {
        return ICarDrive.DriveMode.valueOf(getSignalValue(ICarDrive.DRIVE_MODE).intValue());
    }

    public ICarDrive.DriveModeHev getDriveModeHev() {
        return ICarDrive.DriveModeHev.valueOf(getSignalValue(ICarDrive.DRIVE_MODE_HEV).intValue());
    }

    public ICarDrive.DriveSystemMode getDriveSystemMode() {
        return ICarDrive.DriveSystemMode.valueOf(getSignalValue(ICarDrive.DRIVE_SYSTEM_MODE).intValue());
    }

    public IBaseApi.SwitchState getEMSEngineWaveSwitchState() {
        return IBaseApi.SwitchState.valueOf(getSignalValue(ICarDrive.EMS_ENGINE_WAVE_STATE).intValue());
    }

    public int getEPBInd() {
        return getSignalValue(ICarDrive.EPB_IND_STATE).intValue();
    }

    public ICarDrive.EPSStyle getEPSStyle() {
        return ICarDrive.EPSStyle.valueOf(getSignalValue(180).intValue());
    }

    public ICarDrive.EpsModeState getEpsModeState() {
        return ICarDrive.EpsModeState.valueOf(getSignalValue(ICarDrive.EPS_MODE_STATE).intValue());
    }

    public ICarDrive.EspState getEspState() {
        return ICarDrive.EspState.valueOf(getSignalValue(215).intValue());
    }

    public ICarDrive.EspStyle getEspStyle() {
        return ICarDrive.EspStyle.valueOf(getSignalValue(ICarDrive.ESP_STYLE).intValue());
    }

    public ICarDrive.GasPedalLevel getGasPedalLevel() {
        return ICarDrive.GasPedalLevel.valueOf(getSignalValue(ICarDrive.GAS_PEDAL_LEVEL).intValue());
    }

    public ICarDrive.HdcState getHdcState() {
        return ICarDrive.HdcState.valueOf(getSignalValue(217).intValue());
    }

    public ICarDrive.MemoryDriveMode getMemoryDriveMode() {
        return ICarDrive.MemoryDriveMode.valueOf(getSignalValue(ICarDrive.MEMORY_DRIVE_MODE).intValue());
    }

    public ICarDrive.MemoryDriveMode_A9E getMemoryDriveModeA9E() {
        return ICarDrive.MemoryDriveMode_A9E.valueOf(getSignalValue(ICarDrive.MEMORY_DRIVE_MODE_A9E).intValue());
    }

    public ICarDrive.MrrAccMode getMrrAccMode() {
        return ICarDrive.MrrAccMode.valueOf(getSignalValue(ICarDrive.MRR_ACC_MODE).intValue());
    }

    public ICarDrive.TcuDriveMode getTcuDriveMode() {
        return ICarDrive.TcuDriveMode.valueOf(getSignalValue(ICarDrive.TCU_DRIVE_MODE).intValue());
    }

    public ICarDrive.XDriveMode getXDriveMode() {
        return ICarDrive.XDriveMode.valueOf(getSignalValue(ICarDrive.XDRIVE_MODE).intValue());
    }

    public boolean performAutoHoldButtonClick() {
        return setSignalValue(ICarDrive.AUTO_HOLD_SETTING, (byte) 1);
    }

    public void registerListener(CarDriveListener carDriveListener) {
        registerReceiver(carDriveListener);
    }

    public boolean setAvdcMode(ICarDrive.AvdcMode avdcMode) {
        return setSignalValue(ICarDrive.AVDC_MODE_SETTING, avdcMode.value);
    }

    public boolean setCDCStyleMode(ICarDrive.CDCStyleMode cDCStyleMode) {
        return setSignalValue(ICarDrive.CDCSTYLE_MODE_SETTING, cDCStyleMode.value);
    }

    public boolean setDriveMode(ICarDrive.DriveMode driveMode) {
        return setSignalValue(71, driveMode.value);
    }

    public boolean setEMSEngineWaveEnabled(boolean z) {
        return setSignalValue(73, z ? (byte) 2 : (byte) 1);
    }

    public boolean setEPSStyle(ICarDrive.EPSStyle ePSStyle) {
        return setSignalValue(72, ePSStyle.value);
    }

    public boolean setEspState(ICarDrive.EspState espState) {
        return setSignalValue(216, espState.value);
    }

    public boolean setGasPedalLevel(ICarDrive.GasPedalLevel gasPedalLevel) {
        return setSignalValue(225, gasPedalLevel.value);
    }

    public boolean setHdcState(ICarDrive.HdcState hdcState) {
        return setSignalValue(218, hdcState.value);
    }

    public boolean setMemoryDriveMode(ICarDrive.MemoryDriveMode memoryDriveMode) {
        return setSignalValue(208, memoryDriveMode.value);
    }

    public boolean setTcuDriveMode(ICarDrive.TcuDriveMode tcuDriveMode) {
        return setSignalValue(ICarDrive.TCU_DRIVE_MODE_SETTING, tcuDriveMode.value);
    }

    public boolean setXDriveMode(ICarDrive.XDriveMode xDriveMode) {
        return setSignalValue(ICarDrive.XDRIVE_MODE_SETTING, xDriveMode.value);
    }

    public void unregisterListener(CarDriveListener carDriveListener) {
        unregisterReceiver(carDriveListener);
    }
}
