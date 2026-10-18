package com.yftech.settings.widget.dialog;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import com.yftech.settings.R;

/* JADX INFO: loaded from: classes.dex */
public class RearViewTipDialog extends BaseDialog {
    private Button btn_cancel;
    private Button btn_sure;
    private boolean mIsCustomDismiss;
    private OnBtnClickListener mOnBtnClickListener;

    public interface OnBtnClickListener {
        void onCancelClick();

        void onIconClick();

        void onSureClick();
    }

    public RearViewTipDialog(Context context, OnBtnClickListener onBtnClickListener) {
        super(context, R.style.dialog_normal);
        this.mOnBtnClickListener = onBtnClickListener;
    }

    @Override // com.yftech.settings.widget.dialog.BaseDialog, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_rear_view_tip);
        this.btn_sure = (Button) findViewById(R.id.btn_sure);
        this.btn_cancel = (Button) findViewById(R.id.btn_cancel);
        this.btn_sure.setOnClickListener(new View.OnClickListener() { // from class: com.yftech.settings.widget.dialog.RearViewTipDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (RearViewTipDialog.this.mOnBtnClickListener != null) {
                    RearViewTipDialog.this.mOnBtnClickListener.onSureClick();
                }
                if (RearViewTipDialog.this.mIsCustomDismiss) {
                    return;
                }
                RearViewTipDialog.this.dismiss();
            }
        });
        this.btn_cancel.setOnClickListener(new View.OnClickListener() { // from class: com.yftech.settings.widget.dialog.RearViewTipDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (RearViewTipDialog.this.mOnBtnClickListener != null) {
                    RearViewTipDialog.this.mOnBtnClickListener.onCancelClick();
                }
                if (RearViewTipDialog.this.mIsCustomDismiss) {
                    return;
                }
                RearViewTipDialog.this.dismiss();
            }
        });
    }

    public void setCustomDismiss(boolean z) {
        this.mIsCustomDismiss = z;
    }
}
