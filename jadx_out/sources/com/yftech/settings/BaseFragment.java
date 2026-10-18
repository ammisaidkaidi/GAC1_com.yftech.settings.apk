package com.yftech.settings;

import android.app.Fragment;
import android.content.Context;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import com.yftech.settings.utils.LogUtil;
import com.yftech.settings.utils.Utils;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes.dex */
public class BaseFragment extends Fragment implements View.OnTouchListener {
    private boolean mIsPower;

    private static void fixInputMethodManagerLeak(Context context) {
        InputMethodManager inputMethodManager;
        if (context == null || (inputMethodManager = (InputMethodManager) context.getSystemService("input_method")) == null) {
            return;
        }
        for (String str : new String[]{"mCurRootView", "mServedView", "mNextServedView"}) {
            try {
                Field declaredField = inputMethodManager.getClass().getDeclaredField(str);
                if (!declaredField.isAccessible()) {
                    declaredField.setAccessible(true);
                }
                Object obj = declaredField.get(inputMethodManager);
                if (obj != null && (obj instanceof View)) {
                    View view = (View) obj;
                    if (view.getContext() != context) {
                        LogUtil.d("BaseFragment", "fixInputMethodManagerLeak break, context is not suitable, get_context=" + view.getContext() + " dest_context=" + context);
                        return;
                    }
                    declaredField.set(inputMethodManager, null);
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    protected void dismissAllDialog() {
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        Log.i("BaseFragment", "onDestroy:  ");
        fixInputMethodManagerLeak(getContext());
    }

    @Override // android.app.Fragment
    public void onPause() {
        super.onPause();
        dismissAllDialog();
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() != 0) {
            if (this.mIsPower || motionEvent.getAction() != 2) {
                return !this.mIsPower && motionEvent.getAction() == 1;
            }
            return true;
        }
        this.mIsPower = ((BaseActivity) getActivity()).isPower();
        if (this.mIsPower) {
            return false;
        }
        ((BaseActivity) getActivity()).showPowerToast();
        Utils.playKeySoundEffect(getContext().getApplicationContext());
        return true;
    }
}
