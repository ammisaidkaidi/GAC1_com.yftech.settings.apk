.class final Lcom/yftech/settings/widget/wheelview/SmoothScrollTimerTask;
.super Ljava/util/TimerTask;
.source "SmoothScrollTimerTask.java"


# instance fields
.field private mOffset:I

.field private mRealOffset:I

.field private mRealTotalOffset:I

.field private final mWheelView:Lcom/yftech/settings/widget/wheelview/WheelView;


# direct methods
.method constructor <init>(Lcom/yftech/settings/widget/wheelview/WheelView;I)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/yftech/settings/widget/wheelview/SmoothScrollTimerTask;->mWheelView:Lcom/yftech/settings/widget/wheelview/WheelView;

    .line 14
    iput p2, p0, Lcom/yftech/settings/widget/wheelview/SmoothScrollTimerTask;->mOffset:I

    const p1, 0x7fffffff

    .line 16
    iput p1, p0, Lcom/yftech/settings/widget/wheelview/SmoothScrollTimerTask;->mRealTotalOffset:I

    const/4 p1, 0x0

    .line 17
    iput p1, p0, Lcom/yftech/settings/widget/wheelview/SmoothScrollTimerTask;->mRealOffset:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 22
    iget v0, p0, Lcom/yftech/settings/widget/wheelview/SmoothScrollTimerTask;->mRealTotalOffset:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 23
    iget v0, p0, Lcom/yftech/settings/widget/wheelview/SmoothScrollTimerTask;->mOffset:I

    iput v0, p0, Lcom/yftech/settings/widget/wheelview/SmoothScrollTimerTask;->mRealTotalOffset:I

    .line 25
    :cond_0
    iget v0, p0, Lcom/yftech/settings/widget/wheelview/SmoothScrollTimerTask;->mRealTotalOffset:I

    int-to-float v0, v0

    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/yftech/settings/widget/wheelview/SmoothScrollTimerTask;->mRealOffset:I

    .line 27
    iget v0, p0, Lcom/yftech/settings/widget/wheelview/SmoothScrollTimerTask;->mRealOffset:I

    if-nez v0, :cond_2

    .line 28
    iget v0, p0, Lcom/yftech/settings/widget/wheelview/SmoothScrollTimerTask;->mRealTotalOffset:I

    if-gez v0, :cond_1

    const/4 v0, -0x1

    .line 29
    iput v0, p0, Lcom/yftech/settings/widget/wheelview/SmoothScrollTimerTask;->mRealOffset:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 31
    iput v0, p0, Lcom/yftech/settings/widget/wheelview/SmoothScrollTimerTask;->mRealOffset:I

    .line 34
    :cond_2
    :goto_0
    iget v0, p0, Lcom/yftech/settings/widget/wheelview/SmoothScrollTimerTask;->mRealTotalOffset:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gtz v0, :cond_3

    .line 35
    iget-object v0, p0, Lcom/yftech/settings/widget/wheelview/SmoothScrollTimerTask;->mWheelView:Lcom/yftech/settings/widget/wheelview/WheelView;

    invoke-virtual {v0}, Lcom/yftech/settings/widget/wheelview/WheelView;->cancelFuture()V

    .line 36
    iget-object p0, p0, Lcom/yftech/settings/widget/wheelview/SmoothScrollTimerTask;->mWheelView:Lcom/yftech/settings/widget/wheelview/WheelView;

    iget-object p0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->handler:Landroid/os/Handler;

    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 38
    :cond_3
    iget-object v0, p0, Lcom/yftech/settings/widget/wheelview/SmoothScrollTimerTask;->mWheelView:Lcom/yftech/settings/widget/wheelview/WheelView;

    invoke-virtual {v0}, Lcom/yftech/settings/widget/wheelview/WheelView;->getScrollOrientation()I

    move-result v0

    if-nez v0, :cond_4

    .line 39
    iget-object v0, p0, Lcom/yftech/settings/widget/wheelview/SmoothScrollTimerTask;->mWheelView:Lcom/yftech/settings/widget/wheelview/WheelView;

    iget-object v1, p0, Lcom/yftech/settings/widget/wheelview/SmoothScrollTimerTask;->mWheelView:Lcom/yftech/settings/widget/wheelview/WheelView;

    iget v1, v1, Lcom/yftech/settings/widget/wheelview/WheelView;->totalScrollY:I

    iget v2, p0, Lcom/yftech/settings/widget/wheelview/SmoothScrollTimerTask;->mRealOffset:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->totalScrollY:I

    goto :goto_1

    .line 41
    :cond_4
    iget-object v0, p0, Lcom/yftech/settings/widget/wheelview/SmoothScrollTimerTask;->mWheelView:Lcom/yftech/settings/widget/wheelview/WheelView;

    iget-object v1, p0, Lcom/yftech/settings/widget/wheelview/SmoothScrollTimerTask;->mWheelView:Lcom/yftech/settings/widget/wheelview/WheelView;

    iget v1, v1, Lcom/yftech/settings/widget/wheelview/WheelView;->totalScrollX:I

    iget v2, p0, Lcom/yftech/settings/widget/wheelview/SmoothScrollTimerTask;->mRealOffset:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->totalScrollX:I

    .line 43
    :goto_1
    iget-object v0, p0, Lcom/yftech/settings/widget/wheelview/SmoothScrollTimerTask;->mWheelView:Lcom/yftech/settings/widget/wheelview/WheelView;

    iget-object v0, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->handler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 44
    iget v0, p0, Lcom/yftech/settings/widget/wheelview/SmoothScrollTimerTask;->mRealTotalOffset:I

    iget v1, p0, Lcom/yftech/settings/widget/wheelview/SmoothScrollTimerTask;->mRealOffset:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/yftech/settings/widget/wheelview/SmoothScrollTimerTask;->mRealTotalOffset:I

    :goto_2
    return-void
.end method
