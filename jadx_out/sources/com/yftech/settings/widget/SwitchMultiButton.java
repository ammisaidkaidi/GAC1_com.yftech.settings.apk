package com.yftech.settings.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.NinePatch;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.media.AudioManager;
import android.provider.Settings;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import com.yftech.settings.R;
import com.yftech.settings.utils.LogUtil;
import com.yftech.vehicle.internal.adapter.ICarLight;

/* JADX INFO: loaded from: classes.dex */
public class SwitchMultiButton extends View {
    private static final int BG_COLOR = -11578534;
    private static final int DISABLE_COLOR = -3355444;
    private static final int ENABLE_COLOR = -1;
    private static final String FONTS_DIR = "fonts/";
    private static final int SELECTED_COLOR = -10525324;
    private static final int SELECTED_TAB = -1;
    private static final int SELECTED_TEXT_COLOR = -1;
    private static final float STROKE_RADIUS = 0.0f;
    private static final String TAG = "SwitchMultiButton";
    private static final float TEXT_SIZE = 14.0f;
    private static final int UNSELECTED_TEXT_COLOR = -1275068417;
    private int mBgColor;
    private int mBgResource;
    private int mDisableColor;
    private boolean mEnable;
    private Paint mFillPaint;
    private Paint.FontMetrics mFontMetrics;
    private int mHeight;
    private float mPaddingText;
    private NinePatch mSelectedBgNinePatch;
    private int mSelectedBgResource;
    private int mSelectedColor;
    private int mSelectedTab;
    private int mSelectedTextColor;
    private TextPaint mSelectedTextPaint;
    private Typeface mSelectedTypeface;
    private Paint mStrokePaint;
    private float mStrokeRadius;
    private int mTabNum;
    private String[] mTabTexts;
    private int mTabWidth;
    private float mTextHeightOffset;
    private float mTextSize;
    private int mUnSelectedTextColor;
    private Typeface mUnSelectedTypeface;
    private TextPaint mUnselectedTextPaint;
    private int mWidth;
    private float maxTabWidth;
    private OnSwitchListener onSwitchListener;
    private boolean playSoundEffect;

    public interface OnSwitchListener {
        void onSwitch(SwitchMultiButton switchMultiButton, int i, String str, boolean z);
    }

    public SwitchMultiButton(Context context) {
        this(context, null);
    }

