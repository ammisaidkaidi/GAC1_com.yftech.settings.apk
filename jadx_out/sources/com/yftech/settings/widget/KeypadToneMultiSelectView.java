package com.yftech.settings.widget;

import android.content.Context;
import android.media.AudioAttributes;
import android.media.SoundPool;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.yftech.settings.R;

/* JADX INFO: loaded from: classes.dex */
public class KeypadToneMultiSelectView extends MultiSelectView implements View.OnTouchListener {
    private static final String[] KEY_TONE = {"contemporary.ogg", "classical.ogg"};
    private static final String PATH_KEY_TONE = "/system/media/audio/ui/";
    private static final String TAG = "KeypadToneMultiSelectView";
    private static int soundID;
    private static SoundPool soundPool;
    private LinearLayout mContentViews;
    private int viewCount;

    public KeypadToneMultiSelectView(Context context) {
        super(context);
    }

    public KeypadToneMultiSelectView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public KeypadToneMultiSelectView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    private void playKeypadTone(int i) {
        if (i < KEY_TONE.length) {
            String str = PATH_KEY_TONE + KEY_TONE[i];
            if (soundPool == null) {
                if (Build.VERSION.SDK_INT >= 21) {
                    soundPool = new SoundPool.Builder().setMaxStreams(10).setAudioAttributes(new AudioAttributes.Builder().setUsage(13).setContentType(4).build()).build();
                } else {
                    soundPool = new SoundPool(10, 1, 1);
                }
            }
            soundID = soundPool.load(str, 1);
            soundPool.setOnLoadCompleteListener(new SoundPool.OnLoadCompleteListener() { // from class: com.yftech.settings.widget.KeypadToneMultiSelectView.3
                @Override // android.media.SoundPool.OnLoadCompleteListener
                public void onLoadComplete(SoundPool soundPool2, int i2, int i3) {
                    soundPool2.play(KeypadToneMultiSelectView.soundID, 0.6f, 0.6f, 1, 0, 1.0f);
                }
            });
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
                playKeypadTone(this.mSelectedTab);
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
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.multi_select_view_dialog_keypad_tone, (ViewGroup) null);
        this.mContentViews = (LinearLayout) viewInflate.findViewById(R.id.dialog_content);
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
                viewInflate.setOnKeyListener(new View.OnKeyListener() { // from class: com.yftech.settings.widget.KeypadToneMultiSelectView.1
                    @Override // android.view.View.OnKeyListener
                    public boolean onKey(View view, int i4, KeyEvent keyEvent) {
                        if (i4 != 4) {
                            return false;
                        }
                        KeypadToneMultiSelectView.this.hidePopupWindow();
                        return true;
                    }
                });
                ((Button) viewInflate.findViewById(R.id.btnSure)).setOnClickListener(new View.OnClickListener() { // from class: com.yftech.settings.widget.KeypadToneMultiSelectView.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        if (KeypadToneMultiSelectView.this.onSwitchListener != null) {
                            KeypadToneMultiSelectView.this.onSwitchListener.onSwitch(KeypadToneMultiSelectView.this, KeypadToneMultiSelectView.this.mSelectedTab, KeypadToneMultiSelectView.this.getTabText(KeypadToneMultiSelectView.this.mSelectedTab), true);
                        }
                        KeypadToneMultiSelectView.this.updateView(KeypadToneMultiSelectView.this.mSelectedTab);
                        KeypadToneMultiSelectView.this.hidePopupWindow();
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
