package com.yftech.settings.widget.wheelview;

import java.util.TimerTask;

/* JADX INFO: loaded from: classes.dex */
final class InertiaTimerTask extends TimerTask {
    private float a = 2.1474836E9f;
    private final float mVelocity;
    private final WheelView mWheelView;

    InertiaTimerTask(WheelView wheelView, float f) {
        this.mWheelView = wheelView;
        this.mVelocity = f;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public final void run() {
        if (this.a == 2.1474836E9f) {
            if (Math.abs(this.mVelocity) <= 2000.0f) {
                this.a = this.mVelocity;
            } else if (this.mVelocity > 0.0f) {
                this.a = 2000.0f;
            } else {
                this.a = -2000.0f;
            }
        }
        if (Math.abs(this.a) >= 0.0f && Math.abs(this.a) <= 20.0f) {
            this.mWheelView.cancelFuture();
            this.mWheelView.handler.sendEmptyMessage(2000);
            return;
        }
        if (this.mWheelView.getScrollOrientation() == 0) {
            this.mWheelView.totalScrollY -= (int) ((this.a * 10.0f) / 1000.0f);
            if (!this.mWheelView.isLoop) {
                float f = this.mWheelView.itemHeightOuter;
                if (this.mWheelView.totalScrollY <= ((int) ((-this.mWheelView.initPosition) * f))) {
                    this.a = 40.0f;
                    this.mWheelView.totalScrollY = (int) ((-this.mWheelView.initPosition) * f);
                } else if (this.mWheelView.totalScrollY >= ((int) (((this.mWheelView.items.size() - 1) - this.mWheelView.initPosition) * f))) {
                    this.mWheelView.totalScrollY = (int) (((this.mWheelView.items.size() - 1) - this.mWheelView.initPosition) * f);
                    this.a = -40.0f;
                }
            }
        } else {
            this.mWheelView.totalScrollX -= (int) ((this.a * 10.0f) / 1000.0f);
            if (!this.mWheelView.isLoop) {
                float f2 = this.mWheelView.itemWidthOuter;
                if (this.mWheelView.totalScrollX <= ((int) ((-this.mWheelView.initPosition) * f2))) {
                    this.a = 40.0f;
                    this.mWheelView.totalScrollX = (int) ((-this.mWheelView.initPosition) * f2);
                } else if (this.mWheelView.totalScrollX >= ((int) (((this.mWheelView.items.size() - 1) - this.mWheelView.initPosition) * f2))) {
                    this.mWheelView.totalScrollX = (int) (((this.mWheelView.items.size() - 1) - this.mWheelView.initPosition) * f2);
                    this.a = -40.0f;
                }
            }
        }
        if (this.a < 0.0f) {
            this.a += 20.0f;
        } else {
            this.a -= 20.0f;
        }
        this.mWheelView.handler.sendEmptyMessage(1000);
    }
}
