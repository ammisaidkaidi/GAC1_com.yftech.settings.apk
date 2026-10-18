package com.yftech.settings.widget.wheelview;

import android.os.Handler;
import android.os.Message;

/* JADX INFO: loaded from: classes.dex */
final class MessageHandler extends Handler {
    static final int WHAT_INVALIDATE_LOOP_VIEW = 1000;
    static final int WHAT_ITEM_SELECTED = 3000;
    static final int WHAT_SMOOTH_SCROLL = 2000;
    private final WheelView mWheelView;

    MessageHandler(WheelView wheelView) {
        this.mWheelView = wheelView;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int i = message.what;
        if (i == 1000) {
            this.mWheelView.invalidate();
        } else if (i == WHAT_SMOOTH_SCROLL) {
            this.mWheelView.smoothScroll(WheelView.ACTION.FLING);
        } else {
            if (i != 3000) {
                return;
            }
            this.mWheelView.onItemSelected();
        }
    }
}
