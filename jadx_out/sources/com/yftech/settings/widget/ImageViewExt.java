package com.yftech.settings.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatImageView;
import com.yftech.settings.R;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
public class ImageViewExt extends AppCompatImageView {
    public static final int SCALE_TYPE_MATRIX_CENTER_CROP = 3;
    public static final int SCALE_TYPE_MATRIX_LEFT_CROP = 1;
    public static final int SCALE_TYPE_MATRIX_RIGHT_CROP = 2;
    private int mScaleTypeMatrixExt;

    @Retention(RetentionPolicy.RUNTIME)
    public @interface ScaleTypeMatrixExt {
    }

    public ImageViewExt(Context context) {
        this(context, null);
    }

    public ImageViewExt(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ImageViewExt(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(context, attributeSet);
    }

    private void handScaleTypeMatrixExt() {
        float f;
        float f2;
        if (getScaleType() != ImageView.ScaleType.MATRIX || this.mScaleTypeMatrixExt == -1) {
            return;
        }
        int intrinsicWidth = getDrawable().getIntrinsicWidth();
        int intrinsicHeight = getDrawable().getIntrinsicHeight();
        int width = (getWidth() - getPaddingLeft()) - getPaddingRight();
        int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
        if (intrinsicWidth * height > width * intrinsicHeight) {
            f = height / intrinsicHeight;
            switch (this.mScaleTypeMatrixExt) {
                case 2:
                    f2 = width - (intrinsicWidth * f);
                    break;
                case 3:
                    f2 = 0.5f * (width - (intrinsicWidth * f));
                    break;
            }
            Matrix matrix = new Matrix();
            matrix.setScale(f, f);
            matrix.postTranslate(Math.round(f2), Math.round(0.0f));
            setImageMatrix(matrix);
        }
        f = width / intrinsicWidth;
        f2 = 0.0f;
        Matrix matrix2 = new Matrix();
        matrix2.setScale(f, f);
        matrix2.postTranslate(Math.round(f2), Math.round(0.0f));
        setImageMatrix(matrix2);
    }

    protected void init(Context context, @Nullable AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ImageViewExt);
        this.mScaleTypeMatrixExt = typedArrayObtainStyledAttributes.getInt(0, -1);
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        handScaleTypeMatrixExt();
    }

    @Override // android.view.View
    public void requestLayout() {
        super.requestLayout();
        handScaleTypeMatrixExt();
    }

    public void setScaleTypeMatrixExt(@ScaleTypeMatrixExt int i) {
        this.mScaleTypeMatrixExt = i;
        requestLayout();
    }
}
