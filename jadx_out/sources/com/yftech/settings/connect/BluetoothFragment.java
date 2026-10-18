package com.yftech.settings.connect;

import android.bluetooth.BluetoothDevice;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.LinearInterpolator;
import android.widget.AdapterView;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.vectordrawable.graphics.drawable.PathInterpolatorCompat;
import com.yftech.settings.BaseFragment;
import com.yftech.settings.R;
import com.yftech.settings.connect.adapter.BluetoothPairedAdapter;
import com.yftech.settings.connect.adapter.BluetoothUnPairedAdapter;
import com.yftech.settings.connect.model.BtDevice;
import com.yftech.settings.manager.BluetoothManager;
import com.yftech.settings.utils.CommonUtils;
import com.yftech.settings.utils.LogUtil;
import com.yftech.settings.utils.Utils;
import com.yftech.settings.widget.Switcher;
import com.yftech.settings.widget.dialog.CommonDialog;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class BluetoothFragment extends BaseFragment implements CompoundButton.OnCheckedChangeListener, BluetoothManager.CarBluetoothListener {
    private static final String TAG = "BluetoothFragment";
    private ImageView mBtIvScanLodading;
    private LinearLayout mBtLayoutList;
    private RelativeLayout mBtLayoutPairedHeader;
    private ListView mBtLvPaired;
    private ListView mBtLvUnpaired;
    private BluetoothPairedAdapter mBtPairedAdapter;
    private Switcher mBtSwAutoConnect;
    private Switcher mBtSwAutoSync;
    private Switcher mBtSwSwitch;
    private ImageView mBtTipIvScanLodading;
    private TextView mBtTvName;
    private TextView mBtTvTip;
    private BluetoothUnPairedAdapter mBtUnpairedAdapter;
    private CommonDialog mCommonDialog;
    private RelativeLayout mLayoutTip;
    private Animation mLoadingAnimation;
    private Handler mHandler = new Handler();
    private Runnable mBluetoothScanningRunnable = new Runnable() { // from class: com.yftech.settings.connect.BluetoothFragment.5
        @Override // java.lang.Runnable
        public void run() {
            LogUtil.i(BluetoothFragment.TAG, "BluetoothScanningRunnable() startScanning");
            BluetoothManager.getInstance().startScanning();
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public void connectBluetooth(int i) {
        stopBluetoothScanning();
        if (this.mBtUnpairedAdapter != null) {
            BluetoothManager.getInstance().connect((BluetoothDevice) this.mBtUnpairedAdapter.getItem(i), 4096);
        }
        List<BtDevice> pariedDevices = BluetoothManager.getInstance().getPariedDevices();
        int size = pariedDevices.size();
        LogUtil.i(TAG, "pariedBtDevicesSize:" + size);
        if (size < 9 || !BluetoothManager.getInstance().isSupportCarplay(null)) {
            BluetoothManager.getInstance().connect((BtDevice) null, 4096);
        } else {
            showCarplayBluetoothPairMaxRemovePairedDialog(pariedDevices.get(size - 1), null);
        }
    }

    private void initView(View view) {
        LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.bt_tv_device_name);
        ((TextView) linearLayout.findViewById(R.id.tvTitle)).setText(getContext().getApplicationContext().getString(R.string.bluetooth_item_device_name));
        this.mBtTvName = (TextView) linearLayout.findViewById(R.id.tvContent);
        LinearLayout linearLayout2 = (LinearLayout) view.findViewById(R.id.bt_sw_device);
        ((TextView) linearLayout2.findViewById(R.id.tvTitle)).setText(getContext().getApplicationContext().getString(R.string.bluetooth_item_switch));
        this.mBtSwSwitch = (Switcher) linearLayout2.findViewById(R.id.switcher);
        this.mBtSwSwitch.setTag(Integer.valueOf(R.id.bt_sw_device));
        this.mBtSwSwitch.setOnCheckedChangeListener(this);
        LinearLayout linearLayout3 = (LinearLayout) view.findViewById(R.id.bt_sw_auto_connect);
        ((TextView) linearLayout3.findViewById(R.id.tvTitle)).setText(getContext().getApplicationContext().getString(R.string.bluetooth_item_auto_connect));
        this.mBtSwAutoConnect = (Switcher) linearLayout3.findViewById(R.id.switcher);
        this.mBtSwAutoConnect.setTag(Integer.valueOf(R.id.bt_sw_auto_connect));
        this.mBtSwAutoConnect.setOnCheckedChangeListener(this);
        if (Utils.isCarPlayCertificate()) {
            linearLayout3.setVisibility(8);
        } else {
            linearLayout3.setVisibility(0);
        }
        LinearLayout linearLayout4 = (LinearLayout) view.findViewById(R.id.bt_sw_auto_sync);
        ((TextView) linearLayout4.findViewById(R.id.tvTitle)).setText(getContext().getApplicationContext().getString(R.string.bluetooth_item_auto_sync));
        this.mBtSwAutoSync = (Switcher) linearLayout4.findViewById(R.id.switcher);
        this.mBtSwAutoSync.setTag(Integer.valueOf(R.id.bt_sw_auto_sync));
        this.mBtSwAutoSync.setOnCheckedChangeListener(this);
        this.mBtTvTip = (TextView) view.findViewById(R.id.bt_tv_tip);
        this.mLayoutTip = (RelativeLayout) view.findViewById(R.id.layout_tip);
        this.mBtLayoutList = (LinearLayout) view.findViewById(R.id.bt_layout_opened);
        this.mBtLayoutPairedHeader = (RelativeLayout) view.findViewById(R.id.bt_layout_paired_header);
        this.mBtLvPaired = (ListView) view.findViewById(R.id.bt_lv_paired);
        this.mBtLvUnpaired = (ListView) view.findViewById(R.id.bt_lv_connectable);
        this.mBtLvUnpaired.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.yftech.settings.connect.BluetoothFragment.1
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view2, int i, long j) {
                BluetoothFragment.this.connectBluetooth(i);
            }
        });
        this.mBtIvScanLodading = (ImageView) view.findViewById(R.id.bt_iv_scan_lodading);
        this.mLoadingAnimation = AnimationUtils.loadAnimation(getContext().getApplicationContext(), R.anim.loading_circle);
        this.mLoadingAnimation.setInterpolator(new LinearInterpolator());
        this.mBtTipIvScanLodading = (ImageView) view.findViewById(R.id.bt_tip_iv_scan_lodading);
    }

    private void initViewDate() {
        this.mBtTvName.setText(BluetoothManager.getInstance().getBluetoothName());
        updateBtSwitchView(BluetoothManager.getInstance().getEnableState());
        this.mBtSwAutoConnect.setChecked(BluetoothManager.getInstance().isAutoConnectEnable());
        this.mBtSwAutoSync.setChecked(BluetoothManager.getInstance().isAutoDownloadContactsEnable());
        if (BluetoothManager.getInstance().getEnableState() == 12) {
            updatePairedListView(true);
            updateUnpairedListView();
        }
        updateScanLoadingAnimation(BluetoothManager.getInstance().isScanning());
    }

    private void showCarplayBluetoothPairMaxRemovePairedDialog(BtDevice btDevice, final BtDevice btDevice2) {
        LogUtil.i(TAG, "showCarplayBluetoothPairMaxRemovePairedDialog()");
        this.mCommonDialog = new CommonDialog(getContext().getApplicationContext().getApplicationContext());
        this.mCommonDialog.show();
        this.mCommonDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.yftech.settings.connect.BluetoothFragment.3
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                BluetoothFragment.this.mCommonDialog = null;
            }
        });
        this.mCommonDialog.setOnBtnClickListener(new CommonDialog.OnBtnClickListener() { // from class: com.yftech.settings.connect.BluetoothFragment.4
            @Override // com.yftech.settings.widget.dialog.CommonDialog.OnBtnClickListener
            public void onCancelClick() {
            }

            @Override // com.yftech.settings.widget.dialog.CommonDialog.OnBtnClickListener
            public void onIconClick() {
            }

            @Override // com.yftech.settings.widget.dialog.CommonDialog.OnBtnClickListener
            public void onSureClick() {
                BluetoothManager.getInstance().connect(btDevice2, 4096);
            }
        });
        this.mCommonDialog.setContent(getContext().getApplicationContext().getString(R.string.dialog_carplay_bluetooth_pair_max_remove_paired_tip, btDevice != null ? CommonUtils.getLimitDeviceName(btDevice.getName()) : "", btDevice2 != null ? CommonUtils.getLimitDeviceName(btDevice2.getName()) : "")).setButtonText(getContext().getApplicationContext().getString(R.string.dialog_carplay_bluetooth_pair_max_remove_paired_btn_know), getContext().getApplicationContext().getString(R.string.dialog_carplay_bluetooth_pair_max_remove_paired_btn_no));
    }

    private void startBluetoothScanning(int i) {
        LogUtil.i(TAG, "startBluetoothScanning() delay:" + i);
        this.mHandler.removeCallbacks(this.mBluetoothScanningRunnable);
        this.mHandler.postDelayed(this.mBluetoothScanningRunnable, (long) i);
    }

    private void stopBluetoothScanning() {
        LogUtil.i(TAG, "stopBluetoothScanning()");
        this.mHandler.removeCallbacks(this.mBluetoothScanningRunnable);
        BluetoothManager.getInstance().stopScanning();
    }

    private void updateBtSwitchView(int i) {
        LogUtil.i(TAG, "updateBtSwitchView() state:" + i);
        switch (i) {
            case 10:
                this.mBtSwSwitch.setChecked(false);
                this.mBtSwSwitch.setEnabled(true);
                break;
            case 11:
                this.mBtSwSwitch.setChecked(true);
                this.mBtSwSwitch.setEnabled(false);
                break;
            case 12:
                this.mBtSwSwitch.setChecked(true);
                this.mBtSwSwitch.setEnabled(true);
                break;
            case 13:
                this.mBtSwSwitch.setChecked(false);
                this.mBtSwSwitch.setEnabled(false);
                break;
        }
        if (i != 12) {
            this.mBtLayoutList.setVisibility(8);
            this.mBtTvTip.setText(R.string.bluetooth_tip_open_bluetooth);
            this.mLayoutTip.setVisibility(8);
        } else if (!BluetoothManager.getInstance().getPariedDevices().isEmpty() || !BluetoothManager.getInstance().getUnpariedDevices().isEmpty()) {
            this.mBtLayoutList.setVisibility(0);
            this.mLayoutTip.setVisibility(8);
        } else {
            this.mBtLayoutList.setVisibility(8);
            this.mBtTvTip.setText(getContext().getApplicationContext().getString(R.string.bluetooth_tip_no_find_device));
            this.mLayoutTip.setVisibility(0);
        }
    }

    private void updatePairedListView(boolean z) {
        if (BluetoothManager.getInstance().getEnableState() != 12) {
            LogUtil.i(TAG, "updatePairedListView() enableState is not STATE_ON");
            return;
        }
        List<BtDevice> pariedDevices = BluetoothManager.getInstance().getPariedDevices();
        LogUtil.i(TAG, "getPariedDevices():" + pariedDevices.size());
        if (pariedDevices == null || pariedDevices.isEmpty()) {
            this.mBtLayoutPairedHeader.setVisibility(8);
            this.mBtLvPaired.setVisibility(8);
            return;
        }
        this.mLayoutTip.setVisibility(8);
        this.mBtLayoutList.setVisibility(0);
        this.mBtLayoutPairedHeader.setVisibility(0);
        this.mBtLvPaired.setVisibility(0);
        if (this.mBtPairedAdapter == null) {
            this.mBtPairedAdapter = new BluetoothPairedAdapter(getContext().getApplicationContext());
        }
        this.mBtLvPaired.setAdapter((ListAdapter) this.mBtPairedAdapter);
        this.mBtPairedAdapter.updateAdapter(pariedDevices, z);
    }

    private void updateScanLoadingAnimation(boolean z) {
        if (z) {
            this.mBtIvScanLodading.startAnimation(this.mLoadingAnimation);
            this.mBtIvScanLodading.setVisibility(0);
            this.mBtTipIvScanLodading.startAnimation(this.mLoadingAnimation);
            this.mBtTipIvScanLodading.setVisibility(0);
            return;
        }
        this.mBtIvScanLodading.clearAnimation();
        this.mBtIvScanLodading.setVisibility(8);
        this.mBtTipIvScanLodading.clearAnimation();
        this.mBtTipIvScanLodading.setVisibility(8);
    }

    private void updateUnpairedListView() {
        if (BluetoothManager.getInstance().getEnableState() != 12) {
            LogUtil.i(TAG, "updateUnpairedListView() enableState is not STATE_ON");
            return;
        }
        List<BluetoothDevice> unpariedDevices = BluetoothManager.getInstance().getUnpariedDevices();
        LogUtil.i(TAG, "getUnpariedDevices():" + unpariedDevices.size());
        if (unpariedDevices == null || unpariedDevices.isEmpty()) {
            this.mBtLvUnpaired.setVisibility(8);
            return;
        }
        this.mLayoutTip.setVisibility(8);
        this.mBtLayoutList.setVisibility(0);
        this.mBtLvUnpaired.setVisibility(0);
        if (this.mBtUnpairedAdapter == null) {
            this.mBtUnpairedAdapter = new BluetoothUnPairedAdapter(getContext().getApplicationContext());
            this.mBtUnpairedAdapter.setOnClickConnectListener(new BluetoothUnPairedAdapter.OnClickConnectListener() { // from class: com.yftech.settings.connect.BluetoothFragment.2
                @Override // com.yftech.settings.connect.adapter.BluetoothUnPairedAdapter.OnClickConnectListener
                public void OnClickConnect(int i) {
                    BluetoothFragment.this.connectBluetooth(i);
                }
            });
        }
        this.mBtLvUnpaired.setAdapter((ListAdapter) this.mBtUnpairedAdapter);
        this.mBtUnpairedAdapter.updateAdapter(unpariedDevices);
    }

    @Override // com.yftech.settings.BaseFragment
    protected void dismissAllDialog() {
        super.dismissAllDialog();
        if (this.mCommonDialog != null && this.mCommonDialog.isShowing()) {
            this.mCommonDialog.dismiss();
        }
        if (this.mBtPairedAdapter != null) {
            this.mBtPairedAdapter.dismissDialog();
        }
        if (this.mBtPairedAdapter != null) {
            this.mBtPairedAdapter.dismissDialog();
        }
        BluetoothManager.getInstance().dismissDialog();
    }

    @Override // com.yftech.settings.manager.BluetoothManager.CarBluetoothListener
    public void onBluetoothAutoConnectStateChanged(boolean z) {
        if (this.mBtSwAutoConnect.isChecked() != z) {
            this.mBtSwAutoConnect.setChecked(z);
        }
    }

    @Override // com.yftech.settings.manager.BluetoothManager.CarBluetoothListener
    public void onBluetoothAutoDownloadContactsStateChanged(boolean z) {
        if (this.mBtSwAutoSync.isChecked() != z) {
            this.mBtSwAutoSync.setChecked(z);
        }
    }

    @Override // com.yftech.settings.manager.BluetoothManager.CarBluetoothListener
    public void onBluetoothPairedListChanged() {
        updatePairedListView(false);
    }

    @Override // com.yftech.settings.manager.BluetoothManager.CarBluetoothListener
    public void onBluetoothScanningStateChanged(boolean z) {
        updateScanLoadingAnimation(z);
        if (!z && BluetoothManager.getInstance().getPariedDevices().size() + BluetoothManager.getInstance().getUnpariedDevices().size() <= 0) {
            this.mBtLayoutList.setVisibility(8);
            this.mBtTvTip.setText(getContext().getApplicationContext().getString(R.string.bluetooth_tip_no_find_device));
            this.mLayoutTip.setVisibility(0);
        }
        if (z) {
            return;
        }
        startBluetoothScanning(PathInterpolatorCompat.MAX_NUM_POINTS);
    }

    @Override // com.yftech.settings.manager.BluetoothManager.CarBluetoothListener
    public void onBluetoothStateChanged(int i) {
        if (i == 12) {
            startBluetoothScanning(1000);
        } else if (i == 10) {
            stopBluetoothScanning();
        }
        updateBtSwitchView(i);
    }

    @Override // com.yftech.settings.manager.BluetoothManager.CarBluetoothListener
    public void onBluetoothUnpairedListChanged() {
        updateUnpairedListView();
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        if (compoundButton.isPressed()) {
            switch (((Integer) compoundButton.getTag()).intValue()) {
                case R.id.bt_sw_auto_connect /* 2131230799 */:
                    BluetoothManager.getInstance().setAutoConnectEnable(z);
                    break;
                case R.id.bt_sw_auto_sync /* 2131230800 */:
                    BluetoothManager.getInstance().setAutoDownloadContactsEnable(z);
                    break;
                case R.id.bt_sw_device /* 2131230801 */:
                    boolean enabled = BluetoothManager.getInstance().setEnabled(z);
                    LogUtil.i(TAG, "onCheckedChanged() bt_sw_device isChecked:" + z + " ret:" + enabled);
                    if (!enabled) {
                        this.mBtSwSwitch.setChecked(!z);
                    }
                    break;
            }
        }
    }

    @Override // android.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_connect_bluetooth, viewGroup, false);
        initView(viewInflate);
        return viewInflate;
    }

    @Override // com.yftech.settings.BaseFragment, android.app.Fragment
    public void onPause() {
        super.onPause();
        LogUtil.i(TAG, "onPause()");
        stopBluetoothScanning();
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        LogUtil.i(TAG, "onResume()");
        initViewDate();
        if (BluetoothManager.getInstance().getEnableState() == 12) {
            startBluetoothScanning(0);
        }
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        LogUtil.i(TAG, "onStart()");
        BluetoothManager.getInstance().addCarBluetoothListener(this);
    }

    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
        LogUtil.i(TAG, "onStop()");
        BluetoothManager.getInstance().removeCarBluetoothListener(this);
    }
}
