.class Lcom/yftech/settings/manager/BluetoothManager$LoadDataHandlerCallback;
.super Ljava/lang/Object;
.source "BluetoothManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/manager/BluetoothManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadDataHandlerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/manager/BluetoothManager;


# direct methods
.method private constructor <init>(Lcom/yftech/settings/manager/BluetoothManager;)V
    .locals 0

    .line 622
    iput-object p1, p0, Lcom/yftech/settings/manager/BluetoothManager$LoadDataHandlerCallback;->this$0:Lcom/yftech/settings/manager/BluetoothManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yftech/settings/manager/BluetoothManager;Lcom/yftech/settings/manager/BluetoothManager$1;)V
    .locals 0

    .line 622
    invoke-direct {p0, p1}, Lcom/yftech/settings/manager/BluetoothManager$LoadDataHandlerCallback;-><init>(Lcom/yftech/settings/manager/BluetoothManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 625
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 626
    iget-object p1, p0, Lcom/yftech/settings/manager/BluetoothManager$LoadDataHandlerCallback;->this$0:Lcom/yftech/settings/manager/BluetoothManager;

    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getPairedDevices()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/yftech/settings/manager/BluetoothManager;->access$700(Lcom/yftech/settings/manager/BluetoothManager;Ljava/util/List;)V

    .line 627
    iget-object p0, p0, Lcom/yftech/settings/manager/BluetoothManager$LoadDataHandlerCallback;->this$0:Lcom/yftech/settings/manager/BluetoothManager;

    invoke-static {p0}, Lcom/yftech/settings/manager/BluetoothManager;->access$800(Lcom/yftech/settings/manager/BluetoothManager;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 628
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 630
    iget-object p0, p0, Lcom/yftech/settings/manager/BluetoothManager$LoadDataHandlerCallback;->this$0:Lcom/yftech/settings/manager/BluetoothManager;

    invoke-static {p0}, Lcom/yftech/settings/manager/BluetoothManager;->access$800(Lcom/yftech/settings/manager/BluetoothManager;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 631
    :cond_1
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 632
    iget-object p0, p0, Lcom/yftech/settings/manager/BluetoothManager$LoadDataHandlerCallback;->this$0:Lcom/yftech/settings/manager/BluetoothManager;

    invoke-static {p0}, Lcom/yftech/settings/manager/BluetoothManager;->access$900(Lcom/yftech/settings/manager/BluetoothManager;)V

    :cond_2
    :goto_0
    return v1
.end method
