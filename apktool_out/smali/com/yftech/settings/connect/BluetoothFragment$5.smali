.class Lcom/yftech/settings/connect/BluetoothFragment$5;
.super Ljava/lang/Object;
.source "BluetoothFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/connect/BluetoothFragment;
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

    .line 462
    iput-object p1, p0, Lcom/yftech/settings/connect/BluetoothFragment$5;->this$0:Lcom/yftech/settings/connect/BluetoothFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const-string p0, "BluetoothFragment"

    const-string v0, "BluetoothScanningRunnable() startScanning"

    .line 465
    invoke-static {p0, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    invoke-static {}, Lcom/yftech/settings/manager/BluetoothManager;->getInstance()Lcom/yftech/settings/manager/BluetoothManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/settings/manager/BluetoothManager;->startScanning()Z

    return-void
.end method
