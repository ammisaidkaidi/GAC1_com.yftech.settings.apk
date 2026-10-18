package com.yftech.settings.widget.dialog;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.Window;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.yftech.settings.R;

/* JADX INFO: loaded from: classes.dex */
public class CommonDialog extends BaseDialog {
    private Button btn_cancel;
    private Button btn_sure;
    private View divider_vertical;
    private ImageView iv_title_icon;
    private RelativeLayout layout_title_icon;
    private boolean mIsCustomDismiss;
    private OnBtnClickListener mOnBtnClickListener;
    private TextView tv_content;
    private TextView tv_title;
    private TextView tv_title_icon;

    public interface OnBtnClickListener {
        void onCancelClick();

        void onIconClick();

        void onSureClick();
    }

    public CommonDialog(Context context) {
        super(context, R.style.dialog_normal);
    }

    @Override // com.yftech.settings.widget.dialog.BaseDialog, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_common);
        getWindow().setType(2056);
        setCanceledOnTouchOutside(false);
        setCancelable(false);
        this.btn_sure = (Button) findViewById(R.id.btn_sure);
        this.btn_cancel = (Button) findViewById(R.id.btn_cancel);
        this.divider_vertical = findViewById(R.id.divider_vertical);
        this.tv_title = (TextView) findViewById(R.id.tv_title);
        this.layout_title_icon = (RelativeLayout) findViewById(R.id.layout_title_icon);
        this.tv_title_icon = (TextView) findViewById(R.id.tv_title_icon);
        this.iv_title_icon = (ImageView) findViewById(R.id.iv_title_icon);
        this.tv_content = (TextView) findViewById(R.id.tv_content);
        this.btn_sure.setOnClickListener(new View.OnClickListener() { // from class: com.yftech.settings.widget.dialog.CommonDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (CommonDialog.this.mOnBtnClickListener != null) {
                    CommonDialog.this.mOnBtnClickListener.onSureClick();
                }
                if (CommonDialog.this.mIsCustomDismiss) {
                    return;
                }
                CommonDialog.this.dismiss();
            }
        });
        this.btn_cancel.setOnClickListener(new View.OnClickListener() { // from class: com.yftech.settings.widget.dialog.CommonDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (CommonDialog.this.mOnBtnClickListener != null) {
                    CommonDialog.this.mOnBtnClickListener.onCancelClick();
                }
                if (CommonDialog.this.mIsCustomDismiss) {
                    return;
                }
                CommonDialog.this.dismiss();
            }
        });
        this.iv_title_icon.setOnClickListener(new View.OnClickListener() { // from class: com.yftech.settings.widget.dialog.CommonDialog.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (CommonDialog.this.mOnBtnClickListener != null) {
                    CommonDialog.this.mOnBtnClickListener.onIconClick();
                }
                if (CommonDialog.this.mIsCustomDismiss) {
                    return;
                }
                CommonDialog.this.dismiss();
            }
        });
    }

    public CommonDialog setButtonText(String... strArr) {
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

    public CommonDialog setCancelEnabled(boolean z) {
        this.btn_cancel.setEnabled(z);
        return this;
    }

    public CommonDialog setCancelSelected(boolean z) {
        this.btn_cancel.setSelected(z);
        return this;
    }

    public CommonDialog setContent(String str) {
        this.tv_content.setText(str);
        this.tv_content.setVisibility(!TextUtils.isEmpty(str) ? 0 : 8);
        return this;
    }

    public void setContentGravity(int i) {
        this.tv_content.setGravity(i);
    }

    public void setCustomDismiss(boolean z) {
        this.mIsCustomDismiss = z;
    }

    public void setDimAmount(float f) {
        Window window = getWindow();
        if (window != null) {
            window.setDimAmount(f);
        }
    }

    public CommonDialog setOnBtnClickListener(OnBtnClickListener onBtnClickListener) {
        this.mOnBtnClickListener = onBtnClickListener;
        return this;
    }

    public CommonDialog setSureEnabled(boolean z) {
        this.btn_sure.setEnabled(z);
        return this;
    }

    public CommonDialog setSureSelected(boolean z) {
        this.btn_sure.setSelected(z);
        return this;
    }

    public CommonDialog setTitle(String str) {
        this.layout_title_icon.setVisibility(8);
        this.tv_title.setText(str);
        this.tv_title.setVisibility(TextUtils.isEmpty(str) ? 8 : 0);
        return this;
    }

    public CommonDialog setTitleAndIcon(String str, int i) {
        this.tv_title.setVisibility(8);
        this.tv_title_icon.setText(str);
        this.iv_title_icon.setImageResource(i);
        this.layout_title_icon.setVisibility(0);
        return this;
    }
}
