.class Lcom/yftech/settings/manager/BluetoothManager$5;
.super Lcom/yftech/car/bluetooth/callback/CarBluetoothContactsCallback;
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

    .line 210
    iput-object p1, p0, Lcom/yftech/settings/manager/BluetoothManager$5;->this$0:Lcom/yftech/settings/manager/BluetoothManager;

    invoke-direct {p0}, Lcom/yftech/car/bluetooth/callback/CarBluetoothContactsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothPbapConnectStatusChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 1

    .line 213
    invoke-super {p0, p1, p2}, Lcom/yftech/car/bluetooth/callback/CarBluetoothContactsCallback;->onBluetoothPbapConnectStatusChanged(Landroid/bluetooth/BluetoothDevice;I)V

    const-string p0, "YF_BT_BluetoothManager"

    .line 214
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onBluetoothPbapConnectStatusChanged() state:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
