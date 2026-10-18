package com.yftech.settings.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.media.AudioManager;
import android.os.Message;
import android.provider.Settings;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.SeekBar;
import androidx.appcompat.widget.AppCompatSeekBar;
import com.yftech.settings.R;
import com.yftech.settings.utils.LogUtil;
import com.yftech.vehicle.internal.adapter.ICarDoor;

/* JADX INFO: loaded from: classes.dex */
public class SeekBarNumber extends AppCompatSeekBar implements View.OnTouchListener, SeekBar.OnSeekBarChangeListener {
    private static final int MSG_RESET_TYPE = 1001;
    private static final int PLAY_SOUND_MOVE_COUNT = 10;
    private static final int TYPE_NORMAL = 2;
    private static final int TYPE_WARNING = 1;
    private int mCurrType;
    private SeekBarNumberHandler mHandler;
    private boolean mIsMoveOutside;
    private boolean mIsPaintProgress;
    private OnSeekChangeListener mListener;
    private int mMoveCount;
    private int mMoveOutsideProgress;
    private boolean mMoving;
    private int mNumberMin;
    private Paint mProgressPaint;
    private int mStartSeek;
    private Drawable mThumbNormal;
    private Drawable mThumbPress;
    private int mThumbWidthSub;
    private int mWarnMax;

    public interface OnSeekChangeListener {
        void onProgressChanged(SeekBarNumber seekBarNumber, int i);

        void onStartTrackingTouch(SeekBarNumber seekBarNumber);

        void onStopTrackingTouch(SeekBarNumber seekBarNumber);
    }

    private static class SeekBarNumberHandler extends BaseHandler<SeekBarNumber> {
        public SeekBarNumberHandler(SeekBarNumber seekBarNumber) {
            super(seekBarNumber);
        }

        @Override // com.yftech.settings.widget.BaseHandler
        public void handleMessageProcess(Message message, SeekBarNumber seekBarNumber) {
            seekBarNumber.handleMessage(message);
        }
    }

    public SeekBarNumber(Context context) {
        super(context);
        this.mCurrType = 2;
        this.mMoveCount = 0;
        this.mNumberMin = 0;
        this.mIsPaintProgress = false;
        this.mIsMoveOutside = false;
        this.mMoveOutsideProgress = 0;
        initView();
    }

    public SeekBarNumber(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mCurrType = 2;
        this.mMoveCount = 0;
        this.mNumberMin = 0;
        this.mIsPaintProgress = false;
        this.mIsMoveOutside = false;
        this.mMoveOutsideProgress = 0;
        initView();
    }

