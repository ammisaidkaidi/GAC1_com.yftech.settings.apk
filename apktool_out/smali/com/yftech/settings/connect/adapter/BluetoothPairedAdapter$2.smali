.class Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$2;
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

    .line 122
    iput-object p1, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$2;->this$0:Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;

    iput p2, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 126
    iget-object p1, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$2;->this$0:Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;

    invoke-static {p1}, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;->access$1300(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;)V

    .line 127
    invoke-static {}, Lcom/yftech/settings/manager/BluetoothManager;->getInstance()Lcom/yftech/settings/manager/BluetoothManager;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$2;->this$0:Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;

    invoke-static {v0}, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;->access$1100(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;)Ljava/util/List;

    move-result-object v0

    iget p0, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$2;->val$position:I

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yftech/settings/connect/model/BtDevice;

    const/16 v0, 0x1000

    invoke-virtual {p1, p0, v0}, Lcom/yftech/settings/manager/BluetoothManager;->disconnect(Lcom/yftech/settings/connect/model/BtDevice;I)Z

    return-void
.end method
