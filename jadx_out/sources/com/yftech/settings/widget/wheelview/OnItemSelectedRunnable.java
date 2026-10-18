package com.yftech.settings.widget.wheelview;

/* JADX INFO: loaded from: classes.dex */
final class OnItemSelectedRunnable implements Runnable {
    private int mOldIndex = -1;
    private final WheelView mWheelView;

    OnItemSelectedRunnable(WheelView wheelView) {
        this.mWheelView = wheelView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.mWheelView.getSelectedPosition() >= 0 && this.mWheelView.getSelectedPosition() != this.mOldIndex) {
            this.mOldIndex = this.mWheelView.getSelectedPosition();
            this.mWheelView.onItemSelectedListener.onItemSelected(this.mWheelView, this.mWheelView.getSelectedPosition(), this.mWheelView.getSelectedItem());
        }
    }
}
