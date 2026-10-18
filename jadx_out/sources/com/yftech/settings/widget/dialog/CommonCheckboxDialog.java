package com.yftech.settings.widget.dialog;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.TextView;
import com.yftech.settings.R;

/* JADX INFO: loaded from: classes.dex */
public class CommonCheckboxDialog extends BaseDialog {
    private Button btn_cancel;
    private Button btn_sure;
    private CheckBox checkBox;
    private View divider_vertical;
    private boolean mIsCustomDismiss;
    private OnBtnClickListener mOnBtnClickListener;
    private TextView tv_content;
    private TextView tv_title;

    public interface OnBtnClickListener {
        void onCancelClick();

        void onSureClick();
    }

    public CommonCheckboxDialog(Context context) {
        super(context, R.style.dialog_normal);
    }

    @Override // com.yftech.settings.widget.dialog.BaseDialog, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_common_checkbox);
        getWindow().setType(2056);
        setCanceledOnTouchOutside(false);
        setCancelable(false);
        this.btn_sure = (Button) findViewById(R.id.btn_sure);
        this.btn_cancel = (Button) findViewById(R.id.btn_cancel);
        this.divider_vertical = findViewById(R.id.divider_vertical);
        this.tv_title = (TextView) findViewById(R.id.tv_title);
        this.tv_content = (TextView) findViewById(R.id.tv_content);
        this.checkBox = (CheckBox) findViewById(R.id.checkbox);
        this.btn_sure.setOnClickListener(new View.OnClickListener() { // from class: com.yftech.settings.widget.dialog.CommonCheckboxDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (CommonCheckboxDialog.this.mOnBtnClickListener != null) {
                    CommonCheckboxDialog.this.mOnBtnClickListener.onSureClick();
                }
                if (CommonCheckboxDialog.this.mIsCustomDismiss) {
                    return;
                }
                CommonCheckboxDialog.this.dismiss();
            }
        });
        this.btn_cancel.setOnClickListener(new View.OnClickListener() { // from class: com.yftech.settings.widget.dialog.CommonCheckboxDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (CommonCheckboxDialog.this.mOnBtnClickListener != null) {
                    CommonCheckboxDialog.this.mOnBtnClickListener.onCancelClick();
                }
                if (CommonCheckboxDialog.this.mIsCustomDismiss) {
                    return;
                }
                CommonCheckboxDialog.this.dismiss();
            }
        });
        this.checkBox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.yftech.settings.widget.dialog.CommonCheckboxDialog.3
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                CommonCheckboxDialog.this.btn_sure.setEnabled(z);
                CommonCheckboxDialog.this.btn_sure.setSelected(z);
            }
        });
    }

    public CommonCheckboxDialog setButtonText(String... strArr) {
        if (strArr != null) {
            int length = strArr.length;
            if (length == 1) {
                this.btn_sure.setBackgroundResource(R.drawable.selector_dialog_one_btn_bg);
                this.btn_sure.setText(strArr[0]);
                this.btn_sure.setVisibility(0);
                this.divider_vertical.setVisibility(8);
                this.btn_cancel.setVisibility(8);
            } else if (length > 1) {
                this.btn_sure.setBackgroundResource(R.drawable.selector_dialog_left_btn_bg);
                this.btn_sure.setText(strArr[0]);
                this.btn_sure.setVisibility(0);
                this.divider_vertical.setVisibility(0);
                this.btn_cancel.setBackgroundResource(R.drawable.selector_dialog_right_btn_bg);
                this.btn_cancel.setText(strArr[1]);
                this.btn_cancel.setVisibility(0);
            }
        }
        return this;
    }

    public CommonCheckboxDialog setCancelEnabled(boolean z) {
        this.btn_cancel.setEnabled(z);
        return this;
    }

    public CommonCheckboxDialog setCancelSelected(boolean z) {
        this.btn_cancel.setSelected(z);
        return this;
    }

    public CommonCheckboxDialog setCheckBox(String str, boolean z) {
        this.checkBox.setText(str);
        this.checkBox.setChecked(z);
        this.btn_sure.setEnabled(z);
        this.btn_sure.setSelected(z);
        return this;
    }

    public CommonCheckboxDialog setContent(String str) {
        this.tv_content.setText(str);
        this.tv_content.setVisibility(!TextUtils.isEmpty(str) ? 0 : 8);
        return this;
    }

    public void setCustomDismiss(boolean z) {
        this.mIsCustomDismiss = z;
    }

    public CommonCheckboxDialog setOnBtnClickListener(OnBtnClickListener onBtnClickListener) {
        this.mOnBtnClickListener = onBtnClickListener;
        return this;
    }

    public CommonCheckboxDialog setSureEnabled(boolean z) {
        this.btn_sure.setEnabled(z);
        return this;
    }

    public CommonCheckboxDialog setSureSelected(boolean z) {
        this.btn_sure.setSelected(z);
        return this;
    }

    public CommonCheckboxDialog setTitle(String str) {
        this.tv_title.setText(str);
        this.tv_title.setVisibility(!TextUtils.isEmpty(str) ? 0 : 8);
        return this;
    }
}
