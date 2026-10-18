.class Lcom/yftech/settings/connect/BluetoothFragment$3;
.super Ljava/lang/Object;
.source "BluetoothFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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


# direct methods
.method constructor <init>(Lcom/yftech/settings/connect/BluetoothFragment;)V
    .locals 0

    .line 384
    iput-object p1, p0, Lcom/yftech/settings/connect/BluetoothFragment$3;->this$0:Lcom/yftech/settings/connect/BluetoothFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 387
    iget-object p0, p0, Lcom/yftech/settings/connect/BluetoothFragment$3;->this$0:Lcom/yftech/settings/connect/BluetoothFragment;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/yftech/settings/connect/BluetoothFragment;->access$102(Lcom/yftech/settings/connect/BluetoothFragment;Lcom/yftech/settings/widget/dialog/CommonDialog;)Lcom/yftech/settings/widget/dialog/CommonDialog;

    return-void
.end method
