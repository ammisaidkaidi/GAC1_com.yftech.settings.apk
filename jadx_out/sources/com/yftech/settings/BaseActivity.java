package com.yftech.settings;

import android.app.Activity;
import android.app.ActivityManagerNative;
import android.app.IActivityManager;
import android.app.IProcessObserver;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.Nullable;
import com.yftech.settings.utils.LogUtil;
import com.yftech.vehicle.internal.adapter.ICarPower;
import com.yftech.vehicle.sdk.CarPowerManager;

/* JADX INFO: loaded from: classes.dex */
public class BaseActivity extends Activity {
    private BaseReceiver mBaseReceiver;
    IActivityManager mIActivityManager = ActivityManagerNative.asInterface(ServiceManager.getService("activity"));
    private Toast mPowerToast;
    ProcessObserver mProcessObserver;

    private class BaseReceiver extends BroadcastReceiver {
        private BaseReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("com.yftech.intent.action.exit.application".equals(intent.getAction())) {
                String stringExtra = intent.getStringExtra("exit.package.name");
                LogUtil.i("BaseActivity", "onReceive() EXIT_APPLICATION_BROADCAST_ACTION packageName:" + stringExtra);
                if (BaseActivity.this.getPackageName().equals(stringExtra)) {
                    LogUtil.i("BaseActivity", "onReceive() finish");
                    BaseActivity.this.finish();
                }
            }
        }
    }

    private class ProcessObserver extends IProcessObserver.Stub {
        private ProcessObserver() {
        }

        public void onForegroundActivitiesChanged(int i, int i2, boolean z) {
            LogUtil.d("BaseActivity->onForegroundActivitiesChanged", String.format("sky->onForegroundActivitiesChanged uid %d pid %d fg %b", Integer.valueOf(i2), Integer.valueOf(i), Boolean.valueOf(z)));
        }

        public void onProcessDied(int i, int i2) {
            LogUtil.d("BaseActivity->onProcessDied", String.format("sky->onProcessDied uid %d pid %d", Integer.valueOf(i2), Integer.valueOf(i)));
        }
    }

    private void register() {
        try {
            if (this.mIActivityManager != null) {
                this.mProcessObserver = new ProcessObserver();
                this.mIActivityManager.registerProcessObserver(this.mProcessObserver);
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    private void unRegister() {
        if (this.mIActivityManager != null) {
            try {
                this.mIActivityManager.unregisterProcessObserver(this.mProcessObserver);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    protected String getPowerToastStr() {
        return getString(R.string.toast_start_the_vehicle_and_set_it);
    }

    protected boolean isPower() {
        ICarPower.PowerMode powerMode = CarPowerManager.get().getPowerMode();
        return powerMode == ICarPower.PowerMode.ON || powerMode == ICarPower.PowerMode.CRANK;
    }

    @Override // android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        this.mBaseReceiver = new BaseReceiver();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.yftech.intent.action.exit.application");
        registerReceiver(this.mBaseReceiver, intentFilter);
        register();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        unregisterReceiver(this.mBaseReceiver);
        unRegister();
    }

    protected void showPowerToast() {
        if (this.mPowerToast != null) {
            this.mPowerToast.cancel();
            this.mPowerToast = null;
        }
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.toast_acc_off, (ViewGroup) null);
        ((TextView) viewInflate.findViewById(R.id.acc_off_tip)).setText(getPowerToastStr());
        this.mPowerToast = Toast.makeText(this, getPowerToastStr(), 1);
        this.mPowerToast.setView(viewInflate);
        this.mPowerToast.setGravity(119, 0, 0);
        this.mPowerToast.show();
    }
}
