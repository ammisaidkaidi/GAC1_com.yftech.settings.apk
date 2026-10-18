package com.yftech.settings.widget;

import android.content.Context;
import android.media.AudioManager;
import android.provider.Settings;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.Nullable;
import com.yftech.settings.R;
import com.yftech.settings.utils.LogUtil;

/* JADX INFO: loaded from: classes.dex */
public class SoundStage extends LinearLayout implements View.OnTouchListener {
    private static final int PLAY_SOUND_MOVE_COUNT = 10;
    private int mCustomMaxX;
    private int mCustomMaxY;
    private int mCustomX;
    private int mCustomY;
    private View mHDash;
    private boolean mIsTouchMode;
    private OnThumbPositionChanged mListener;
    private int mMoveCount;
    private ImageView mSelectedImg;
    private FrameLayout mStageLayout;
    private boolean mStartMoving;
    private ImageView mThumb;
    private View mVDash;

    public interface OnThumbPositionChanged {
        void onPositionChanged(int i, int i2);
    }

    public SoundStage(Context context, int i, int i2) {
        super(context);
        this.mCustomMaxX = 1;
        this.mCustomMaxY = 1;
        this.mCustomX = 0;
        this.mCustomY = 0;
        this.mMoveCount = 0;
        this.mStartMoving = false;
        this.mIsTouchMode = false;
        this.mCustomMaxX = i;
        this.mCustomMaxY = i2;
        inflateAndFindView(context);
    }

    public SoundStage(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mCustomMaxX = 1;
        this.mCustomMaxY = 1;
        this.mCustomX = 0;
        this.mCustomY = 0;
        this.mMoveCount = 0;
        this.mStartMoving = false;
        this.mIsTouchMode = false;
        inflateAndFindView(context);
    }

    public SoundStage(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mCustomMaxX = 1;
        this.mCustomMaxY = 1;
        this.mCustomX = 0;
        this.mCustomY = 0;
        this.mMoveCount = 0;
        this.mStartMoving = false;
        this.mIsTouchMode = false;
        inflateAndFindView(context);
    }

    public SoundStage(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.mCustomMaxX = 1;
        this.mCustomMaxY = 1;
        this.mCustomX = 0;
        this.mCustomY = 0;
        this.mMoveCount = 0;
        this.mStartMoving = false;
        this.mIsTouchMode = false;
        inflateAndFindView(context);
    }

    private void handleLayoutTouch(MotionEvent motionEvent) {
        float f;
        if (motionEvent.getAction() == 0) {
            this.mMoveCount = 0;
            if (isTouchThumb(motionEvent.getX(), motionEvent.getY())) {
                this.mStartMoving = true;
                return;
            }
        } else if (motionEvent.getAction() == 2) {
            this.mMoveCount++;
        }
        if (this.mStartMoving || (motionEvent.getAction() == 0 && !this.mStartMoving)) {
            int width = this.mThumb.getWidth();
            int height = this.mThumb.getHeight();
            int width2 = this.mStageLayout.getWidth() - width;
            int height2 = this.mStageLayout.getHeight() - height;
            float f2 = (width2 * 1.0f) / this.mCustomMaxX;
            float f3 = (height2 * 1.0f) / this.mCustomMaxY;
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            float f4 = width / 2.0f;
            float f5 = 0.0f;
            if (x < f4) {
                f = 0.0f;
            } else {
                f = x > ((float) this.mStageLayout.getWidth()) - f4 ? this.mCustomMaxX : (x - f4) / f2;
            }
            float f6 = height / 2.0f;
            if (y >= f6) {
                f5 = y > ((float) this.mStageLayout.getHeight()) - f6 ? this.mCustomMaxY : (y - f6) / f3;
            }
            float f7 = f2 * f;
            float f8 = f3 * f5;
            this.mThumb.setX(f7);
            this.mThumb.setY(f8);
            this.mHDash.setY(f8 + (this.mThumb.getHeight() / 2));
            this.mVDash.setX(f7 + (this.mThumb.getWidth() / 2));
            int i = (int) f;
            this.mCustomX = i;
            int i2 = (int) f5;
            this.mCustomY = i2;
            if (this.mListener != null) {
                this.mListener.onPositionChanged(i, i2);
            }
        }
        if (motionEvent.getAction() == 1) {
            this.mStartMoving = false;
            LogUtil.i("SoundStage", "moveCount:" + this.mMoveCount);
            if (this.mMoveCount <= 10) {
                playKeySoundEffect();
            }
            this.mMoveCount = 0;
        }
    }

    private void inflateAndFindView(Context context) {
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.view_sound_stage, this);
        this.mStageLayout = (FrameLayout) viewInflate.findViewById(R.id.stageLayout);
        this.mThumb = (ImageView) viewInflate.findViewById(R.id.stageThumb);
        this.mSelectedImg = (ImageView) viewInflate.findViewById(R.id.selectedImg);
        this.mHDash = viewInflate.findViewById(R.id.hDash);
        this.mVDash = viewInflate.findViewById(R.id.vDash);
        this.mStageLayout.setOnTouchListener(this);
    }

    private boolean isTouchThumb(float f, float f2) {
        return true;
    }

    private void playKeySoundEffect() {
        if (Settings.System.getInt(getContext().getApplicationContext().getContentResolver(), "sound_effects_enabled", 0) == 1) {
            ((AudioManager) getContext().getApplicationContext().getSystemService("audio")).playSoundEffect(0);
        }
    }

    public void changeToTouchMode(boolean z) {
        this.mIsTouchMode = z;
        if (z) {
            this.mSelectedImg.setVisibility(8);
            this.mStageLayout.setVisibility(0);
        } else {
            this.mStageLayout.setVisibility(8);
            this.mSelectedImg.setVisibility(0);
        }
    }

    public int getThumbX() {
        return this.mCustomX;
    }

    public int getThumbY() {
        return this.mCustomY;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        view.getParent().requestDisallowInterceptTouchEvent(true);
        if (view.getId() == R.id.stageLayout) {
            handleLayoutTouch(motionEvent);
        }
        return true;
    }

    public void setMaxX(int i) {
        this.mCustomMaxX = i;
    }

    public void setMaxY(int i) {
        this.mCustomMaxY = i;
    }

    public void setPositionChangedListener(OnThumbPositionChanged onThumbPositionChanged) {
        this.mListener = onThumbPositionChanged;
    }

    public void setThumbX(int i) {
        if (i > this.mCustomMaxX) {
            i = this.mCustomMaxX;
        } else if (i < 0) {
            i = 0;
        }
        float width = i * (((this.mStageLayout.getWidth() - this.mThumb.getWidth()) * 1.0f) / this.mCustomMaxX);
        this.mThumb.setX(width);
        this.mVDash.setX(width + (this.mThumb.getWidth() / 2));
        this.mCustomX = i;
    }

    public void setThumbY(int i) {
        if (i > this.mCustomMaxY) {
            i = this.mCustomMaxY;
        } else if (i < 0) {
            i = 0;
        }
        float height = i * (((this.mStageLayout.getHeight() - this.mThumb.getHeight()) * 1.0f) / this.mCustomMaxY);
        this.mThumb.setY(height);
        this.mHDash.setY(height + (this.mThumb.getHeight() / 2));
        this.mCustomY = i;
    }

    public void showFront() {
        if (this.mIsTouchMode) {
        }
    }

    public void showRear() {
        if (this.mIsTouchMode) {
        }
    }

    public void showTotal() {
        if (this.mIsTouchMode) {
        }
    }
}
