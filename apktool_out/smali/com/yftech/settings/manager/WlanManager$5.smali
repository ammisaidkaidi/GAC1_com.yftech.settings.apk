.class Lcom/yftech/settings/manager/WlanManager$5;
.super Ljava/lang/Object;
.source "WlanManager.java"

# interfaces
.implements Lcom/yftech/settings/widget/dialog/CommonDialog$OnBtnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/settings/manager/WlanManager;->showOpenApDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/manager/WlanManager;


# direct methods
.method constructor <init>(Lcom/yftech/settings/manager/WlanManager;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/yftech/settings/manager/WlanManager$5;->this$0:Lcom/yftech/settings/manager/WlanManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick()V
    .locals 2

    const-string v0, "WlanManager"

    const-string v1, "showOpenApDialog() onCancelClick"

    .line 247
    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object p0, p0, Lcom/yftech/settings/manager/WlanManager$5;->this$0:Lcom/yftech/settings/manager/WlanManager;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/yftech/settings/manager/WlanManager;->access$400(Lcom/yftech/settings/manager/WlanManager;I)V

    return-void
.end method

.method public onIconClick()V
    .locals 0

    return-void
.end method

.method public onSureClick()V
    .locals 5

    .line 238
    iget-object v0, p0, Lcom/yftech/settings/manager/WlanManager$5;->this$0:Lcom/yftech/settings/manager/WlanManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/WlanManager;->setApEnable(Z)Z

    move-result v0

    const-string v2, "WlanManager"

    .line 239
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showOpenApDialog() onSureClick result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 241
    iget-object p0, p0, Lcom/yftech/settings/manager/WlanManager$5;->this$0:Lcom/yftech/settings/manager/WlanManager;

    invoke-static {p0, v1}, Lcom/yftech/settings/manager/WlanManager;->access$400(Lcom/yftech/settings/manager/WlanManager;I)V

    :cond_0
    return-void
.end method
