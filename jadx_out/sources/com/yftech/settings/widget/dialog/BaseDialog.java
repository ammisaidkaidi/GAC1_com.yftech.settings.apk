package com.yftech.settings.widget.dialog;

import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import com.yftech.car.bluetooth.CarBluetoothManager;
import com.yftech.car.bluetooth.callback.CarBluetoothPhoneCallback;
import com.yftech.car.bluetooth.model.PhoneCall;
import com.yftech.settings.utils.LogUtil;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class BaseDialog extends Dialog {
    private static final String ACTION_CARPLAY_EVENT_SHOW_UI = "com.autochips.carplay.event.show_ui";
    private static final String KEY_CARPLAY_EVENT_SHOW_UI = "ui_show";
    private static final String TAG = "BaseDialog";
    private CarBluetoothPhoneCallback mCarBluetoothPhoneCallback;
    private CarplayShowUIReceiver mCarplayShowUIReceiver;
    private IntentFilter mIntentFilter;
    private Handler mMainHandler;

    private class CarplayShowUIReceiver extends BroadcastReceiver {
        private CarplayShowUIReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (BaseDialog.ACTION_CARPLAY_EVENT_SHOW_UI.equals(intent.getAction())) {
                boolean booleanExtra = intent.getBooleanExtra(BaseDialog.KEY_CARPLAY_EVENT_SHOW_UI, true);
                LogUtil.i(BaseDialog.TAG, "onReceive() ACTION_CARPLAY_EVENT_SHOW_UI isShow:" + booleanExtra);
                if (booleanExtra) {
                    BaseDialog.this.dismiss();
                }
            }
        }
    }

    public BaseDialog(@NonNull Context context, int i) {
        super(context, i);
        this.mMainHandler = new Handler(Looper.getMainLooper());
        this.mCarBluetoothPhoneCallback = new CarBluetoothPhoneCallback() { // from class: com.yftech.settings.widget.dialog.BaseDialog.1
            public void onBluetoothPhoneCallStateChanged(List<PhoneCall> list) {
                super.onBluetoothPhoneCallStateChanged(list);
                if (list == null || list.isEmpty()) {
                    LogUtil.i(BaseDialog.TAG, "onBluetoothPhoneCallStateChanged() phoneCalls is empty");
                    return;
                }
                int callState = list.get(0).getCallState();
                LogUtil.i(BaseDialog.TAG, "onBluetoothPhoneCallStateChanged() callState:" + callState);
                if ((callState == 2 || callState == 1) && BaseDialog.this.isShowing()) {
                    LogUtil.i(BaseDialog.TAG, "onBluetoothPhoneCallStateChanged() dismiss");
                    BaseDialog.this.dismiss();
                }
            }
        };
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        LogUtil.i(TAG, "onAttachedToWindow()");
        getContext().getApplicationContext().registerReceiver(this.mCarplayShowUIReceiver, this.mIntentFilter);
        CarBluetoothManager.getInstance().registerBluetoothPhoneCallback(this.mCarBluetoothPhoneCallback, this.mMainHandler);
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        LogUtil.i(TAG, "onCreate()");
        if (this.mIntentFilter == null) {
            this.mIntentFilter = new IntentFilter();
            this.mIntentFilter.addAction(ACTION_CARPLAY_EVENT_SHOW_UI);
        }
        if (this.mCarplayShowUIReceiver == null) {
            this.mCarplayShowUIReceiver = new CarplayShowUIReceiver();
        }
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        LogUtil.i(TAG, "onDetachedFromWindow()");
        getContext().getApplicationContext().unregisterReceiver(this.mCarplayShowUIReceiver);
        CarBluetoothManager.getInstance().unregisterBluetoothPhoneCallback(this.mCarBluetoothPhoneCallback);
    }
}
