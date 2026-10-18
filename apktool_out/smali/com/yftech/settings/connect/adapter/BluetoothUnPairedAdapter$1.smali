.class Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter$1;
.super Ljava/lang/Object;
.source "BluetoothUnPairedAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter;I)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter$1;->this$0:Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter;

    iput p2, p0, Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 77
    iget-object p1, p0, Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter$1;->this$0:Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter;

    invoke-static {p1}, Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter;->access$500(Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter;)Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter$OnClickConnectListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 78
    iget-object p1, p0, Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter$1;->this$0:Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter;

    invoke-static {p1}, Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter;->access$500(Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter;)Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter$OnClickConnectListener;

    move-result-object p1

    iget p0, p0, Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter$1;->val$position:I

    invoke-interface {p1, p0}, Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter$OnClickConnectListener;->OnClickConnect(I)V

    :cond_0
    return-void
.end method
