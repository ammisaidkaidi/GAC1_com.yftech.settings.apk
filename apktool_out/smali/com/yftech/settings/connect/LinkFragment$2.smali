.class Lcom/yftech/settings/connect/LinkFragment$2;
.super Ljava/lang/Object;
.source "LinkFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/settings/connect/LinkFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/connect/LinkFragment;


# direct methods
.method constructor <init>(Lcom/yftech/settings/connect/LinkFragment;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/yftech/settings/connect/LinkFragment$2;->this$0:Lcom/yftech/settings/connect/LinkFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 86
    invoke-static {}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->getInstance()Lcom/yftech/car/phonelink/CarPhoneLinkManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->getConnectedLinkStatus()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LinkFragment"

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick() connectedLinkStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "carlife"

    .line 88
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "carplay"

    .line 89
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "hicar"

    .line 90
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    iget-object p0, p0, Lcom/yftech/settings/connect/LinkFragment$2;->this$0:Lcom/yftech/settings/connect/LinkFragment;

    invoke-static {p0}, Lcom/yftech/settings/connect/LinkFragment;->access$200(Lcom/yftech/settings/connect/LinkFragment;)V

    goto :goto_1

    .line 91
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/yftech/settings/connect/LinkFragment$2;->this$0:Lcom/yftech/settings/connect/LinkFragment;

    invoke-static {p0, p1}, Lcom/yftech/settings/connect/LinkFragment;->access$100(Lcom/yftech/settings/connect/LinkFragment;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
