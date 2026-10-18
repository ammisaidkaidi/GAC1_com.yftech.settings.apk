.class public Lcom/yftech/settings/widget/BtSwitcher;
.super Lcom/yftech/settings/widget/Switcher;
.source "BtSwitcher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BtSwitcher"


# instance fields
.field private isInterceptEvent:Z

.field private mLastTimeClick:J

.field private mSpaceTimeClick:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 19
    invoke-direct {p0, p1}, Lcom/yftech/settings/widget/Switcher;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lcom/yftech/settings/widget/BtSwitcher;->isInterceptEvent:Z

    const-wide/16 v0, 0x0

    .line 15
    iput-wide v0, p0, Lcom/yftech/settings/widget/BtSwitcher;->mLastTimeClick:J

    const-wide/16 v0, 0x5dc

    .line 16
    iput-wide v0, p0, Lcom/yftech/settings/widget/BtSwitcher;->mSpaceTimeClick:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/widget/Switcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lcom/yftech/settings/widget/BtSwitcher;->isInterceptEvent:Z

    const-wide/16 p1, 0x0

    .line 15
    iput-wide p1, p0, Lcom/yftech/settings/widget/BtSwitcher;->mLastTimeClick:J

    const-wide/16 p1, 0x5dc

    .line 16
    iput-wide p1, p0, Lcom/yftech/settings/widget/BtSwitcher;->mSpaceTimeClick:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/yftech/settings/widget/Switcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lcom/yftech/settings/widget/BtSwitcher;->isInterceptEvent:Z

    const-wide/16 p1, 0x0

    .line 15
    iput-wide p1, p0, Lcom/yftech/settings/widget/BtSwitcher;->mLastTimeClick:J

    const-wide/16 p1, 0x5dc

    .line 16
    iput-wide p1, p0, Lcom/yftech/settings/widget/BtSwitcher;->mSpaceTimeClick:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yftech/settings/widget/Switcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lcom/yftech/settings/widget/BtSwitcher;->isInterceptEvent:Z

    const-wide/16 p1, 0x0

    .line 15
    iput-wide p1, p0, Lcom/yftech/settings/widget/BtSwitcher;->mLastTimeClick:J

    const-wide/16 p1, 0x5dc

    .line 16
    iput-wide p1, p0, Lcom/yftech/settings/widget/BtSwitcher;->mSpaceTimeClick:J

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const-string v0, "BtSwitcher"

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchTouchEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 39
    iget-wide v2, p0, Lcom/yftech/settings/widget/BtSwitcher;->mLastTimeClick:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 41
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 51
    :pswitch_0
    iget-boolean v0, p0, Lcom/yftech/settings/widget/BtSwitcher;->isInterceptEvent:Z

    if-eqz v0, :cond_1

    return v5

    .line 57
    :pswitch_1
    iget-boolean v2, p0, Lcom/yftech/settings/widget/BtSwitcher;->isInterceptEvent:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 58
    iput-boolean v3, p0, Lcom/yftech/settings/widget/BtSwitcher;->isInterceptEvent:Z

    return v5

    .line 61
    :cond_0
    iput-boolean v3, p0, Lcom/yftech/settings/widget/BtSwitcher;->isInterceptEvent:Z

    .line 62
    iput-wide v0, p0, Lcom/yftech/settings/widget/BtSwitcher;->mLastTimeClick:J

    goto :goto_0

    :pswitch_2
    const-string v0, "BtSwitcher"

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchTouchEvent spaceTime:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-wide v0, p0, Lcom/yftech/settings/widget/BtSwitcher;->mSpaceTimeClick:J

    cmp-long v0, v2, v0

    if-gez v0, :cond_1

    const-string p1, "BtSwitcher"

    const-string v0, "dispatchTouchEvent quickly"

    .line 45
    invoke-static {p1, v0}, Lcom/yftech/settings/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iput-boolean v5, p0, Lcom/yftech/settings/widget/BtSwitcher;->isInterceptEvent:Z

    return v5

    .line 66
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/yftech/settings/widget/Switcher;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
