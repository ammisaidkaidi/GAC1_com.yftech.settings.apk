.class Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$1;
.super Ljava/lang/Object;
.source "BluetoothPairedAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;I)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$1;->this$0:Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;

    iput p2, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 111
    iget-object p1, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$1;->this$0:Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;

    invoke-static {p1}, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;->access$1100(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;)Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$1;->val$position:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/settings/connect/model/BtDevice;

    .line 112
    iget-object v0, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$1;->this$0:Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;->access$1202(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;Z)Z

    .line 113
    invoke-virtual {p1}, Lcom/yftech/settings/connect/model/BtDevice;->getDeviceItemState()Lcom/yftech/settings/connect/model/BtDeviceItemState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0}, Lcom/yftech/settings/connect/model/BtDeviceItemState;->isDetail()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yftech/settings/connect/model/BtDeviceItemState;->setDetail(Z)V

    .line 116
    invoke-static {}, Lcom/yftech/settings/manager/BluetoothManager;->getInstance()Lcom/yftech/settings/manager/BluetoothManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yftech/settings/connect/model/BtDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/yftech/settings/manager/BluetoothManager;->updateDeviceItemState(Ljava/lang/String;Lcom/yftech/settings/connect/model/BtDeviceItemState;)V

    const-string v1, "YF_BT_BluetoothPairedAdapter"

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tvDetails onClick: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yftech/settings/connect/model/BtDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " isDetail:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/yftech/settings/connect/model/BtDeviceItemState;->isDetail()Z

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_0
    iget-object p0, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$1;->this$0:Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;

    invoke-virtual {p0}, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;->notifyDataSetChanged()V

    return-void
.end method
