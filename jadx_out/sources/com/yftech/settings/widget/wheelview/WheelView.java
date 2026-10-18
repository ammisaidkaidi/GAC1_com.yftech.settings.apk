package com.yftech.settings.widget.wheelview;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Handler;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import com.yftech.settings.R;
import com.yftech.settings.utils.Utils;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class WheelView extends View {
    public static final int SCROLL_HORIZONTAL = 1;
    public static final int SCROLL_VERTICAL = 0;
    private static final String TAG = "WheelView";
    public static final int WHEEL_CENTER = 354;
    public static final int WHEEL_LEFT = 234;
    public static final int WHEEL_RIGHT = 894;
    int change;
    Context context;
    private int currentItem;
    private GestureDetector gestureDetector;
    int halfCircumference;
    Handler handler;
    private int heightMeasureSpec;
    int initPosition;
    boolean isLoop;
    public float itemHeightCenter;
    public float itemHeightOuter;
    public float itemWidthCenter;
    public float itemWidthOuter;
    List<String> items;
    int itemsVisible;
    int lineColor;
    float lineSpaceingDimens;
    private int mBaselineCenterX;
    private int mBaselineCenterY;
    private int mBaselineOuterX;
    private int mBaselineOuterY;
    private float mBottom;
    ScheduledExecutorService mExecutor;
    int mFirstLineX;
    int mFirstLineY;
    private ScheduledFuture<?> mFuture;
    private float mLeft;
    private int mOffsetX;
    private int mOffsetY;
    private float mPreviousX;
    private float mPreviousY;
    private float mRight;
    private int mScrollOrientation;
    int mSecondLineX;
    int mSecondLineY;
    private float mTop;
    private int mWheelGravity;
    int maxTextHeight;
    int maxTextHeightCenter;
    int maxTextHeightOuter;
    int maxTextWidth;
    int maxTextWidthCenter;
    int maxTextWidthOuter;
    int measuredHeight;
    int measuredWidth;
    public int oldIndex;
    OnItemSelectedListener onItemSelectedListener;
    Paint paintCenterText;
    Paint paintIndicatorLine;
    Paint paintOuterText;
    int preCurrentIndex;
    int radius;
    private float scaleX;
    private int selectedItem;
    long startTime;
    private Rect tempRect;
    int textColorCenter;
    int textColorOuter;
    float textSizeCenter;
    float textSizeOuter;
    int totalScrollX;
    int totalScrollY;
    private int widthMeasureSpec;

    public enum ACTION {
        CLICK,
        FLING,
        DAGGLE
    }

    public interface OnItemSelectedListener {
        void onItemSelected(WheelView wheelView, int i, String str);
    }

    public WheelView(Context context) {
        super(context);
        this.oldIndex = -1;
        this.scaleX = 1.0f;
        this.widthMeasureSpec = 0;
        this.heightMeasureSpec = 0;
        this.mWheelGravity = 354;
        this.mScrollOrientation = 0;
        this.currentItem = 0;
        this.mExecutor = Executors.newSingleThreadScheduledExecutor();
        this.itemsVisible = 3;
        this.textSizeCenter = 80.0f;
        this.textSizeOuter = 70.0f;
        this.textColorOuter = -3355444;
        this.textColorCenter = -3355444;
        this.lineColor = 0;
        this.isLoop = false;
        this.totalScrollY = 0;
        this.totalScrollX = 0;
        this.initPosition = -1;
        this.mOffsetY = 0;
        this.mOffsetX = 0;
        this.startTime = 0L;
        this.tempRect = new Rect();
        initWheelView(context);
    }

    public WheelView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.oldIndex = -1;
        this.scaleX = 1.0f;
        this.widthMeasureSpec = 0;
        this.heightMeasureSpec = 0;
        this.mWheelGravity = 354;
        this.mScrollOrientation = 0;
        this.currentItem = 0;
        this.mExecutor = Executors.newSingleThreadScheduledExecutor();
        this.itemsVisible = 3;
        this.textSizeCenter = 80.0f;
        this.textSizeOuter = 70.0f;
        this.textColorOuter = -3355444;
        this.textColorCenter = -3355444;
        this.lineColor = 0;
        this.isLoop = false;
        this.totalScrollY = 0;
        this.totalScrollX = 0;
        this.initPosition = -1;
        this.mOffsetY = 0;
        this.mOffsetX = 0;
        this.startTime = 0L;
        this.tempRect = new Rect();
        initWheelView(context, attributeSet);
    }

    public WheelView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.oldIndex = -1;
        this.scaleX = 1.0f;
        this.widthMeasureSpec = 0;
        this.heightMeasureSpec = 0;
        this.mWheelGravity = 354;
        this.mScrollOrientation = 0;
        this.currentItem = 0;
        this.mExecutor = Executors.newSingleThreadScheduledExecutor();
        this.itemsVisible = 3;
        this.textSizeCenter = 80.0f;
        this.textSizeOuter = 70.0f;
        this.textColorOuter = -3355444;
        this.textColorCenter = -3355444;
        this.lineColor = 0;
        this.isLoop = false;
        this.totalScrollY = 0;
        this.totalScrollX = 0;
        this.initPosition = -1;
        this.mOffsetY = 0;
        this.mOffsetX = 0;
        this.startTime = 0L;
        this.tempRect = new Rect();
        initWheelView(context, attributeSet);
    }

    private int getCenterTextX(String str, Paint paint, Rect rect) {
        paint.getTextBounds(str, 0, str.length(), rect);
        int iMeasureText = (int) (((int) paint.measureText(str)) * this.scaleX);
        if (this.mWheelGravity == 894) {
            return ((this.maxTextWidthCenter / 2) - (iMeasureText / 2)) + (this.measuredWidth - this.maxTextWidthCenter);
        }
        return this.mWheelGravity == 234 ? (this.maxTextWidthCenter / 2) - (iMeasureText / 2) : (this.maxTextWidthCenter - iMeasureText) / 2;
    }

    private int getFixedItemsVisible(int i) {
        if (i < 3) {
            return 3;
        }
        return i % 2 == 0 ? i + 1 : i;
    }

    private int getOuterTextX(String str, Paint paint, Rect rect) {
        paint.getTextBounds(str, 0, str.length(), rect);
        int iMeasureText = (int) (((int) paint.measureText(str)) * this.scaleX);
        if (this.mWheelGravity == 894) {
            return ((this.maxTextWidthOuter / 2) - (iMeasureText / 2)) + (this.measuredWidth - this.maxTextWidthOuter);
        }
        return this.mWheelGravity == 234 ? (this.maxTextWidthOuter / 2) - (iMeasureText / 2) : (this.maxTextWidthOuter - iMeasureText) / 2;
    }

    private int getTextX(String str, Paint paint, Rect rect) {
        paint.getTextBounds(str, 0, str.length(), rect);
        int iMeasureText = (int) (((int) paint.measureText(str)) * this.scaleX);
        if (this.mWheelGravity == 894) {
            return ((this.maxTextWidth / 2) - (iMeasureText / 2)) + (this.measuredWidth - this.maxTextWidth);
        }
        return this.mWheelGravity == 234 ? (this.maxTextWidth / 2) - (iMeasureText / 2) : (this.measuredWidth - iMeasureText) / 2;
    }

    private int getTranslateX(int i, int i2) {
        if (this.totalScrollX >= 0) {
            if (i <= ((this.itemsVisible - 1) / 2) + 1) {
                return (int) (((this.itemWidthOuter * i) - this.itemWidthOuter) - i2);
            }
            return i == ((this.itemsVisible + (-1)) / 2) + 2 ? (int) ((((this.itemWidthOuter * (this.itemsVisible - 1)) / 2.0f) + this.itemWidthCenter) - ((i2 * this.itemWidthCenter) / this.itemWidthOuter)) : (int) ((((this.itemWidthOuter * i) - this.itemWidthOuter) - i2) + (this.itemWidthCenter - this.itemWidthOuter));
        }
        if (i < ((this.itemsVisible - 1) / 2) + 1) {
            return (int) (((this.itemWidthOuter * i) - this.itemWidthOuter) - i2);
        }
        return i == ((this.itemsVisible + (-1)) / 2) + 1 ? (int) (((this.itemWidthOuter * (((this.itemsVisible - 1) / 2) + 1)) - this.itemWidthOuter) - ((i2 * this.itemWidthCenter) / this.itemWidthOuter)) : (int) ((((this.itemWidthOuter * i) - this.itemWidthOuter) - i2) + (this.itemWidthCenter - this.itemWidthOuter));
    }

    private int getTranslateY(int i, int i2) {
        if (this.totalScrollY >= 0) {
            if (i <= ((this.itemsVisible - 1) / 2) + 1) {
                return (int) (((this.itemHeightOuter * i) - this.itemHeightOuter) - i2);
            }
            return i == ((this.itemsVisible + (-1)) / 2) + 2 ? (int) ((((this.itemHeightOuter * (this.itemsVisible - 1)) / 2.0f) + this.itemHeightCenter) - ((i2 * this.itemHeightCenter) / this.itemHeightOuter)) : (int) ((((this.itemHeightOuter * i) - this.itemHeightOuter) - i2) + (this.itemHeightCenter - this.itemHeightOuter));
        }
        if (i < ((this.itemsVisible - 1) / 2) + 1) {
            return (int) (((this.itemHeightOuter * i) - this.itemHeightOuter) - i2);
        }
        return i == ((this.itemsVisible + (-1)) / 2) + 1 ? (int) (((this.itemHeightOuter * (((this.itemsVisible - 1) / 2) + 1)) - this.itemHeightOuter) - ((i2 * this.itemHeightCenter) / this.itemHeightOuter)) : (int) ((((this.itemHeightOuter * i) - this.itemHeightOuter) - i2) + (this.itemHeightCenter - this.itemHeightOuter));
    }

    private void initPaints() {
        this.paintOuterText = new Paint();
        this.paintOuterText.setColor(this.textColorOuter);
        this.paintOuterText.setAntiAlias(true);
        this.paintOuterText.setTypeface(Typeface.create("sans-serif", 0));
        this.paintOuterText.setTextSize(this.textSizeOuter);
        this.paintCenterText = new Paint();
        this.paintCenterText.setColor(this.textColorCenter);
        this.paintCenterText.setAntiAlias(true);
        this.paintCenterText.setTypeface(Typeface.create("sans-serif-bold", 1));
        this.paintCenterText.setTextSize(this.textSizeCenter);
        this.paintIndicatorLine = new Paint();
        this.paintIndicatorLine.setColor(this.lineColor);
        this.paintIndicatorLine.setAntiAlias(true);
        if (Build.VERSION.SDK_INT >= 11) {
            setLayerType(1, null);
        }
    }

    private void initWheelView(Context context) {
        this.context = context;
        this.handler = new MessageHandler(this);
        this.gestureDetector = new GestureDetector(context, new WheelViewGestureListener(this));
        this.gestureDetector.setIsLongpressEnabled(false);
        initPaints();
    }

    private void initWheelView(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.WheelView);
        this.lineColor = typedArrayObtainStyledAttributes.getColor(2, this.lineColor);
        this.itemsVisible = getFixedItemsVisible(typedArrayObtainStyledAttributes.getInt(1, this.itemsVisible));
        this.isLoop = typedArrayObtainStyledAttributes.getBoolean(0, this.isLoop);
        this.textColorCenter = typedArrayObtainStyledAttributes.getColor(4, this.textColorCenter);
        this.textColorOuter = typedArrayObtainStyledAttributes.getColor(5, this.textColorOuter);
        this.textSizeCenter = typedArrayObtainStyledAttributes.getDimension(6, Utils.dip2px(context, 18.0f));
        this.textSizeOuter = typedArrayObtainStyledAttributes.getDimension(7, Utils.dip2px(context, 13.0f));
        this.lineSpaceingDimens = typedArrayObtainStyledAttributes.getDimension(3, Utils.dip2px(context, 6.0f));
        this.mWheelGravity = typedArrayObtainStyledAttributes.getInt(8, this.mWheelGravity);
        typedArrayObtainStyledAttributes.recycle();
        initWheelView(context);
    }

    private void log(String str, String str2) {
    }

    private void measureTextWidthHeight() {
        for (int i = 0; i < this.items.size(); i++) {
            String str = this.items.get(i);
            this.paintCenterText.getTextBounds(str, 0, str.length(), this.tempRect);
            int iWidth = this.tempRect.width();
            if (iWidth > this.maxTextWidth) {
                this.maxTextWidth = iWidth;
            }
            int iHeight = this.tempRect.height();
            if (iHeight > this.maxTextHeight) {
                this.maxTextHeight = iHeight;
            }
        }
        log(TAG, "measureTextWidthHeight: maxTextWidth = " + this.maxTextWidth + ", maxTextHeight = " + this.maxTextHeight);
        this.paintCenterText.getTextBounds("星星星星星星", 0, 6, this.tempRect);
        this.maxTextHeightCenter = this.tempRect.height();
        this.maxTextWidthCenter = this.maxTextWidth;
        log(TAG, "measureTextWidthHeight: maxTextWidthCenter = " + this.maxTextWidthCenter + ", maxTextHeightCenter = " + this.maxTextHeightCenter);
        this.paintOuterText.getTextBounds("星星星", 0, 3, this.tempRect);
        this.maxTextHeightOuter = this.tempRect.height();
        this.maxTextWidthOuter = this.tempRect.width();
        log(TAG, "measureTextWidthHeight: maxTextWidthOuter = " + this.maxTextWidthOuter + ", maxTextHeightOuter = " + this.maxTextHeightOuter);
        this.itemHeightCenter = ((float) this.maxTextHeightCenter) + (this.lineSpaceingDimens * 2.0f);
        this.itemWidthCenter = ((float) this.maxTextWidthCenter) + (this.lineSpaceingDimens * 2.0f);
        log(TAG, "measureTextWidthHeight: itemWidthCenter = " + this.itemWidthCenter + ", itemHeightCenter = " + this.itemHeightCenter);
        this.itemHeightOuter = ((float) this.maxTextHeightOuter) + (this.lineSpaceingDimens * 2.0f);
        this.itemWidthOuter = ((float) this.maxTextWidthOuter) + (this.lineSpaceingDimens * 2.0f);
        log(TAG, "measureTextWidthHeight: itemWidthOuter = " + this.itemWidthOuter + ", itemHeightOuter = " + this.itemHeightOuter);
        Paint.FontMetricsInt fontMetricsInt = this.paintOuterText.getFontMetricsInt();
        this.mBaselineOuterY = (int) ((((this.itemHeightOuter - ((float) fontMetricsInt.bottom)) + ((float) fontMetricsInt.top)) / 2.0f) - ((float) fontMetricsInt.top));
        this.mBaselineOuterX = (int) (((((this.itemHeightOuter - ((float) fontMetricsInt.bottom)) + ((float) fontMetricsInt.top)) / 2.0f) - ((float) fontMetricsInt.top)) + (this.itemHeightOuter / 2.0f));
        Paint.FontMetricsInt fontMetricsInt2 = this.paintCenterText.getFontMetricsInt();
        this.mBaselineCenterY = (int) ((((this.itemHeightCenter - ((float) fontMetricsInt2.bottom)) + ((float) fontMetricsInt2.top)) / 2.0f) - ((float) fontMetricsInt2.top));
        this.mBaselineCenterX = (int) ((((this.itemHeightCenter - fontMetricsInt2.bottom) + fontMetricsInt2.top) / 2.0f) - fontMetricsInt2.top);
    }

    private void remeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int mode = View.MeasureSpec.getMode(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i2);
        if (this.items == null) {
            return;
        }
        measureTextWidthHeight();
        if (this.mScrollOrientation == 0) {
            this.halfCircumference = (int) (this.itemHeightCenter * (this.itemsVisible - 1));
            this.measuredHeight = (int) (((double) (this.halfCircumference * 2)) / 3.141592653589793d);
            this.measuredHeight = (int) (this.itemHeightCenter + (this.itemHeightOuter * (this.itemsVisible - 1)) + (this.lineSpaceingDimens * 2.0f));
            this.radius = (int) (((double) this.halfCircumference) / 3.141592653589793d);
            this.measuredWidth = this.maxTextWidth;
            if (mode == 1073741824) {
                this.measuredWidth = size;
            }
        } else {
            this.halfCircumference = (int) (this.itemWidthCenter * (this.itemsVisible - 1));
            this.measuredWidth = (int) (((double) (this.halfCircumference * 2)) / 3.141592653589793d);
            this.measuredWidth = (int) (this.itemWidthCenter + (this.itemWidthOuter * (this.itemsVisible - 1)));
            this.radius = (int) (((double) this.halfCircumference) / 3.141592653589793d);
            this.measuredHeight = this.maxTextHeight;
            if (mode2 == 1073741824) {
                this.measuredHeight = size2;
            }
        }
        log(TAG, "remeasure: measuredWidth = " + this.measuredWidth + ", measuredHeight = " + this.measuredHeight);
        this.mFirstLineY = (int) ((this.itemHeightOuter * ((float) (this.itemsVisible + (-1)))) / 2.0f);
        this.mSecondLineY = (int) (((this.itemHeightOuter * ((float) (this.itemsVisible + (-1)))) / 2.0f) + this.itemHeightCenter);
        this.mFirstLineX = (int) ((this.itemWidthOuter * ((float) (this.itemsVisible + (-1)))) / 2.0f);
        this.mSecondLineX = (int) (((this.itemWidthOuter * ((float) (this.itemsVisible + (-1)))) / 2.0f) + this.itemWidthCenter);
        log(TAG, "remeasure: mFirstLineY = " + this.mFirstLineY + ", mSecondLineY = " + this.mSecondLineY);
        log(TAG, "remeasure: mFirstLineX = " + this.mFirstLineX + ", mSecondLineX = " + this.mSecondLineX);
        if (this.initPosition == -1) {
            if (this.isLoop) {
                this.initPosition = (this.items.size() + 1) / 2;
            } else {
                this.initPosition = 0;
            }
        }
        this.mBottom = ((this.items.size() - 1) - this.initPosition) * this.itemHeightOuter;
        this.mTop = (-this.initPosition) * this.itemHeightOuter;
        this.mRight = ((this.items.size() - 1) - this.initPosition) * this.itemWidthOuter;
        this.mLeft = (-this.initPosition) * this.itemWidthOuter;
        log(TAG, "remeasure: mTop = " + this.mTop + ", mBottom = " + this.mBottom);
        log(TAG, "remeasure: mLeft = " + this.mLeft + ", mRight = " + this.mRight);
        this.preCurrentIndex = this.initPosition;
    }

    public void cancelFuture() {
        if (this.mFuture == null || this.mFuture.isCancelled()) {
            return;
        }
        this.mFuture.cancel(true);
        this.mFuture = null;
    }

    public int getCurrentItem() {
        return this.currentItem;
    }

    public List<String> getItems() {
        return this.items;
    }

    public int getScrollOrientation() {
        return this.mScrollOrientation;
    }

    public final String getSelectedItem() {
        return (this.selectedItem >= this.items.size() || this.selectedItem < 0) ? "" : this.items.get(this.selectedItem);
    }

    public final int getSelectedPosition() {
        return this.selectedItem;
    }

    public int getSize() {
        return this.items.size();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int i;
        String strReplace;
        if (this.items == null) {
            return;
        }
        float f = 0.0f;
        if (this.mScrollOrientation == 0) {
            canvas.translate(0.0f, this.lineSpaceingDimens);
            canvas.clipRect(0.0f, 0.0f, this.measuredWidth, this.measuredHeight - (this.lineSpaceingDimens * 2.0f));
        } else {
            canvas.translate(this.lineSpaceingDimens, 0.0f);
            canvas.clipRect(0.0f, 0.0f, this.measuredWidth - (this.lineSpaceingDimens * 2.0f), this.measuredHeight);
        }
        canvas.save();
        if (this.mScrollOrientation == 0) {
            this.change = (int) (this.totalScrollY / this.itemHeightOuter);
        } else {
            this.change = (int) (this.totalScrollX / this.itemWidthOuter);
        }
        this.preCurrentIndex = this.initPosition + (this.change % this.items.size());
        int i2 = 1;
        if (this.isLoop) {
            if (this.preCurrentIndex < 0) {
                this.preCurrentIndex = this.items.size() + this.preCurrentIndex;
            }
            if (this.preCurrentIndex > this.items.size() - 1) {
                this.preCurrentIndex -= this.items.size();
            }
        } else {
            if (this.preCurrentIndex < 0) {
                this.preCurrentIndex = 0;
            }
            if (this.preCurrentIndex > this.items.size() - 1) {
                this.preCurrentIndex = this.items.size() - 1;
            }
        }
        if (this.mScrollOrientation == 0) {
            i = (int) (this.totalScrollY % this.itemHeightOuter);
            canvas.drawLine(0.0f, this.mFirstLineY, this.measuredWidth, this.mFirstLineY, this.paintIndicatorLine);
            canvas.drawLine(0.0f, this.mSecondLineY, this.measuredWidth, this.mSecondLineY, this.paintIndicatorLine);
        } else {
            i = (int) (this.totalScrollX % this.itemWidthOuter);
            canvas.drawLine(this.mFirstLineX, 0.0f, this.mFirstLineX, this.measuredHeight, this.paintIndicatorLine);
            canvas.drawLine(this.mSecondLineX, 0.0f, this.mSecondLineX, this.measuredHeight, this.paintIndicatorLine);
        }
        int translateY = getTranslateY(0, i);
        int translateY2 = getTranslateY(1, i);
        int translateX = getTranslateX(0, i);
        int translateX2 = getTranslateX(1, i);
        int translateY3 = translateY2;
        int i3 = translateY;
        int i4 = 0;
        while (i4 < this.itemsVisible + 2) {
            int size = (this.preCurrentIndex - ((this.itemsVisible / 2) - i4)) - i2;
            if (this.isLoop) {
                size %= this.items.size();
                if (size < 0) {
                    size += this.items.size();
                }
                strReplace = this.items.get(size);
            } else {
                strReplace = (size >= 0 && size <= this.items.size() - i2) ? this.items.get(size) : "";
            }
            if (this.mScrollOrientation == 0) {
                canvas.save();
                canvas.translate(f, i3);
                if (i3 < this.mFirstLineY && translateY3 > this.mFirstLineY) {
                    String strReplace2 = strReplace.contains("℃") ? strReplace.replace("℃", "") : strReplace;
                    canvas.save();
                    canvas.clipRect(0, 0, this.measuredWidth, this.mFirstLineY - i3);
                    canvas.drawText(strReplace2, getTextX(strReplace2, this.paintOuterText, this.tempRect), this.mBaselineOuterY, this.paintOuterText);
                    canvas.restore();
                    canvas.save();
                    canvas.clipRect(0, this.mFirstLineY - i3, this.measuredWidth, (int) this.itemHeightCenter);
                    canvas.drawText(strReplace, getTextX(strReplace, this.paintCenterText, this.tempRect), this.mBaselineCenterY, this.paintCenterText);
                    canvas.restore();
                } else if (i3 < this.mSecondLineY && translateY3 > this.mSecondLineY) {
                    canvas.save();
                    canvas.clipRect(0, 0, this.measuredWidth, this.mSecondLineY - i3);
                    canvas.drawText(strReplace, getTextX(strReplace, this.paintCenterText, this.tempRect), this.mBaselineCenterY, this.paintCenterText);
                    canvas.restore();
                    if (strReplace.contains("℃")) {
                        strReplace = strReplace.replace("℃", "");
                    }
                    canvas.save();
                    canvas.clipRect(0, this.mSecondLineY - i3, this.measuredWidth, (int) this.itemHeightCenter);
                    canvas.drawText(strReplace, getTextX(strReplace, this.paintOuterText, this.tempRect), (this.mBaselineOuterY + (translateY3 - i3)) - this.itemHeightOuter, this.paintOuterText);
                    canvas.restore();
                } else if (i3 < this.mFirstLineY || translateY3 > this.mSecondLineY) {
                    if (strReplace.contains("℃")) {
                        strReplace = strReplace.replace("℃", "");
                    }
                    canvas.clipRect(0, 0, this.measuredWidth, (int) this.itemHeightOuter);
                    canvas.drawText(strReplace, getTextX(strReplace, this.paintOuterText, this.tempRect), this.mBaselineOuterY, this.paintOuterText);
                } else {
                    canvas.clipRect(0, 0, this.measuredWidth, (int) this.itemHeightCenter);
                    canvas.drawText(strReplace, getTextX(strReplace, this.paintCenterText, this.tempRect), this.mBaselineCenterY, this.paintCenterText);
                }
                if ((i3 >= this.mFirstLineY && i3 < (this.mFirstLineY + this.mSecondLineY) / 2) || (translateY3 > (this.mFirstLineY + this.mSecondLineY) / 2 && translateY3 <= this.mSecondLineY)) {
                    this.selectedItem = size;
                }
                canvas.restore();
                i4++;
                int i5 = translateY3;
                translateY3 = getTranslateY(i4 + 1, i);
                i3 = i5;
            } else {
                canvas.save();
                float f2 = translateX;
                canvas.translate(f2, f);
                if (translateX < this.mFirstLineX && translateX2 > this.mFirstLineX) {
                    String strReplace3 = strReplace.contains("℃") ? strReplace.replace("℃", "") : strReplace;
                    canvas.save();
                    canvas.clipRect(0, 0, this.mFirstLineX - translateX, this.measuredHeight);
                    canvas.drawText(strReplace3, getOuterTextX(strReplace3, this.paintOuterText, this.tempRect), this.mBaselineOuterX, this.paintOuterText);
                    canvas.restore();
                    if (f2 > this.itemWidthCenter - this.itemWidthOuter) {
                        canvas.save();
                        canvas.clipRect(this.mFirstLineX - translateX, 0, (int) this.itemWidthCenter, this.measuredHeight);
                        canvas.drawText(strReplace, getCenterTextX(strReplace, this.paintCenterText, this.tempRect), this.mBaselineCenterX, this.paintCenterText);
                        canvas.restore();
                    }
                } else if (translateX < this.mSecondLineX && translateX2 > this.mSecondLineX) {
                    canvas.save();
                    canvas.clipRect(0, 0, this.mSecondLineX - translateX, this.measuredHeight);
                    canvas.drawText(strReplace, getCenterTextX(strReplace, this.paintCenterText, this.tempRect), this.mBaselineCenterX, this.paintCenterText);
                    canvas.restore();
                    if (strReplace.contains("℃")) {
                        strReplace = strReplace.replace("℃", "");
                    }
                    canvas.save();
                    canvas.clipRect(this.mSecondLineX - translateX, 0, (int) this.itemWidthCenter, this.measuredHeight);
                    canvas.drawText(strReplace, getOuterTextX(strReplace, this.paintOuterText, this.tempRect), this.mBaselineOuterX, this.paintOuterText);
                    canvas.restore();
                } else if (translateX < this.mFirstLineX || translateX2 > this.mSecondLineX) {
                    if (strReplace.contains("℃")) {
                        strReplace = strReplace.replace("℃", "");
                    }
                    canvas.clipRect(0, 0, (int) this.itemWidthOuter, this.measuredHeight);
                    canvas.drawText(strReplace, getOuterTextX(strReplace, this.paintOuterText, this.tempRect), this.mBaselineOuterX, this.paintOuterText);
                } else {
                    canvas.clipRect(0, 0, (int) this.itemWidthCenter, this.measuredHeight);
                    canvas.drawText(strReplace, getCenterTextX(strReplace, this.paintCenterText, this.tempRect), this.mBaselineCenterX, this.paintCenterText);
                }
                if ((translateX >= this.mFirstLineX && translateX < (this.mFirstLineX + this.mSecondLineX) / 2) || (translateX2 > (this.mFirstLineX + this.mSecondLineX) / 2 && translateX2 <= this.mSecondLineX)) {
                    this.selectedItem = size;
                }
                canvas.restore();
                i4++;
                int i6 = translateX2;
                translateX2 = getTranslateX(i4 + 1, i);
                translateX = i6;
            }
            f = 0.0f;
            i2 = 1;
        }
    }

    protected final void onItemSelected() {
        if (this.onItemSelectedListener != null) {
            postDelayed(new OnItemSelectedRunnable(this), 200L);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        this.widthMeasureSpec = i;
        this.heightMeasureSpec = i2;
        remeasure(i, i2);
        setMeasuredDimension(this.measuredWidth, this.measuredHeight);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int i;
        int i2;
        if (!isEnabled()) {
            log(TAG, "onTouchEvent: isEnabled() = false");
            return false;
        }
        boolean zOnTouchEvent = this.gestureDetector.onTouchEvent(motionEvent);
        int action = motionEvent.getAction();
        if (action == 0) {
            this.startTime = SystemClock.elapsedRealtime();
            cancelFuture();
            this.mPreviousY = motionEvent.getRawY();
            this.mPreviousX = motionEvent.getRawX();
        } else if (action == 2) {
            float rawY = this.mPreviousY - motionEvent.getRawY();
            this.mPreviousY = motionEvent.getRawY();
            this.totalScrollY = (int) (this.totalScrollY + rawY);
            if (!this.isLoop) {
                if (this.totalScrollY < this.mTop) {
                    this.totalScrollY = (int) this.mTop;
                } else if (this.totalScrollY > this.mBottom) {
                    this.totalScrollY = (int) this.mBottom;
                }
            }
            float rawX = this.mPreviousX - motionEvent.getRawX();
            this.mPreviousX = motionEvent.getRawX();
            this.totalScrollX = (int) (this.totalScrollX + rawX);
            if (!this.isLoop) {
                if (this.totalScrollX < this.mLeft) {
                    this.totalScrollX = (int) this.mLeft;
                } else if (this.totalScrollX > this.mRight) {
                    this.totalScrollX = (int) this.mRight;
                }
            }
        } else if (!zOnTouchEvent) {
            float y = motionEvent.getY();
            int iAcos = (int) (((Math.acos((this.radius - y) / this.radius) * ((double) this.radius)) + ((double) (this.itemHeightCenter / 2.0f))) / ((double) this.itemHeightCenter));
            float f = ((this.totalScrollY % this.itemHeightOuter) + this.itemHeightOuter) % this.itemHeightOuter;
            this.mOffsetY = (int) (((iAcos - (this.itemsVisible / 2)) * this.itemHeightCenter) - f);
            if (y <= this.mFirstLineY) {
                i = (int) (y / this.itemHeightOuter);
            } else if (y >= this.mSecondLineY) {
                i = (int) ((((int) (y - this.itemHeightCenter)) / this.itemHeightOuter) + 1.0f);
                if (i > this.itemsVisible - 1) {
                    i = this.itemsVisible - 1;
                }
            } else {
                i = this.itemsVisible / 2;
            }
            float x = motionEvent.getX();
            int iAcos2 = (int) (((Math.acos((this.radius - x) / this.radius) * ((double) this.radius)) + ((double) (this.itemWidthCenter / 2.0f))) / ((double) this.itemWidthCenter));
            float f2 = ((this.totalScrollX % this.itemWidthOuter) + this.itemWidthOuter) % this.itemWidthOuter;
            this.mOffsetX = (int) (((iAcos2 - (this.itemsVisible / 2)) * this.itemWidthCenter) - f2);
            if (x <= this.mFirstLineX) {
                i2 = (int) (x / this.itemWidthOuter);
            } else if (x >= this.mSecondLineX) {
                i2 = (int) ((((int) (x - this.itemWidthCenter)) / this.itemWidthOuter) + 1.0f);
                if (i2 > this.itemsVisible - 1) {
                    i2 = this.itemsVisible - 1;
                }
            } else {
                i2 = this.itemsVisible / 2;
            }
            this.mOffsetY = (int) (((i - (this.itemsVisible / 2)) * this.itemHeightOuter) - f);
            this.mOffsetX = (int) (((i2 - (this.itemsVisible / 2)) * this.itemWidthOuter) - f2);
            if (!this.isLoop) {
                if (this.totalScrollY + this.mOffsetY > this.mBottom) {
                    this.mOffsetY = (int) (this.mBottom - this.totalScrollY);
                }
                if (this.totalScrollY + this.mOffsetY < this.mTop) {
                    this.mOffsetY = (int) (this.mTop - this.totalScrollY);
                }
                if (this.totalScrollX + this.mOffsetX > this.mRight) {
                    this.mOffsetX = (int) (this.mRight - this.totalScrollX);
                }
                if (this.totalScrollX + this.mOffsetX < this.mLeft) {
                    this.mOffsetX = (int) (this.mLeft - this.totalScrollX);
                }
            }
            if (SystemClock.elapsedRealtime() - this.startTime > 120) {
                smoothScroll(ACTION.DAGGLE);
            } else {
                smoothScroll(ACTION.CLICK);
            }
        }
        invalidate();
        return true;
    }

    public void reset() {
        this.totalScrollY = 0;
        this.totalScrollX = 0;
    }

    protected final void scrollBy(float f) {
        cancelFuture();
        this.mFuture = this.mExecutor.scheduleWithFixedDelay(new InertiaTimerTask(this, f), 0L, 15, TimeUnit.MILLISECONDS);
    }

    public final void setInitPosition(int i) {
        if (i < 0) {
            this.initPosition = 0;
        } else {
            this.initPosition = i;
        }
        this.oldIndex = i;
        this.selectedItem = i;
    }

    public final void setIsLoop(boolean z) {
        this.isLoop = z;
    }

    public final void setItems(List<String> list) {
        reset();
        if (list == null) {
            this.items = Arrays.asList("--");
        } else {
            this.items = list;
        }
        remeasure(this.widthMeasureSpec, this.heightMeasureSpec);
        invalidate();
    }

    public final void setItems(List<String> list, int i) {
        setInitPosition(i);
        setItems(list);
    }

    public final void setOnItemSelectedListener(OnItemSelectedListener onItemSelectedListener) {
        this.onItemSelectedListener = onItemSelectedListener;
    }

    public void setScrollOrientation(int i) {
        if (i == 1 || i == 0) {
            this.mScrollOrientation = i;
        }
    }

    public void setWheelGravity(int i) {
        this.mWheelGravity = i;
    }

    void smoothScroll(ACTION action) {
        log(TAG, "smoothScroll: measuredWidth = " + this.measuredWidth + ", measuredHeight = " + this.measuredHeight);
        playSoundEffect(0);
        cancelFuture();
        if (action == ACTION.FLING || action == ACTION.DAGGLE) {
            this.mOffsetY = (int) (((this.totalScrollY % this.itemHeightOuter) + this.itemHeightOuter) % this.itemHeightOuter);
            if (this.mOffsetY > this.itemHeightOuter / 2.0f) {
                this.mOffsetY = (int) (this.itemHeightOuter - this.mOffsetY);
            } else {
                this.mOffsetY = -this.mOffsetY;
            }
            this.mOffsetX = (int) (((this.totalScrollX % this.itemWidthOuter) + this.itemWidthOuter) % this.itemWidthOuter);
            if (this.mOffsetX > this.itemWidthOuter / 2.0f) {
                this.mOffsetX = (int) (this.itemWidthOuter - this.mOffsetX);
            } else {
                this.mOffsetX = -this.mOffsetX;
            }
        }
        if (this.mScrollOrientation == 0) {
            this.mFuture = this.mExecutor.scheduleWithFixedDelay(new SmoothScrollTimerTask(this, this.mOffsetY), 0L, 10L, TimeUnit.MILLISECONDS);
        } else {
            this.mFuture = this.mExecutor.scheduleWithFixedDelay(new SmoothScrollTimerTask(this, this.mOffsetX), 0L, 10L, TimeUnit.MILLISECONDS);
        }
    }
}
