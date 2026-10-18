.class Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$8;
.super Ljava/lang/Object;
.source "BluetoothPairedAdapter.java"

# interfaces
.implements Lcom/yftech/settings/widget/dialog/CommonDialog$OnBtnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;->showIgnoreDialog(Lcom/yftech/settings/connect/model/BtDevice;)V
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

    .line 335
    iput-object p1, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$8;->this$0:Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;

    iput-object p2, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$8;->val$btDevice:Lcom/yftech/settings/connect/model/BtDevice;

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
    .locals 2

    .line 338
    invoke-static {}, Lcom/yftech/settings/manager/BluetoothManager;->getInstance()Lcom/yftech/settings/manager/BluetoothManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$8;->val$btDevice:Lcom/yftech/settings/connect/model/BtDevice;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/BluetoothManager;->ignore(Lcom/yftech/settings/connect/model/BtDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    invoke-static {}, Lcom/yftech/settings/manager/BluetoothManager;->getInstance()Lcom/yftech/settings/manager/BluetoothManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$8;->val$btDevice:Lcom/yftech/settings/connect/model/BtDevice;

    invoke-virtual {p0}, Lcom/yftech/settings/connect/model/BtDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/yftech/settings/manager/BluetoothManager;->removeDeviceItemState(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
