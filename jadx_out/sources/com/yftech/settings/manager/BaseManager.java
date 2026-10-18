package com.yftech.settings.manager;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.yftech.settings.utils.LogUtil;
import com.yftech.vehicle.internal.adapter.IBaseApi;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseManager<T> {
    protected static final int NONE = -1;
    private static final String TAG = "BaseManager";
    private static final int TIMEOUT = 3000;
    private Context mContext;
    private final List<ModelCallback<T>> mCallbacks = new ArrayList();
    private final Handler mMainHandler = new Handler(Looper.getMainLooper());
    private final Object mLock = new Object();
    protected final Handler mHandler = new Handler();
    protected boolean mStartTimeout = false;
    private final Runnable mTimeoutRunnable = new Runnable() { // from class: com.yftech.settings.manager.BaseManager.1
        @Override // java.lang.Runnable
        public void run() {
            BaseManager.this.mStartTimeout = false;
            BaseManager.this.notifyOnTimeout();
        }
    };

    public static abstract class ModelCallback<T> {
        protected ModelCallback() {
        }

        public void onEnableChanged(T t, boolean z) {
        }

        public void onOptionChanged(T t, int i) {
        }

        public void onTimeout() {
        }

        public void onValueChanged(T t, Object obj) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyOnTimeout() {
        this.mMainHandler.post(new Runnable() { // from class: com.yftech.settings.manager.BaseManager.5
            @Override // java.lang.Runnable
            public void run() {
                LogUtil.i(BaseManager.TAG, "notifyOnTimeout()");
                for (int i = 0; i < BaseManager.this.mCallbacks.size(); i++) {
                    ((ModelCallback) BaseManager.this.mCallbacks.get(i)).onTimeout();
                }
            }
        });
    }

    public void deInit() {
    }

    protected Context getContext() {
        return this.mContext;
    }

    public boolean getEnabled(T t) {
        return false;
    }

    public int getOption(T t) {
        return -1;
    }

    protected boolean getValidEnable(IBaseApi.EnableState enableState, boolean z) {
        switch (enableState) {
            case ENABLED:
                return true;
            case DISABLED:
                return false;
            default:
                return z;
        }
    }

    protected boolean getValidEnableStateOp(IBaseApi.EnableStateOp enableStateOp, boolean z) {
        switch (enableStateOp) {
            case ENABLED:
                return true;
            case DISABLED:
                return false;
            default:
                return z;
        }
    }

    protected boolean getValidSwitchEnable(IBaseApi.SwitchState switchState, boolean z) {
        switch (switchState) {
            case TURN_ON:
                return true;
            case TURN_OFF:
                return false;
            default:
                return z;
        }
    }

    public Object getValue(T t) {
        return null;
    }

    public void init(Context context) {
        this.mContext = context;
    }

    protected void notifyOnEnableChanged(final T t, final boolean z) {
        this.mMainHandler.post(new Runnable() { // from class: com.yftech.settings.manager.BaseManager.2
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public void run() {
                BaseManager.this.stopTimeout();
                for (int i = 0; i < BaseManager.this.mCallbacks.size(); i++) {
                    ((ModelCallback) BaseManager.this.mCallbacks.get(i)).onEnableChanged(t, z);
                }
            }
        });
    }

    protected void notifyOnOptionChanged(final T t, final int i) {
        this.mMainHandler.post(new Runnable() { // from class: com.yftech.settings.manager.BaseManager.3
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public void run() {
                BaseManager.this.stopTimeout();
                for (int i2 = 0; i2 < BaseManager.this.mCallbacks.size(); i2++) {
                    ((ModelCallback) BaseManager.this.mCallbacks.get(i2)).onOptionChanged(t, i);
                }
            }
        });
    }

    protected void notifyOnValueChanged(final T t, final Object obj) {
        this.mMainHandler.post(new Runnable() { // from class: com.yftech.settings.manager.BaseManager.4
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public void run() {
                BaseManager.this.stopTimeout();
                for (int i = 0; i < BaseManager.this.mCallbacks.size(); i++) {
                    ((ModelCallback) BaseManager.this.mCallbacks.get(i)).onValueChanged(t, obj);
                }
            }
        });
    }

    public void registerModelCallback(ModelCallback<T> modelCallback) {
        synchronized (this.mLock) {
            if (!this.mCallbacks.contains(modelCallback)) {
                this.mCallbacks.add(modelCallback);
            }
        }
    }

    public boolean setAction(T t) {
        return false;
    }

    public boolean setEnabled(T t, boolean z) {
        return false;
    }

    public boolean setOption(T t, int i) {
        return false;
    }

    public boolean setValue(T t, Object obj) {
        return false;
    }

    protected void startTimeout() {
        stopTimeout();
        LogUtil.i(TAG, "startTimeout()");
        this.mStartTimeout = true;
        this.mHandler.postDelayed(this.mTimeoutRunnable, 3000L);
    }

    protected boolean stopTimeout() {
        if (!this.mStartTimeout) {
            return false;
        }
        LogUtil.i(TAG, "stopTimeout()");
        this.mStartTimeout = false;
        this.mHandler.removeCallbacks(this.mTimeoutRunnable);
        return true;
    }

    public void unregisterModelCallback(ModelCallback<T> modelCallback) {
        synchronized (this.mLock) {
            if (this.mCallbacks.contains(modelCallback)) {
                this.mCallbacks.remove(modelCallback);
            }
        }
    }
}
