package com.yftech.settings.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import com.yftech.settings.CommonConstant;
import com.yftech.settings.R;
import com.yftech.settings.utils.LogUtil;
import com.yftech.vehicle.internal.adapter.ICarDoor;
import com.yftech.vehicle.internal.adapter.ICarLight;

/* JADX INFO: loaded from: classes.dex */
public class OneClickPhoneNumberSettingView extends MultiSelectView implements KeyboardNumView.OnInputChangeListener {
    private KeyboardNumView keyboardNum;
    private String phoneNumber;

    public OneClickPhoneNumberSettingView(Context context) {
        super(context);
    }

    public OneClickPhoneNumberSettingView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public OneClickPhoneNumberSettingView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPhoneNumber() {
        if (TextUtils.isEmpty(this.phoneNumber)) {
            this.tvValue.setText(R.string.parts_item_tip_please_input_phone_number);
            this.tvValue.setTextColor(Color.argb(70, 255, 255, 255));
        } else {
            this.tvValue.setText(this.phoneNumber);
            this.tvValue.setTextColor(Color.rgb(ICarLight.TOPLIGHT_SETTING, ICarDoor.TAIL_DOOR_MODE, 9));
        }
        LogUtil.i("OneClickPhoneNumberSettingView", "setPhoneNumber:" + this.phoneNumber);
        Settings.Global.putString(getContext().getApplicationContext().getContentResolver(), CommonConstant.SETTING_PHONE_NUMBER_KEY, this.phoneNumber);
    }

    @Override // com.yftech.settings.widget.KeyboardNumView.OnInputChangeListener
    public void addChar(String str) {
    }

    public String getTextValue() {
        return this.tvValue.getText().toString();
    }

    @Override // com.yftech.settings.widget.KeyboardNumView.OnInputChangeListener
    public void inputChanged(String str) {
        this.phoneNumber = str;
    }

    public void setTextColor(int i) {
        this.tvValue.setTextColor(i);
    }

    public void setTextColor(ColorStateList colorStateList) {
        this.tvValue.setTextColor(colorStateList);
    }

    public void setTextValue(String str) {
        this.tvValue.setText(str);
    }

    @Override // com.yftech.settings.widget.MultiSelectView
    protected View setUpView(Context context) {
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.dialog_keyboard, (ViewGroup) null);
        this.keyboardNum = (KeyboardNumView) viewInflate.findViewById(R.id.key_board);
        this.keyboardNum.setOnInputChangeListener(this);
        ((Button) viewInflate.findViewById(R.id.btn_sure)).setOnClickListener(new View.OnClickListener() { // from class: com.yftech.settings.widget.OneClickPhoneNumberSettingView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                OneClickPhoneNumberSettingView.this.setPhoneNumber();
                OneClickPhoneNumberSettingView.this.hidePopupWindow();
            }
        });
        ((Button) viewInflate.findViewById(R.id.btn_cancel)).setOnClickListener(new View.OnClickListener() { // from class: com.yftech.settings.widget.OneClickPhoneNumberSettingView.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                OneClickPhoneNumberSettingView.this.hidePopupWindow();
            }
        });
        viewInflate.setFocusable(true);
        viewInflate.setFocusableInTouchMode(true);
        viewInflate.requestFocus();
        viewInflate.setOnKeyListener(new View.OnKeyListener() { // from class: com.yftech.settings.widget.OneClickPhoneNumberSettingView.3
            @Override // android.view.View.OnKeyListener
            public boolean onKey(View view, int i, KeyEvent keyEvent) {
                if (i != 4) {
                    return false;
                }
                OneClickPhoneNumberSettingView.this.hidePopupWindow();
                return true;
            }
        });
        return viewInflate;
    }

    public void show() {
        showPopupWindow();
    }
}
