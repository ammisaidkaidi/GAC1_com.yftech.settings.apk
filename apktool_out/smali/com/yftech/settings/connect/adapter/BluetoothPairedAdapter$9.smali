.class Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$9;
.super Ljava/lang/Object;
.source "BluetoothPairedAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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


# direct methods
.method constructor <init>(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;)V
    .locals 0

    .line 405
    iput-object p1, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$9;->this$0:Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 408
    iget-object p0, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$9;->this$0:Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;->access$1902(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;Lcom/yftech/settings/widget/dialog/CommonDialog;)Lcom/yftech/settings/widget/dialog/CommonDialog;

    return-void
.end method
