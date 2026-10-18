.class public Lcom/yftech/settings/widget/SoundStage;
.super Landroid/widget/LinearLayout;
.source "SoundStage.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/settings/widget/SoundStage$OnThumbPositionChanged;
    }
.end annotation


# static fields
.field private static final PLAY_SOUND_MOVE_COUNT:I = 0xa


# instance fields
.field private mCustomMaxX:I

.field private mCustomMaxY:I

.field private mCustomX:I

.field private mCustomY:I

.field private mHDash:Landroid/view/View;

.field private mIsTouchMode:Z

.field private mListener:Lcom/yftech/settings/widget/SoundStage$OnThumbPositionChanged;

.field private mMoveCount:I

.field private mSelectedImg:Landroid/widget/ImageView;

.field private mStageLayout:Landroid/widget/FrameLayout;

.field private mStartMoving:Z

.field private mThumb:Landroid/widget/ImageView;

.field private mVDash:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    .line 35
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 26
    iput v0, p0, Lcom/yftech/settings/widget/SoundStage;->mCustomMaxX:I

    .line 27
    iput v0, p0, Lcom/yftech/settings/widget/SoundStage;->mCustomMaxY:I

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/yftech/settings/widget/SoundStage;->mCustomX:I

    .line 29
    iput v0, p0, Lcom/yftech/settings/widget/SoundStage;->mCustomY:I

    .line 32
    iput v0, p0, Lcom/yftech/settings/widget/SoundStage;->mMoveCount:I

    .line 89
    iput-boolean v0, p0, Lcom/yftech/settings/widget/SoundStage;->mStartMoving:Z

    .line 208
    iput-boolean v0, p0, Lcom/yftech/settings/widget/SoundStage;->mIsTouchMode:Z

    .line 36
    iput p2, p0, Lcom/yftech/settings/widget/SoundStage;->mCustomMaxX:I

    .line 37
    iput p3, p0, Lcom/yftech/settings/widget/SoundStage;->mCustomMaxY:I

    .line 38
    invoke-direct {p0, p1}, Lcom/yftech/settings/widget/SoundStage;->inflateAndFindView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 26
    iput p2, p0, Lcom/yftech/settings/widget/SoundStage;->mCustomMaxX:I

    .line 27
    iput p2, p0, Lcom/yftech/settings/widget/SoundStage;->mCustomMaxY:I

    const/4 p2, 0x0

    .line 28
    iput p2, p0, Lcom/yftech/settings/widget/SoundStage;->mCustomX:I

    .line 29
    iput p2, p0, Lcom/yftech/settings/widget/SoundStage;->mCustomY:I

    .line 32
    iput p2, p0, Lcom/yftech/settings/widget/SoundStage;->mMoveCount:I

    .line 89
    iput-boolean p2, p0, Lcom/yftech/settings/widget/SoundStage;->mStartMoving:Z

    .line 208
    iput-boolean p2, p0, Lcom/yftech/settings/widget/SoundStage;->mIsTouchMode:Z

    .line 43
    invoke-direct {p0, p1}, Lcom/yftech/settings/widget/SoundStage;->inflateAndFindView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 26
    iput p2, p0, Lcom/yftech/settings/widget/SoundStage;->mCustomMaxX:I

    .line 27
    iput p2, p0, Lcom/yftech/settings/widget/SoundStage;->mCustomMaxY:I

    const/4 p2, 0x0

    .line 28
    iput p2, p0, Lcom/yftech/settings/widget/SoundStage;->mCustomX:I

    .line 29
    iput p2, p0, Lcom/yftech/settings/widget/SoundStage;->mCustomY:I

    .line 32
    iput p2, p0, Lcom/yftech/settings/widget/SoundStage;->mMoveCount:I

    .line 89
    iput-boolean p2, p0, Lcom/yftech/settings/widget/SoundStage;->mStartMoving:Z

    .line 208
    iput-boolean p2, p0, Lcom/yftech/settings/widget/SoundStage;->mIsTouchMode:Z

    .line 48
    invoke-direct {p0, p1}, Lcom/yftech/settings/widget/SoundStage;->inflateAndFindView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x1

    .line 26
    iput p2, p0, Lcom/yftech/settings/widget/SoundStage;->mCustomMaxX:I

    .line 27
    iput p2, p0, Lcom/yftech/settings/widget/SoundStage;->mCustomMaxY:I

    const/4 p2, 0x0

    .line 28
    iput p2, p0, Lcom/yftech/settings/widget/SoundStage;->mCustomX:I

    .line 29
    iput p2, p0, Lcom/yftech/settings/widget/SoundStage;->mCustomY:I

    .line 32
    iput p2, p0, Lcom/yftech/settings/widget/SoundStage;->mMoveCount:I

    .line 89
    iput-boolean p2, p0, Lcom/yftech/settings/widget/SoundStage;->mStartMoving:Z

    .line 208
    iput-boolean p2, p0, Lcom/yftech/settings/widget/SoundStage;->mIsTouchMode:Z

    .line 53
    invoke-direct {p0, p1}, Lcom/yftech/settings/widget/SoundStage;->inflateAndFindView(Landroid/content/Context;)V

    return-void
