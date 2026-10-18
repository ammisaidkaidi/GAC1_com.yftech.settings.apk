.class Lcom/yftech/settings/connect/BluetoothFragment$2;
.super Ljava/lang/Object;
.source "BluetoothFragment.java"

# interfaces
.implements Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter$OnClickConnectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/settings/connect/BluetoothFragment;->updateUnpairedListView()V
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

    .line 277
    iput-object p1, p0, Lcom/yftech/settings/connect/BluetoothFragment$2;->this$0:Lcom/yftech/settings/connect/BluetoothFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnClickConnect(I)V
    .locals 0

    .line 280
    iget-object p0, p0, Lcom/yftech/settings/connect/BluetoothFragment$2;->this$0:Lcom/yftech/settings/connect/BluetoothFragment;

    invoke-static {p0, p1}, Lcom/yftech/settings/connect/BluetoothFragment;->access$000(Lcom/yftech/settings/connect/BluetoothFragment;I)V

    return-void
.end method
