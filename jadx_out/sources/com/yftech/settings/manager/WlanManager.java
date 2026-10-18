package com.yftech.settings.manager;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.wifi.WifiManager;
import android.os.Handler;
import android.os.Looper;
import com.yftech.settings.R;
import com.yftech.settings.utils.LogUtil;
import com.yftech.settings.utils.Utils;
import com.yftech.settings.widget.dialog.CommonDialog;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class WlanManager {
    private static final int OPEN_AP_DIALOG_CLICK_CANCEL = 0;
    private static final int OPEN_AP_DIALOG_CLICK_OPEN = 1;
    private static final String TAG = "WlanManager";
    private static WlanManager sWlanManager;
    private ConnectivityManager mConnectivityManager;
    private Context mContext;
    private boolean mIsConfig;
    private CommonDialog mOpenApDialog;
    private WifiManager mWifiManager;
    private WlanReceiver mWlanReceiver;
    private List<WlanListener> mWlanListeners = new ArrayList();
    private Handler mMainHandler = new Handler(Looper.getMainLooper());
    private ConnectivityManager.OnStartTetheringCallback mOnStartTetheringCallback = new ConnectivityManager.OnStartTetheringCallback() { // from class: com.yftech.settings.manager.WlanManager.1
        public void onTetheringFailed() {
            super.onTetheringFailed();
            LogUtil.i(WlanManager.TAG, "onTetheringFailed()");
        }
    };

    public interface WlanListener {
        void onApEnabledStateChanged(int i);

        void onWifiEnabledStateChanged(int i);
    }

    class WlanReceiver extends BroadcastReceiver {
        WlanReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("android.net.wifi.WIFI_STATE_CHANGED".equals(intent.getAction())) {
                int intExtra = intent.getIntExtra("wifi_state", 4);
                LogUtil.i(WlanManager.TAG, "WIFI_STATE_CHANGED_ACTION state:" + intExtra);
                WlanManager.this.notifyOnWifiEnabledStateChanged(intExtra);
                return;
            }
            if ("android.net.wifi.WIFI_AP_STATE_CHANGED".equals(intent.getAction())) {
                int intExtra2 = intent.getIntExtra("wifi_state", 14);
                LogUtil.i(WlanManager.TAG, "WIFI_AP_STATE_CHANGED_ACTION state:" + intExtra2);
                WlanManager.this.notifyOnApEnabledStateChanged(intExtra2);
            }
        }
    }

    private WlanManager() {
    }

    public static synchronized WlanManager getInstance() {
        if (sWlanManager == null) {
            sWlanManager = new WlanManager();
        }
        return sWlanManager;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyOnApEnabledStateChanged(final int i) {
        this.mMainHandler.post(new Runnable() { // from class: com.yftech.settings.manager.WlanManager.3
            @Override // java.lang.Runnable
            public void run() {
                for (int i2 = 0; i2 < WlanManager.this.mWlanListeners.size(); i2++) {
                    ((WlanListener) WlanManager.this.mWlanListeners.get(i2)).onApEnabledStateChanged(i);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyOnWifiEnabledStateChanged(final int i) {
        this.mMainHandler.post(new Runnable() { // from class: com.yftech.settings.manager.WlanManager.2
            @Override // java.lang.Runnable
            public void run() {
                for (int i2 = 0; i2 < WlanManager.this.mWlanListeners.size(); i2++) {
                    ((WlanListener) WlanManager.this.mWlanListeners.get(i2)).onWifiEnabledStateChanged(i);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendBroadcastOpenApDialogClick(int i) {
        LogUtil.i(TAG, "sendBroadcastOpenApDialogClick() click:" + i);
        Intent intent = new Intent("com.yftech.intent.action.ap.dialog.click");
        intent.putExtra("click", i);
        intent.setPackage("com.yftech.transfer.service");
        this.mContext.sendBroadcast(intent);
    }

    public void addWlanListener(WlanListener wlanListener) {
        if (this.mWlanListeners.contains(wlanListener)) {
            return;
        }
        this.mWlanListeners.add(wlanListener);
    }

    public void deInit() {
        LogUtil.i(TAG, "deInit() isConfig:" + this.mIsConfig);
        this.mContext.unregisterReceiver(this.mWlanReceiver);
    }

    public void init(Context context) {
        this.mContext = context;
        this.mIsConfig = Utils.isCarPlayCertificate();
        LogUtil.i(TAG, "init() isConfig:" + this.mIsConfig);
        this.mWifiManager = (WifiManager) this.mContext.getApplicationContext().getSystemService("wifi");
        this.mConnectivityManager = (ConnectivityManager) this.mContext.getSystemService("connectivity");
        this.mWlanReceiver = new WlanReceiver();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.wifi.WIFI_STATE_CHANGED");
        intentFilter.addAction("android.net.wifi.WIFI_AP_STATE_CHANGED");
        this.mContext.registerReceiver(this.mWlanReceiver, intentFilter);
    }

    public boolean isApEnable() {
        if (this.mWifiManager == null) {
            LogUtil.i(TAG, "isApEnable() WifiManager is null");
            return false;
        }
        boolean zIsWifiApEnabled = this.mWifiManager.isWifiApEnabled();
        LogUtil.i(TAG, "isApEnable() isEnabled:" + zIsWifiApEnabled);
        return zIsWifiApEnabled;
    }

    public boolean isConfig() {
        return this.mIsConfig;
    }

    public boolean isWifiEnable() {
        if (this.mWifiManager == null) {
            LogUtil.i(TAG, "isWifiEnable() WifiManager is null");
            return false;
        }
        boolean zIsWifiEnabled = this.mWifiManager.isWifiEnabled();
        LogUtil.i(TAG, "isWifiEnable() isEnabled:" + zIsWifiEnabled);
        return zIsWifiEnabled;
    }

    public void removeWlanListener(WlanListener wlanListener) {
        if (this.mWlanListeners.contains(wlanListener)) {
            this.mWlanListeners.remove(wlanListener);
        }
    }

    public boolean setApEnable(boolean z) {
        if (this.mConnectivityManager == null) {
            LogUtil.i(TAG, "setApEnable() ConnectivityManager is null. isEnabled:" + z);
            return false;
        }
        LogUtil.i(TAG, "setApEnable() isEnabled:" + z);
        if (z) {
            this.mConnectivityManager.startTethering(0, true, this.mOnStartTetheringCallback, new Handler(Looper.getMainLooper()));
        } else {
            this.mConnectivityManager.stopTethering(0);
        }
        return true;
    }

    public void setWifiEnable(boolean z) {
        if (this.mWifiManager == null) {
            LogUtil.i(TAG, "setWifiEnable() WifiManager is null. isEnabled:" + z);
            return;
        }
        LogUtil.i(TAG, "setWifiEnable() isEnabled:" + z + " result:" + this.mWifiManager.setWifiEnabled(z));
    }

    public void showOpenApDialog() {
        LogUtil.i(TAG, "showOpenApDialog()");
        if (this.mOpenApDialog != null && this.mOpenApDialog.isShowing()) {
            LogUtil.i(TAG, "showOpenApDialog() isShowing");
            return;
        }
        if (this.mOpenApDialog == null) {
            this.mOpenApDialog = new CommonDialog(this.mContext.getApplicationContext());
        }
        this.mOpenApDialog.show();
        this.mOpenApDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.yftech.settings.manager.WlanManager.4
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                WlanManager.this.mOpenApDialog = null;
            }
        });
        this.mOpenApDialog.setOnBtnClickListener(new CommonDialog.OnBtnClickListener() { // from class: com.yftech.settings.manager.WlanManager.5
            @Override // com.yftech.settings.widget.dialog.CommonDialog.OnBtnClickListener
            public void onCancelClick() {
                LogUtil.i(WlanManager.TAG, "showOpenApDialog() onCancelClick");
                WlanManager.this.sendBroadcastOpenApDialogClick(0);
            }

            @Override // com.yftech.settings.widget.dialog.CommonDialog.OnBtnClickListener
            public void onIconClick() {
            }

            @Override // com.yftech.settings.widget.dialog.CommonDialog.OnBtnClickListener
            public void onSureClick() {
                boolean apEnable = WlanManager.this.setApEnable(true);
                LogUtil.i(WlanManager.TAG, "showOpenApDialog() onSureClick result:" + apEnable);
                if (apEnable) {
                    WlanManager.this.sendBroadcastOpenApDialogClick(1);
                }
            }
        });
        this.mOpenApDialog.setContent(this.mContext.getString(R.string.dialog_carplay_open_ap_tip)).setButtonText(this.mContext.getString(R.string.dialog_button_sure), this.mContext.getString(R.string.dialog_button_cancel));
    }
}
