package com.yftech.settings.widget;

import android.content.Context;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.MotionEvent;
import com.yftech.settings.utils.LogUtil;

/* JADX INFO: loaded from: classes.dex */
public class BtSwitcher extends Switcher {
    private static final String TAG = "BtSwitcher";
    private boolean isInterceptEvent;
    private long mLastTimeClick;
    private long mSpaceTimeClick;

    public BtSwitcher(Context context) {
        super(context);
        this.isInterceptEvent = false;
        this.mLastTimeClick = 0L;
        this.mSpaceTimeClick = 1500L;
    }

    public BtSwitcher(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.isInterceptEvent = false;
        this.mLastTimeClick = 0L;
        this.mSpaceTimeClick = 1500L;
    }

    public BtSwitcher(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.isInterceptEvent = false;
        this.mLastTimeClick = 0L;
        this.mSpaceTimeClick = 1500L;
    }

    public BtSwitcher(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.isInterceptEvent = false;
        this.mLastTimeClick = 0L;
        this.mSpaceTimeClick = 1500L;
    }

    @Override // android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        LogUtil.d(TAG, "dispatchTouchEvent: " + motionEvent);
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long jAbs = Math.abs(jElapsedRealtime - this.mLastTimeClick);
        switch (motionEvent.getAction()) {
            case 0:
                LogUtil.d(TAG, "dispatchTouchEvent spaceTime:" + jAbs);
                if (jAbs < this.mSpaceTimeClick) {
                    LogUtil.d(TAG, "dispatchTouchEvent quickly");
                    this.isInterceptEvent = true;
                    return true;
                }
                break;
            case 1:
            case 3:
                if (this.isInterceptEvent) {
                    this.isInterceptEvent = false;
                    return true;
                }
                this.isInterceptEvent = false;
                this.mLastTimeClick = jElapsedRealtime;
                break;
            case 2:
                if (this.isInterceptEvent) {
                    return true;
                }
                break;
        }
        return super.dispatchTouchEvent(motionEvent);
    }
}
