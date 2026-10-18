.class Lcom/yftech/settings/connect/BluetoothFragment$4;
.super Ljava/lang/Object;
.source "BluetoothFragment.java"

# interfaces
.implements Lcom/yftech/settings/widget/dialog/CommonDialog$OnBtnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/settings/connect/BluetoothFragment;->showCarplayBluetoothPairMaxRemovePairedDialog(Lcom/yftech/settings/connect/model/BtDevice;Lcom/yftech/settings/connect/model/BtDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/connect/BluetoothFragment;

.field final synthetic val$newBtDevice:Lcom/yftech/settings/connect/model/BtDevice;


# direct methods
.method constructor <init>(Lcom/yftech/settings/connect/BluetoothFragment;Lcom/yftech/settings/connect/model/BtDevice;)V
    .locals 0

    .line 390
    iput-object p1, p0, Lcom/yftech/settings/connect/BluetoothFragment$4;->this$0:Lcom/yftech/settings/connect/BluetoothFragment;

    iput-object p2, p0, Lcom/yftech/settings/connect/BluetoothFragment$4;->val$newBtDevice:Lcom/yftech/settings/connect/model/BtDevice;

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

    .line 393
    invoke-static {}, Lcom/yftech/settings/manager/BluetoothManager;->getInstance()Lcom/yftech/settings/manager/BluetoothManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/settings/connect/BluetoothFragment$4;->val$newBtDevice:Lcom/yftech/settings/connect/model/BtDevice;

    const/16 v1, 0x1000

    invoke-virtual {v0, p0, v1}, Lcom/yftech/settings/manager/BluetoothManager;->connect(Lcom/yftech/settings/connect/model/BtDevice;I)Z

    return-void
.end method
