.class public abstract Lcom/yftech/settings/manager/BaseManager;
.super Ljava/lang/Object;
.source "BaseManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/settings/manager/BaseManager$ModelCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field protected static final NONE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "BaseManager"

.field private static final TIMEOUT:I = 0xbb8


# instance fields
.field private final mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/settings/manager/BaseManager$ModelCallback<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field protected final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mMainHandler:Landroid/os/Handler;

.field protected mStartTimeout:Z

.field private final mTimeoutRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/settings/manager/BaseManager;->mCallbacks:Ljava/util/List;

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yftech/settings/manager/BaseManager;->mMainHandler:Landroid/os/Handler;

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/yftech/settings/manager/BaseManager;->mLock:Ljava/lang/Object;

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yftech/settings/manager/BaseManager;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/yftech/settings/manager/BaseManager;->mStartTimeout:Z

    .line 35
    new-instance v0, Lcom/yftech/settings/manager/BaseManager$1;

    invoke-direct {v0, p0}, Lcom/yftech/settings/manager/BaseManager$1;-><init>(Lcom/yftech/settings/manager/BaseManager;)V

    iput-object v0, p0, Lcom/yftech/settings/manager/BaseManager;->mTimeoutRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/settings/manager/BaseManager;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/yftech/settings/manager/BaseManager;->notifyOnTimeout()V

    return-void
.end method

.method static synthetic access$100(Lcom/yftech/settings/manager/BaseManager;)Ljava/util/List;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/yftech/settings/manager/BaseManager;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method private notifyOnTimeout()V
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/yftech/settings/manager/BaseManager;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/yftech/settings/manager/BaseManager$5;

    invoke-direct {v1, p0}, Lcom/yftech/settings/manager/BaseManager$5;-><init>(Lcom/yftech/settings/manager/BaseManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public deInit()V
    .locals 0

    return-void
.end method

.method protected getContext()Landroid/content/Context;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/yftech/settings/manager/BaseManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getEnabled(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public getOption(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    const/4 p0, -0x1

    return p0
.end method

.method protected getValidEnable(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;Z)Z
    .locals 0

    .line 151
    sget-object p0, Lcom/yftech/settings/manager/BaseManager$6;->$SwitchMap$com$yftech$vehicle$internal$adapter$IBaseApi$EnableState:[I

    invoke-virtual {p1}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->ordinal()I

    move-result p1

    aget p0, p0, p1

    packed-switch p0, :pswitch_data_0

    return p2

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_1
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getValidEnableStateOp(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableStateOp;Z)Z
    .locals 0

    .line 173
    sget-object p0, Lcom/yftech/settings/manager/BaseManager$6;->$SwitchMap$com$yftech$vehicle$internal$adapter$IBaseApi$EnableStateOp:[I

    invoke-virtual {p1}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableStateOp;->ordinal()I

    move-result p1

    aget p0, p0, p1

    packed-switch p0, :pswitch_data_0

    return p2

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_1
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getValidSwitchEnable(Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchState;Z)Z
    .locals 0

    .line 162
    sget-object p0, Lcom/yftech/settings/manager/BaseManager$6;->$SwitchMap$com$yftech$vehicle$internal$adapter$IBaseApi$SwitchState:[I

    invoke-virtual {p1}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchState;->ordinal()I

    move-result p1

    aget p0, p0, p1

    packed-switch p0, :pswitch_data_0

    return p2

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_1
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/yftech/settings/manager/BaseManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method protected notifyOnEnableChanged(Ljava/lang/Object;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/yftech/settings/manager/BaseManager;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/yftech/settings/manager/BaseManager$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/yftech/settings/manager/BaseManager$2;-><init>(Lcom/yftech/settings/manager/BaseManager;Ljava/lang/Object;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected notifyOnOptionChanged(Ljava/lang/Object;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/yftech/settings/manager/BaseManager;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/yftech/settings/manager/BaseManager$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/yftech/settings/manager/BaseManager$3;-><init>(Lcom/yftech/settings/manager/BaseManager;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected notifyOnValueChanged(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/yftech/settings/manager/BaseManager;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/yftech/settings/manager/BaseManager$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/yftech/settings/manager/BaseManager$4;-><init>(Lcom/yftech/settings/manager/BaseManager;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerModelCallback(Lcom/yftech/settings/manager/BaseManager$ModelCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yftech/settings/manager/BaseManager$ModelCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/yftech/settings/manager/BaseManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 62
    :try_start_0
    iget-object v1, p0, Lcom/yftech/settings/manager/BaseManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 63
    iget-object p0, p0, Lcom/yftech/settings/manager/BaseManager;->mCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setAction(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public setEnabled(Ljava/lang/Object;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)Z"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public setOption(Ljava/lang/Object;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method protected startTimeout()V
    .locals 3

    .line 232
    invoke-virtual {p0}, Lcom/yftech/settings/manager/BaseManager;->stopTimeout()Z

    const-string v0, "BaseManager"

    const-string v1, "startTimeout()"

    .line 233
    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 234
    iput-boolean v0, p0, Lcom/yftech/settings/manager/BaseManager;->mStartTimeout:Z

    .line 235
    iget-object v0, p0, Lcom/yftech/settings/manager/BaseManager;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/yftech/settings/manager/BaseManager;->mTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected stopTimeout()Z
    .locals 3

    .line 239
    iget-boolean v0, p0, Lcom/yftech/settings/manager/BaseManager;->mStartTimeout:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "BaseManager"

    const-string v2, "stopTimeout()"

    .line 242
    invoke-static {v0, v2}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iput-boolean v1, p0, Lcom/yftech/settings/manager/BaseManager;->mStartTimeout:Z

    .line 244
    iget-object v0, p0, Lcom/yftech/settings/manager/BaseManager;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/yftech/settings/manager/BaseManager;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public unregisterModelCallback(Lcom/yftech/settings/manager/BaseManager$ModelCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yftech/settings/manager/BaseManager$ModelCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/yftech/settings/manager/BaseManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 74
    :try_start_0
    iget-object v1, p0, Lcom/yftech/settings/manager/BaseManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    iget-object p0, p0, Lcom/yftech/settings/manager/BaseManager;->mCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 77
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
