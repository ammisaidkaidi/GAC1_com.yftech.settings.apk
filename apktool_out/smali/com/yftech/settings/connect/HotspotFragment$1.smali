.class Lcom/yftech/settings/connect/HotspotFragment$1;
.super Ljava/lang/Object;
.source "HotspotFragment.java"

# interfaces
.implements Lcom/yftech/settings/manager/WlanManager$WlanListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/connect/HotspotFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/connect/HotspotFragment;


# direct methods
.method constructor <init>(Lcom/yftech/settings/connect/HotspotFragment;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/yftech/settings/connect/HotspotFragment$1;->this$0:Lcom/yftech/settings/connect/HotspotFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApEnabledStateChanged(I)V
    .locals 1

    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    .line 41
    iget-object p1, p0, Lcom/yftech/settings/connect/HotspotFragment$1;->this$0:Lcom/yftech/settings/connect/HotspotFragment;

    invoke-static {p1}, Lcom/yftech/settings/connect/HotspotFragment;->access$000(Lcom/yftech/settings/connect/HotspotFragment;)Landroid/widget/Switch;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 43
    :cond_0
    iget-object p0, p0, Lcom/yftech/settings/connect/HotspotFragment$1;->this$0:Lcom/yftech/settings/connect/HotspotFragment;

    invoke-static {p0}, Lcom/yftech/settings/connect/HotspotFragment;->access$000(Lcom/yftech/settings/connect/HotspotFragment;)Landroid/widget/Switch;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method

.method public onWifiEnabledStateChanged(I)V
    .locals 0

    return-void
.end method
