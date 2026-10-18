.class Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$1;
.super Ljava/lang/Object;
.source "LinkHicarAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;I)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$1;->this$0:Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;

    iput p2, p0, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 77
    iget-object p1, p0, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$1;->this$0:Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;

    invoke-static {p1}, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;->access$900(Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;)Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$1;->val$position:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/car/phonelink/CarLinkDevice;

    .line 78
    invoke-virtual {p1}, Lcom/yftech/car/phonelink/CarLinkDevice;->getConnectedType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 80
    invoke-static {}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->getInstance()Lcom/yftech/car/phonelink/CarPhoneLinkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->getConnectedLinkStatus()Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-static {}, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;->access$1000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick() connectedLinkStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "carlife"

    .line 82
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "carplay"

    .line 83
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "hicar"

    .line 84
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    invoke-static {}, Lcom/yftech/settings/manager/LinkHicarManager;->getInstance()Lcom/yftech/settings/manager/LinkHicarManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/settings/manager/LinkHicarManager;->connect(Lcom/yftech/car/phonelink/CarLinkDevice;)V

    goto :goto_1

    .line 85
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$1;->this$0:Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;

    invoke-static {p0, v0, p1}, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;->access$1100(Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;Ljava/lang/String;Lcom/yftech/car/phonelink/CarLinkDevice;)V

    :cond_2
    :goto_1
    return-void
.end method
