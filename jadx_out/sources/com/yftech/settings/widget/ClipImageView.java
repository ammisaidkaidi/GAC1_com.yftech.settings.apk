package com.yftech.settings.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.util.Log;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.View;
import android.widget.ImageView;
import com.yftech.settings.R;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"AppCompatCustomView"})
public class ClipImageView extends ImageView implements ScaleGestureDetector.OnScaleGestureListener, View.OnTouchListener {
    private static final String TAG = "ClipImageView";
    private boolean isAutoScale;
    private boolean isCanDrag;
    private int lastPointerCount;
    private int mAspectX;
    private int mAspectY;
    private Rect mClipBorder;
    private final int mClipPadding;
    private boolean mDrawCircleFlag;
    private GestureDetector mGestureDetector;
    private float mInitScale;
    private float mLastX;
    private float mLastY;
    private final int mMaskColor;
    private final float[] mMatrixValues;
    private int mMaxOutputWidth;
    private final Paint mPaint;
    private float mRoundCorner;
    private ScaleGestureDetector mScaleGestureDetector;
    private final Matrix mScaleMatrix;
    private float mScaleMax;
    private float mScaleMin;
    private String mTipText;

    private class AutoScaleRunnable implements Runnable {
        static final float BIGGER = 1.07f;
        static final float SMALLER = 0.93f;
        private float mTargetScale;
        private float tmpScale;
        private float x;
        private float y;

        public AutoScaleRunnable(float f, float f2, float f3) {
            this.mTargetScale = f;
            this.x = f2;
            this.y = f3;
            if (ClipImageView.this.getScale() < this.mTargetScale) {
                this.tmpScale = BIGGER;
            } else {
                this.tmpScale = SMALLER;
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            ClipImageView.this.mScaleMatrix.postScale(this.tmpScale, this.tmpScale, this.x, this.y);
            ClipImageView.this.checkBorder();
            ClipImageView.this.setImageMatrix(ClipImageView.this.mScaleMatrix);
            float scale = ClipImageView.this.getScale();
            if ((this.tmpScale > 1.0f && scale < this.mTargetScale) || (this.tmpScale < 1.0f && this.mTargetScale < scale)) {
                ClipImageView.this.postDelayed(this, 16L);
                return;
            }
            float f = this.mTargetScale / scale;
            ClipImageView.this.mScaleMatrix.postScale(f, f, this.x, this.y);
            ClipImageView.this.checkBorder();
            ClipImageView.this.setImageMatrix(ClipImageView.this.mScaleMatrix);
            ClipImageView.this.isAutoScale = false;
        }
    }

    public ClipImageView(Context context) {
        this(context, null);
    }

