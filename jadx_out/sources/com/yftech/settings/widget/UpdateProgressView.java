package com.yftech.settings.widget;

import android.content.Context;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.LayerDrawable;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatTextView;
import com.yftech.settings.R;

/* JADX INFO: loaded from: classes.dex */
public class UpdateProgressView extends AppCompatTextView {
    private ClipDrawable clipDrawable;

    public UpdateProgressView(@NonNull Context context) {
        super(context, null);
    }

    public UpdateProgressView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet, 0);
    }

    public UpdateProgressView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    private void initView() {
        setBackgroundResource(R.drawable.icon_update_progress);
        setProgressLevel(0);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        initView();
    }

    public void setProgressLevel(int i) {
        if (this.clipDrawable == null) {
            this.clipDrawable = (ClipDrawable) ((LayerDrawable) getBackground()).findDrawableByLayerId(R.id.progress_clip);
        }
        this.clipDrawable.setLevel(i * 100);
    }
}
