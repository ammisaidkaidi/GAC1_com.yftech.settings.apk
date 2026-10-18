package com.yftech.settings;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.yftech.settings.manager.CarDriveModeManager;
import com.yftech.settings.manager.WlanManager;
import com.yftech.settings.utils.LogUtil;
import com.yftech.settings.utils.Utils;
import java.util.Calendar;

/* JADX INFO: loaded from: classes.dex */
public class CarSettingsReceiver extends BroadcastReceiver {
    private static final String TAG = "CarSettingsReceiver";

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if ("android.intent.action.TIME_SET".equals(intent.getAction())) {
            LogUtil.i(TAG, "onReceive android.intent.action.TIME_SET");
            Utils.setDateTime(context, Calendar.getInstance(), false);
        } else if ("com.yftech.intent.action.ap.dialog.show".equals(intent.getAction())) {
            LogUtil.i(TAG, "onReceive com.yftech.intent.action.ap.dialog.show");
            WlanManager.getInstance().showOpenApDialog();
        } else if ("com.yftech.intent.action.track.dialog.show".equals(intent.getAction())) {
            CarDriveModeManager.getInstance().setAction(CarDriveModeManager.Function.TRACK_DIALOG_SHOW_ACTION);
        }
    }
}