    public ClipImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mScaleMax = 4.0f;
        this.mScaleMin = 2.0f;
        this.mInitScale = 1.0f;
        this.mMatrixValues = new float[9];
        this.mScaleGestureDetector = null;
        this.mScaleMatrix = new Matrix();
        this.mClipBorder = new Rect();
        this.mMaxOutputWidth = 0;
        setScaleType(ImageView.ScaleType.MATRIX);
        this.mGestureDetector = new GestureDetector(context, new GestureDetector.SimpleOnGestureListener() { // from class: com.yftech.settings.widget.ClipImageView.1
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
            public boolean onDoubleTap(MotionEvent motionEvent) {
                if (ClipImageView.this.isAutoScale) {
                    return true;
                }
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                if (ClipImageView.this.getScale() < ClipImageView.this.mScaleMin) {
                    ClipImageView.this.postDelayed(ClipImageView.this.new AutoScaleRunnable(ClipImageView.this.mScaleMin, x, y), 16L);
                } else {
                    ClipImageView.this.postDelayed(ClipImageView.this.new AutoScaleRunnable(ClipImageView.this.mInitScale, x, y), 16L);
                }
                ClipImageView.this.isAutoScale = true;
                return true;
            }
        });
        this.mScaleGestureDetector = new ScaleGestureDetector(context, this);
        setOnTouchListener(this);
        this.mPaint = new Paint(1);
        this.mPaint.setColor(-1);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ClipImageView);
        this.mAspectX = typedArrayObtainStyledAttributes.getInteger(7, 1);
        this.mAspectY = typedArrayObtainStyledAttributes.getInteger(3, 1);
        this.mClipPadding = typedArrayObtainStyledAttributes.getDimensionPixelSize(1, 0);
        this.mTipText = typedArrayObtainStyledAttributes.getString(5);
        this.mMaskColor = typedArrayObtainStyledAttributes.getColor(4, -1308622848);
        this.mDrawCircleFlag = typedArrayObtainStyledAttributes.getBoolean(0, false);
        this.mRoundCorner = typedArrayObtainStyledAttributes.getDimension(2, 0.0f);
        this.mPaint.setTextSize(typedArrayObtainStyledAttributes.getDimensionPixelSize(6, 24));
        typedArrayObtainStyledAttributes.recycle();
        this.mPaint.setDither(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkBorder() {
        float f;
        RectF matrixRectF = getMatrixRectF();
        float f2 = 0.0f;
        if (matrixRectF.width() >= this.mClipBorder.width()) {
            f = matrixRectF.left > ((float) this.mClipBorder.left) ? (-matrixRectF.left) + this.mClipBorder.left : 0.0f;
            if (matrixRectF.right < this.mClipBorder.right) {
                f = this.mClipBorder.right - matrixRectF.right;
            }
        } else {
            f = 0.0f;
        }
        if (matrixRectF.height() >= this.mClipBorder.height()) {
            f2 = matrixRectF.top > ((float) this.mClipBorder.top) ? (-matrixRectF.top) + this.mClipBorder.top : 0.0f;
            if (matrixRectF.bottom < this.mClipBorder.bottom) {
                f2 = this.mClipBorder.bottom - matrixRectF.bottom;
            }
        }
        this.mScaleMatrix.postTranslate(f, f2);
    }

    private RectF getMatrixRectF() {
        Matrix matrix = this.mScaleMatrix;
        RectF rectF = new RectF();
        Drawable drawable = getDrawable();
        if (drawable != null) {
            rectF.set(0.0f, 0.0f, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
            matrix.mapRect(rectF);
        }
        return rectF;
    }

    private boolean isCanDrag(float f, float f2) {
        return Math.sqrt((double) ((f * f) + (f2 * f2))) >= 0.0d;
    }

    private void postResetImageMatrix() {
        if (getWidth() != 0) {
            resetImageMatrix();
        } else {
            post(new Runnable() { // from class: com.yftech.settings.widget.ClipImageView.2
                @Override // java.lang.Runnable
                public void run() {
                    ClipImageView.this.resetImageMatrix();
                }
            });
        }
    }

    private void updateBorder() {
        int width = getWidth();
        int height = getHeight();
        this.mClipBorder.left = this.mClipPadding;
        this.mClipBorder.right = width - this.mClipPadding;
        int iWidth = (this.mClipBorder.width() * this.mAspectY) / this.mAspectX;
        if (!this.mDrawCircleFlag) {
            this.mClipBorder.top = (height - iWidth) / 2;
            this.mClipBorder.bottom = this.mClipBorder.top + iWidth;
            return;
        }
        int iWidth2 = (this.mClipBorder.width() * 1) / 1;
        this.mClipBorder.top = (height - iWidth2) / 2;
        this.mClipBorder.bottom = this.mClipBorder.top + iWidth2;
    }

    public Bitmap clip() {
        Matrix matrix;
        try {
            Drawable drawable = getDrawable();
            Bitmap bitmap = ((BitmapDrawable) drawable).getBitmap();
            if (bitmap == null) {
                Log.i(TAG, "clip: null!!!!!");
                return null;
            }
            float[] fArr = new float[9];
            this.mScaleMatrix.getValues(fArr);
            float intrinsicWidth = (fArr[0] * drawable.getIntrinsicWidth()) / bitmap.getWidth();
            float f = fArr[2];
            float f2 = fArr[5];
            float f3 = ((-f) + this.mClipBorder.left) / intrinsicWidth;
            float f4 = -f2;
            float f5 = (this.mClipBorder.top + f4) / intrinsicWidth;
            float fWidth = this.mClipBorder.width() / intrinsicWidth;
            float fHeight = this.mClipBorder.height() / intrinsicWidth;
            if (this.mMaxOutputWidth <= 0 || fWidth <= this.mMaxOutputWidth) {
                matrix = null;
            } else {
                float f6 = this.mMaxOutputWidth / fWidth;
                Matrix matrix2 = new Matrix();
                matrix2.setScale(f6, f6);
                matrix = matrix2;
            }
            Log.i("weichangjian", "clip: -transY = " + f4 + " mClipBorder.top = " + this.mClipBorder.top + " scale = " + intrinsicWidth + " cropY = " + f5);
            return Bitmap.createBitmap(bitmap, (int) f3, (int) f5, (int) fWidth, (int) fHeight, matrix, false);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public void drawRectangleOrCircle(Canvas canvas) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(canvas.getWidth(), canvas.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas2 = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint(1);
        PorterDuffXfermode porterDuffXfermode = new PorterDuffXfermode(PorterDuff.Mode.CLEAR);
        paint.setColor(0);
        canvas2.drawRect(0.0f, 0.0f, canvas2.getWidth(), canvas2.getHeight(), this.mPaint);
        paint.setXfermode(porterDuffXfermode);
        if (this.mDrawCircleFlag) {
            canvas2.drawCircle(this.mClipBorder.left + (this.mClipBorder.width() / 2.0f), this.mClipBorder.top + (this.mClipBorder.height() / 2.0f), this.mClipBorder.height() / 2.0f, paint);
        } else {
            canvas2.drawRoundRect(new RectF(this.mClipBorder.left, this.mClipBorder.top, this.mClipBorder.right, this.mClipBorder.bottom), this.mRoundCorner, this.mRoundCorner, paint);
        }
        canvas.drawBitmap(bitmapCreateBitmap, 0.0f, 0.0f, (Paint) null);
    }

    public Rect getClipBorder() {
        return this.mClipBorder;
    }

    public float[] getClipMatrixValues() {
        float[] fArr = new float[9];
        this.mScaleMatrix.getValues(fArr);
        return fArr;
    }

    public final float getScale() {
        this.mScaleMatrix.getValues(this.mMatrixValues);
        return this.mMatrixValues[0];
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int width = getWidth();
        getHeight();
        this.mPaint.setColor(this.mMaskColor);
        this.mPaint.setStyle(Paint.Style.FILL);
        this.mPaint.setStrokeWidth(1.0f);
        drawRectangleOrCircle(canvas);
        if (this.mTipText != null) {
            float fMeasureText = (width - this.mPaint.measureText(this.mTipText)) / 2.0f;
            Paint.FontMetrics fontMetrics = this.mPaint.getFontMetrics();
            float f = (this.mClipBorder.bottom + (this.mClipBorder.top / 2)) - ((fontMetrics.descent - fontMetrics.ascent) / 2.0f);
            this.mPaint.setStyle(Paint.Style.FILL);
            canvas.drawText(this.mTipText, fMeasureText, f, this.mPaint);
        }
    }

    @Override // android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        updateBorder();
    }

    @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
    public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
        float scale = getScale();
        float scaleFactor = scaleGestureDetector.getScaleFactor();
        if (getDrawable() == null) {
            return true;
        }
        if ((scale < this.mScaleMax && scaleFactor > 1.0f) || (scale > this.mInitScale && scaleFactor < 1.0f)) {
            if (scaleFactor * scale < this.mInitScale) {
                scaleFactor = this.mInitScale / scale;
            }
            if (scaleFactor * scale > this.mScaleMax) {
                scaleFactor = this.mScaleMax / scale;
            }
            this.mScaleMatrix.postScale(scaleFactor, scaleFactor, scaleGestureDetector.getFocusX(), scaleGestureDetector.getFocusY());
            checkBorder();
            setImageMatrix(this.mScaleMatrix);
        }
        return true;
    }

    @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
    public boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
        return true;
    }

    @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
    public void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (this.mGestureDetector.onTouchEvent(motionEvent)) {
            return true;
        }
        this.mScaleGestureDetector.onTouchEvent(motionEvent);
        int pointerCount = motionEvent.getPointerCount();
        float x = 0.0f;
        float y = 0.0f;
        for (int i = 0; i < pointerCount; i++) {
            x += motionEvent.getX(i);
            y += motionEvent.getY(i);
        }
        float f = pointerCount;
        float f2 = x / f;
        float f3 = y / f;
        if (pointerCount != this.lastPointerCount) {
            this.isCanDrag = false;
            this.mLastX = f2;
            this.mLastY = f3;
        }
        this.lastPointerCount = pointerCount;
        switch (motionEvent.getAction()) {
            case 1:
            case 3:
                this.lastPointerCount = 0;
                return true;
            case 2:
                float f4 = f2 - this.mLastX;
                float f5 = f3 - this.mLastY;
                if (!this.isCanDrag) {
                    this.isCanDrag = isCanDrag(f4, f5);
                }
                if (this.isCanDrag && getDrawable() != null) {
                    RectF matrixRectF = getMatrixRectF();
                    if (matrixRectF.width() <= this.mClipBorder.width()) {
                        f4 = 0.0f;
                    }
                    if (matrixRectF.height() <= this.mClipBorder.height()) {
                        f5 = 0.0f;
                    }
                    this.mScaleMatrix.postTranslate(f4, f5);
                    checkBorder();
                    setImageMatrix(this.mScaleMatrix);
                }
                this.mLastX = f2;
                this.mLastY = f3;
                return true;
            default:
                return true;
        }
    }

