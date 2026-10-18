package com.yftech.settings.widget.dialog;

import android.content.Context;
import android.os.Bundle;
import android.view.Window;
import android.view.WindowManager;

/* JADX INFO: loaded from: classes.dex */
public class PriorityCommonDialog extends CommonDialog {
    public PriorityCommonDialog(Context context) {
        super(context);
    }

    @Override // com.yftech.settings.widget.dialog.CommonDialog, com.yftech.settings.widget.dialog.BaseDialog, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Window window = getWindow();
        if (window != null) {
            window.setType(2055);
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.flags = 8;
            window.setAttributes(attributes);
        }
    }
}
