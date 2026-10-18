package com.yftech.settings.widget.dialog;

import android.content.Context;
import android.os.Bundle;
import com.yftech.settings.R;

/* JADX INFO: loaded from: classes.dex */
public class KeyboardNumDialog extends CommonDialog {
    public KeyboardNumDialog(Context context) {
        super(context);
    }

    @Override // com.yftech.settings.widget.dialog.CommonDialog, com.yftech.settings.widget.dialog.BaseDialog, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_keyboard);
    }
}
