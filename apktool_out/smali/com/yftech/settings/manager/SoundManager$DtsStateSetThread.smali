.class Lcom/yftech/settings/manager/SoundManager$DtsStateSetThread;
.super Ljava/lang/Thread;
.source "SoundManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/manager/SoundManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DtsStateSetThread"
.end annotation


# instance fields
.field private mDelayX:I

.field private mDelayY:I

.field private mExit:Z

.field final synthetic this$0:Lcom/yftech/settings/manager/SoundManager;


# direct methods
.method private constructor <init>(Lcom/yftech/settings/manager/SoundManager;)V
    .locals 0

    .line 549
    iput-object p1, p0, Lcom/yftech/settings/manager/SoundManager$DtsStateSetThread;->this$0:Lcom/yftech/settings/manager/SoundManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    .line 550
    iput-boolean p1, p0, Lcom/yftech/settings/manager/SoundManager$DtsStateSetThread;->mExit:Z

    const/4 p1, -0x1

    .line 551
    iput p1, p0, Lcom/yftech/settings/manager/SoundManager$DtsStateSetThread;->mDelayX:I

    .line 552
    iput p1, p0, Lcom/yftech/settings/manager/SoundManager$DtsStateSetThread;->mDelayY:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/yftech/settings/manager/SoundManager;Lcom/yftech/settings/manager/SoundManager$1;)V
    .locals 0

    .line 549
    invoke-direct {p0, p1}, Lcom/yftech/settings/manager/SoundManager$DtsStateSetThread;-><init>(Lcom/yftech/settings/manager/SoundManager;)V

    return-void
.end method


# virtual methods
.method public cancle()V
    .locals 1

    const/4 v0, 0x1

    .line 585
    iput-boolean v0, p0, Lcom/yftech/settings/manager/SoundManager$DtsStateSetThread;->mExit:Z

    return-void
.end method

.method public run()V
    .locals 4

    .line 556
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 557
    :goto_0
    iget-boolean v0, p0, Lcom/yftech/settings/manager/SoundManager$DtsStateSetThread;->mExit:Z

    const/4 v1, -0x1

    if-nez v0, :cond_1

    .line 560
    iget-object v0, p0, Lcom/yftech/settings/manager/SoundManager$DtsStateSetThread;->this$0:Lcom/yftech/settings/manager/SoundManager;

    invoke-static {v0}, Lcom/yftech/settings/manager/SoundManager;->access$500(Lcom/yftech/settings/manager/SoundManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 561
    :try_start_0
    iget v2, p0, Lcom/yftech/settings/manager/SoundManager$DtsStateSetThread;->mDelayX:I

    .line 562
    iget v3, p0, Lcom/yftech/settings/manager/SoundManager$DtsStateSetThread;->mDelayY:I

    .line 563
    iput v1, p0, Lcom/yftech/settings/manager/SoundManager$DtsStateSetThread;->mDelayX:I

    .line 564
    iput v1, p0, Lcom/yftech/settings/manager/SoundManager$DtsStateSetThread;->mDelayY:I

    .line 565
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v2, v1, :cond_0

    if-eq v3, v1, :cond_0

    .line 568
    iget-object v0, p0, Lcom/yftech/settings/manager/SoundManager$DtsStateSetThread;->this$0:Lcom/yftech/settings/manager/SoundManager;

    invoke-static {v0, v2, v3}, Lcom/yftech/settings/manager/SoundManager;->access$600(Lcom/yftech/settings/manager/SoundManager;II)Z

    :cond_0
    const-wide/16 v0, 0x64

    .line 572
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 574
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 565
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    .line 578
    :cond_1
    iget v0, p0, Lcom/yftech/settings/manager/SoundManager$DtsStateSetThread;->mDelayX:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/yftech/settings/manager/SoundManager$DtsStateSetThread;->mDelayY:I

    if-eq v0, v1, :cond_2

    .line 579
    iget-object v0, p0, Lcom/yftech/settings/manager/SoundManager$DtsStateSetThread;->this$0:Lcom/yftech/settings/manager/SoundManager;

    iget v1, p0, Lcom/yftech/settings/manager/SoundManager$DtsStateSetThread;->mDelayX:I

    iget p0, p0, Lcom/yftech/settings/manager/SoundManager$DtsStateSetThread;->mDelayY:I

    invoke-static {v0, v1, p0}, Lcom/yftech/settings/manager/SoundManager;->access$600(Lcom/yftech/settings/manager/SoundManager;II)Z

    :cond_2
    return-void
.end method

.method public setDelayValue(II)V
    .locals 1

    .line 589
    iget-object v0, p0, Lcom/yftech/settings/manager/SoundManager$DtsStateSetThread;->this$0:Lcom/yftech/settings/manager/SoundManager;

    invoke-static {v0}, Lcom/yftech/settings/manager/SoundManager;->access$500(Lcom/yftech/settings/manager/SoundManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 590
    :try_start_0
    iput p1, p0, Lcom/yftech/settings/manager/SoundManager$DtsStateSetThread;->mDelayX:I

    .line 591
    iput p2, p0, Lcom/yftech/settings/manager/SoundManager$DtsStateSetThread;->mDelayY:I

    .line 592
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