    public void resetImageMatrix() {
        Drawable drawable = getDrawable();
        if (drawable == null) {
            return;
        }
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        int iWidth = this.mClipBorder.width();
        int iHeight = this.mClipBorder.height();
        int width = getWidth();
        int height = getHeight();
        float f = intrinsicWidth * iHeight > iWidth * intrinsicHeight ? iHeight / intrinsicHeight : iWidth / intrinsicWidth;
        this.mScaleMatrix.setScale(f, f);
        this.mScaleMatrix.postTranslate((int) (((width - (intrinsicWidth * f)) * 0.5f) + 0.5f), (int) (((height - (intrinsicHeight * f)) * 0.5f) + 0.5f));
        setImageMatrix(this.mScaleMatrix);
        this.mInitScale = f;
        this.mScaleMin = this.mInitScale * 2.0f;
        this.mScaleMax = this.mInitScale * 4.0f;
    }

    public void setAspect(int i, int i2) {
        this.mAspectX = i;
        this.mAspectY = i2;
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        postResetImageMatrix();
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i) {
        super.setImageResource(i);
        postResetImageMatrix();
    }

    @Override // android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        postResetImageMatrix();
    }

    public void setMaxOutputWidth(int i) {
        this.mMaxOutputWidth = i;
    }

    public void setTip(String str) {
        this.mTipText = str;
    }

    public Bitmap snapShotForViewGroup() {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(getWidth(), getHeight(), Bitmap.Config.ARGB_8888);
        draw(new Canvas(bitmapCreateBitmap));
        return bitmapCreateBitmap;
    }
}
