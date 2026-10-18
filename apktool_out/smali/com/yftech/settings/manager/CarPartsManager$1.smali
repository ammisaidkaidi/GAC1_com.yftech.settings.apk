.class Lcom/yftech/settings/manager/CarPartsManager$1;
.super Lcom/yftech/vehicle/sdk/CarWindowManager$CarWindowListener;
.source "CarPartsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/manager/CarPartsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/manager/CarPartsManager;


# direct methods
.method constructor <init>(Lcom/yftech/settings/manager/CarPartsManager;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/yftech/settings/manager/CarPartsManager$1;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    invoke-direct {p0}, Lcom/yftech/vehicle/sdk/CarWindowManager$CarWindowListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSunroofWindowAutoCloseEnableStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V
    .locals 4

    .line 128
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarWindowManager$CarWindowListener;->onSunroofWindowAutoCloseEnableStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V

    .line 129
    iget-object v0, p0, Lcom/yftech/settings/manager/CarPartsManager$1;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    sget-object v1, Lcom/yftech/settings/manager/CarPartsManager$Function;->SUNROOF_WINDOW_AUTO_CLOSE_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v0

    const-string v1, "CarPartsManager"

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSunroofWindowAutoCloseStateChanged EnabledState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " isFunctionPresent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/yftech/settings/manager/CarPartsManager$1;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    iget-object v1, p0, Lcom/yftech/settings/manager/CarPartsManager$1;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    iget-object v2, p0, Lcom/yftech/settings/manager/CarPartsManager$1;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    invoke-static {v2}, Lcom/yftech/settings/manager/CarPartsManager;->access$000(Lcom/yftech/settings/manager/CarPartsManager;)Z

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/yftech/settings/manager/CarPartsManager;->getValidEnable(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;Z)Z

    move-result p1

    invoke-static {v0, p1}, Lcom/yftech/settings/manager/CarPartsManager;->access$002(Lcom/yftech/settings/manager/CarPartsManager;Z)Z

    .line 135
    iget-object p1, p0, Lcom/yftech/settings/manager/CarPartsManager$1;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->SUNROOF_WINDOW_AUTO_CLOSE_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    iget-object p0, p0, Lcom/yftech/settings/manager/CarPartsManager$1;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    invoke-static {p0}, Lcom/yftech/settings/manager/CarPartsManager;->access$000(Lcom/yftech/settings/manager/CarPartsManager;)Z

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/yftech/settings/manager/CarPartsManager;->notifyOnEnableChanged(Ljava/lang/Object;Z)V

    return-void
.end method
