.class Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$1;
.super Ljava/lang/Object;
.source "LinkCarplayAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;I)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$1;->this$0:Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;

    iput p2, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 91
    iget-object p1, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$1;->this$0:Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;

    invoke-static {p1}, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;->access$900(Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;)Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$1;->val$position:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/car/phonelink/CarLinkDevice;

    .line 92
    invoke-virtual {p1}, Lcom/yftech/car/phonelink/CarLinkDevice;->getConnectedStatus()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    .line 98
    invoke-static {}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->getInstance()Lcom/yftech/car/phonelink/CarPhoneLinkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->getConnectedLinkStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LinkCarplayAdapter"

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick() connectedLinkStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "carlife"

    .line 100
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "carplay"

    .line 101
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "hicar"

    .line 102
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    invoke-virtual {p1}, Lcom/yftech/car/phonelink/CarLinkDevice;->getConnectedStatus()I

    move-result p0

    const-string v0, "LinkCarplayAdapter"

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick() connectionStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yftech/car/phonelink/CarLinkDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_1

    const-string p0, "LinkCarplayAdapter"

    const-string p1, "onClick() connectionStatus is not disconnected, not connect"

    .line 114
    invoke-static {p0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 117
    :cond_1
    invoke-static {}, Lcom/yftech/settings/manager/LinkCarplayManager;->getInstance()Lcom/yftech/settings/manager/LinkCarplayManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/settings/manager/LinkCarplayManager;->connect(Lcom/yftech/car/phonelink/CarLinkDevice;)V

    goto :goto_1

    .line 104
    :cond_2
    :goto_0
    invoke-static {}, Lcom/yftech/settings/utils/Utils;->isCarPlayCertificate()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "carplay"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 105
    invoke-static {}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->getInstance()Lcom/yftech/car/phonelink/CarPhoneLinkManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->disConnect(Ljava/lang/String;)V

    .line 106
    invoke-static {}, Lcom/yftech/settings/manager/LinkCarplayManager;->getInstance()Lcom/yftech/settings/manager/LinkCarplayManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/settings/manager/LinkCarplayManager;->connect(Lcom/yftech/car/phonelink/CarLinkDevice;)V

    goto :goto_1

    .line 108
    :cond_3
    iget-object p0, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$1;->this$0:Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;

    invoke-static {p0, v0, p1}, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;->access$1000(Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;Ljava/lang/String;Lcom/yftech/car/phonelink/CarLinkDevice;)V

    :cond_4
    :goto_1
    return-void
.end method
