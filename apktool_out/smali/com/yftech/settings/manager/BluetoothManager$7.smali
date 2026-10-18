.class Lcom/yftech/settings/manager/BluetoothManager$7;
.super Ljava/lang/Object;
.source "BluetoothManager.java"

# interfaces
.implements Lcom/yftech/settings/widget/dialog/CommonDialog$OnBtnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/settings/manager/BluetoothManager;->showConnectBluetoothDisconnectLinkDialog(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/manager/BluetoothManager;

.field final synthetic val$bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field final synthetic val$linkType:Ljava/lang/String;

.field final synthetic val$profile:I


# direct methods
.method constructor <init>(Lcom/yftech/settings/manager/BluetoothManager;Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    .line 563
    iput-object p1, p0, Lcom/yftech/settings/manager/BluetoothManager$7;->this$0:Lcom/yftech/settings/manager/BluetoothManager;

    iput-object p2, p0, Lcom/yftech/settings/manager/BluetoothManager$7;->val$linkType:Ljava/lang/String;

    iput-object p3, p0, Lcom/yftech/settings/manager/BluetoothManager$7;->val$bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    iput p4, p0, Lcom/yftech/settings/manager/BluetoothManager$7;->val$profile:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick()V
    .locals 0

    return-void
.end method

.method public onIconClick()V
    .locals 0

    return-void
.end method

.method public onSureClick()V
    .locals 4

    const-string v0, "YF_BT_BluetoothManager"

    .line 566
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showConnectBluetoothDisconnectLinkDialog() disConnect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/settings/manager/BluetoothManager$7;->val$linkType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    invoke-static {}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->getInstance()Lcom/yftech/car/phonelink/CarPhoneLinkManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/settings/manager/BluetoothManager$7;->val$linkType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->disConnect(Ljava/lang/String;)V

    .line 568
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/settings/manager/BluetoothManager$7;->val$bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    iget v2, p0, Lcom/yftech/settings/manager/BluetoothManager$7;->val$profile:I

    invoke-virtual {v0, v1, v2}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->requestConnect(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v0

    const-string v1, "YF_BT_BluetoothManager"

    .line 569
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showConnectBluetoothDisconnectLinkDialog() connect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/yftech/settings/manager/BluetoothManager$7;->val$bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", profile:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/yftech/settings/manager/BluetoothManager$7;->val$profile:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", result:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
