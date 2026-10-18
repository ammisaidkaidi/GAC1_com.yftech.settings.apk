.class Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$3;
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

    .line 130
    iput-object p1, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$3;->this$0:Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;

    iput p2, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 133
    iget-object p1, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$3;->this$0:Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;

    invoke-static {p1}, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;->access$1100(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;)Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$3;->val$position:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/settings/connect/model/BtDevice;

    .line 134
    iget-object p0, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$3;->this$0:Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;

    invoke-static {p0, p1}, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;->access$1400(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;Lcom/yftech/settings/connect/model/BtDevice;)V

    return-void
.end method
