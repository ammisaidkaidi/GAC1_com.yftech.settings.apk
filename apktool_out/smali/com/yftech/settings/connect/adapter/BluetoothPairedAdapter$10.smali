.class Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$10;
.super Ljava/lang/Object;
.source "BluetoothPairedAdapter.java"

# interfaces
.implements Lcom/yftech/settings/widget/dialog/CommonDialog$OnBtnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;->showConnectModeDialog(Lcom/yftech/settings/connect/model/BtDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;

.field final synthetic val$btDevice:Lcom/yftech/settings/connect/model/BtDevice;


# direct methods
.method constructor <init>(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;Lcom/yftech/settings/connect/model/BtDevice;)V
    .locals 0

    .line 411
    iput-object p1, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$10;->this$0:Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;

    iput-object p2, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$10;->val$btDevice:Lcom/yftech/settings/connect/model/BtDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick()V
    .locals 3

    const-string v0, "YF_BT_BluetoothPairedAdapter"

    const-string v1, "showConnectModeDialog() onCancelClick()"

    .line 436
    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    iget-object v0, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$10;->val$btDevice:Lcom/yftech/settings/connect/model/BtDevice;

    invoke-virtual {v0}, Lcom/yftech/settings/connect/model/BtDevice;->getDeviceItemState()Lcom/yftech/settings/connect/model/BtDeviceItemState;

    move-result-object v0

    const/16 v1, 0x1000

    if-eqz v0, :cond_2

    .line 441
    invoke-virtual {v0}, Lcom/yftech/settings/connect/model/BtDeviceItemState;->isHfp()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/yftech/settings/connect/model/BtDeviceItemState;->isAvrcp()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 443
    :cond_0
    invoke-virtual {v0}, Lcom/yftech/settings/connect/model/BtDeviceItemState;->isHfp()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x10

    goto :goto_0

    .line 445
    :cond_1
    invoke-virtual {v0}, Lcom/yftech/settings/connect/model/BtDeviceItemState;->isAvrcp()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v1, 0xb

    .line 449
    :cond_2
    :goto_0
    invoke-static {}, Lcom/yftech/settings/manager/BluetoothManager;->getInstance()Lcom/yftech/settings/manager/BluetoothManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$10;->val$btDevice:Lcom/yftech/settings/connect/model/BtDevice;

    invoke-virtual {v0, p0, v1}, Lcom/yftech/settings/manager/BluetoothManager;->connect(Lcom/yftech/settings/connect/model/BtDevice;I)Z

    return-void
.end method

.method public onIconClick()V
    .locals 0

    return-void
.end method

.method public onSureClick()V
    .locals 4

    const-string v0, "YF_BT_BluetoothPairedAdapter"

    const-string v1, "showConnectModeDialog() onSureClick()"

    .line 414
    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    iget-object v0, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$10;->this$0:Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;

    iget-object p0, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$10;->val$btDevice:Lcom/yftech/settings/connect/model/BtDevice;

    invoke-virtual {p0}, Lcom/yftech/settings/connect/model/BtDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;->access$2000(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;Landroid/bluetooth/BluetoothDevice;)Lcom/yftech/car/phonelink/CarLinkDevice;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "YF_BT_BluetoothPairedAdapter"

    const-string v0, "showConnectModeDialog() carLinkDevice is null"

    .line 419
    invoke-static {p0, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 423
    :cond_0
    invoke-static {}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->getInstance()Lcom/yftech/car/phonelink/CarPhoneLinkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->getConnectedLinkStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "YF_BT_BluetoothPairedAdapter"

    .line 424
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showConnectModeDialog() connectedLinkStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "none"

    .line 425
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "YF_BT_BluetoothPairedAdapter"

    const-string v2, "showConnectModeDialog() disConnect carPhoneLink"

    .line 427
    invoke-static {v1, v2}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    invoke-static {}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->getInstance()Lcom/yftech/car/phonelink/CarPhoneLinkManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->disConnect(Ljava/lang/String;)V

    .line 431
    :cond_1
    invoke-static {}, Lcom/yftech/settings/manager/LinkCarplayManager;->getInstance()Lcom/yftech/settings/manager/LinkCarplayManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yftech/settings/manager/LinkCarplayManager;->connect(Lcom/yftech/car/phonelink/CarLinkDevice;)V

    return-void
.end method
