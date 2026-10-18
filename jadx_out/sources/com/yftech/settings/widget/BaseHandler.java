package com.yftech.settings.widget;

import android.os.Handler;
import android.os.Message;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseHandler<T> extends Handler {
    private WeakReference<T> weakReference;

    public BaseHandler(T t) {
        this.weakReference = new WeakReference<>(t);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        super.handleMessage(message);
        T t = this.weakReference.get();
        if (t == null) {
            return;
        }
        handleMessageProcess(message, t);
    }

    public abstract void handleMessageProcess(Message message, T t);
}
