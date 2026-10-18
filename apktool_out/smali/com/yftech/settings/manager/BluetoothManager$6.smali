.class Lcom/yftech/settings/manager/BluetoothManager$6;
.super Ljava/lang/Object;
.source "BluetoothManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/settings/manager/BluetoothManager;->showConnectBluetoothDisconnectLinkDialog(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/manager/BluetoothManager;


# direct methods
.method constructor <init>(Lcom/yftech/settings/manager/BluetoothManager;)V
    .locals 0

    .line 557
    iput-object p1, p0, Lcom/yftech/settings/manager/BluetoothManager$6;->this$0:Lcom/yftech/settings/manager/BluetoothManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 560
    iget-object p0, p0, Lcom/yftech/settings/manager/BluetoothManager$6;->this$0:Lcom/yftech/settings/manager/BluetoothManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/yftech/settings/manager/BluetoothManager;->access$602(Lcom/yftech/settings/manager/BluetoothManager;Lcom/yftech/settings/widget/dialog/CommonDialog;)Lcom/yftech/settings/widget/dialog/CommonDialog;

    return-void
.end method