.end method

.method private handleLayoutTouch(Landroid/view/MotionEvent;)V
    .locals 12

    .line 91
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 92
    iput v3, p0, Lcom/yftech/settings/widget/SoundStage;->mMoveCount:I

    .line 93
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p0, v0, v4}, Lcom/yftech/settings/widget/SoundStage;->isTouchThumb(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    iput-boolean v1, p0, Lcom/yftech/settings/widget/SoundStage;->mStartMoving:Z

    return-void

    .line 97
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 98
    iget v0, p0, Lcom/yftech/settings/widget/SoundStage;->mMoveCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/yftech/settings/widget/SoundStage;->mMoveCount:I

    .line 101
    :cond_1
    iget-boolean v0, p0, Lcom/yftech/settings/widget/SoundStage;->mStartMoving:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/yftech/settings/widget/SoundStage;->mStartMoving:Z

    if-nez v0, :cond_7

    .line 102
    :cond_2
    iget-object v0, p0, Lcom/yftech/settings/widget/SoundStage;->mThumb:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    .line 103
    iget-object v4, p0, Lcom/yftech/settings/widget/SoundStage;->mThumb:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    .line 104
    iget-object v5, p0, Lcom/yftech/settings/widget/SoundStage;->mStageLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    sub-int/2addr v5, v0

    .line 105
    iget-object v6, p0, Lcom/yftech/settings/widget/SoundStage;->mStageLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    sub-int/2addr v6, v4

    int-to-float v5, v5

    const/high16 v7, 0x3f800000    # 1.0f

    mul-float/2addr v5, v7

    .line 106
    iget v8, p0, Lcom/yftech/settings/widget/SoundStage;->mCustomMaxX:I

    int-to-float v8, v8

    div-float/2addr v5, v8

    int-to-float v6, v6

    mul-float/2addr v6, v7

    .line 107
    iget v7, p0, Lcom/yftech/settings/widget/SoundStage;->mCustomMaxY:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    .line 108
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .line 109
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    int-to-float v0, v0

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v0, v9

    cmpg-float v10, v7, v0

    const/4 v11, 0x0

    if-gez v10, :cond_3

    move v0, v11

    goto :goto_0

    .line 113
    :cond_3
    iget-object v10, p0, Lcom/yftech/settings/widget/SoundStage;->mStageLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v10, v0

    cmpl-float v10, v7, v10

    if-lez v10, :cond_4

    .line 114
    iget v0, p0, Lcom/yftech/settings/widget/SoundStage;->mCustomMaxX:I

    int-to-float v0, v0

    goto :goto_0

    :cond_4
    sub-float/2addr v7, v0

    div-float v0, v7, v5

    :goto_0
    int-to-float v4, v4

    div-float/2addr v4, v9

    cmpg-float v7, v8, v4

    if-gez v7, :cond_5

    goto :goto_1

    .line 122
    :cond_5
    iget-object v7, p0, Lcom/yftech/settings/widget/SoundStage;->mStageLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v4

    cmpl-float v7, v8, v7

    if-lez v7, :cond_6

    .line 123
    iget v4, p0, Lcom/yftech/settings/widget/SoundStage;->mCustomMaxY:I

    int-to-float v11, v4

    goto :goto_1

    :cond_6
    sub-float/2addr v8, v4

    div-float v11, v8, v6

    :goto_1
    mul-float/2addr v5, v0

    mul-float/2addr v6, v11

    .line 131
    iget-object v4, p0, Lcom/yftech/settings/widget/SoundStage;->mThumb:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setX(F)V

    .line 132
    iget-object v4, p0, Lcom/yftech/settings/widget/SoundStage;->mThumb:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setY(F)V

    .line 133
    iget-object v4, p0, Lcom/yftech/settings/widget/SoundStage;->mHDash:Landroid/view/View;

    iget-object v7, p0, Lcom/yftech/settings/widget/SoundStage;->mThumb:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getHeight()I

    move-result v7

    div-int/2addr v7, v2

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-virtual {v4, v6}, Landroid/view/View;->setY(F)V

    .line 134
    iget-object v4, p0, Lcom/yftech/settings/widget/SoundStage;->mVDash:Landroid/view/View;

    iget-object v6, p0, Lcom/yftech/settings/widget/SoundStage;->mThumb:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getWidth()I

    move-result v6

    div-int/2addr v6, v2

    int-to-float v2, v6

    add-float/2addr v5, v2

    invoke-virtual {v4, v5}, Landroid/view/View;->setX(F)V

    float-to-int v0, v0

    .line 136
    iput v0, p0, Lcom/yftech/settings/widget/SoundStage;->mCustomX:I

    float-to-int v2, v11

    .line 137
    iput v2, p0, Lcom/yftech/settings/widget/SoundStage;->mCustomY:I

    .line 139
    iget-object v4, p0, Lcom/yftech/settings/widget/SoundStage;->mListener:Lcom/yftech/settings/widget/SoundStage$OnThumbPositionChanged;

    if-eqz v4, :cond_7

    .line 140
    iget-object v4, p0, Lcom/yftech/settings/widget/SoundStage;->mListener:Lcom/yftech/settings/widget/SoundStage$OnThumbPositionChanged;

    invoke-interface {v4, v0, v2}, Lcom/yftech/settings/widget/SoundStage$OnThumbPositionChanged;->onPositionChanged(II)V

    .line 144
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_9

    .line 145
    iput-boolean v3, p0, Lcom/yftech/settings/widget/SoundStage;->mStartMoving:Z

    const-string p1, "SoundStage"

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yftech/settings/widget/SoundStage;->mMoveCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget p1, p0, Lcom/yftech/settings/widget/SoundStage;->mMoveCount:I

    const/16 v0, 0xa

    if-gt p1, v0, :cond_8

    .line 148
    invoke-direct {p0}, Lcom/yftech/settings/widget/SoundStage;->playKeySoundEffect()V

    .line 150
    :cond_8
    iput v3, p0, Lcom/yftech/settings/widget/SoundStage;->mMoveCount:I

    :cond_9
    return-void
.end method

.method private inflateAndFindView(Landroid/content/Context;)V
    .locals 1

    .line 57
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0a007c

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0801af

    .line 59
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/yftech/settings/widget/SoundStage;->mStageLayout:Landroid/widget/FrameLayout;

    const v0, 0x7f0801b0

    .line 60
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/settings/widget/SoundStage;->mThumb:Landroid/widget/ImageView;

    const v0, 0x7f08018d

    .line 61
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/settings/widget/SoundStage;->mSelectedImg:Landroid/widget/ImageView;

    const v0, 0x7f0800c7

    .line 62
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/settings/widget/SoundStage;->mHDash:Landroid/view/View;

    const v0, 0x7f080234

    .line 63
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/settings/widget/SoundStage;->mVDash:Landroid/view/View;

    .line 65
    iget-object p1, p0, Lcom/yftech/settings/widget/SoundStage;->mStageLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private isTouchThumb(FF)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private playKeySoundEffect()V
    .locals 3

    .line 155
    invoke-virtual {p0}, Lcom/yftech/settings/widget/SoundStage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sound_effects_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 157
    invoke-virtual {p0}, Lcom/yftech/settings/widget/SoundStage;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    .line 158
    invoke-virtual {p0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public changeToTouchMode(Z)V
    .locals 2

    .line 210
    iput-boolean p1, p0, Lcom/yftech/settings/widget/SoundStage;->mIsTouchMode:Z

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    .line 212
    iget-object p1, p0, Lcom/yftech/settings/widget/SoundStage;->mSelectedImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 213
    iget-object p0, p0, Lcom/yftech/settings/widget/SoundStage;->mStageLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 216
    :cond_0
    iget-object p1, p0, Lcom/yftech/settings/widget/SoundStage;->mStageLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 217
    iget-object p0, p0, Lcom/yftech/settings/widget/SoundStage;->mSelectedImg:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public getThumbX()I
    .locals 0

    .line 201
    iget p0, p0, Lcom/yftech/settings/widget/SoundStage;->mCustomX:I

    return p0
.end method

.method public getThumbY()I
    .locals 0

    .line 205
    iget p0, p0, Lcom/yftech/settings/widget/SoundStage;->mCustomY:I

    return p0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0801af

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    invoke-direct {p0, p2}, Lcom/yftech/settings/widget/SoundStage;->handleLayoutTouch(Landroid/view/MotionEvent;)V

    :goto_0
    return v1
.end method

.method public setMaxX(I)V
    .locals 0

    .line 163
    iput p1, p0, Lcom/yftech/settings/widget/SoundStage;->mCustomMaxX:I

    return-void
.end method

.method public setMaxY(I)V
    .locals 0

    .line 167
    iput p1, p0, Lcom/yftech/settings/widget/SoundStage;->mCustomMaxY:I

    return-void
.end method

.method public setPositionChangedListener(Lcom/yftech/settings/widget/SoundStage$OnThumbPositionChanged;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/yftech/settings/widget/SoundStage;->mListener:Lcom/yftech/settings/widget/SoundStage$OnThumbPositionChanged;

    return-void
.end method

.method public setThumbX(I)V
    .locals 3

    .line 171
    iget v0, p0, Lcom/yftech/settings/widget/SoundStage;->mCustomMaxX:I

    if-le p1, v0, :cond_0

    .line 172
    iget p1, p0, Lcom/yftech/settings/widget/SoundStage;->mCustomMaxX:I

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 177
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/yftech/settings/widget/SoundStage;->mStageLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/yftech/settings/widget/SoundStage;->mThumb:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    .line 178
    iget v1, p0, Lcom/yftech/settings/widget/SoundStage;->mCustomMaxX:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-float v1, p1

    mul-float/2addr v1, v0

    .line 180
    iget-object v0, p0, Lcom/yftech/settings/widget/SoundStage;->mThumb:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setX(F)V

    .line 181
    iget-object v0, p0, Lcom/yftech/settings/widget/SoundStage;->mVDash:Landroid/view/View;

    iget-object v2, p0, Lcom/yftech/settings/widget/SoundStage;->mThumb:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 182
    iput p1, p0, Lcom/yftech/settings/widget/SoundStage;->mCustomX:I

    return-void
.end method

.method public setThumbY(I)V
    .locals 3

    .line 186
    iget v0, p0, Lcom/yftech/settings/widget/SoundStage;->mCustomMaxY:I

    if-le p1, v0, :cond_0

    .line 187
    iget p1, p0, Lcom/yftech/settings/widget/SoundStage;->mCustomMaxY:I

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 192
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/yftech/settings/widget/SoundStage;->mStageLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/yftech/settings/widget/SoundStage;->mThumb:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    .line 193
    iget v1, p0, Lcom/yftech/settings/widget/SoundStage;->mCustomMaxY:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-float v1, p1

    mul-float/2addr v1, v0

    .line 195
    iget-object v0, p0, Lcom/yftech/settings/widget/SoundStage;->mThumb:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    .line 196
    iget-object v0, p0, Lcom/yftech/settings/widget/SoundStage;->mHDash:Landroid/view/View;

    iget-object v2, p0, Lcom/yftech/settings/widget/SoundStage;->mThumb:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 197
    iput p1, p0, Lcom/yftech/settings/widget/SoundStage;->mCustomY:I

    return-void
.end method

.method public showFront()V
    .locals 0

    .line 222
    iget-boolean p0, p0, Lcom/yftech/settings/widget/SoundStage;->mIsTouchMode:Z

    if-eqz p0, :cond_0

    return-void

    :cond_0
    return-void
.end method

.method public showRear()V
    .locals 0

    .line 230
    iget-boolean p0, p0, Lcom/yftech/settings/widget/SoundStage;->mIsTouchMode:Z

    if-eqz p0, :cond_0

    return-void

    :cond_0
    return-void
.end method

.method public showTotal()V
    .locals 0

    .line 238
    iget-boolean p0, p0, Lcom/yftech/settings/widget/SoundStage;->mIsTouchMode:Z

    if-eqz p0, :cond_0

    return-void

    :cond_0
    return-void
.end method
