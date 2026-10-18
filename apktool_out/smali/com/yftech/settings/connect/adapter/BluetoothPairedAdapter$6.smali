.class Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$6;
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

.field final synthetic val$viewHolder:Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;ILcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$6;->this$0:Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;

    iput p2, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$6;->val$position:I

    iput-object p3, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$6;->val$viewHolder:Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 159
    invoke-static {}, Lcom/yftech/settings/utils/Utils;->isFastDoubleClick()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "YF_BT_BluetoothPairedAdapter"

    const-string p1, "this onClick isFastDouble"

    .line 160
    invoke-static {p0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 163
    :cond_0
    iget-object p1, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$6;->this$0:Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;

    invoke-static {p1}, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;->access$1100(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;)Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$6;->val$position:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/settings/connect/model/BtDevice;

    .line 164
    invoke-virtual {p1}, Lcom/yftech/settings/connect/model/BtDevice;->isConnected()Z

    move-result v0

    const/16 v1, 0x1000

    if-eqz v0, :cond_1

    .line 166
    iget-object p0, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$6;->this$0:Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;

    invoke-static {p0}, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;->access$1300(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;)V

    .line 167
    invoke-static {}, Lcom/yftech/settings/manager/BluetoothManager;->getInstance()Lcom/yftech/settings/manager/BluetoothManager;

    move-result-object p0

    invoke-virtual {p0, p1, v1}, Lcom/yftech/settings/manager/BluetoothManager;->disconnect(Lcom/yftech/settings/connect/model/BtDevice;I)Z

    goto :goto_1

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$6;->this$0:Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;

    invoke-static {v0}, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;->access$1600(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$6;->val$viewHolder:Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;

    invoke-static {v0}, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;->access$1000(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$6;->this$0:Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;

    invoke-virtual {p1}, Lcom/yftech/settings/connect/model/BtDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;->access$1700(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 172
    iget-object p0, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$6;->this$0:Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;

    invoke-static {p0, p1}, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;->access$1800(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;Lcom/yftech/settings/connect/model/BtDevice;)V

    goto :goto_1

    .line 175
    :cond_2
    invoke-virtual {p1}, Lcom/yftech/settings/connect/model/BtDevice;->getDeviceItemState()Lcom/yftech/settings/connect/model/BtDeviceItemState;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 177
    invoke-virtual {p0}, Lcom/yftech/settings/connect/model/BtDeviceItemState;->isHfp()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/yftech/settings/connect/model/BtDeviceItemState;->isAvrcp()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 179
    :cond_3
    invoke-virtual {p0}, Lcom/yftech/settings/connect/model/BtDeviceItemState;->isHfp()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v1, 0x10

    goto :goto_0

    .line 181
    :cond_4
    invoke-virtual {p0}, Lcom/yftech/settings/connect/model/BtDeviceItemState;->isAvrcp()Z

    move-result p0

    if-eqz p0, :cond_5

    const/16 v1, 0xb

    .line 185
    :cond_5
    :goto_0
    invoke-static {}, Lcom/yftech/settings/manager/BluetoothManager;->getInstance()Lcom/yftech/settings/manager/BluetoothManager;

    move-result-object p0

    invoke-virtual {p0, p1, v1}, Lcom/yftech/settings/manager/BluetoothManager;->connect(Lcom/yftech/settings/connect/model/BtDevice;I)Z

    :goto_1
    return-void
.end method
