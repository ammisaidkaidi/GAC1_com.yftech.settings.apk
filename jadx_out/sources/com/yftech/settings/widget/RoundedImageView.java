package com.yftech.settings.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Xfermode;
import android.os.Build;
import android.util.AttributeSet;
import androidx.annotation.ColorInt;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatImageView;
import com.yftech.settings.R;
import com.yftech.settings.utils.Utils;

/* JADX INFO: loaded from: classes.dex */
public class RoundedImageView extends AppCompatImageView {
    private int borderColor;
    private float[] borderRadii;
    private RectF borderRectF;
    private int borderWidth;
    private Context context;
    private int cornerBottomLeftRadius;
    private int cornerBottomRightRadius;
    private int cornerRadius;
    private int cornerTopLeftRadius;
    private int cornerTopRightRadius;
    private int height;
    private int innerBorderColor;
    private int innerBorderWidth;
    private boolean isCircle;
    private boolean isCoverSrc;
    private int maskColor;
    private Paint paint;
    private Path path;
    private float radius;
    private Path srcPath;
    private float[] srcRadii;
    private RectF srcRectF;
    private int width;
    private Xfermode xfermode;

    public RoundedImageView(Context context) {
        this(context, null);
    }

    public RoundedImageView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RoundedImageView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.borderColor = -1;
        this.innerBorderColor = -1;
        this.context = context;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.RoundedImageView, 0, 0);
        for (int i2 = 0; i2 < typedArrayObtainStyledAttributes.getIndexCount(); i2++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i2);
            if (index == 10) {
                this.isCoverSrc = typedArrayObtainStyledAttributes.getBoolean(index, this.isCoverSrc);
            } else if (index == 9) {
                this.isCircle = typedArrayObtainStyledAttributes.getBoolean(index, this.isCircle);
            } else if (index == 1) {
                this.borderWidth = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.borderWidth);
            } else if (index == 0) {
                this.borderColor = typedArrayObtainStyledAttributes.getColor(index, this.borderColor);
            } else if (index == 8) {
                this.innerBorderWidth = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.innerBorderWidth);
            } else if (index == 7) {
                this.innerBorderColor = typedArrayObtainStyledAttributes.getColor(index, this.innerBorderColor);
            } else if (index == 4) {
                this.cornerRadius = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.cornerRadius);
            } else if (index == 5) {
                this.cornerTopLeftRadius = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.cornerTopLeftRadius);
            } else if (index == 6) {
                this.cornerTopRightRadius = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.cornerTopRightRadius);
            } else if (index == 2) {
                this.cornerBottomLeftRadius = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.cornerBottomLeftRadius);
            } else if (index == 3) {
                this.cornerBottomRightRadius = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.cornerBottomRightRadius);
            } else if (index == 11) {
                this.maskColor = typedArrayObtainStyledAttributes.getColor(index, this.maskColor);
            }
        }
        typedArrayObtainStyledAttributes.recycle();
        this.borderRadii = new float[8];
        this.srcRadii = new float[8];
        this.borderRectF = new RectF();
        this.srcRectF = new RectF();
        this.paint = new Paint();
        this.path = new Path();
        if (Build.VERSION.SDK_INT <= 27) {
            this.xfermode = new PorterDuffXfermode(PorterDuff.Mode.DST_IN);
        } else {
            this.xfermode = new PorterDuffXfermode(PorterDuff.Mode.DST_OUT);
            this.srcPath = new Path();
        }
        calculateRadii();
        clearInnerBorderWidth();
    }

    private void calculateRadii() {
        if (this.isCircle) {
            return;
        }
        if (this.cornerRadius > 0) {
            for (int i = 0; i < this.borderRadii.length; i++) {
                this.borderRadii[i] = this.cornerRadius;
                this.srcRadii[i] = this.cornerRadius - (this.borderWidth / 2.0f);
            }
            return;
        }
        float[] fArr = this.borderRadii;
        float[] fArr2 = this.borderRadii;
        float f = this.cornerTopLeftRadius;
        fArr2[1] = f;
        fArr[0] = f;
        float[] fArr3 = this.borderRadii;
        float[] fArr4 = this.borderRadii;
        float f2 = this.cornerTopRightRadius;
        fArr4[3] = f2;
        fArr3[2] = f2;
        float[] fArr5 = this.borderRadii;
        float[] fArr6 = this.borderRadii;
        float f3 = this.cornerBottomRightRadius;
        fArr6[5] = f3;
        fArr5[4] = f3;
        float[] fArr7 = this.borderRadii;
        float[] fArr8 = this.borderRadii;
        float f4 = this.cornerBottomLeftRadius;
        fArr8[7] = f4;
        fArr7[6] = f4;
        float[] fArr9 = this.srcRadii;
        float[] fArr10 = this.srcRadii;
        float f5 = this.cornerTopLeftRadius - (this.borderWidth / 2.0f);
        fArr10[1] = f5;
        fArr9[0] = f5;
        float[] fArr11 = this.srcRadii;
        float[] fArr12 = this.srcRadii;
        float f6 = this.cornerTopRightRadius - (this.borderWidth / 2.0f);
        fArr12[3] = f6;
        fArr11[2] = f6;
        float[] fArr13 = this.srcRadii;
        float[] fArr14 = this.srcRadii;
        float f7 = this.cornerBottomRightRadius - (this.borderWidth / 2.0f);
        fArr14[5] = f7;
        fArr13[4] = f7;
        float[] fArr15 = this.srcRadii;
        float[] fArr16 = this.srcRadii;
        float f8 = this.cornerBottomLeftRadius - (this.borderWidth / 2.0f);
        fArr16[7] = f8;
        fArr15[6] = f8;
    }

    private void calculateRadiiAndRectF(boolean z) {
        if (z) {
            this.cornerRadius = 0;
        }
        calculateRadii();
        initBorderRectF();
        invalidate();
    }

    private void clearInnerBorderWidth() {
        if (this.isCircle) {
            return;
        }
        this.innerBorderWidth = 0;
    }

    private void drawBorders(Canvas canvas) {
        if (!this.isCircle) {
            if (this.borderWidth > 0) {
                drawRectFBorder(canvas, this.borderWidth, this.borderColor, this.borderRectF, this.borderRadii);
            }
        } else {
            if (this.borderWidth > 0) {
                drawCircleBorder(canvas, this.borderWidth, this.borderColor, this.radius - (this.borderWidth / 2.0f));
            }
            if (this.innerBorderWidth > 0) {
                drawCircleBorder(canvas, this.innerBorderWidth, this.innerBorderColor, (this.radius - this.borderWidth) - (this.innerBorderWidth / 2.0f));
            }
        }
    }

    private void drawCircleBorder(Canvas canvas, int i, int i2, float f) {
        initBorderPaint(i, i2);
        this.path.addCircle(this.width / 2.0f, this.height / 2.0f, f, Path.Direction.CCW);
        canvas.drawPath(this.path, this.paint);
    }

    private void drawRectFBorder(Canvas canvas, int i, int i2, RectF rectF, float[] fArr) {
        initBorderPaint(i, i2);
        this.path.addRoundRect(rectF, fArr, Path.Direction.CCW);
        canvas.drawPath(this.path, this.paint);
    }

    private void initBorderPaint(int i, int i2) {
        this.path.reset();
        this.paint.setStrokeWidth(i);
        this.paint.setColor(i2);
        this.paint.setStyle(Paint.Style.STROKE);
    }

    private void initBorderRectF() {
        if (this.isCircle) {
            return;
        }
        this.borderRectF.set(this.borderWidth / 2.0f, this.borderWidth / 2.0f, this.width - (this.borderWidth / 2.0f), this.height - (this.borderWidth / 2.0f));
    }

    private void initSrcRectF() {
        if (this.isCircle) {
            this.radius = Math.min(this.width, this.height) / 2.0f;
            this.srcRectF.set((this.width / 2.0f) - this.radius, (this.height / 2.0f) - this.radius, (this.width / 2.0f) + this.radius, (this.height / 2.0f) + this.radius);
        } else {
            this.srcRectF.set(0.0f, 0.0f, this.width, this.height);
            if (this.isCoverSrc) {
                this.srcRectF = this.borderRectF;
            }
        }
    }

    public void isCircle(boolean z) {
        this.isCircle = z;
        clearInnerBorderWidth();
        initSrcRectF();
        invalidate();
    }

    public void isCoverSrc(boolean z) {
        this.isCoverSrc = z;
        initSrcRectF();
        invalidate();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        canvas.saveLayer(this.srcRectF, null, 31);
        if (!this.isCoverSrc) {
            canvas.scale((((this.width - (this.borderWidth * 2)) - (this.innerBorderWidth * 2)) * 1.0f) / this.width, (((this.height - (this.borderWidth * 2)) - (this.innerBorderWidth * 2)) * 1.0f) / this.height, this.width / 2.0f, this.height / 2.0f);
        }
        super.onDraw(canvas);
        this.paint.reset();
        this.path.reset();
        if (this.isCircle) {
            this.path.addCircle(this.width / 2.0f, this.height / 2.0f, this.radius, Path.Direction.CCW);
        } else {
            this.path.addRoundRect(this.srcRectF, this.srcRadii, Path.Direction.CCW);
        }
        this.paint.setAntiAlias(true);
        this.paint.setStyle(Paint.Style.FILL);
        this.paint.setXfermode(this.xfermode);
        if (Build.VERSION.SDK_INT <= 27) {
            canvas.drawPath(this.path, this.paint);
        } else {
            this.srcPath.addRect(this.srcRectF, Path.Direction.CCW);
            this.srcPath.op(this.path, Path.Op.DIFFERENCE);
            canvas.drawPath(this.srcPath, this.paint);
        }
        this.paint.setXfermode(null);
        if (this.maskColor != 0) {
            this.paint.setColor(this.maskColor);
            canvas.drawPath(this.path, this.paint);
        }
        canvas.restore();
        drawBorders(canvas);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.width = i;
        this.height = i2;
        initBorderRectF();
        initSrcRectF();
    }

    public void setBorderColor(@ColorInt int i) {
        this.borderColor = i;
        invalidate();
    }

    public void setBorderWidth(int i) {
        this.borderWidth = Utils.dp2px(this.context, i);
        calculateRadiiAndRectF(false);
    }

    public void setCornerBottomLeftRadius(int i) {
        this.cornerBottomLeftRadius = Utils.dp2px(this.context, i);
        calculateRadiiAndRectF(true);
    }

    public void setCornerBottomRightRadius(int i) {
        this.cornerBottomRightRadius = Utils.dp2px(this.context, i);
        calculateRadiiAndRectF(true);
    }

    public void setCornerRadius(int i) {
        this.cornerRadius = Utils.dp2px(this.context, i);
        calculateRadiiAndRectF(false);
    }

    public void setCornerTopLeftRadius(int i) {
        this.cornerTopLeftRadius = Utils.dp2px(this.context, i);
        calculateRadiiAndRectF(true);
    }

    public void setCornerTopRightRadius(int i) {
        this.cornerTopRightRadius = Utils.dp2px(this.context, i);
        calculateRadiiAndRectF(true);
    }

    public void setInnerBorderColor(@ColorInt int i) {
        this.innerBorderColor = i;
        invalidate();
    }

    public void setInnerBorderWidth(int i) {
        this.innerBorderWidth = Utils.dp2px(this.context, i);
        clearInnerBorderWidth();
        invalidate();
    }

    public void setMaskColor(@ColorInt int i) {
        this.maskColor = i;
        invalidate();
    }
}
