package com.yftech.settings.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.SeekBar;
import androidx.appcompat.widget.AppCompatSeekBar;
import com.yftech.settings.utils.LogUtil;

/* JADX INFO: loaded from: classes.dex */
public class VerticalUpSeekBar extends AppCompatSeekBar {
    private static final String TAG = "VerticalUpSeekBar";
    int i;
    private SeekBar.OnSeekBarChangeListener mOnSeekBarChangeListener;

    public VerticalUpSeekBar(Context context) {
        super(context);
        this.i = 0;
    }

    public VerticalUpSeekBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.i = 0;
    }

    public VerticalUpSeekBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.i = 0;
    }

    @Override // androidx.appcompat.widget.AppCompatSeekBar, android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    protected void onDraw(Canvas canvas) {
        canvas.rotate(-90.0f);
        canvas.translate(-getHeight(), 0.0f);
        LogUtil.i(TAG, "onDraw:" + getHeight());
        super.onDraw(canvas);
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    protected synchronized void onMeasure(int i, int i2) {
        super.onMeasure(i2, i);
        setMeasuredDimension(getMeasuredHeight(), getMeasuredWidth());
    }

    void onProgressChanged() {
        if (this.mOnSeekBarChangeListener != null) {
            this.mOnSeekBarChangeListener.onProgressChanged(this, this.i, true);
        }
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i2, i, i4, i3);
    }

    void onStartTrackingTouch() {
        if (this.mOnSeekBarChangeListener != null) {
            this.mOnSeekBarChangeListener.onStartTrackingTouch(this);
        }
    }

    void onStopTrackingTouch() {
        if (this.mOnSeekBarChangeListener != null) {
            this.mOnSeekBarChangeListener.onStopTrackingTouch(this);
        }
    }

    @Override // android.widget.AbsSeekBar, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!isEnabled()) {
            return false;
        }
        switch (motionEvent.getAction()) {
            case 0:
                onStartTrackingTouch();
                return true;
            case 1:
            case 3:
                onStopTrackingTouch();
                return true;
            case 2:
                this.i = getMax() - ((int) ((getMax() * motionEvent.getY()) / getHeight()));
                setProgress(this.i);
                LogUtil.i(TAG, "Move->progress=" + getProgress());
                onSizeChanged(getWidth(), getHeight(), 0, 0);
                LogUtil.i(TAG, "onDraw->width=" + getWidth() + ";height=" + getHeight());
                onProgressChanged();
                return true;
            default:
                return true;
        }
    }

    @Override // android.widget.SeekBar
    public void setOnSeekBarChangeListener(SeekBar.OnSeekBarChangeListener onSeekBarChangeListener) {
        this.mOnSeekBarChangeListener = onSeekBarChangeListener;
    }

    @Override // android.widget.ProgressBar
    public synchronized void setProgress(int i) {
        super.setProgress(i);
        onSizeChanged(getWidth(), getHeight(), 0, 0);
    }
}
