.class Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$4;
.super Ljava/lang/Object;
.source "BluetoothPairedAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    .line 138
    iput-object p1, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$4;->this$0:Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;

    iput p2, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$4;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 141
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isPressed()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 144
    :cond_0
    iget-object p1, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$4;->this$0:Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;

    iget-object v0, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$4;->this$0:Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;

    invoke-static {v0}, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;->access$1100(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;)Ljava/util/List;

    move-result-object v0

    iget p0, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$4;->val$position:I

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yftech/settings/connect/model/BtDevice;

    const/16 v0, 0x10

    invoke-static {p1, p0, v0, p2}, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;->access$1500(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;Lcom/yftech/settings/connect/model/BtDevice;IZ)V

    return-void
.end method
