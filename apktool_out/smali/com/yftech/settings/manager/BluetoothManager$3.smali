.class Lcom/yftech/settings/manager/BluetoothManager$3;
.super Lcom/yftech/car/bluetooth/callback/CarBluetoothMusicCallback;
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
.method constructor <init>(Lcom/yftech/settings/manager/BluetoothManager;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/yftech/settings/manager/BluetoothManager$3;->this$0:Lcom/yftech/settings/manager/BluetoothManager;

    invoke-direct {p0}, Lcom/yftech/car/bluetooth/callback/CarBluetoothMusicCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothA2dpConnectStateChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 3

    .line 112
    invoke-super {p0, p1, p2}, Lcom/yftech/car/bluetooth/callback/CarBluetoothMusicCallback;->onBluetoothA2dpConnectStateChanged(Landroid/bluetooth/BluetoothDevice;I)V

    const-string v0, "YF_BT_BluetoothManager"

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBluetoothA2dpConnectStateChanged state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object p0, p0, Lcom/yftech/settings/manager/BluetoothManager$3;->this$0:Lcom/yftech/settings/manager/BluetoothManager;

    const/16 v0, 0xb

    invoke-static {p0, v0, p1, p2}, Lcom/yftech/settings/manager/BluetoothManager;->access$100(Lcom/yftech/settings/manager/BluetoothManager;ILandroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method public onBluetoothAvrcpConnectStateChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    .line 108
    invoke-super {p0, p1, p2}, Lcom/yftech/car/bluetooth/callback/CarBluetoothMusicCallback;->onBluetoothAvrcpConnectStateChanged(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method
