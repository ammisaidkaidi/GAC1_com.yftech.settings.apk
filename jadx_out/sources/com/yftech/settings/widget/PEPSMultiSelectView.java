package com.yftech.settings.widget;

import android.content.Context;
import android.media.AudioManager;
import android.media.SoundPool;
import android.provider.Settings;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.yftech.settings.R;

/* JADX INFO: loaded from: classes.dex */
public class PEPSMultiSelectView extends MultiSelectView implements View.OnTouchListener {
    private static final String TAG = "PEPSMultiSelectView";
    private static int soundID;
    private static SoundPool soundPool;
    private LinearLayout mContentViews;
    private LinearLayout optionView;
    private int viewCount;

    public PEPSMultiSelectView(Context context) {
        super(context);
    }

    public PEPSMultiSelectView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public PEPSMultiSelectView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    private void playKeySoundEffect() {
        if (Settings.System.getInt(getContext().getApplicationContext().getContentResolver(), "sound_effects_enabled", 0) == 1) {
            ((AudioManager) getContext().getSystemService("audio")).playSoundEffect(0);
        }
    }

    private void updateOptionView(View view) {
        int i = 10;
        for (int i2 = 0; i2 < this.viewCount; i2++) {
            View viewFindViewWithTag = this.mContentViews.findViewWithTag(Integer.valueOf(i));
            View viewFindViewWithTag2 = viewFindViewWithTag.findViewWithTag(Integer.valueOf(i2));
            if (viewFindViewWithTag2.getTag() == view.getTag()) {
                viewFindViewWithTag2.setBackgroundResource(R.drawable.shape_multi_select_view_item_bg_s);
                ((ImageView) viewFindViewWithTag.findViewById(R.id.ivChoose)).setImageResource(R.mipmap.icon_choice);
            } else {
                viewFindViewWithTag2.setBackgroundResource(R.color.transparent);
                ((ImageView) viewFindViewWithTag.findViewById(R.id.ivChoose)).setImageResource(R.mipmap.icon_unchecked);
            }
            i++;
        }
    }

    @Override // com.yftech.settings.widget.MultiSelectView
    protected void hidePopupWindow() {
        super.hidePopupWindow();
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        this.mSelectedTab = ((Integer) view.getTag()).intValue();
        switch (motionEvent.getAction()) {
            case 0:
                return true;
            case 1:
                updateOptionView(view);
                if (this.onSwitchListener != null) {
                    this.onSwitchListener.onSwitch(this, this.mSelectedTab, getTabText(this.mSelectedTab), true);
                }
                this.optionView.setVisibility(8);
                playKeySoundEffect();
                Log.i(TAG, "onTouch: up");
                return false;
            case 2:
                if (this.mSelectedTab == 0) {
                    view.setBackgroundResource(R.drawable.shape_keypad_tone_multi_select_view_item_top_p);
                } else {
                    view.setBackgroundResource(R.drawable.shape_keypad_tone_multi_select_view_item_bg_p);
                }
                Log.i(TAG, "onTouch: move");
                return false;
            default:
                return false;
        }
    }

    @Override // com.yftech.settings.widget.MultiSelectView
    protected View setUpView(Context context) {
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.peps_multi_select_view_dialog, (ViewGroup) null);
        this.mContentViews = (LinearLayout) viewInflate.findViewById(R.id.dialog_content);
        this.optionView = (LinearLayout) viewInflate.findViewById(R.id.option_view);
        this.viewCount = this.mTabTexts.length;
        String[] strArr = this.mTabTexts;
        int length = strArr.length;
        int i = 0;
        int i2 = 10;
        int i3 = 0;
        while (true) {
            if (i3 >= length) {
                viewInflate.setFocusable(true);
                viewInflate.setFocusableInTouchMode(true);
                viewInflate.requestFocus();
                viewInflate.setOnKeyListener(new View.OnKeyListener() { // from class: com.yftech.settings.widget.PEPSMultiSelectView.1
                    @Override // android.view.View.OnKeyListener
                    public boolean onKey(View view, int i4, KeyEvent keyEvent) {
                        if (i4 != 4) {
                            return false;
                        }
                        PEPSMultiSelectView.this.hidePopupWindow();
                        return true;
                    }
                });
                return viewInflate;
            }
            String str = strArr[i3];
            View viewInflate2 = LayoutInflater.from(context).inflate(R.layout.multi_select_view_item, (ViewGroup) null);
            viewInflate2.setTag(Integer.valueOf(i2));
            ((TextView) viewInflate2.findViewById(R.id.tvName)).setText(str);
            RelativeLayout relativeLayout = (RelativeLayout) viewInflate2.findViewById(R.id.layout);
            relativeLayout.setOnTouchListener(this);
            relativeLayout.setTag(Integer.valueOf(i));
            ((ImageView) viewInflate2.findViewById(R.id.ivChoose)).setImageResource(((Integer) relativeLayout.getTag()).intValue() == this.mSelectedTab ? R.mipmap.icon_choice : R.mipmap.icon_unchecked);
            this.mContentViews.addView(viewInflate2);
            i++;
            i2++;
            i3++;
        }
    }
}
