package com.yftech.settings.widget.dialog;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.view.Window;
import android.view.WindowManager;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.widget.ImageView;
import android.widget.TextView;
import com.yftech.settings.R;

/* JADX INFO: loaded from: classes.dex */
public class LoadingDialog extends Dialog {
    private String text;

    public LoadingDialog(Context context) {
        super(context, R.style.dialog_normal);
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_loading);
        Window window = getWindow();
        if (window != null) {
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.type = 2055;
            window.setAttributes(attributes);
        }
        ImageView imageView = (ImageView) findViewById(R.id.iv_recover_loading);
        if (this.text != null) {
            ((TextView) findViewById(R.id.content)).setText(this.text);
        }
        RotateAnimation rotateAnimation = new RotateAnimation(0.0f, 360.0f, 1, 0.5f, 1, 0.5f);
        rotateAnimation.setDuration(2000L);
        rotateAnimation.setRepeatCount(-1);
        rotateAnimation.setInterpolator(new LinearInterpolator());
        imageView.startAnimation(rotateAnimation);
        new Handler().postDelayed(new Runnable() { // from class: com.yftech.settings.widget.dialog.LoadingDialog.1
            @Override // java.lang.Runnable
            public void run() {
                LoadingDialog.this.dismiss();
            }
        }, 500L);
    }

    public void setTextViewContent(String str) {
        this.text = str;
    }
}
