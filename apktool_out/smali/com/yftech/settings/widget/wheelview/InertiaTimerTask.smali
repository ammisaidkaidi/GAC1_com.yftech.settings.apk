.class final Lcom/yftech/settings/widget/wheelview/InertiaTimerTask;
.super Ljava/util/TimerTask;
.source "InertiaTimerTask.java"


# instance fields
.field private a:F

.field private final mVelocity:F

.field private final mWheelView:Lcom/yftech/settings/widget/wheelview/WheelView;


# direct methods
.method constructor <init>(Lcom/yftech/settings/widget/wheelview/WheelView;F)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/yftech/settings/widget/wheelview/InertiaTimerTask;->mWheelView:Lcom/yftech/settings/widget/wheelview/WheelView;

    .line 15
    iput p2, p0, Lcom/yftech/settings/widget/wheelview/InertiaTimerTask;->mVelocity:F

    const/high16 p1, 0x4f000000

    .line 16
    iput p1, p0, Lcom/yftech/settings/widget/wheelview/InertiaTimerTask;->a:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 21
    iget v0, p0, Lcom/yftech/settings/widget/wheelview/InertiaTimerTask;->a:F

    const/high16 v1, 0x4f000000

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 22
    iget v0, p0, Lcom/yftech/settings/widget/wheelview/InertiaTimerTask;->mVelocity:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x44fa0000    # 2000.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 23
    iget v0, p0, Lcom/yftech/settings/widget/wheelview/InertiaTimerTask;->mVelocity:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 24
    iput v2, p0, Lcom/yftech/settings/widget/wheelview/InertiaTimerTask;->a:F

    goto :goto_0

    :cond_0
    const/high16 v0, -0x3b060000    # -2000.0f

    .line 26
    iput v0, p0, Lcom/yftech/settings/widget/wheelview/InertiaTimerTask;->a:F

    goto :goto_0

    .line 29
    :cond_1
    iget v0, p0, Lcom/yftech/settings/widget/wheelview/InertiaTimerTask;->mVelocity:F

    iput v0, p0, Lcom/yftech/settings/widget/wheelview/InertiaTimerTask;->a:F

    .line 32
    :cond_2
    :goto_0
    iget v0, p0, Lcom/yftech/settings/widget/wheelview/InertiaTimerTask;->a:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    const/high16 v2, 0x41a00000    # 20.0f

    if-ltz v0, :cond_3

    iget v0, p0, Lcom/yftech/settings/widget/wheelview/InertiaTimerTask;->a:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_3

    .line 33
    iget-object v0, p0, Lcom/yftech/settings/widget/wheelview/InertiaTimerTask;->mWheelView:Lcom/yftech/settings/widget/wheelview/WheelView;

    invoke-virtual {v0}, Lcom/yftech/settings/widget/wheelview/WheelView;->cancelFuture()V

    .line 34
    iget-object p0, p0, Lcom/yftech/settings/widget/wheelview/InertiaTimerTask;->mWheelView:Lcom/yftech/settings/widget/wheelview/WheelView;

    iget-object p0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->handler:Landroid/os/Handler;

    const/16 v0, 0x7d0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 37
    :cond_3
    iget-object v0, p0, Lcom/yftech/settings/widget/wheelview/InertiaTimerTask;->mWheelView:Lcom/yftech/settings/widget/wheelview/WheelView;

    invoke-virtual {v0}, Lcom/yftech/settings/widget/wheelview/WheelView;->getScrollOrientation()I

    move-result v0

    const/high16 v3, -0x3de00000    # -40.0f

    const/high16 v4, 0x42200000    # 40.0f

    const/high16 v5, 0x447a0000    # 1000.0f

    const/high16 v6, 0x41200000    # 10.0f

    if-nez v0, :cond_5

    .line 38
    iget v0, p0, Lcom/yftech/settings/widget/wheelview/InertiaTimerTask;->a:F

    mul-float/2addr v0, v6

    div-float/2addr v0, v5

    float-to-int v0, v0

    .line 39
    iget-object v5, p0, Lcom/yftech/settings/widget/wheelview/InertiaTimerTask;->mWheelView:Lcom/yftech/settings/widget/wheelview/WheelView;

    .line 40
    iget v6, v5, Lcom/yftech/settings/widget/wheelview/WheelView;->totalScrollY:I

    sub-int/2addr v6, v0

    iput v6, v5, Lcom/yftech/settings/widget/wheelview/WheelView;->totalScrollY:I

    .line 41
    iget-object v0, p0, Lcom/yftech/settings/widget/wheelview/InertiaTimerTask;->mWheelView:Lcom/yftech/settings/widget/wheelview/WheelView;

    iget-boolean v0, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->isLoop:Z

    if-nez v0, :cond_7

    .line 42
    iget-object v0, p0, Lcom/yftech/settings/widget/wheelview/InertiaTimerTask;->mWheelView:Lcom/yftech/settings/widget/wheelview/WheelView;

    iget v0, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemHeightOuter:F

    .line 43
    iget-object v5, p0, Lcom/yftech/settings/widget/wheelview/InertiaTimerTask;->mWheelView:Lcom/yftech/settings/widget/wheelview/WheelView;

    iget v5, v5, Lcom/yftech/settings/widget/wheelview/WheelView;->totalScrollY:I

    iget-object v6, p0, Lcom/yftech/settings/widget/wheelview/InertiaTimerTask;->mWheelView:Lcom/yftech/settings/widget/wheelview/WheelView;

    iget v6, v6, Lcom/yftech/settings/widget/wheelview/WheelView;->initPosition:I

    neg-int v6, v6

    int-to-float v6, v6

    mul-float/2addr v6, v0

    float-to-int v6, v6

    if-gt v5, v6, :cond_4

    .line 44
    iput v4, p0, Lcom/yftech/settings/widget/wheelview/InertiaTimerTask;->a:F

    .line 45
    iget-object v3, p0, Lcom/yftech/settings/widget/wheelview/InertiaTimerTask;->mWheelView:Lcom/yftech/settings/widget/wheelview/WheelView;

    iget-object v4, p0, Lcom/yftech/settings/widget/wheelview/InertiaTimerTask;->mWheelView:Lcom/yftech/settings/widget/wheelview/WheelView;

    iget v4, v4, Lcom/yftech/settings/widget/wheelview/WheelView;->initPosition:I

    neg-int v4, v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v0, v4

    iput v0, v3, Lcom/yftech/settings/widget/wheelview/WheelView;->totalScrollY:I

    goto/16 :goto_1

    .line 46
    :cond_4
    iget-object v4, p0, Lcom/yftech/settings/widget/wheelview/InertiaTimerTask;->mWheelView:Lcom/yftech/settings/widget/wheelview/WheelView;

    iget v4, v4, Lcom/yftech/settings/widget/wheelview/WheelView;->totalScrollY:I

    iget-object v5, p0, Lcom/yftech/settings/widget/wheelview/InertiaTimerTask;->mWheelView:Lcom/yftech/settings/widget/wheelview/WheelView;

    iget-object v5, v5, Lcom/yftech/settings/widget/wheelview/WheelView;->items:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    iget-object v6, p0, Lcom/yftech/settings/widget/wheelview/InertiaTimerTask;->mWheelView:Lcom/yftech/settings/widget/wheelview/WheelView;

    iget v6, v6, Lcom/yftech/settings/widget/wheelview/WheelView;->initPosition:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v0

    float-to-int v5, v5

    if-lt v4, v5, :cond_7

    .line 47
    iget-object v4, p0, Lcom/yftech/settings/widget/wheelview/InertiaTimerTask;->mWheelView:Lcom/yftech/settings/widget/wheelview/WheelView;

    iget-object v5, p0, Lcom/yftech/settings/widget/wheelview/InertiaTimerTask;->mWheelView:Lcom/yftech/settings/widget/wheelview/WheelView;

    iget-object v5, v5, Lcom/yftech/settings/widget/wheelview/WheelView;->items:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    iget-object v6, p0, Lcom/yftech/settings/widget/wheelview/InertiaTimerTask;->mWheelView:Lcom/yftech/settings/widget/wheelview/WheelView;

    iget v6, v6, Lcom/yftech/settings/widget/wheelview/WheelView;->initPosition:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v0

    float-to-int v0, v5

    iput v0, v4, Lcom/yftech/settings/widget/wheelview/WheelView;->totalScrollY:I

    .line 48
    iput v3, p0, Lcom/yftech/settings/widget/wheelview/InertiaTimerTask;->a:F

    goto :goto_1

    .line 52
    :cond_5
    iget v0, p0, Lcom/yftech/settings/widget/wheelview/InertiaTimerTask;->a:F

    mul-float/2addr v0, v6

    div-float/2addr v0, v5

    float-to-int v0, v0

    .line 53
    iget-object v5, p0, Lcom/yftech/settings/widget/wheelview/InertiaTimerTask;->mWheelView:Lcom/yftech/settings/widget/wheelview/WheelView;

    .line 54
    iget v6, v5, Lcom/yftech/settings/widget/wheelview/WheelView;->totalScrollX:I

    sub-int/2addr v6, v0

    iput v6, v5, Lcom/yftech/settings/widget/wheelview/WheelView;->totalScrollX:I

    .line 55
    iget-object v0, p0, Lcom/yftech/settings/widget/wheelview/InertiaTimerTask;->mWheelView:Lcom/yftech/settings/widget/wheelview/WheelView;

    iget-boolean v0, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->isLoop:Z

    if-nez v0, :cond_7

    .line 56
    iget-object v0, p0, Lcom/yftech/settings/widget/wheelview/InertiaTimerTask;->mWheelView:Lcom/yftech/settings/widget/wheelview/WheelView;

    iget v0, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemWidthOuter:F

    .line 57
    iget-object v5, p0, Lcom/yftech/settings/widget/wheelview/InertiaTimerTask;->mWheelView:Lcom/yftech/settings/widget/wheelview/WheelView;

    iget v5, v5, Lcom/yftech/settings/widget/wheelview/WheelView;->totalScrollX:I

    iget-object v6, p0, Lcom/yftech/settings/widget/wheelview/InertiaTimerTask;->mWheelView:Lcom/yftech/settings/widget/wheelview/WheelView;

    iget v6, v6, Lcom/yftech/settings/widget/wheelview/WheelView;->initPosition:I

    neg-int v6, v6

    int-to-float v6, v6

    mul-float/2addr v6, v0

    float-to-int v6, v6

    if-gt v5, v6, :cond_6

    .line 58
    iput v4, p0, Lcom/yftech/settings/widget/wheelview/InertiaTimerTask;->a:F

    .line 59
    iget-object v3, p0, Lcom/yftech/settings/widget/wheelview/InertiaTimerTask;->mWheelView:Lcom/yftech/settings/widget/wheelview/WheelView;

    iget-object v4, p0, Lcom/yftech/settings/widget/wheelview/InertiaTimerTask;->mWheelView:Lcom/yftech/settings/widget/wheelview/WheelView;

    iget v4, v4, Lcom/yftech/settings/widget/wheelview/WheelView;->initPosition:I

    neg-int v4, v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v0, v4

    iput v0, v3, Lcom/yftech/settings/widget/wheelview/WheelView;->totalScrollX:I

    goto :goto_1

    .line 60
    :cond_6
    iget-object v4, p0, Lcom/yftech/settings/widget/wheelview/InertiaTimerTask;->mWheelView:Lcom/yftech/settings/widget/wheelview/WheelView;

    iget v4, v4, Lcom/yftech/settings/widget/wheelview/WheelView;->totalScrollX:I

    iget-object v5, p0, Lcom/yftech/settings/widget/wheelview/InertiaTimerTask;->mWheelView:Lcom/yftech/settings/widget/wheelview/WheelView;

    iget-object v5, v5, Lcom/yftech/settings/widget/wheelview/WheelView;->items:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    iget-object v6, p0, Lcom/yftech/settings/widget/wheelview/InertiaTimerTask;->mWheelView:Lcom/yftech/settings/widget/wheelview/WheelView;

    iget v6, v6, Lcom/yftech/settings/widget/wheelview/WheelView;->initPosition:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v0

    float-to-int v5, v5

    if-lt v4, v5, :cond_7

    .line 61
    iget-object v4, p0, Lcom/yftech/settings/widget/wheelview/InertiaTimerTask;->mWheelView:Lcom/yftech/settings/widget/wheelview/WheelView;

    iget-object v5, p0, Lcom/yftech/settings/widget/wheelview/InertiaTimerTask;->mWheelView:Lcom/yftech/settings/widget/wheelview/WheelView;

    iget-object v5, v5, Lcom/yftech/settings/widget/wheelview/WheelView;->items:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    iget-object v6, p0, Lcom/yftech/settings/widget/wheelview/InertiaTimerTask;->mWheelView:Lcom/yftech/settings/widget/wheelview/WheelView;

    iget v6, v6, Lcom/yftech/settings/widget/wheelview/WheelView;->initPosition:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v0

    float-to-int v0, v5

    iput v0, v4, Lcom/yftech/settings/widget/wheelview/WheelView;->totalScrollX:I

    .line 62
    iput v3, p0, Lcom/yftech/settings/widget/wheelview/InertiaTimerTask;->a:F

    .line 66
    :cond_7
    :goto_1
    iget v0, p0, Lcom/yftech/settings/widget/wheelview/InertiaTimerTask;->a:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_8

    .line 67
    iget v0, p0, Lcom/yftech/settings/widget/wheelview/InertiaTimerTask;->a:F

    add-float/2addr v0, v2

    iput v0, p0, Lcom/yftech/settings/widget/wheelview/InertiaTimerTask;->a:F

    goto :goto_2

    .line 69
    :cond_8
    iget v0, p0, Lcom/yftech/settings/widget/wheelview/InertiaTimerTask;->a:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/yftech/settings/widget/wheelview/InertiaTimerTask;->a:F

    .line 71
    :goto_2
    iget-object p0, p0, Lcom/yftech/settings/widget/wheelview/InertiaTimerTask;->mWheelView:Lcom/yftech/settings/widget/wheelview/WheelView;

    iget-object p0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->handler:Landroid/os/Handler;

    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
