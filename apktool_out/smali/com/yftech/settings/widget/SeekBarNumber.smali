.class public Lcom/yftech/settings/widget/SeekBarNumber;
.super Landroidx/appcompat/widget/AppCompatSeekBar;
.source "SeekBarNumber.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/settings/widget/SeekBarNumber$SeekBarNumberHandler;,
        Lcom/yftech/settings/widget/SeekBarNumber$OnSeekChangeListener;
    }
.end annotation


# static fields
.field private static final MSG_RESET_TYPE:I = 0x3e9

.field private static final PLAY_SOUND_MOVE_COUNT:I = 0xa

.field private static final TYPE_NORMAL:I = 0x2

.field private static final TYPE_WARNING:I = 0x1


# instance fields
.field private mCurrType:I

.field private mHandler:Lcom/yftech/settings/widget/SeekBarNumber$SeekBarNumberHandler;

.field private mIsMoveOutside:Z

.field private mIsPaintProgress:Z

.field private mListener:Lcom/yftech/settings/widget/SeekBarNumber$OnSeekChangeListener;

.field private mMoveCount:I

.field private mMoveOutsideProgress:I

.field private mMoving:Z

.field private mNumberMin:I

.field private mProgressPaint:Landroid/graphics/Paint;

.field private mStartSeek:I

.field private mThumbNormal:Landroid/graphics/drawable/Drawable;

.field private mThumbPress:Landroid/graphics/drawable/Drawable;

.field private mThumbWidthSub:I

.field private mWarnMax:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x2

    .line 58
    iput p1, p0, Lcom/yftech/settings/widget/SeekBarNumber;->mCurrType:I

    const/4 p1, 0x0

    .line 61
    iput p1, p0, Lcom/yftech/settings/widget/SeekBarNumber;->mMoveCount:I

    .line 64
    iput p1, p0, Lcom/yftech/settings/widget/SeekBarNumber;->mNumberMin:I

    .line 65
    iput-boolean p1, p0, Lcom/yftech/settings/widget/SeekBarNumber;->mIsPaintProgress:Z

    .line 67
    iput-boolean p1, p0, Lcom/yftech/settings/widget/SeekBarNumber;->mIsMoveOutside:Z

    .line 68
    iput p1, p0, Lcom/yftech/settings/widget/SeekBarNumber;->mMoveOutsideProgress:I

    .line 78
    invoke-direct {p0}, Lcom/yftech/settings/widget/SeekBarNumber;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    .line 58
    iput p1, p0, Lcom/yftech/settings/widget/SeekBarNumber;->mCurrType:I

    const/4 p1, 0x0

    .line 61
    iput p1, p0, Lcom/yftech/settings/widget/SeekBarNumber;->mMoveCount:I

    .line 64
    iput p1, p0, Lcom/yftech/settings/widget/SeekBarNumber;->mNumberMin:I

    .line 65
    iput-boolean p1, p0, Lcom/yftech/settings/widget/SeekBarNumber;->mIsPaintProgress:Z

    .line 67
    iput-boolean p1, p0, Lcom/yftech/settings/widget/SeekBarNumber;->mIsMoveOutside:Z

    .line 68
    iput p1, p0, Lcom/yftech/settings/widget/SeekBarNumber;->mMoveOutsideProgress:I

    .line 83
    invoke-direct {p0}, Lcom/yftech/settings/widget/SeekBarNumber;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x2

    .line 58
    iput p1, p0, Lcom/yftech/settings/widget/SeekBarNumber;->mCurrType:I

    const/4 p1, 0x0

    .line 61
    iput p1, p0, Lcom/yftech/settings/widget/SeekBarNumber;->mMoveCount:I

    .line 64
    iput p1, p0, Lcom/yftech/settings/widget/SeekBarNumber;->mNumberMin:I

    .line 65
    iput-boolean p1, p0, Lcom/yftech/settings/widget/SeekBarNumber;->mIsPaintProgress:Z

    .line 67
    iput-boolean p1, p0, Lcom/yftech/settings/widget/SeekBarNumber;->mIsMoveOutside:Z

    .line 68
    iput p1, p0, Lcom/yftech/settings/widget/SeekBarNumber;->mMoveOutsideProgress:I

    .line 88
    invoke-direct {p0}, Lcom/yftech/settings/widget/SeekBarNumber;->initView()V

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/settings/widget/SeekBarNumber;Landroid/os/Message;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/yftech/settings/widget/SeekBarNumber;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method private drawProgressPaint(ILandroid/graphics/Rect;Landroid/graphics/Canvas;)V
    .locals 9

    .line 153
    invoke-virtual {p0}, Lcom/yftech/settings/widget/SeekBarNumber;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 154
    invoke-virtual {p0}, Lcom/yftech/settings/widget/SeekBarNumber;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 156
    invoke-virtual {p0}, Lcom/yftech/settings/widget/SeekBarNumber;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    if-gez p1, :cond_2

    .line 160
    iget p1, p2, Landroid/graphics/Rect;->right:I

    iget-boolean p2, p0, Lcom/yftech/settings/widget/SeekBarNumber;->mMoving:Z

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    iget v3, p0, Lcom/yftech/settings/widget/SeekBarNumber;->mThumbWidthSub:I

    :goto_0
    add-int/2addr p1, v3

    add-int/lit8 p1, p1, -0x2

    if-le p1, v0, :cond_5

    goto :goto_2

    :cond_2
    if-lez p1, :cond_4

    .line 165
    iget p1, p2, Landroid/graphics/Rect;->left:I

    iget-boolean p2, p0, Lcom/yftech/settings/widget/SeekBarNumber;->mMoving:Z

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    iget v3, p0, Lcom/yftech/settings/widget/SeekBarNumber;->mThumbWidthSub:I

    :goto_1
    add-int/2addr p1, v3

    add-int/lit8 p1, p1, 0x2

    if-ge p1, v0, :cond_5

    :goto_2
    move p1, v0

    goto :goto_3

    :cond_4
    move p1, v3

    :cond_5
    :goto_3
    int-to-float v4, v0

    int-to-float v5, v1

    int-to-float v6, p1

    int-to-float v7, v2

    .line 170
    iget-object v8, p0, Lcom/yftech/settings/widget/SeekBarNumber;->mProgressPaint:Landroid/graphics/Paint;

    move-object v3, p3

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 42
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 44
    iput p1, p0, Lcom/yftech/settings/widget/SeekBarNumber;->mCurrType:I

    :goto_0
    return-void
