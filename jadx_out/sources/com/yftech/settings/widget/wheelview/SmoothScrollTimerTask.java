package com.yftech.settings.widget.wheelview;

import androidx.vectordrawable.graphics.drawable.PathInterpolatorCompat;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes.dex */
final class SmoothScrollTimerTask extends TimerTask {
    private int mOffset;
    private final WheelView mWheelView;
    private int mRealTotalOffset = Integer.MAX_VALUE;
    private int mRealOffset = 0;

    SmoothScrollTimerTask(WheelView wheelView, int i) {
        this.mWheelView = wheelView;
        this.mOffset = i;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public final void run() {
        if (this.mRealTotalOffset == Integer.MAX_VALUE) {
            this.mRealTotalOffset = this.mOffset;
        }
        this.mRealOffset = (int) (this.mRealTotalOffset * 0.1f);
        if (this.mRealOffset == 0) {
            if (this.mRealTotalOffset < 0) {
                this.mRealOffset = -1;
            } else {
                this.mRealOffset = 1;
            }
        }
        if (Math.abs(this.mRealTotalOffset) <= 0) {
            this.mWheelView.cancelFuture();
            this.mWheelView.handler.sendEmptyMessage(PathInterpolatorCompat.MAX_NUM_POINTS);
            return;
        }
        if (this.mWheelView.getScrollOrientation() == 0) {
            this.mWheelView.totalScrollY += this.mRealOffset;
        } else {
            this.mWheelView.totalScrollX += this.mRealOffset;
        }
        this.mWheelView.handler.sendEmptyMessage(1000);
        this.mRealTotalOffset -= this.mRealOffset;
    }
}
