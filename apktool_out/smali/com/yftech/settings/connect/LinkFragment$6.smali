.class Lcom/yftech/settings/connect/LinkFragment$6;
.super Ljava/lang/Object;
.source "LinkFragment.java"

# interfaces
.implements Lcom/yftech/settings/widget/dialog/CommonDialog$OnBtnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/settings/connect/LinkFragment;->showHicarAddDeviceDisconnectCurDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/connect/LinkFragment;

.field final synthetic val$linkType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/yftech/settings/connect/LinkFragment;Ljava/lang/String;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/yftech/settings/connect/LinkFragment$6;->this$0:Lcom/yftech/settings/connect/LinkFragment;

    iput-object p2, p0, Lcom/yftech/settings/connect/LinkFragment$6;->val$linkType:Ljava/lang/String;

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

    const-string v0, "LinkFragment"

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showHicarAddDeviceDisconnectCurDialog() disConnect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/settings/connect/LinkFragment$6;->val$linkType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-static {}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->getInstance()Lcom/yftech/car/phonelink/CarPhoneLinkManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/settings/connect/LinkFragment$6;->val$linkType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->disConnect(Ljava/lang/String;)V

    .line 231
    iget-object p0, p0, Lcom/yftech/settings/connect/LinkFragment$6;->this$0:Lcom/yftech/settings/connect/LinkFragment;

    invoke-static {p0}, Lcom/yftech/settings/connect/LinkFragment;->access$200(Lcom/yftech/settings/connect/LinkFragment;)V

    return-void
.end method
