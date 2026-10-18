.class Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$8;
.super Ljava/lang/Object;
.source "LinkHicarAdapter.java"

# interfaces
.implements Lcom/yftech/settings/widget/dialog/CommonDialog$OnBtnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;->showHiCarConnectNewDisconnectCurDialog(Ljava/lang/String;Lcom/yftech/car/phonelink/CarLinkDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;

.field final synthetic val$carLinkDevice:Lcom/yftech/car/phonelink/CarLinkDevice;

.field final synthetic val$linkType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;Ljava/lang/String;Lcom/yftech/car/phonelink/CarLinkDevice;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$8;->this$0:Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;

    iput-object p2, p0, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$8;->val$linkType:Ljava/lang/String;

    iput-object p3, p0, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$8;->val$carLinkDevice:Lcom/yftech/car/phonelink/CarLinkDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick()V
    .locals 0

    return-void
.end method

.method public onIconClick()V
    .locals 0

    return-void
.end method

.method public onSureClick()V
    .locals 3

    .line 199
    invoke-static {}, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showHiCarConnectNewDisconnectCurDialog() disConnect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$8;->val$linkType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-static {}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->getInstance()Lcom/yftech/car/phonelink/CarPhoneLinkManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$8;->val$linkType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->disConnect(Ljava/lang/String;)V

    .line 201
    invoke-static {}, Lcom/yftech/settings/manager/LinkHicarManager;->getInstance()Lcom/yftech/settings/manager/LinkHicarManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$8;->val$carLinkDevice:Lcom/yftech/car/phonelink/CarLinkDevice;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/manager/LinkHicarManager;->connect(Lcom/yftech/car/phonelink/CarLinkDevice;)V

    return-void
.end method
