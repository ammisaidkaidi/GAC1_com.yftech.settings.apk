package com.yftech.settings.widget.dialog;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.SystemProperties;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.widget.ImageView;
import com.yftech.settings.R;
import com.yftech.settings.utils.FactorySetting;
import com.yftech.settings.utils.LogUtil;

/* JADX INFO: loaded from: classes.dex */
public class FactoryDialog extends CommonDialog implements CommonDialog.OnBtnClickListener {
    private static final String TAG = "FactoryDialog";
    private boolean isFactorying;
    private boolean isWillFactory;

    public FactoryDialog(Context context) {
        super(context);
        this.isWillFactory = false;
        this.isFactorying = false;
    }

    private void handleSure() throws Throwable {
        boolean zIsUserAMonkey = ActivityManager.isUserAMonkey();
        LogUtil.i(TAG, "handleSure() isUserAMonkey:" + zIsUserAMonkey);
        if (zIsUserAMonkey) {
            return;
        }
        if (SystemProperties.get("yf.mcu.update", "").equals("1")) {
            LogUtil.i(TAG, "handleSure() updating mcu");
            return;
        }
        this.isWillFactory = true;
        setContentView(R.layout.dialog_recover);
        ImageView imageView = (ImageView) findViewById(R.id.iv_recover_loading);
        RotateAnimation rotateAnimation = new RotateAnimation(0.0f, 360.0f, 1, 0.5f, 1, 0.5f);
        rotateAnimation.setDuration(2000L);
        rotateAnimation.setRepeatCount(-1);
        rotateAnimation.setInterpolator(new LinearInterpolator());
        imageView.startAnimation(rotateAnimation);
        if (!this.isWillFactory) {
            handleSure();
            return;
        }
        setCanceledOnTouchOutside(false);
        setCancelable(false);
        startFactory();
    }

    private void startFactory() throws Throwable {
        LogUtil.i(TAG, "startFactory() isFactorying:" + this.isFactorying);
        if (this.isFactorying) {
            return;
        }
        this.isFactorying = true;
        getContext().getApplicationContext().sendBroadcast(new Intent("com.yftech.action.factory"));
        SystemProperties.set("yf.factory", "1");
        new FactorySetting().factoryReset(getContext().getApplicationContext());
    }

    @Override // com.yftech.settings.widget.dialog.CommonDialog.OnBtnClickListener
    public void onCancelClick() {
        dismiss();
    }

    @Override // com.yftech.settings.widget.dialog.CommonDialog, com.yftech.settings.widget.dialog.BaseDialog, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().setType(2055);
        this.isWillFactory = false;
        this.isFactorying = false;
        setCustomDismiss(true);
        setOnBtnClickListener(this);
        setButtonText(getContext().getApplicationContext().getString(R.string.dialog_button_backup), getContext().getApplicationContext().getString(R.string.dialog_button_cancel)).setContent(getContext().getApplicationContext().getString(R.string.dialog_restore_factory_tip_backup));
    }

    @Override // com.yftech.settings.widget.dialog.CommonDialog.OnBtnClickListener
    public void onIconClick() {
    }

    @Override // com.yftech.settings.widget.dialog.CommonDialog.OnBtnClickListener
    public void onSureClick() throws Throwable {
        if (!this.isWillFactory) {
            handleSure();
            return;
        }
        setCanceledOnTouchOutside(false);
        setCancelable(false);
        startFactory();
    }
}