.end method

.method private initProgressPaint()V
    .locals 9

    .line 132
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/yftech/settings/widget/SeekBarNumber;->mProgressPaint:Landroid/graphics/Paint;

    const/4 v0, 0x3

    .line 133
    new-array v6, v0, [I

    fill-array-data v6, :array_0

    .line 134
    new-array v7, v0, [F

    fill-array-data v7, :array_1

    .line 135
    new-instance v0, Landroid/graphics/LinearGradient;

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x43c80000    # 400.0f

    const/high16 v5, 0x41400000    # 12.0f

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 136
    iget-object v1, p0, Lcom/yftech/settings/widget/SeekBarNumber;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 137
    iget-object p0, p0, Lcom/yftech/settings/widget/SeekBarNumber;->mProgressPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x41400000    # 12.0f

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void

    nop

    :array_0
    .array-data 4
        -0x10a9
        -0x1155e9
        -0x10a9
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private initView()V
    .locals 2

    .line 120
    new-instance v0, Lcom/yftech/settings/widget/SeekBarNumber$SeekBarNumberHandler;

    invoke-direct {v0, p0}, Lcom/yftech/settings/widget/SeekBarNumber$SeekBarNumberHandler;-><init>(Lcom/yftech/settings/widget/SeekBarNumber;)V

    iput-object v0, p0, Lcom/yftech/settings/widget/SeekBarNumber;->mHandler:Lcom/yftech/settings/widget/SeekBarNumber$SeekBarNumberHandler;

    .line 121
    invoke-virtual {p0}, Lcom/yftech/settings/widget/SeekBarNumber;->getMax()I

    move-result v0

    iput v0, p0, Lcom/yftech/settings/widget/SeekBarNumber;->mWarnMax:I

    .line 122
    invoke-virtual {p0, p0}, Lcom/yftech/settings/widget/SeekBarNumber;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 123
    invoke-virtual {p0, p0}, Lcom/yftech/settings/widget/SeekBarNumber;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 124
    invoke-direct {p0}, Lcom/yftech/settings/widget/SeekBarNumber;->initProgressPaint()V

    .line 125
    invoke-virtual {p0}, Lcom/yftech/settings/widget/SeekBarNumber;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0130

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/settings/widget/SeekBarNumber;->mThumbNormal:Landroid/graphics/drawable/Drawable;

    .line 126
    invoke-virtual {p0}, Lcom/yftech/settings/widget/SeekBarNumber;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b012f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/settings/widget/SeekBarNumber;->mThumbPress:Landroid/graphics/drawable/Drawable;

    .line 127
    iget-object v0, p0, Lcom/yftech/settings/widget/SeekBarNumber;->mThumbNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/yftech/settings/widget/SeekBarNumber;->mThumbPress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/yftech/settings/widget/SeekBarNumber;->mThumbWidthSub:I

    .line 128
    iget-object v0, p0, Lcom/yftech/settings/widget/SeekBarNumber;->mThumbNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/yftech/settings/widget/SeekBarNumber;->setThumb(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public getMoveOutsideProgress()I
    .locals 0

    .line 104
    iget p0, p0, Lcom/yftech/settings/widget/SeekBarNumber;->mMoveOutsideProgress:I

    return p0
.end method

.method public isMoveOutside()Z
    .locals 0

    .line 100
    iget-boolean p0, p0, Lcom/yftech/settings/widget/SeekBarNumber;->mIsMoveOutside:Z

    return p0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    monitor-enter p0

    .line 142
    :try_start_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatSeekBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 143
    iget-boolean v0, p0, Lcom/yftech/settings/widget/SeekBarNumber;->mIsPaintProgress:Z

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 145
    invoke-virtual {p0}, Lcom/yftech/settings/widget/SeekBarNumber;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/yftech/settings/widget/SeekBarNumber;->mNumberMin:I

    add-int/2addr v0, v1

    .line 146
    invoke-virtual {p0}, Lcom/yftech/settings/widget/SeekBarNumber;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 147
    invoke-direct {p0, v0, v1, p1}, Lcom/yftech/settings/widget/SeekBarNumber;->drawProgressPaint(ILandroid/graphics/Rect;Landroid/graphics/Canvas;)V

    .line 148
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 141
    monitor-exit p0

    throw p1
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-nez p3, :cond_0

    return-void

    .line 212
    :cond_0
    iget p1, p0, Lcom/yftech/settings/widget/SeekBarNumber;->mCurrType:I

    const/4 p3, 0x1

    if-ne p1, p3, :cond_2

    iget p1, p0, Lcom/yftech/settings/widget/SeekBarNumber;->mStartSeek:I

    iget p3, p0, Lcom/yftech/settings/widget/SeekBarNumber;->mWarnMax:I

    if-gt p1, p3, :cond_2

    iget p1, p0, Lcom/yftech/settings/widget/SeekBarNumber;->mWarnMax:I

    if-le p2, p1, :cond_2

    .line 213
    iget-object p1, p0, Lcom/yftech/settings/widget/SeekBarNumber;->mListener:Lcom/yftech/settings/widget/SeekBarNumber$OnSeekChangeListener;

    if-eqz p1, :cond_1

    .line 214
    iget-object p1, p0, Lcom/yftech/settings/widget/SeekBarNumber;->mListener:Lcom/yftech/settings/widget/SeekBarNumber$OnSeekChangeListener;

    iget p2, p0, Lcom/yftech/settings/widget/SeekBarNumber;->mWarnMax:I

    invoke-interface {p1, p0, p2}, Lcom/yftech/settings/widget/SeekBarNumber$OnSeekChangeListener;->onProgressChanged(Lcom/yftech/settings/widget/SeekBarNumber;I)V

    :cond_1
    return-void

    .line 218
    :cond_2
    iget-object p1, p0, Lcom/yftech/settings/widget/SeekBarNumber;->mListener:Lcom/yftech/settings/widget/SeekBarNumber$OnSeekChangeListener;

    if-eqz p1, :cond_3

    .line 219
    iget-object p1, p0, Lcom/yftech/settings/widget/SeekBarNumber;->mListener:Lcom/yftech/settings/widget/SeekBarNumber$OnSeekChangeListener;

    invoke-interface {p1, p0, p2}, Lcom/yftech/settings/widget/SeekBarNumber$OnSeekChangeListener;->onProgressChanged(Lcom/yftech/settings/widget/SeekBarNumber;I)V

    :cond_3
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    const/4 v0, 0x1

    .line 199
    iput-boolean v0, p0, Lcom/yftech/settings/widget/SeekBarNumber;->mMoving:Z

    .line 200
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    iput p1, p0, Lcom/yftech/settings/widget/SeekBarNumber;->mStartSeek:I

    .line 201
    iget-object p1, p0, Lcom/yftech/settings/widget/SeekBarNumber;->mThumbPress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/yftech/settings/widget/SeekBarNumber;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 202
    iget-object p1, p0, Lcom/yftech/settings/widget/SeekBarNumber;->mListener:Lcom/yftech/settings/widget/SeekBarNumber$OnSeekChangeListener;

    if-eqz p1, :cond_0

    .line 203
    iget-object p1, p0, Lcom/yftech/settings/widget/SeekBarNumber;->mListener:Lcom/yftech/settings/widget/SeekBarNumber$OnSeekChangeListener;

    invoke-interface {p1, p0}, Lcom/yftech/settings/widget/SeekBarNumber$OnSeekChangeListener;->onStartTrackingTouch(Lcom/yftech/settings/widget/SeekBarNumber;)V

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 5

    const/4 v0, 0x0

    .line 225
    iput-boolean v0, p0, Lcom/yftech/settings/widget/SeekBarNumber;->mMoving:Z

    .line 226
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    .line 227
    iget-object v1, p0, Lcom/yftech/settings/widget/SeekBarNumber;->mThumbNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/yftech/settings/widget/SeekBarNumber;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 228
    iget v1, p0, Lcom/yftech/settings/widget/SeekBarNumber;->mCurrType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/yftech/settings/widget/SeekBarNumber;->mStartSeek:I

    iget v3, p0, Lcom/yftech/settings/widget/SeekBarNumber;->mWarnMax:I

    if-gt v1, v3, :cond_0

    iget v1, p0, Lcom/yftech/settings/widget/SeekBarNumber;->mWarnMax:I

    if-le p1, v1, :cond_0

    .line 229
    iget p1, p0, Lcom/yftech/settings/widget/SeekBarNumber;->mWarnMax:I

    invoke-virtual {p0, p1}, Lcom/yftech/settings/widget/SeekBarNumber;->setProgress(I)V

    const/4 p1, 0x2

    .line 230
    iput p1, p0, Lcom/yftech/settings/widget/SeekBarNumber;->mCurrType:I

    .line 231
    iget-object p1, p0, Lcom/yftech/settings/widget/SeekBarNumber;->mHandler:Lcom/yftech/settings/widget/SeekBarNumber$SeekBarNumberHandler;

    const/16 v1, 0x3e9

    invoke-virtual {p1, v1}, Lcom/yftech/settings/widget/SeekBarNumber$SeekBarNumberHandler;->removeMessages(I)V

    .line 232
    iget-object p1, p0, Lcom/yftech/settings/widget/SeekBarNumber;->mHandler:Lcom/yftech/settings/widget/SeekBarNumber$SeekBarNumberHandler;

    const-wide/16 v3, 0x1388

    invoke-virtual {p1, v1, v3, v4}, Lcom/yftech/settings/widget/SeekBarNumber$SeekBarNumberHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    const-string p1, "SeekBarNumber"

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveCount:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/yftech/settings/widget/SeekBarNumber;->mMoveCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget p1, p0, Lcom/yftech/settings/widget/SeekBarNumber;->mMoveCount:I

    const/16 v1, 0xa

    if-gt p1, v1, :cond_2

    .line 236
    invoke-virtual {p0}, Lcom/yftech/settings/widget/SeekBarNumber;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    .line 237
    invoke-virtual {p0}, Lcom/yftech/settings/widget/SeekBarNumber;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "sound_effects_enabled"

    invoke-static {v1, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    if-eqz v2, :cond_2

    .line 239
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 242
    :cond_2
    iput v0, p0, Lcom/yftech/settings/widget/SeekBarNumber;->mMoveCount:I

    .line 243
    iget-object p1, p0, Lcom/yftech/settings/widget/SeekBarNumber;->mListener:Lcom/yftech/settings/widget/SeekBarNumber$OnSeekChangeListener;

    if-eqz p1, :cond_3

    .line 244
    iget-object p1, p0, Lcom/yftech/settings/widget/SeekBarNumber;->mListener:Lcom/yftech/settings/widget/SeekBarNumber$OnSeekChangeListener;

    invoke-interface {p1, p0}, Lcom/yftech/settings/widget/SeekBarNumber$OnSeekChangeListener;->onStopTrackingTouch(Lcom/yftech/settings/widget/SeekBarNumber;)V

    :cond_3
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 188
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 189
    iput v0, p0, Lcom/yftech/settings/widget/SeekBarNumber;->mMoveCount:I

    goto :goto_0

    .line 191
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 192
    iget p1, p0, Lcom/yftech/settings/widget/SeekBarNumber;->mMoveCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/yftech/settings/widget/SeekBarNumber;->mMoveCount:I

    :cond_1
    :goto_0
    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 175
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/high16 v1, -0x3cea0000    # -150.0f

    cmpg-float v0, v0, v1

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/yftech/settings/widget/SeekBarNumber;->getWidth()I

    move-result v2

    add-int/lit16 v2, v2, 0x96

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    const/high16 v2, -0x3e100000    # -30.0f

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Lcom/yftech/settings/widget/SeekBarNumber;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, 0x1e

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 176
    :cond_0
    iput-boolean v1, p0, Lcom/yftech/settings/widget/SeekBarNumber;->mIsMoveOutside:Z

    .line 177
    invoke-virtual {p0}, Lcom/yftech/settings/widget/SeekBarNumber;->getProgress()I

    move-result v0

    iput v0, p0, Lcom/yftech/settings/widget/SeekBarNumber;->mMoveOutsideProgress:I

    .line 179
    :cond_1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatSeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 180
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_2

    const/4 p1, 0x0

    .line 181
    iput-boolean p1, p0, Lcom/yftech/settings/widget/SeekBarNumber;->mIsMoveOutside:Z

    :cond_2
    return v0
.end method

.method public setNumberMin(I)V
    .locals 0

    .line 92
    iput p1, p0, Lcom/yftech/settings/widget/SeekBarNumber;->mNumberMin:I

    return-void
.end method

.method public setOnSeekChangeListener(Lcom/yftech/settings/widget/SeekBarNumber$OnSeekChangeListener;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/yftech/settings/widget/SeekBarNumber;->mListener:Lcom/yftech/settings/widget/SeekBarNumber$OnSeekChangeListener;

    return-void
.end method

.method public setPaintProgress(Z)V
    .locals 0

    .line 96
    iput-boolean p1, p0, Lcom/yftech/settings/widget/SeekBarNumber;->mIsPaintProgress:Z

    return-void
.end method

.method public setShowWarn(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 108
    :goto_0
    iput p1, p0, Lcom/yftech/settings/widget/SeekBarNumber;->mCurrType:I

    return-void
.end method

.method public setWarnMax(I)V
    .locals 0

    .line 112
    iput p1, p0, Lcom/yftech/settings/widget/SeekBarNumber;->mWarnMax:I

    return-void
.end method
