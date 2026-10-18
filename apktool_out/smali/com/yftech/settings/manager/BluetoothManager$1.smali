.class Lcom/yftech/settings/manager/BluetoothManager$1;
.super Landroid/os/Handler;
.source "BluetoothManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/manager/BluetoothManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/manager/BluetoothManager;


# direct methods
.method constructor <init>(Lcom/yftech/settings/manager/BluetoothManager;Landroid/os/Looper;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/yftech/settings/manager/BluetoothManager$1;->this$0:Lcom/yftech/settings/manager/BluetoothManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 79
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 80
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    .line 81
    iget-object p1, p0, Lcom/yftech/settings/manager/BluetoothManager$1;->this$0:Lcom/yftech/settings/manager/BluetoothManager;

    invoke-static {p1}, Lcom/yftech/settings/manager/BluetoothManager;->access$000(Lcom/yftech/settings/manager/BluetoothManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 82
    :try_start_0
    iget-object p0, p0, Lcom/yftech/settings/manager/BluetoothManager$1;->this$0:Lcom/yftech/settings/manager/BluetoothManager;

    invoke-static {p0}, Lcom/yftech/settings/manager/BluetoothManager;->access$000(Lcom/yftech/settings/manager/BluetoothManager;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/settings/manager/BluetoothManager$CarBluetoothListener;

    .line 83
    invoke-interface {p1}, Lcom/yftech/settings/manager/BluetoothManager$CarBluetoothListener;->onBluetoothPairedListChanged()V

    goto :goto_0

    .line 85
    :cond_0
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 86
    :cond_1
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 87
    iget-object p1, p0, Lcom/yftech/settings/manager/BluetoothManager$1;->this$0:Lcom/yftech/settings/manager/BluetoothManager;

    invoke-static {p1}, Lcom/yftech/settings/manager/BluetoothManager;->access$000(Lcom/yftech/settings/manager/BluetoothManager;)Ljava/util/List;

    move-result-object p1

    monitor-enter p1

    .line 88
    :try_start_1
    iget-object p0, p0, Lcom/yftech/settings/manager/BluetoothManager$1;->this$0:Lcom/yftech/settings/manager/BluetoothManager;

    invoke-static {p0}, Lcom/yftech/settings/manager/BluetoothManager;->access$000(Lcom/yftech/settings/manager/BluetoothManager;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/settings/manager/BluetoothManager$CarBluetoothListener;

    .line 89
    invoke-interface {v0}, Lcom/yftech/settings/manager/BluetoothManager$CarBluetoothListener;->onBluetoothUnpairedListChanged()V

    goto :goto_1

    .line 91
    :cond_2
    monitor-exit p1

    goto :goto_2

    :catchall_1
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_3
    :goto_2
    return-void
.end method
