package com.yftech.settings.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.yftech.settings.R;
import com.yftech.settings.utils.LogUtil;
import com.yftech.vehicle.internal.adapter.CarMoto;
import com.yftech.vehicle.internal.adapter.ICarParking;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class MultiSelectView extends LinearLayout {
    private static final String TAG = "SwitchMultiText";
    public Boolean isShown;
    private FixItemListView listView;
    private MultiSelectViewAdapter mMultiSelectViewAdapter;
    protected int mSelectedTab;
    private int mTabNum;
    protected String[] mTabTexts;
    private int mTextMaxWidth;
    private View mView;
    private WindowManager mWindowManager;
    protected OnSwitchListener onSwitchListener;
    protected TextView tvValue;

    public interface OnSwitchListener {
        void onSwitch(MultiSelectView multiSelectView, int i, String str, boolean z);
    }

    public MultiSelectView(Context context) {
        this(context, null);
    }

    public MultiSelectView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MultiSelectView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mTabTexts = new String[]{"L", "R"};
        this.mTabNum = this.mTabTexts.length;
        this.mTextMaxWidth = 0;
        this.isShown = false;
        this.mWindowManager = null;
        this.mView = null;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.MultiSelectView);
        this.mTextMaxWidth = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        typedArrayObtainStyledAttributes.recycle();
        inflateAndFindView(context);
    }

    private void inflateAndFindView(Context context) {
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.multi_select_view_text, this);
        this.tvValue = (TextView) viewInflate.findViewById(R.id.tvValue);
        viewInflate.findViewById(R.id.ivRight).setOnClickListener(new View.OnClickListener() { // from class: com.yftech.settings.widget.MultiSelectView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MultiSelectView.this.showPopupWindow();
            }
        });
        this.tvValue.setOnClickListener(new View.OnClickListener() { // from class: com.yftech.settings.widget.MultiSelectView.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MultiSelectView.this.showPopupWindow();
            }
        });
        if (this.mTextMaxWidth > 0) {
            this.tvValue.setMaxWidth(this.mTextMaxWidth);
        }
    }

    public void clearSelection() {
        this.mSelectedTab = -1;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        Log.i(TAG, "dispatchKeyEvent: ===============");
        return super.dispatchKeyEvent(keyEvent);
    }

    public int getSelectedTab() {
        return this.mSelectedTab;
    }

    public int getTabNum() {
        return this.mTabNum;
    }

    protected String getTabText(int i) {
        return (i <= 0 || i >= this.mTabTexts.length) ? "" : this.mTabTexts[this.mSelectedTab];
    }

    public void hide() {
        hidePopupWindow();
    }

    protected void hidePopupWindow() {
        LogUtil.i(TAG, "hide " + this.isShown + ", " + this.mView);
        if (!this.isShown.booleanValue() || this.mView == null) {
            return;
        }
        LogUtil.i(TAG, "hidePopupWindow");
        this.mWindowManager.removeView(this.mView);
        this.isShown = false;
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        if (i != 0) {
            hidePopupWindow();
        }
    }

    public MultiSelectView setOnSwitchListener(OnSwitchListener onSwitchListener) {
        this.onSwitchListener = onSwitchListener;
        return this;
    }

    public MultiSelectView setSelectedTab(int i) {
        this.mSelectedTab = i;
        updateView(i);
        if (this.onSwitchListener != null) {
            this.onSwitchListener.onSwitch(this, i, getTabText(i), false);
        }
        return this;
    }

    public MultiSelectView setText(String... strArr) {
        this.mTabTexts = strArr;
        this.mTabNum = strArr.length;
        return this;
    }

    protected View setUpView(Context context) {
        LogUtil.i(TAG, "setUp view");
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.multi_select_view_dialog, (ViewGroup) null);
        this.listView = (FixItemListView) viewInflate.findViewById(R.id.listview);
        this.mMultiSelectViewAdapter = new MultiSelectViewAdapter(getContext().getApplicationContext());
        this.listView.setAdapter((ListAdapter) this.mMultiSelectViewAdapter);
        this.mMultiSelectViewAdapter.updateAdapter(Arrays.asList(this.mTabTexts), this.mSelectedTab);
        this.listView.setFixItemCount(4);
        this.listView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.yftech.settings.widget.MultiSelectView.3
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                MultiSelectView.this.mSelectedTab = i;
                MultiSelectView.this.mMultiSelectViewAdapter.updateSelected(MultiSelectView.this.mSelectedTab);
            }
        });
        ((Button) viewInflate.findViewById(R.id.btnSure)).setOnClickListener(new View.OnClickListener() { // from class: com.yftech.settings.widget.MultiSelectView.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                LogUtil.i(MultiSelectView.TAG, "ok on click");
                MultiSelectView.this.updateView(MultiSelectView.this.mSelectedTab);
                if (MultiSelectView.this.onSwitchListener != null) {
                    MultiSelectView.this.onSwitchListener.onSwitch(MultiSelectView.this, MultiSelectView.this.mSelectedTab, MultiSelectView.this.getTabText(MultiSelectView.this.mSelectedTab), true);
                }
                MultiSelectView.this.hidePopupWindow();
            }
        });
        viewInflate.setFocusable(true);
        viewInflate.setFocusableInTouchMode(true);
        viewInflate.requestFocus();
        viewInflate.setOnKeyListener(new View.OnKeyListener() { // from class: com.yftech.settings.widget.MultiSelectView.5
            @Override // android.view.View.OnKeyListener
            public boolean onKey(View view, int i, KeyEvent keyEvent) {
                if (i != 4) {
                    return false;
                }
                MultiSelectView.this.hidePopupWindow();
                return true;
            }
        });
        return viewInflate;
    }

    protected void showPopupWindow() {
        LogUtil.i(TAG, "showDialog");
        if (this.isShown.booleanValue()) {
            LogUtil.i(TAG, "return cause already shown");
            return;
        }
        this.isShown = true;
        LogUtil.i(TAG, "showPopupWindow");
        this.mWindowManager = (WindowManager) getContext().getSystemService("window");
        this.mView = setUpView(getContext());
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        layoutParams.type = 2;
        layoutParams.flags = 131072;
        layoutParams.format = -3;
        layoutParams.width = 1780;
        layoutParams.height = CarMoto.MOTO_GEARS_LEVEL_INFO;
        layoutParams.x = ICarParking.PAS_DISTANCE_FLSide;
        layoutParams.y = 80;
        layoutParams.gravity = 17;
        this.mWindowManager.addView(this.mView, layoutParams);
        LogUtil.i(TAG, "add view");
    }

    protected void updateView(int i) {
        if (this.tvValue != null) {
            String str = "";
            if (i >= 0 && i < this.mTabTexts.length) {
                str = this.mTabTexts[i];
            }
            this.tvValue.setText(str);
        }
    }
}