    public SeekBarNumber(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mCurrType = 2;
        this.mMoveCount = 0;
        this.mNumberMin = 0;
        this.mIsPaintProgress = false;
        this.mIsMoveOutside = false;
        this.mMoveOutsideProgress = 0;
        initView();
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0037  */
    private void drawProgressPaint(int i, Rect rect, Canvas canvas) {
        int i2;
        int width = getWidth() / 2;
        int height = getHeight() / 2;
        int height2 = getHeight() / 2;
        if (i == 0) {
            i2 = width;
        } else if (i < 0) {
            i2 = (rect.right + (this.mMoving ? 0 : this.mThumbWidthSub)) - 2;
            if (i2 > width) {
                i2 = width;
            }
        } else if (i > 0) {
            i2 = rect.left + (this.mMoving ? 0 : this.mThumbWidthSub) + 2;
            if (i2 < width) {
                i2 = width;
            }
        } else {
            i2 = 0;
        }
        canvas.drawLine(width, height, i2, height2, this.mProgressPaint);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleMessage(Message message) {
        if (message.what != 1001) {
            return;
        }
        this.mCurrType = 1;
    }

    private void initProgressPaint() {
        this.mProgressPaint = new Paint();
        this.mProgressPaint.setShader(new LinearGradient(0.0f, 0.0f, 400.0f, 12.0f, new int[]{-4265, -1136105, -4265}, new float[]{0.0f, 0.5f, 1.0f}, Shader.TileMode.CLAMP));
        this.mProgressPaint.setStrokeWidth(12.0f);
    }

    private void initView() {
        this.mHandler = new SeekBarNumberHandler(this);
        this.mWarnMax = getMax();
        setOnSeekBarChangeListener(this);
        setOnTouchListener(this);
        initProgressPaint();
        this.mThumbNormal = getContext().getApplicationContext().getDrawable(R.mipmap.slider_nor2);
        this.mThumbPress = getContext().getApplicationContext().getDrawable(R.mipmap.slider_nor1);
        this.mThumbWidthSub = Math.abs(this.mThumbNormal.getIntrinsicWidth() - this.mThumbPress.getIntrinsicWidth()) / 2;
        setThumb(this.mThumbNormal);
    }

    public int getMoveOutsideProgress() {
        return this.mMoveOutsideProgress;
    }

    public boolean isMoveOutside() {
        return this.mIsMoveOutside;
    }

    @Override // androidx.appcompat.widget.AppCompatSeekBar, android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    protected synchronized void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.mIsPaintProgress) {
            canvas.save();
            drawProgressPaint(getProgress() + this.mNumberMin, getThumb().getBounds(), canvas);
            canvas.restore();
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
        if (z) {
            if (this.mCurrType != 1 || this.mStartSeek > this.mWarnMax || i <= this.mWarnMax) {
                if (this.mListener != null) {
                    this.mListener.onProgressChanged(this, i);
                }
            } else if (this.mListener != null) {
                this.mListener.onProgressChanged(this, this.mWarnMax);
            }
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStartTrackingTouch(SeekBar seekBar) {
        this.mMoving = true;
        this.mStartSeek = seekBar.getProgress();
        setThumb(this.mThumbPress);
        if (this.mListener != null) {
            this.mListener.onStartTrackingTouch(this);
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStopTrackingTouch(SeekBar seekBar) {
        this.mMoving = false;
        int progress = seekBar.getProgress();
        setThumb(this.mThumbNormal);
        if (this.mCurrType == 1 && this.mStartSeek <= this.mWarnMax && progress > this.mWarnMax) {
            setProgress(this.mWarnMax);
            this.mCurrType = 2;
            this.mHandler.removeMessages(1001);
            this.mHandler.sendEmptyMessageDelayed(1001, 5000L);
        }
        LogUtil.i("SeekBarNumber", "moveCount:" + this.mMoveCount);
        if (this.mMoveCount <= 10) {
            AudioManager audioManager = (AudioManager) getContext().getApplicationContext().getSystemService("audio");
            if (Settings.System.getInt(getContext().getApplicationContext().getContentResolver(), "sound_effects_enabled", 0) == 1) {
                audioManager.playSoundEffect(0);
            }
        }
        this.mMoveCount = 0;
        if (this.mListener != null) {
            this.mListener.onStopTrackingTouch(this);
        }
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.mMoveCount = 0;
        } else if (motionEvent.getAction() == 2) {
            this.mMoveCount++;
        }
        return false;
    }

    @Override // android.widget.AbsSeekBar, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getX() < -150.0f || motionEvent.getX() > getWidth() + ICarDoor.LOCK_UNLOCK_SOUND_STATE || motionEvent.getY() < -30.0f || motionEvent.getY() > getHeight() + 30) {
            this.mIsMoveOutside = true;
            this.mMoveOutsideProgress = getProgress();
        }
        boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
        if (motionEvent.getAction() == 1) {
            this.mIsMoveOutside = false;
        }
        return zOnTouchEvent;
    }

    public void setNumberMin(int i) {
        this.mNumberMin = i;
    }

    public void setOnSeekChangeListener(OnSeekChangeListener onSeekChangeListener) {
        this.mListener = onSeekChangeListener;
    }

    public void setPaintProgress(boolean z) {
        this.mIsPaintProgress = z;
    }

    public void setShowWarn(boolean z) {
        this.mCurrType = z ? 1 : 2;
    }

    public void setWarnMax(int i) {
        this.mWarnMax = i;
    }
}
