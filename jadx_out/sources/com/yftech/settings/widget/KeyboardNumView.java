package com.yftech.settings.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Color;
import android.os.SystemClock;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Toast;
import com.yftech.settings.CommonConstant;
import com.yftech.settings.R;
import com.yftech.vehicle.internal.adapter.ICarLight;

/* JADX INFO: loaded from: classes.dex */
public class KeyboardNumView extends LinearLayout implements View.OnClickListener, View.OnLongClickListener {
    private static final String[][] NUMBER_KEY = {new String[]{"1", "2", "3", "*"}, new String[]{"4", "5", "6", "#"}, new String[]{"7", "8", "9", "0"}};
    private final String ZERO;
    private boolean clickable;
    private int dividerValue;
    protected EditText editText;
    private ImageView imgDel;
    private int inputHeight;
    private int keyHeight;
    private float keyTextSize;
    private long lastClickTime;
    private Context mContext;
    private final String mKeyDel;
    private int maginValue;
    OnInputChangeListener onInputChangeListener;
    private StringBuilder realValue;

    public interface OnInputChangeListener {
        void addChar(String str);

        void inputChanged(String str);
    }

    public KeyboardNumView(Context context) {
        this(context, null);
    }

    public KeyboardNumView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public KeyboardNumView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.keyHeight = 92;
        this.keyTextSize = 40.0f;
        this.mKeyDel = "del";
        this.ZERO = "0";
        this.realValue = new StringBuilder();
        this.clickable = true;
        this.mContext = context;
        initView(context);
    }

    private void addChar(String str) {
        if (this.editText != null) {
            this.editText.getText().insert(this.editText.getSelectionStart(), str);
        }
        updateRealValue();
        if (this.onInputChangeListener != null) {
            this.onInputChangeListener.addChar(str);
            this.onInputChangeListener.inputChanged(this.realValue.toString());
        }
    }

    private void delete() {
        int selectionStart;
        if (this.editText != null && (selectionStart = this.editText.getSelectionStart()) > 0) {
            this.editText.getText().delete(selectionStart - 1, selectionStart);
        }
        updateRealValue();
        if (this.onInputChangeListener != null) {
            this.onInputChangeListener.inputChanged(this.realValue.toString());
        }
    }

    @SuppressLint({"ClickableViewAccessibility"})
    private void drawEdittextDeleteImg(Context context) {
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(0);
        linearLayout.setGravity(16);
        linearLayout.setPadding(20, 0, 20, 0);
        linearLayout.setBackgroundResource(R.mipmap.btp_bg_enterboard);
        this.editText = (EditText) LayoutInflater.from(context).inflate(R.layout.layout_edit, (ViewGroup) null).findViewById(R.id.edit);
        this.editText.setTextSize(36.0f);
        this.editText.setTextColor(-1);
        this.editText.setMaxLines(1);
        this.editText.setSingleLine();
        this.editText.setIncludeFontPadding(false);
        this.editText.setBackgroundColor(0);
        this.editText.setGravity(16);
        String string = Settings.Global.getString(getContext().getApplicationContext().getContentResolver(), CommonConstant.SETTING_PHONE_NUMBER_KEY);
        if (TextUtils.isEmpty(string)) {
            Toast.makeText(context, context.getResources().getString(R.string.input_tip), 1).show();
        } else {
            this.editText.setText(string);
            this.editText.setSelection(string.length());
        }
        this.editText.setHintTextColor(Color.parseColor("#26ccddff"));
        this.editText.setCursorVisible(true);
        this.editText.setFocusable(true);
        this.editText.requestFocus();
        this.editText.setOnTouchListener(new View.OnTouchListener() { // from class: com.yftech.settings.widget.KeyboardNumView.1
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        });
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 16;
        layoutParams.weight = 1.0f;
        this.editText.setLayoutParams(layoutParams);
        this.imgDel = new ImageView(context);
        if (TextUtils.isEmpty(string)) {
            this.imgDel.setBackgroundResource(R.drawable.phone_number_setting_ic_keyboard_del_s);
        } else {
            this.imgDel.setBackgroundResource(R.mipmap.btp_icon_delete_sel);
        }
        this.imgDel.setTag("del");
        this.imgDel.setVisibility(0);
        this.imgDel.setOnClickListener(this);
        this.imgDel.setOnLongClickListener(this);
        linearLayout.addView(this.editText);
        linearLayout.addView(this.imgDel);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.topMargin = 10;
        addView(linearLayout, layoutParams2);
    }

    @SuppressLint({"ClickableViewAccessibility"})
    private void initKeyCodeNormal(Context context) {
        removeAllViews();
        setOrientation(1);
        drawEdittextDeleteImg(context);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        linearLayout.setBackgroundResource(R.mipmap.btp_pic_keyboard);
        addView(linearLayout);
        for (int i = 0; i < NUMBER_KEY.length; i++) {
            LinearLayout linearLayout2 = new LinearLayout(context);
            linearLayout2.setOrientation(0);
            linearLayout2.setGravity(16);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
            if (i == 0) {
                layoutParams.topMargin = 7;
            } else {
                layoutParams.topMargin = 20;
            }
            linearLayout2.setLayoutParams(layoutParams);
            for (int i2 = 0; i2 < NUMBER_KEY[i].length; i2++) {
                LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(this.keyHeight, this.keyHeight);
                if (i2 == 0) {
                    layoutParams2.leftMargin = 9;
                } else {
                    layoutParams2.leftMargin = 6;
                }
                Button button = new Button(context);
                button.setIncludeFontPadding(false);
                button.setLayoutParams(layoutParams2);
                button.setTextColor(-16711936);
                button.setTextSize(this.keyTextSize);
                button.setGravity(17);
                button.setBackgroundResource(R.drawable.phone_number_setting_ic_keyboard_btn_s);
                button.setTag(NUMBER_KEY[i][i2].substring(0, 1));
                button.setOnClickListener(this);
                button.setOnLongClickListener(this);
                linearLayout2.addView(button);
            }
            linearLayout.addView(linearLayout2);
        }
    }

    private void initView(Context context) {
        initKeyCodeNormal(context);
    }

    private void updateRealValue() {
        if (this.editText != null) {
            String string = this.editText.getText().toString();
            this.realValue.setLength(0);
            this.realValue.append(string);
        }
        if (this.realValue.length() > 0) {
            this.imgDel.setBackgroundResource(R.mipmap.btp_icon_delete_sel);
        } else {
            this.imgDel.setBackgroundResource(R.mipmap.btp__icon_delete_dis);
        }
    }

    public void deleteAll() {
        if (this.editText != null) {
            this.editText.setText("");
        }
        updateRealValue();
        if (this.onInputChangeListener != null) {
            this.onInputChangeListener.inputChanged(this.realValue.toString());
        }
    }

    public EditText getEditText() {
        return this.editText;
    }

    public String getRealValue() {
        return this.realValue.toString();
    }

    public boolean isFastClick() {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        boolean z = jElapsedRealtime - this.lastClickTime >= ((long) ICarLight.ILBC_SETTING);
        this.lastClickTime = jElapsedRealtime;
        return z;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.clickable) {
            String str = (String) view.getTag();
            if (TextUtils.isEmpty(str)) {
                return;
            }
            if ("del".equals(str)) {
                delete();
            } else {
                addChar(str);
            }
        }
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        String string = view.getTag().toString();
        if ("del".equals(string)) {
            deleteAll();
            return true;
        }
        if (!"0".equals(string)) {
            return true;
        }
        addChar("+");
        return true;
    }

    public void requestFocusEdit() {
        if (this.editText != null) {
            this.editText.requestFocus();
        }
    }

    public void requestFocusEx() {
        if (this.editText != null) {
            this.editText.requestFocus();
        }
    }

    @Override // android.view.View
    public void setClickable(boolean z) {
        this.clickable = z;
    }

    public void setOnInputChangeListener(OnInputChangeListener onInputChangeListener) {
        this.onInputChangeListener = onInputChangeListener;
    }
}
