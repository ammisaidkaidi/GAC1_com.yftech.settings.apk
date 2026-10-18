package com.yftech.settings.connect.adapter;

import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.content.DialogInterface;
import android.os.ParcelUuid;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.yftech.car.phonelink.CarLinkDevice;
import com.yftech.car.phonelink.CarPhoneLinkManager;
import com.yftech.settings.R;
import com.yftech.settings.connect.model.BtDevice;
import com.yftech.settings.connect.model.BtDeviceItemState;
import com.yftech.settings.manager.BluetoothManager;
import com.yftech.settings.manager.LinkCarplayManager;
import com.yftech.settings.utils.CommonUtils;
import com.yftech.settings.utils.LogUtil;
import com.yftech.settings.utils.Utils;
import com.yftech.settings.widget.Switcher;
import com.yftech.settings.widget.dialog.CommonDialog;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class BluetoothPairedAdapter extends BaseAdapter {
    private static final String TAG = "YF_BT_BluetoothPairedAdapter";
    private Context context;
    private boolean firstIntoPage;
    private CommonDialog mCommonDialog;
    private boolean mIsCertificate;
    private List<BtDevice> btDevices = new ArrayList();
    private boolean flag = false;

    private class ViewHolder {
        private ImageView ivIconCarplay;
        private RelativeLayout layoutName;
        private LinearLayout llDetails;
        private Switcher swSyncMedia;
        private Switcher swSyncPhone;
        private TextView tvDetails;
        private TextView tvDisconnect;
        private TextView tvIgnore;
        private TextView tvName;
        private TextView tvState;

        private ViewHolder() {
        }
    }

    public BluetoothPairedAdapter(Context context) {
        this.context = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public CarLinkDevice getCarLinkDevice(BluetoothDevice bluetoothDevice) {
        if (bluetoothDevice == null) {
            LogUtil.i(TAG, "getCarLinkDevice() bluetoothDevice is null");
            return null;
        }
        for (CarLinkDevice carLinkDevice : LinkCarplayManager.getInstance().getCarLinkDeviceList()) {
            if (carLinkDevice.getDeviceId().equals(bluetoothDevice.getAddress())) {
                return carLinkDevice;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isCarPlayConnected(BluetoothDevice bluetoothDevice) {
        if (bluetoothDevice == null) {
            return false;
        }
        for (CarLinkDevice carLinkDevice : LinkCarplayManager.getInstance().getCarLinkDeviceList()) {
            if (carLinkDevice.getConnectedStatus() == 1 && carLinkDevice.getDeviceId().equals(bluetoothDevice.getAddress())) {
                return true;
            }
        }
        return false;
    }

    private boolean isDeviceSupportCarPlay(BluetoothDevice bluetoothDevice) {
        if (bluetoothDevice == null) {
            LogUtil.d(TAG, "isDeviceSupportCarPlay device is null");
            return false;
        }
        ParcelUuid[] uuids = bluetoothDevice.getUuids();
        if (uuids == null) {
            LogUtil.d(TAG, "isDeviceSupportCarPlay  device: " + bluetoothDevice.getName() + " UUID is null!");
            return false;
        }
        LogUtil.d(TAG, "isDeviceSupportCarPlay  device: " + bluetoothDevice.getName() + " addr " + bluetoothDevice.getAddress() + " uuid(" + uuids.length + ")");
        int length = uuids.length;
        for (int i = 0; i < length; i++) {
            if (uuids[i].toString().compareToIgnoreCase("2D8D2466-E14D-451C-88BC-7301ABEA291A") == 0) {
                LogUtil.d(TAG, "isDeviceSupportCarPlay  supported CarPlay!");
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setFlagToTrue() {
        this.flag = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showConnectModeDialog(final BtDevice btDevice) {
        LogUtil.i(TAG, "showConnectModeDialog() " + btDevice.getName());
        this.mCommonDialog = new CommonDialog(this.context);
        this.mCommonDialog.show();
        this.mCommonDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.yftech.settings.connect.adapter.BluetoothPairedAdapter.9
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                BluetoothPairedAdapter.this.mCommonDialog = null;
            }
        });
        this.mCommonDialog.setOnBtnClickListener(new CommonDialog.OnBtnClickListener() { // from class: com.yftech.settings.connect.adapter.BluetoothPairedAdapter.10
            @Override // com.yftech.settings.widget.dialog.CommonDialog.OnBtnClickListener
            public void onCancelClick() {
                LogUtil.i(BluetoothPairedAdapter.TAG, "showConnectModeDialog() onCancelClick()");
                BtDeviceItemState deviceItemState = btDevice.getDeviceItemState();
                int i = 4096;
                if (deviceItemState != null && (!deviceItemState.isHfp() || !deviceItemState.isAvrcp())) {
                    if (deviceItemState.isHfp()) {
                        i = 16;
                    } else if (deviceItemState.isAvrcp()) {
                        i = 11;
                    }
                }
                BluetoothManager.getInstance().connect(btDevice, i);
            }

            @Override // com.yftech.settings.widget.dialog.CommonDialog.OnBtnClickListener
            public void onIconClick() {
            }

            @Override // com.yftech.settings.widget.dialog.CommonDialog.OnBtnClickListener
            public void onSureClick() {
                LogUtil.i(BluetoothPairedAdapter.TAG, "showConnectModeDialog() onSureClick()");
                CarLinkDevice carLinkDevice = BluetoothPairedAdapter.this.getCarLinkDevice(btDevice.getDevice());
                if (carLinkDevice == null) {
                    LogUtil.i(BluetoothPairedAdapter.TAG, "showConnectModeDialog() carLinkDevice is null");
                    return;
                }
                String connectedLinkStatus = CarPhoneLinkManager.getInstance().getConnectedLinkStatus();
                LogUtil.i(BluetoothPairedAdapter.TAG, "showConnectModeDialog() connectedLinkStatus:" + connectedLinkStatus);
                if (!"none".equals(connectedLinkStatus)) {
                    LogUtil.i(BluetoothPairedAdapter.TAG, "showConnectModeDialog() disConnect carPhoneLink");
                    CarPhoneLinkManager.getInstance().disConnect(connectedLinkStatus);
                }
                LinkCarplayManager.getInstance().connect(carLinkDevice);
            }
        });
        this.mCommonDialog.setContent(this.context.getString(R.string.dialog_connect_bluetooth_open_carplay_tip, btDevice.getName())).setButtonText(this.context.getString(R.string.dialog_connect_bluetooth_open_carplay_connect), this.context.getString(R.string.dialog_connect_bluetooth_open_carplay_no_connect));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showIgnoreDialog(final BtDevice btDevice) {
        this.mCommonDialog = new CommonDialog(this.context);
        this.mCommonDialog.show();
        this.mCommonDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.yftech.settings.connect.adapter.BluetoothPairedAdapter.7
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                BluetoothPairedAdapter.this.mCommonDialog = null;
            }
        });
        this.mCommonDialog.setOnBtnClickListener(new CommonDialog.OnBtnClickListener() { // from class: com.yftech.settings.connect.adapter.BluetoothPairedAdapter.8
            @Override // com.yftech.settings.widget.dialog.CommonDialog.OnBtnClickListener
            public void onCancelClick() {
            }

            @Override // com.yftech.settings.widget.dialog.CommonDialog.OnBtnClickListener
            public void onIconClick() {
            }

            @Override // com.yftech.settings.widget.dialog.CommonDialog.OnBtnClickListener
            public void onSureClick() {
                if (BluetoothManager.getInstance().ignore(btDevice)) {
                    BluetoothManager.getInstance().removeDeviceItemState(btDevice.getDevice().getAddress());
                }
            }
        });
        this.mCommonDialog.setContent(this.context.getResources().getString(R.string.hicar_dialog_ingore_tip, CommonUtils.getLimitDeviceName(btDevice.getName()))).setButtonText(this.context.getString(R.string.dialog_button_sure), this.context.getString(R.string.dialog_button_cancel));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void switchProfile(BtDevice btDevice, int i, boolean z) {
        LogUtil.i(TAG, "switchProfile() profile:" + i + ", isChecked:" + z + ", " + btDevice.toString());
        BtDeviceItemState deviceItemState = btDevice.getDeviceItemState();
        if (deviceItemState != null) {
            if (i == 16) {
                deviceItemState.setHfp(z);
            } else if (i == 11) {
                deviceItemState.setAvrcp(z);
            }
            BluetoothManager.getInstance().updateDeviceItemState(btDevice.getDevice().getAddress(), deviceItemState);
        }
        if (!z) {
            if (btDevice.isConnected()) {
                BluetoothManager.getInstance().disconnect(btDevice, i);
            }
        } else {
            BtDevice connectedDevice = BluetoothManager.getInstance().getConnectedDevice();
            if (connectedDevice == null || !btDevice.getDevice().getAddress().equals(connectedDevice.getDevice().getAddress())) {
                return;
            }
            LogUtil.i(TAG, "switchProfile() connect");
            BluetoothManager.getInstance().connect(btDevice, i);
        }
    }

    public void dismissDialog() {
        if (this.mCommonDialog == null || !this.mCommonDialog.isShowing()) {
            return;
        }
        this.mCommonDialog.dismiss();
    }

    @Override // android.widget.Adapter
    public int getCount() {
        if (this.btDevices.size() > 9) {
            return 9;
        }
        return this.btDevices.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.btDevices.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(final int i, View view, ViewGroup viewGroup) {
        final ViewHolder viewHolder;
        String string;
        boolean zIsHfp;
        boolean zIsAvrcp;
        if (view == null) {
            view = LayoutInflater.from(this.context).inflate(R.layout.bluetooth_item_paired, (ViewGroup) null);
            viewHolder = new ViewHolder();
            viewHolder.layoutName = (RelativeLayout) view.findViewById(R.id.layout_name);
            viewHolder.tvName = (TextView) view.findViewById(R.id.tvName);
            viewHolder.tvDetails = (TextView) view.findViewById(R.id.tvDetails);
            viewHolder.tvState = (TextView) view.findViewById(R.id.tvState);
            viewHolder.llDetails = (LinearLayout) view.findViewById(R.id.llDetails);
            viewHolder.swSyncPhone = (Switcher) view.findViewById(R.id.swSyncPhone);
            viewHolder.swSyncMedia = (Switcher) view.findViewById(R.id.swSyncMedia);
            viewHolder.tvDisconnect = (TextView) view.findViewById(R.id.tvDisconnect);
            viewHolder.tvIgnore = (TextView) view.findViewById(R.id.tvIgnore);
            viewHolder.ivIconCarplay = (ImageView) view.findViewById(R.id.ivIconCarplay);
            viewHolder.tvDetails.setOnClickListener(new View.OnClickListener() { // from class: com.yftech.settings.connect.adapter.BluetoothPairedAdapter.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    BtDevice btDevice = (BtDevice) BluetoothPairedAdapter.this.btDevices.get(i);
                    BluetoothPairedAdapter.this.firstIntoPage = false;
                    BtDeviceItemState deviceItemState = btDevice.getDeviceItemState();
                    if (deviceItemState != null) {
                        deviceItemState.setDetail(!deviceItemState.isDetail());
                        BluetoothManager.getInstance().updateDeviceItemState(btDevice.getDevice().getAddress(), deviceItemState);
                        LogUtil.i(BluetoothPairedAdapter.TAG, "tvDetails onClick: " + btDevice.getName() + " isDetail:" + deviceItemState.isDetail());
                    }
                    BluetoothPairedAdapter.this.notifyDataSetChanged();
                }
            });
            viewHolder.tvDisconnect.setOnClickListener(new View.OnClickListener() { // from class: com.yftech.settings.connect.adapter.BluetoothPairedAdapter.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    BluetoothPairedAdapter.this.setFlagToTrue();
                    BluetoothManager.getInstance().disconnect((BtDevice) BluetoothPairedAdapter.this.btDevices.get(i), 4096);
                }
            });
            viewHolder.tvIgnore.setOnClickListener(new View.OnClickListener() { // from class: com.yftech.settings.connect.adapter.BluetoothPairedAdapter.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    BluetoothPairedAdapter.this.showIgnoreDialog((BtDevice) BluetoothPairedAdapter.this.btDevices.get(i));
                }
            });
            viewHolder.swSyncPhone.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.yftech.settings.connect.adapter.BluetoothPairedAdapter.4
                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                    if (compoundButton.isPressed()) {
                        BluetoothPairedAdapter.this.switchProfile((BtDevice) BluetoothPairedAdapter.this.btDevices.get(i), 16, z);
                    }
                }
            });
            viewHolder.swSyncMedia.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.yftech.settings.connect.adapter.BluetoothPairedAdapter.5
                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                    if (compoundButton.isPressed()) {
                        BluetoothPairedAdapter.this.switchProfile((BtDevice) BluetoothPairedAdapter.this.btDevices.get(i), 11, z);
                    }
                }
            });
            viewHolder.layoutName.setOnClickListener(new View.OnClickListener() { // from class: com.yftech.settings.connect.adapter.BluetoothPairedAdapter.6
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    if (Utils.isFastDoubleClick()) {
                        LogUtil.i(BluetoothPairedAdapter.TAG, "this onClick isFastDouble");
                        return;
                    }
                    BtDevice btDevice = (BtDevice) BluetoothPairedAdapter.this.btDevices.get(i);
                    int i2 = 4096;
                    if (btDevice.isConnected()) {
                        BluetoothPairedAdapter.this.setFlagToTrue();
                        BluetoothManager.getInstance().disconnect(btDevice, 4096);
                        return;
                    }
                    if (BluetoothPairedAdapter.this.mIsCertificate && viewHolder.ivIconCarplay.getVisibility() == 0 && !BluetoothPairedAdapter.this.isCarPlayConnected(btDevice.getDevice())) {
                        BluetoothPairedAdapter.this.showConnectModeDialog(btDevice);
                        return;
                    }
                    BtDeviceItemState deviceItemState = btDevice.getDeviceItemState();
                    if (deviceItemState != null && (!deviceItemState.isHfp() || !deviceItemState.isAvrcp())) {
                        if (deviceItemState.isHfp()) {
                            i2 = 16;
                        } else if (deviceItemState.isAvrcp()) {
                            i2 = 11;
                        }
                    }
                    BluetoothManager.getInstance().connect(btDevice, i2);
                }
            });
            view.setTag(viewHolder);
        } else {
            viewHolder = (ViewHolder) view.getTag();
        }
        BtDevice btDevice = this.btDevices.get(i);
        viewHolder.tvName.setText(CommonUtils.getLimitDeviceName(btDevice.getName()));
        TextView textView = viewHolder.tvState;
        if (btDevice.isConnected()) {
            string = this.context.getString(R.string.bluetooth_state_connected);
        } else {
            string = btDevice.isConnecting() ? this.context.getString(R.string.bluetooth_state_connecting) : "";
        }
        textView.setText(string);
        viewHolder.tvDisconnect.setVisibility(btDevice.isConnected() ? 0 : 8);
        if (btDevice.isConnected() && this.flag) {
            zIsHfp = btDevice.getDeviceItemState().isHfp();
            zIsAvrcp = btDevice.getDeviceItemState().isAvrcp();
        } else {
            if (btDevice.isConnected()) {
                zIsHfp = btDevice.getHfpState() != 0;
            } else {
                zIsHfp = btDevice.getDeviceItemState().isHfp();
            }
            LogUtil.i(TAG, "btName:" + btDevice.getName() + " isCheckPhone:" + zIsHfp + "  -->  isConnected:" + btDevice.isConnected() + " btDevice.getHfpState():" + btDevice.getHfpState() + " btDevice.getDeviceItemState().isHfp():" + btDevice.getDeviceItemState().isHfp());
            if (btDevice.isConnected()) {
                zIsAvrcp = btDevice.getAvrcpState() != 0;
            } else {
                zIsAvrcp = btDevice.getDeviceItemState().isAvrcp();
            }
            LogUtil.i(TAG, "btName:" + btDevice.getName() + " isCheckMedia:" + zIsAvrcp + "  -->  isConnected:" + btDevice.isConnected() + " btDevice.getAvrcpState():" + btDevice.getAvrcpState() + " btDevice.getDeviceItemState().isAvrcp():" + btDevice.getDeviceItemState().isAvrcp());
        }
        if (!btDevice.isConnected()) {
            this.flag = false;
        }
        viewHolder.swSyncPhone.setChecked(zIsHfp);
        viewHolder.swSyncMedia.setChecked(zIsAvrcp);
        boolean z = this.firstIntoPage;
        int i2 = R.drawable.selector_btn_bg;
        if (z) {
            boolean zIsConnected = btDevice.isConnected();
            TextView textView2 = viewHolder.tvDetails;
            if (zIsConnected) {
                i2 = R.mipmap.set_icon_bluetooth_put_it_away;
            }
            textView2.setBackgroundResource(i2);
            viewHolder.tvDetails.setText(zIsConnected ? "" : this.context.getString(R.string.bluetooth_btn_details));
            viewHolder.llDetails.setVisibility(zIsConnected ? 0 : 8);
            BtDeviceItemState deviceItemState = btDevice.getDeviceItemState();
            if (deviceItemState != null) {
                deviceItemState.setDetail(zIsConnected);
                BluetoothManager.getInstance().updateDeviceItemState(btDevice.getDevice().getAddress(), deviceItemState);
            }
        } else {
            BtDeviceItemState deviceItemState2 = btDevice.getDeviceItemState();
            boolean z2 = deviceItemState2 != null && deviceItemState2.isDetail();
            TextView textView3 = viewHolder.tvDetails;
            if (z2) {
                i2 = R.mipmap.set_icon_bluetooth_put_it_away;
            }
            textView3.setBackgroundResource(i2);
            viewHolder.tvDetails.setText(z2 ? "" : this.context.getString(R.string.bluetooth_btn_details));
            viewHolder.llDetails.setVisibility(z2 ? 0 : 8);
        }
        if (this.mIsCertificate) {
            boolean zIsDeviceSupportCarPlay = isDeviceSupportCarPlay(btDevice.getDevice());
            viewHolder.ivIconCarplay.setVisibility(zIsDeviceSupportCarPlay ? 0 : 8);
            if (zIsDeviceSupportCarPlay) {
                viewHolder.ivIconCarplay.setImageResource(isCarPlayConnected(btDevice.getDevice()) ? R.mipmap.setting_list_icon_apple_carplay_sel : R.mipmap.setting_list_icon_apple_carplay_nor);
            }
        } else {
            viewHolder.ivIconCarplay.setVisibility(8);
        }
        return view;
    }

    public void updateAdapter(List<BtDevice> list, boolean z) {
        this.mIsCertificate = Utils.isCarPlayCertificate();
        this.btDevices.clear();
        this.btDevices.addAll(list);
        this.firstIntoPage = z;
        notifyDataSetChanged();
    }
}