    public SwitchMultiButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SwitchMultiButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mTabTexts = new String[]{"L", "R"};
        this.mTabNum = this.mTabTexts.length;
        this.mEnable = true;
        this.playSoundEffect = true;
        this.mTabWidth = ICarLight.ILBC_SETTING;
        initAttrs(context, attributeSet);
        initPaint();
    }

    private void checkAttrs() {
        if (this.mStrokeRadius > this.mHeight * 0.5f) {
            this.mStrokeRadius = this.mHeight * 0.5f;
        }
    }

    private int getDefaultHeight() {
        return ((int) (this.mFontMetrics.bottom - this.mFontMetrics.top)) + getPaddingTop() + getPaddingBottom();
    }

    private int getDefaultWidth() {
        int length = this.mTabTexts.length;
        float fMeasureText = 0.0f;
        for (int i = 0; i < length; i++) {
            fMeasureText += this.mSelectedTextPaint.measureText(this.mTabTexts[i]);
        }
        float f = fMeasureText + (this.mPaddingText * length * 2.0f);
        if (f > this.maxTabWidth) {
            f = this.maxTabWidth;
        }
        return (int) f;
    }

    private int getExpectSize(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        if (mode != Integer.MIN_VALUE) {
            return (mode == 0 || mode != 1073741824) ? i : size;
        }
        return Math.min(i, size);
    }

    private String getTabText(int i) {
        return (i <= 0 || i >= this.mTabTexts.length) ? "" : this.mTabTexts[this.mSelectedTab];
    }

    private float getTextWidth(float f) {
        if (f < 120.0f) {
            return 120.0f;
        }
        return f;
    }

    private void initAttrs(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SwitchMultiButton);
        this.mStrokeRadius = typedArrayObtainStyledAttributes.getDimension(10, 0.0f);
        this.mTextSize = typedArrayObtainStyledAttributes.getDimension(13, TEXT_SIZE);
        this.mSelectedColor = typedArrayObtainStyledAttributes.getColor(6, SELECTED_COLOR);
        this.mBgColor = typedArrayObtainStyledAttributes.getColor(1, BG_COLOR);
        this.mSelectedTextColor = typedArrayObtainStyledAttributes.getColor(8, -1);
        this.mUnSelectedTextColor = typedArrayObtainStyledAttributes.getColor(14, UNSELECTED_TEXT_COLOR);
        this.mDisableColor = typedArrayObtainStyledAttributes.getColor(2, DISABLE_COLOR);
        this.mSelectedTab = typedArrayObtainStyledAttributes.getInteger(7, -1);
        this.mBgResource = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        this.mPaddingText = typedArrayObtainStyledAttributes.getDimension(4, 30.0f);
        this.maxTabWidth = typedArrayObtainStyledAttributes.getDimension(3, 600.0f);
        this.mSelectedBgResource = typedArrayObtainStyledAttributes.getResourceId(5, 0);
        String string = typedArrayObtainStyledAttributes.getString(9);
        String string2 = typedArrayObtainStyledAttributes.getString(15);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(12, 0);
        if (resourceId != 0) {
            this.mTabTexts = getResources().getStringArray(resourceId);
            this.mTabNum = this.mTabTexts.length;
        }
        if (!TextUtils.isEmpty(string)) {
            this.mSelectedTypeface = Typeface.create(string, 0);
        }
        if (!TextUtils.isEmpty(string2)) {
            this.mUnSelectedTypeface = Typeface.create(string2, 0);
        }
        if (this.mSelectedBgResource != 0) {
            Bitmap bitmapDecodeResource = BitmapFactory.decodeResource(getResources(), this.mSelectedBgResource);
            this.mSelectedBgNinePatch = new NinePatch(bitmapDecodeResource, bitmapDecodeResource.getNinePatchChunk(), null);
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    private void initPaint() {
        this.mStrokePaint = new Paint();
        this.mStrokePaint.setColor(this.mBgColor);
        this.mStrokePaint.setStyle(Paint.Style.FILL_AND_STROKE);
        this.mStrokePaint.setAntiAlias(true);
        this.mFillPaint = new Paint();
        this.mFillPaint.setColor(this.mSelectedColor);
        this.mFillPaint.setStyle(Paint.Style.FILL_AND_STROKE);
        this.mFillPaint.setAntiAlias(true);
        this.mSelectedTextPaint = new TextPaint(1);
        this.mSelectedTextPaint.setTextSize(this.mTextSize);
        this.mSelectedTextPaint.setColor(this.mSelectedTextColor);
        if (this.mSelectedTypeface != null) {
            this.mSelectedTextPaint.setTypeface(this.mSelectedTypeface);
        }
        this.mSelectedTextPaint.setAntiAlias(true);
        this.mUnselectedTextPaint = new TextPaint(1);
        this.mUnselectedTextPaint.setTextSize(this.mTextSize);
        this.mUnselectedTextPaint.setColor(this.mUnSelectedTextColor);
        if (this.mUnSelectedTypeface != null) {
            this.mUnselectedTextPaint.setTypeface(this.mUnSelectedTypeface);
        }
        this.mUnselectedTextPaint.setAntiAlias(true);
        this.mTextHeightOffset = (-(this.mSelectedTextPaint.ascent() + this.mSelectedTextPaint.descent())) * 0.5f;
        this.mFontMetrics = this.mSelectedTextPaint.getFontMetrics();
    }

    private void playKeySoundEffect() {
        if (Settings.System.getInt(getContext().getApplicationContext().getContentResolver(), "sound_effects_enabled", 0) == 1) {
            ((AudioManager) getContext().getApplicationContext().getSystemService("audio")).playSoundEffect(0);
        }
    }

    public void clearSelection() {
        this.mSelectedTab = -1;
        invalidate();
    }

    public int getSelectedTab() {
        return this.mSelectedTab;
    }

    public int getTabNum() {
        return this.mTabNum;
    }

    @Override // android.view.View
    public boolean isEnabled() {
        return this.mEnable;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.mEnable) {
            this.mStrokePaint.setColor(this.mBgColor);
            this.mFillPaint.setColor(this.mSelectedColor);
        } else {
            this.mStrokePaint.setColor(this.mDisableColor);
            this.mFillPaint.setColor(this.mDisableColor);
            this.mSelectedTextPaint.setColor(-1);
        }
        float f = this.mWidth;
        float f2 = this.mHeight;
        if (this.mBgResource != 0) {
            setBackgroundResource(this.mBgResource);
        } else {
            canvas.drawRoundRect(new RectF(0.0f, 0.0f, f, f2), this.mStrokeRadius, this.mStrokeRadius, this.mStrokePaint);
        }
        for (int i = 0; i < this.mTabNum; i++) {
            String str = this.mTabTexts[i];
            float fMeasureText = this.mSelectedTextPaint.measureText(str);
            float f3 = this.mTabWidth * i;
            float f4 = this.mTabWidth + f3;
            if (i == this.mSelectedTab) {
                if (this.mSelectedBgNinePatch != null) {
                    this.mSelectedBgNinePatch.draw(canvas, new RectF(f3, 0.0f, f4, f2));
                } else {
                    canvas.drawRoundRect(new RectF(f3, 0.0f, f4, f2), this.mStrokeRadius, this.mStrokeRadius, this.mFillPaint);
                }
                canvas.drawText(str, f3 + (((f4 - f3) - fMeasureText) / 2.0f), (this.mHeight * 0.5f) + this.mTextHeightOffset, this.mSelectedTextPaint);
            } else {
                canvas.drawText(str, f3 + (((f4 - f3) - fMeasureText) / 2.0f), (this.mHeight * 0.5f) + this.mTextHeightOffset, this.mSelectedTextPaint);
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(getExpectSize(getDefaultWidth(), i), getExpectSize(getDefaultHeight(), i2));
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.mWidth = getMeasuredWidth();
        this.mHeight = getMeasuredHeight();
        checkAttrs();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.mEnable && motionEvent.getAction() == 1) {
            if (this.playSoundEffect) {
                playKeySoundEffect();
            }
            int x = (int) (motionEvent.getX() / this.mTabWidth);
            if (x >= this.mTabTexts.length) {
                LogUtil.i(TAG, "selectedTab array index out of bounds");
                return true;
            }
            if (this.mSelectedTab == x) {
                LogUtil.i(TAG, "selectedTab same");
                return true;
            }
            this.mSelectedTab = x;
            if (this.onSwitchListener != null) {
                this.onSwitchListener.onSwitch(this, x, this.mTabTexts[x], true);
            }
            invalidate();
        }
        return true;
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        if (z == isEnabled()) {
            return;
        }
        this.mEnable = z;
        invalidate();
    }

    public SwitchMultiButton setOnSwitchListener(OnSwitchListener onSwitchListener) {
        this.onSwitchListener = onSwitchListener;
        return this;
    }

    public void setPaddingText(int i) {
        this.mPaddingText = i;
        invalidate();
    }

    public void setPlaySoundEffect(boolean z) {
        this.playSoundEffect = z;
    }

    public SwitchMultiButton setSelectedTab(int i) {
        this.mSelectedTab = i;
        invalidate();
        if (this.onSwitchListener != null) {
            this.onSwitchListener.onSwitch(this, i, getTabText(i), false);
        }
        return this;
    }

    public SwitchMultiButton setText(String... strArr) {
        this.mTabTexts = strArr;
        this.mTabNum = strArr.length;
        requestLayout();
        return this;
    }
}
