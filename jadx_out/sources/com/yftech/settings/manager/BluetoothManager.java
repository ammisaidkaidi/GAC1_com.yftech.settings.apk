package com.yftech.settings.manager;

import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.ParcelUuid;
import android.text.TextUtils;
import com.yftech.car.bluetooth.CarBluetoothManager;
import com.yftech.car.bluetooth.callback.CarBluetoothContactsCallback;
import com.yftech.car.bluetooth.callback.CarBluetoothMusicCallback;
import com.yftech.car.bluetooth.callback.CarBluetoothPhoneCallback;
import com.yftech.car.bluetooth.callback.CarBluetoothSettingsCallback;
import com.yftech.car.phonelink.CarPhoneLinkManager;
import com.yftech.settings.R;
import com.yftech.settings.connect.model.BtDevice;
import com.yftech.settings.connect.model.BtDeviceItemState;
import com.yftech.settings.utils.LogUtil;
import com.yftech.settings.utils.Utils;
import com.yftech.settings.widget.dialog.CommonDialog;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class BluetoothManager {
    public static final int BLUETOOTH_PAIR_MAX = 9;
    private static final int LOAD_DATA_DEVICE_ITEM_STATE = 2;
    private static final int LOAD_DATA_PAIRED_DEVICES = 0;
    private static final int LOAD_DATA_UNPAIRED_DEVICES = 1;
    private static final String TAG = "YF_BT_BluetoothManager";
    private static final int UPDATE_PAIRED_DEVICES = 0;
    private static final int UPDATE_UNPAIRED_DEVICES = 1;
    private static BluetoothManager sBluetoothManager;
    private CommonDialog mCommonDialog;
    private Context mContext;
    private Handler mHandler;
    private HandlerThread mHandlerThread;
    private BtDevice mIgnoreBtDevice;
    private int mBondState = 10;
    private final Handler mBtHandler = new Handler(Looper.getMainLooper());
    private List<CarBluetoothListener> mCarBluetoothListeners = new ArrayList();
    private List<BtDevice> mPariedBtDevices = new ArrayList();
    private Map<String, BtDeviceItemState> mDeviceItemStateMap = new HashMap();
    private Handler mMainHandler = new Handler(Looper.getMainLooper()) { // from class: com.yftech.settings.manager.BluetoothManager.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            if (message.what == 0) {
                synchronized (BluetoothManager.this.mCarBluetoothListeners) {
                    Iterator it = BluetoothManager.this.mCarBluetoothListeners.iterator();
                    while (it.hasNext()) {
                        ((CarBluetoothListener) it.next()).onBluetoothPairedListChanged();
                    }
                }
                return;
            }
            if (message.what == 1) {
                synchronized (BluetoothManager.this.mCarBluetoothListeners) {
                    Iterator it2 = BluetoothManager.this.mCarBluetoothListeners.iterator();
                    while (it2.hasNext()) {
                        ((CarBluetoothListener) it2.next()).onBluetoothUnpairedListChanged();
                    }
                }
            }
        }
    };
    private CarBluetoothPhoneCallback mCarBluetoothPhoneCallback = new CarBluetoothPhoneCallback() { // from class: com.yftech.settings.manager.BluetoothManager.2
        public void onBluetoothHfpConnectStatusChanged(BluetoothDevice bluetoothDevice, int i) {
            super.onBluetoothHfpConnectStatusChanged(bluetoothDevice, i);
            LogUtil.i(BluetoothManager.TAG, "onBluetoothHfpConnectStatusChanged() state:" + i);
            BluetoothManager.this.updateState(16, bluetoothDevice, i);
        }
    };
    private CarBluetoothMusicCallback mCarBluetoothMusicCallback = new CarBluetoothMusicCallback() { // from class: com.yftech.settings.manager.BluetoothManager.3
        public void onBluetoothA2dpConnectStateChanged(BluetoothDevice bluetoothDevice, int i) {
            super.onBluetoothA2dpConnectStateChanged(bluetoothDevice, i);
            LogUtil.i(BluetoothManager.TAG, "onBluetoothA2dpConnectStateChanged state:" + i);
            BluetoothManager.this.updateState(11, bluetoothDevice, i);
        }

        public void onBluetoothAvrcpConnectStateChanged(BluetoothDevice bluetoothDevice, int i) {
            super.onBluetoothAvrcpConnectStateChanged(bluetoothDevice, i);
        }
    };
    private CarBluetoothSettingsCallback mCarBluetoothSettingsCallback = new CarBluetoothSettingsCallback() { // from class: com.yftech.settings.manager.BluetoothManager.4
        public void onBluetoothAutoConnectStateChanged(boolean z) {
            super.onBluetoothAutoConnectStateChanged(z);
            LogUtil.i(BluetoothManager.TAG, "onBluetoothAutoConnectStateChanged() state:" + z);
            synchronized (BluetoothManager.this.mCarBluetoothListeners) {
                Iterator it = BluetoothManager.this.mCarBluetoothListeners.iterator();
                while (it.hasNext()) {
                    ((CarBluetoothListener) it.next()).onBluetoothAutoConnectStateChanged(z);
                }
            }
        }

        public void onBluetoothAutoDownloadContactsStateChanged(boolean z) {
            super.onBluetoothAutoDownloadContactsStateChanged(z);
            LogUtil.i(BluetoothManager.TAG, "onBluetoothAutoDownloadContactsStateChanged() state:" + z);
            synchronized (BluetoothManager.this.mCarBluetoothListeners) {
                Iterator it = BluetoothManager.this.mCarBluetoothListeners.iterator();
                while (it.hasNext()) {
                    ((CarBluetoothListener) it.next()).onBluetoothAutoDownloadContactsStateChanged(z);
                }
            }
        }

        public void onBluetoothDeviceBandStateChanged(BluetoothDevice bluetoothDevice, int i) {
            super.onBluetoothDeviceBandStateChanged(bluetoothDevice, i);
            LogUtil.i(BluetoothManager.TAG, "onBluetoothDeviceBandStateChanged() state:" + i + " " + bluetoothDevice.getName());
            BluetoothManager.this.mBondState = i;
            if (i == 10 || i == 12) {
                BluetoothManager.this.startScanning();
            }
            if (i == 10 && BluetoothManager.this.mIgnoreBtDevice != null && bluetoothDevice.getAddress().equals(BluetoothManager.this.mIgnoreBtDevice.getDevice().getAddress())) {
                LogUtil.i(BluetoothManager.TAG, "onBluetoothDeviceBandStateChanged() BOND_NONE ignore startScanning");
                BluetoothManager.this.startScanning();
                BluetoothManager.this.mIgnoreBtDevice = null;
            }
        }

        public void onBluetoothPairedListChanged(List<BluetoothDevice> list) {
            super.onBluetoothPairedListChanged(list);
            LogUtil.i(BluetoothManager.TAG, "onBluetoothPairedListChanged()");
            BluetoothManager.this.mHandler.sendEmptyMessage(0);
        }

        public void onBluetoothScanningStateChanged(boolean z) {
            super.onBluetoothScanningStateChanged(z);
            LogUtil.i(BluetoothManager.TAG, "onBluetoothScanningStateChanged() state:" + z);
            synchronized (BluetoothManager.this.mCarBluetoothListeners) {
                Iterator it = BluetoothManager.this.mCarBluetoothListeners.iterator();
                while (it.hasNext()) {
                    ((CarBluetoothListener) it.next()).onBluetoothScanningStateChanged(z);
                }
            }
        }

        public void onBluetoothStateChanged(int i) {
            super.onBluetoothStateChanged(i);
            LogUtil.i(BluetoothManager.TAG, "onBluetoothStateChanged() state:" + i);
            synchronized (BluetoothManager.this.mCarBluetoothListeners) {
                Iterator it = BluetoothManager.this.mCarBluetoothListeners.iterator();
                while (it.hasNext()) {
                    ((CarBluetoothListener) it.next()).onBluetoothStateChanged(i);
                }
            }
        }

        public void onBluetoothUnpairedListChanged(List<BluetoothDevice> list) {
            super.onBluetoothUnpairedListChanged(list);
            BluetoothManager.this.mHandler.sendEmptyMessage(1);
        }
    };
    private CarBluetoothContactsCallback mCarBluetoothContactsCallback = new CarBluetoothContactsCallback() { // from class: com.yftech.settings.manager.BluetoothManager.5
        public void onBluetoothPbapConnectStatusChanged(BluetoothDevice bluetoothDevice, int i) {
            super.onBluetoothPbapConnectStatusChanged(bluetoothDevice, i);
            LogUtil.i(BluetoothManager.TAG, "onBluetoothPbapConnectStatusChanged() state:" + i);
        }
    };

    public interface CarBluetoothListener {
        void onBluetoothAutoConnectStateChanged(boolean z);

        void onBluetoothAutoDownloadContactsStateChanged(boolean z);

        void onBluetoothPairedListChanged();

        void onBluetoothScanningStateChanged(boolean z);

        void onBluetoothStateChanged(int i);

        void onBluetoothUnpairedListChanged();
    }

    private class LoadDataHandlerCallback implements Handler.Callback {
        private LoadDataHandlerCallback() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message.what == 0) {
                BluetoothManager.this.updatePairedDevices(CarBluetoothManager.getInstance().getPairedDevices());
                BluetoothManager.this.mMainHandler.sendEmptyMessage(0);
            } else if (message.what == 1) {
                BluetoothManager.this.mMainHandler.sendEmptyMessage(1);
            } else if (message.what == 2) {
                BluetoothManager.this.loadDeviceItemState();
            }
            return false;
        }
    }

    private BluetoothManager() {
    }

    public static synchronized BluetoothManager getInstance() {
        if (sBluetoothManager == null) {
            sBluetoothManager = new BluetoothManager();
        }
        return sBluetoothManager;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void loadDeviceItemState() {
        this.mDeviceItemStateMap.clear();
        Map<String, ?> all = this.mContext.getSharedPreferences("carSettings_bt_items", 0).getAll();
        LogUtil.i(TAG, "loadDeviceItemState() size:" + all.size());
        for (Map.Entry<String, ?> entry : all.entrySet()) {
            String key = entry.getKey();
            String str = (String) entry.getValue();
            LogUtil.i(TAG, "loadDeviceItemState() key:" + key + ", value:" + str);
            try {
                String strReplace = key.replace("device_", "");
                JSONObject jSONObject = new JSONObject(str);
                BtDeviceItemState btDeviceItemState = new BtDeviceItemState();
                btDeviceItemState.setAddress(strReplace);
                btDeviceItemState.setDetail(jSONObject.getBoolean("detail"));
                btDeviceItemState.setHfp(jSONObject.getBoolean("hfp"));
                btDeviceItemState.setAvrcp(jSONObject.getBoolean("avrcp"));
                this.mDeviceItemStateMap.put(strReplace, btDeviceItemState);
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }

    private void showConnectBluetoothDisconnectLinkDialog(final String str, final BluetoothDevice bluetoothDevice, final int i) {
        LogUtil.i(TAG, "showConnectBluetoothDisconnectLinkDialog() linkType:" + str + " " + bluetoothDevice.toString() + " profile:" + i);
        this.mCommonDialog = new CommonDialog(this.mContext);
        this.mCommonDialog.show();
        this.mCommonDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.yftech.settings.manager.BluetoothManager.6
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                BluetoothManager.this.mCommonDialog = null;
            }
        });
        this.mCommonDialog.setOnBtnClickListener(new CommonDialog.OnBtnClickListener() { // from class: com.yftech.settings.manager.BluetoothManager.7
            @Override // com.yftech.settings.widget.dialog.CommonDialog.OnBtnClickListener
            public void onCancelClick() {
            }

            @Override // com.yftech.settings.widget.dialog.CommonDialog.OnBtnClickListener
            public void onIconClick() {
            }

            @Override // com.yftech.settings.widget.dialog.CommonDialog.OnBtnClickListener
            public void onSureClick() {
                LogUtil.i(BluetoothManager.TAG, "showConnectBluetoothDisconnectLinkDialog() disConnect " + str);
                CarPhoneLinkManager.getInstance().disConnect(str);
                LogUtil.i(BluetoothManager.TAG, "showConnectBluetoothDisconnectLinkDialog() connect " + bluetoothDevice.toString() + ", profile:" + i + ", result:" + CarBluetoothManager.getInstance().requestConnect(bluetoothDevice, i));
            }
        });
        String string = "";
        if ("carlife".equals(str)) {
            string = this.mContext.getString(R.string.dialog_disconnect_cur_link_carlife);
        } else if ("carplay".equals(str)) {
            string = this.mContext.getString(R.string.dialog_disconnect_cur_link_carplay);
        } else if ("hicar".equals(str)) {
            string = this.mContext.getString(R.string.dialog_disconnect_cur_link_hicar);
        }
        this.mCommonDialog.setContent(this.mContext.getString(R.string.dialog_disconnect_cur_link_tip, string)).setButtonText(this.mContext.getString(R.string.dialog_button_sure), this.mContext.getString(R.string.dialog_button_cancel));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void updatePairedDevices(List<BluetoothDevice> list) {
        this.mPariedBtDevices.clear();
        if (list != null && !list.isEmpty()) {
            for (int size = list.size() - 1; size >= 0; size--) {
                BluetoothDevice bluetoothDevice = list.get(size);
                LogUtil.i(TAG, "updatePairedDevices() " + bluetoothDevice.getName());
                BtDevice btDevice = new BtDevice();
                btDevice.setDevice(bluetoothDevice);
                btDevice.setAvrcpState(CarBluetoothManager.getInstance().getDeviceConnectState(bluetoothDevice, 11));
                btDevice.setHfpState(CarBluetoothManager.getInstance().getDeviceConnectState(bluetoothDevice, 16));
                LogUtil.i(TAG, "updatePairedDevices() " + bluetoothDevice.getName() + " Hfp:" + btDevice.getHfpState() + " Avrcp:" + btDevice.getAvrcpState());
                BtDeviceItemState btDeviceItemState = this.mDeviceItemStateMap.get(bluetoothDevice.getAddress());
                if (btDeviceItemState == null) {
                    String address = bluetoothDevice.getAddress();
                    BtDeviceItemState btDeviceItemState2 = new BtDeviceItemState();
                    btDeviceItemState2.setAddress(address);
                    btDeviceItemState2.setDetail(true);
                    btDeviceItemState2.setHfp(true);
                    btDeviceItemState2.setAvrcp(true);
                    updateDeviceItemState(address, btDeviceItemState2);
                    btDeviceItemState = btDeviceItemState2;
                }
                btDevice.setDeviceItemState(btDeviceItemState);
                if (TextUtils.isEmpty(btDevice.getName())) {
                    LogUtil.i(TAG, "updatePairedDevices, but device name is null, ignore:" + bluetoothDevice);
                } else if (btDevice.isConnected()) {
                    this.mPariedBtDevices.add(0, btDevice);
                } else {
                    this.mPariedBtDevices.add(btDevice);
                }
            }
        }
        LogUtil.i(TAG, "updatePairedDevices() size:" + this.mPariedBtDevices.size());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void updateState(int i, BluetoothDevice bluetoothDevice, int i2) {
        BtDeviceItemState deviceItemState;
        BtDeviceItemState deviceItemState2;
        try {
            if (bluetoothDevice == null) {
                LogUtil.i(TAG, "updateState() bluetoothDevice is null");
                return;
            }
            for (int i3 = 0; i3 < this.mPariedBtDevices.size(); i3++) {
                BtDevice btDevice = this.mPariedBtDevices.get(i3);
                if (btDevice.getDevice().getAddress().equals(bluetoothDevice.getAddress())) {
                    if (i == 16) {
                        btDevice.setHfpState(i2);
                        LogUtil.i(TAG, "updateState() HEADSET_CLIENT " + btDevice.getName() + " state:" + i2);
                        if (i2 == 2 && (deviceItemState2 = btDevice.getDeviceItemState()) != null) {
                            deviceItemState2.setHfp(true);
                            getInstance().updateDeviceItemState(btDevice.getDevice().getAddress(), deviceItemState2);
                        }
                    } else if (i == 11) {
                        btDevice.setAvrcpState(i2);
                        LogUtil.i(TAG, "updateState() A2DP_SINK " + btDevice.getName() + " state:" + i2);
                        if (i2 == 2 && (deviceItemState = btDevice.getDeviceItemState()) != null) {
                            deviceItemState.setAvrcp(true);
                            getInstance().updateDeviceItemState(btDevice.getDevice().getAddress(), deviceItemState);
                        }
                    }
                    if (btDevice.isConnected() && i3 != 0) {
                        Collections.swap(this.mPariedBtDevices, i3, 0);
                    }
                    synchronized (this.mCarBluetoothListeners) {
                        Iterator<CarBluetoothListener> it = this.mCarBluetoothListeners.iterator();
                        while (it.hasNext()) {
                            it.next().onBluetoothPairedListChanged();
                        }
                    }
                    break;
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public void addCarBluetoothListener(CarBluetoothListener carBluetoothListener) {
        if (this.mCarBluetoothListeners.contains(carBluetoothListener)) {
            return;
        }
        this.mCarBluetoothListeners.add(carBluetoothListener);
    }

    public boolean connect(BluetoothDevice bluetoothDevice, int i) {
        String connectedLinkStatus = CarPhoneLinkManager.getInstance().getConnectedLinkStatus();
        LogUtil.i(TAG, "connect() connectedLinkStatus:" + connectedLinkStatus);
        if (("carplay".equals(connectedLinkStatus) && !Utils.isCarPlayCertificate()) || "hicar".equals(connectedLinkStatus)) {
            showConnectBluetoothDisconnectLinkDialog(connectedLinkStatus, bluetoothDevice, i);
            return true;
        }
        boolean zRequestConnect = CarBluetoothManager.getInstance().requestConnect(bluetoothDevice, i);
        LogUtil.i(TAG, "connect() " + bluetoothDevice.toString() + ", profile:" + i + ", result:" + zRequestConnect);
        return zRequestConnect;
    }

    public boolean connect(BtDevice btDevice, int i) {
        if (btDevice != null) {
            return connect(btDevice.getDevice(), i);
        }
        LogUtil.i(TAG, "connect() device is null");
        return false;
    }

    public void deInit() {
        LogUtil.i(TAG, "deInit()");
        CarBluetoothManager.getInstance().unregisterBluetoothPhoneCallback(this.mCarBluetoothPhoneCallback);
        CarBluetoothManager.getInstance().unregisterBluetoothMusicCallback(this.mCarBluetoothMusicCallback);
        CarBluetoothManager.getInstance().unregisterBluetoothSettingsCallback(this.mCarBluetoothSettingsCallback);
        CarBluetoothManager.getInstance().unregisterBluetoothContactsCallback(this.mCarBluetoothContactsCallback);
        this.mHandlerThread.quit();
    }

    public boolean disconnect(BtDevice btDevice, int i) {
        if (btDevice == null) {
            LogUtil.i(TAG, "disconnect() device is null");
            return false;
        }
        boolean zRequestDisconnected = CarBluetoothManager.getInstance().requestDisconnected(btDevice.getDevice(), i);
        LogUtil.i(TAG, "disconnect() " + btDevice.toString() + ", profile:" + i + ", result:" + zRequestDisconnected);
        return zRequestDisconnected;
    }

    public void dismissDialog() {
        if (this.mCommonDialog == null || !this.mCommonDialog.isShowing()) {
            return;
        }
        this.mCommonDialog.dismiss();
    }

    public String getBluetoothName() {
        return CarBluetoothManager.getInstance().getBluetoothName();
    }

    public BtDevice getConnectedDevice() {
        for (BtDevice btDevice : this.mPariedBtDevices) {
            if (btDevice.isConnected()) {
                return btDevice;
            }
        }
        return null;
    }

    public int getEnableState() {
        return CarBluetoothManager.getInstance().getEnableState();
    }

    public List<BtDevice> getPariedDevices() {
        return this.mPariedBtDevices;
    }

    public synchronized List<BluetoothDevice> getUnpariedDevices() {
        return CarBluetoothManager.getInstance().getUnpairedDevices();
    }

    public boolean ignore(BtDevice btDevice) {
        this.mIgnoreBtDevice = btDevice;
        if (btDevice == null) {
            LogUtil.i(TAG, "ignore() device is null");
            return false;
        }
        boolean zDeletePairedDevice = CarBluetoothManager.getInstance().deletePairedDevice(btDevice.getDevice());
        LogUtil.i(TAG, "ignore() " + btDevice.toString() + ", result:" + zDeletePairedDevice);
        LinkHicarManager.getInstance().removeHicarWhenRemoveBluetooth(btDevice.getDevice().getAddress());
        return zDeletePairedDevice;
    }

    public void init(Context context) {
        LogUtil.i(TAG, "init()");
        this.mContext = context;
        this.mHandlerThread = new HandlerThread("LoadBluetoothDataThread");
        this.mHandlerThread.start();
        this.mHandler = new Handler(this.mHandlerThread.getLooper(), new LoadDataHandlerCallback());
        this.mHandler.sendEmptyMessage(2);
        this.mHandler.sendEmptyMessage(0);
        this.mHandler.sendEmptyMessage(1);
        CarBluetoothManager.getInstance().registerBluetoothPhoneCallback(this.mCarBluetoothPhoneCallback, this.mBtHandler);
        CarBluetoothManager.getInstance().registerBluetoothMusicCallback(this.mCarBluetoothMusicCallback, this.mBtHandler);
        CarBluetoothManager.getInstance().registerBluetoothSettingsCallback(this.mCarBluetoothSettingsCallback, this.mBtHandler);
        CarBluetoothManager.getInstance().registerBluetoothContactsCallback(this.mCarBluetoothContactsCallback, this.mBtHandler);
    }

    public boolean isAutoConnectEnable() {
        return CarBluetoothManager.getInstance().isAutoConnectEnable();
    }

    public boolean isAutoDownloadContactsEnable() {
        return CarBluetoothManager.getInstance().isAutoDownloadContactsEnable() || CarBluetoothManager.getInstance().isAutoDownloadCallLogEnable();
    }

    public boolean isScanning() {
        return CarBluetoothManager.getInstance().isScanning();
    }

    public boolean isSupportCarplay(BtDevice btDevice) {
        boolean z = false;
        if (btDevice != null) {
            try {
                if (btDevice.getDevice() != null) {
                    BluetoothDevice device = btDevice.getDevice();
                    LogUtil.i(TAG, "bluetoothDevice:" + device.getName());
                    ParcelUuid[] uuids = device.getUuids();
                    int length = uuids.length;
                    for (int i = 0; i < length; i++) {
                        String strReplaceAll = uuids[i].getUuid().toString().replaceAll("-", "");
                        LogUtil.i(TAG, "uuid:" + strReplaceAll);
                        if (LinkCarplayManager.CARPLAY_UUID.equalsIgnoreCase(strReplaceAll)) {
                            z = true;
                            break;
                        }
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        LogUtil.i(TAG, "isSupportCarplay:" + z);
        return z;
    }

    public void removeCarBluetoothListener(CarBluetoothListener carBluetoothListener) {
        if (this.mCarBluetoothListeners.contains(carBluetoothListener)) {
            this.mCarBluetoothListeners.remove(carBluetoothListener);
        }
    }

    public void removeDeviceItemState(String str) {
        LogUtil.i(TAG, "removeDeviceItemState() address:" + str);
        if (this.mDeviceItemStateMap != null && this.mDeviceItemStateMap.containsKey(str)) {
            this.mDeviceItemStateMap.remove(str);
        }
        SharedPreferences sharedPreferences = this.mContext.getSharedPreferences("carSettings_bt_items", 0);
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        if (TextUtils.isEmpty(sharedPreferences.getString("device_" + str, ""))) {
            return;
        }
        editorEdit.remove("device_" + str);
        editorEdit.commit();
    }

    public boolean setAutoConnectEnable(boolean z) {
        boolean autoConnectEnable = CarBluetoothManager.getInstance().setAutoConnectEnable(z);
        LogUtil.i(TAG, "setAutoConnectEnable() enable:" + z + ", result:" + autoConnectEnable);
        return autoConnectEnable;
    }

    public boolean setAutoDownloadContactsEnable(boolean z) {
        boolean autoDownloadContactsEnable = CarBluetoothManager.getInstance().setAutoDownloadContactsEnable(z);
        boolean autoDownloadCallLogEnable = CarBluetoothManager.getInstance().setAutoDownloadCallLogEnable(z);
        LogUtil.i(TAG, "setAutoDownloadContactsEnable() enable:" + z + ", autoDownloadContactsResult:" + autoDownloadContactsEnable + ", autoDownloadCallLogResult:" + autoDownloadCallLogEnable);
        return autoDownloadContactsEnable || autoDownloadCallLogEnable;
    }

    public boolean setEnabled(boolean z) {
        boolean enabled = CarBluetoothManager.getInstance().setEnabled(z);
        LogUtil.i(TAG, "setEnabled() enable:" + z + ", result:" + enabled);
        return enabled;
    }

    public boolean startScanning() {
        boolean zStartScanning = CarBluetoothManager.getInstance().startScanning(true);
        LogUtil.i(TAG, "startScanning() result:" + zStartScanning);
        return zStartScanning;
    }

    public boolean stopScanning() {
        boolean zStopScanning = CarBluetoothManager.getInstance().stopScanning();
        LogUtil.i(TAG, "stopScanning() result:" + zStopScanning);
        return zStopScanning;
    }

    public void updateDeviceItemState(String str, BtDeviceItemState btDeviceItemState) {
        if (this.mDeviceItemStateMap != null) {
            this.mDeviceItemStateMap.put(str, btDeviceItemState);
        }
        SharedPreferences.Editor editorEdit = this.mContext.getSharedPreferences("carSettings_bt_items", 0).edit();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("address", str);
            jSONObject.put("detail", btDeviceItemState.isDetail());
            jSONObject.put("hfp", btDeviceItemState.isHfp());
            jSONObject.put("avrcp", btDeviceItemState.isAvrcp());
        } catch (JSONException e) {
            e.printStackTrace();
        }
        String str2 = "device_" + str;
        String string = jSONObject.toString();
        LogUtil.i(TAG, "updateDeviceItemState() key:" + str2 + ", value:" + string);
        editorEdit.putString(str2, string);
        editorEdit.commit();
    }
}
