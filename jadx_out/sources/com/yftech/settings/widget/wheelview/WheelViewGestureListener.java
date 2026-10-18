package com.yftech.settings.widget.wheelview;

import android.view.GestureDetector;
import android.view.MotionEvent;

/* JADX INFO: loaded from: classes.dex */
final class WheelViewGestureListener extends GestureDetector.SimpleOnGestureListener {
    private final WheelView mWheelView;

    WheelViewGestureListener(WheelView wheelView) {
        this.mWheelView = wheelView;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public final boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        if (this.mWheelView.getScrollOrientation() == 0) {
            this.mWheelView.scrollBy(f2);
            return true;
        }
        this.mWheelView.scrollBy(f);
        return true;
    }
}
