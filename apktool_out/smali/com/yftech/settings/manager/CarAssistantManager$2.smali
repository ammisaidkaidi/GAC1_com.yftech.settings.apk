.class Lcom/yftech/settings/manager/CarAssistantManager$2;
.super Lcom/yftech/vehicle/sdk/CarIcmManager$CarIcmListener;
.source "CarAssistantManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/manager/CarAssistantManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/manager/CarAssistantManager;


# direct methods
.method constructor <init>(Lcom/yftech/settings/manager/CarAssistantManager;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/yftech/settings/manager/CarAssistantManager$2;->this$0:Lcom/yftech/settings/manager/CarAssistantManager;

    invoke-direct {p0}, Lcom/yftech/vehicle/sdk/CarIcmManager$CarIcmListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpeedWarningChanged(I)V
    .locals 4

    .line 220
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarIcmManager$CarIcmListener;->onSpeedWarningChanged(I)V

    .line 221
    iget-object v0, p0, Lcom/yftech/settings/manager/CarAssistantManager$2;->this$0:Lcom/yftech/settings/manager/CarAssistantManager;

    sget-object v1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->SPEED_WARNING_VALUE:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarAssistantManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarAssistantManager$Function;)Z

    move-result v0

    const-string v1, "CarAssistantManager"

    .line 222
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSpeedWarningChanged speed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " isFunctionPresent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/yftech/settings/manager/CarAssistantManager$2;->this$0:Lcom/yftech/settings/manager/CarAssistantManager;

    iget-boolean v0, v0, Lcom/yftech/settings/manager/CarAssistantManager;->mStartTimeout:Z

    if-eqz v0, :cond_1

    const-string p0, "CarAssistantManager"

    const-string p1, "onSpeedWarningChanged startTimeout is true"

    .line 227
    invoke-static {p0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/yftech/settings/manager/CarAssistantManager$2;->this$0:Lcom/yftech/settings/manager/CarAssistantManager;

    sget-object v1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->SPEED_WARNING_VALUE:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    iget-object p0, p0, Lcom/yftech/settings/manager/CarAssistantManager$2;->this$0:Lcom/yftech/settings/manager/CarAssistantManager;

    invoke-static {p0, p1}, Lcom/yftech/settings/manager/CarAssistantManager;->access$1200(Lcom/yftech/settings/manager/CarAssistantManager;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/yftech/settings/manager/CarAssistantManager;->notifyOnValueChanged(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
