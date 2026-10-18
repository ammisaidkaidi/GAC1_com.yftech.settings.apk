.class Lcom/yftech/settings/manager/CarAssistantManager$1;
.super Lcom/yftech/vehicle/sdk/CarSettingsManager$CarSettingsListener;
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

    .line 69
    iput-object p1, p0, Lcom/yftech/settings/manager/CarAssistantManager$1;->this$0:Lcom/yftech/settings/manager/CarAssistantManager;

    invoke-direct {p0}, Lcom/yftech/vehicle/sdk/CarSettingsManager$CarSettingsListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onADASWarnTypeChanged(Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;)V
    .locals 4

    .line 170
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager$CarSettingsListener;->onADASWarnTypeChanged(Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;)V

    .line 171
    iget-object v0, p0, Lcom/yftech/settings/manager/CarAssistantManager$1;->this$0:Lcom/yftech/settings/manager/CarAssistantManager;

    sget-object v1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->ADAS_WARN_TYPE_OPTION:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarAssistantManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarAssistantManager$Function;)Z

    move-result v0

    const-string v1, "CarAssistantManager"

    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onADASWarnTypeChanged type:"

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

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/yftech/settings/manager/CarAssistantManager$1;->this$0:Lcom/yftech/settings/manager/CarAssistantManager;

    invoke-static {v0, p1}, Lcom/yftech/settings/manager/CarAssistantManager;->access$800(Lcom/yftech/settings/manager/CarAssistantManager;Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;)I

    move-result p1

    .line 177
    iget-object p0, p0, Lcom/yftech/settings/manager/CarAssistantManager$1;->this$0:Lcom/yftech/settings/manager/CarAssistantManager;

    sget-object v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;->ADAS_WARN_TYPE_OPTION:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {p0, v0, p1}, Lcom/yftech/settings/manager/CarAssistantManager;->notifyOnOptionChanged(Ljava/lang/Object;I)V

    return-void
.end method

.method public onAEBOffEnableStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableStateOp;)V
    .locals 4

    .line 158
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager$CarSettingsListener;->onAEBOffEnableStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableStateOp;)V

    .line 159
    iget-object v0, p0, Lcom/yftech/settings/manager/CarAssistantManager$1;->this$0:Lcom/yftech/settings/manager/CarAssistantManager;

    sget-object v1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->AEB_OFF_ENABLED:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarAssistantManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarAssistantManager$Function;)Z

    move-result v0

    const-string v1, "CarAssistantManager"

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAEBOffStateChanged EnabledState:"

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

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/yftech/settings/manager/CarAssistantManager$1;->this$0:Lcom/yftech/settings/manager/CarAssistantManager;

    iget-object v1, p0, Lcom/yftech/settings/manager/CarAssistantManager$1;->this$0:Lcom/yftech/settings/manager/CarAssistantManager;

    iget-object v2, p0, Lcom/yftech/settings/manager/CarAssistantManager$1;->this$0:Lcom/yftech/settings/manager/CarAssistantManager;

    invoke-static {v2}, Lcom/yftech/settings/manager/CarAssistantManager;->access$700(Lcom/yftech/settings/manager/CarAssistantManager;)Z

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/yftech/settings/manager/CarAssistantManager;->getValidEnableStateOp(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableStateOp;Z)Z

    move-result p1

    invoke-static {v0, p1}, Lcom/yftech/settings/manager/CarAssistantManager;->access$702(Lcom/yftech/settings/manager/CarAssistantManager;Z)Z

    .line 165
    iget-object p1, p0, Lcom/yftech/settings/manager/CarAssistantManager$1;->this$0:Lcom/yftech/settings/manager/CarAssistantManager;

    sget-object v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;->AEB_OFF_ENABLED:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    iget-object p0, p0, Lcom/yftech/settings/manager/CarAssistantManager$1;->this$0:Lcom/yftech/settings/manager/CarAssistantManager;

    invoke-static {p0}, Lcom/yftech/settings/manager/CarAssistantManager;->access$700(Lcom/yftech/settings/manager/CarAssistantManager;)Z

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/yftech/settings/manager/CarAssistantManager;->notifyOnEnableChanged(Ljava/lang/Object;Z)V

    return-void
.end method

.method public onCruiseAssistModeChanged(Lcom/yftech/vehicle/internal/adapter/ICarSettings$CruiseAssistMode;)V
    .locals 4

    .line 182
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager$CarSettingsListener;->onCruiseAssistModeChanged(Lcom/yftech/vehicle/internal/adapter/ICarSettings$CruiseAssistMode;)V

    .line 183
    iget-object v0, p0, Lcom/yftech/settings/manager/CarAssistantManager$1;->this$0:Lcom/yftech/settings/manager/CarAssistantManager;

    sget-object v1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->CRUISE_ASSIST_OPTION:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarAssistantManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarAssistantManager$Function;)Z

    move-result v0

    const-string v1, "CarAssistantManager"

    .line 184
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCruiseAssistModeChanged mode:"

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

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/yftech/settings/manager/CarAssistantManager$1;->this$0:Lcom/yftech/settings/manager/CarAssistantManager;

    invoke-static {v0, p1}, Lcom/yftech/settings/manager/CarAssistantManager;->access$900(Lcom/yftech/settings/manager/CarAssistantManager;Lcom/yftech/vehicle/internal/adapter/ICarSettings$CruiseAssistMode;)I

    move-result p1

    .line 189
    iget-object p0, p0, Lcom/yftech/settings/manager/CarAssistantManager$1;->this$0:Lcom/yftech/settings/manager/CarAssistantManager;

    sget-object v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;->CRUISE_ASSIST_OPTION:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {p0, v0, p1}, Lcom/yftech/settings/manager/CarAssistantManager;->notifyOnOptionChanged(Ljava/lang/Object;I)V

    return-void
.end method

.method public onFCWOffEnableStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableStateOp;)V
    .locals 4

    .line 73
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager$CarSettingsListener;->onFCWOffEnableStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableStateOp;)V

    .line 74
    iget-object v0, p0, Lcom/yftech/settings/manager/CarAssistantManager$1;->this$0:Lcom/yftech/settings/manager/CarAssistantManager;

    sget-object v1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->FCW_OFF_ENABLED:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarAssistantManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarAssistantManager$Function;)Z

    move-result v0

    const-string v1, "CarAssistantManager"

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFCWOffStateChanged EnabledState:"

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

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/yftech/settings/manager/CarAssistantManager$1;->this$0:Lcom/yftech/settings/manager/CarAssistantManager;

    iget-object v1, p0, Lcom/yftech/settings/manager/CarAssistantManager$1;->this$0:Lcom/yftech/settings/manager/CarAssistantManager;

    iget-object v2, p0, Lcom/yftech/settings/manager/CarAssistantManager$1;->this$0:Lcom/yftech/settings/manager/CarAssistantManager;

    invoke-static {v2}, Lcom/yftech/settings/manager/CarAssistantManager;->access$000(Lcom/yftech/settings/manager/CarAssistantManager;)Z

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/yftech/settings/manager/CarAssistantManager;->getValidEnableStateOp(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableStateOp;Z)Z

    move-result p1

    invoke-static {v0, p1}, Lcom/yftech/settings/manager/CarAssistantManager;->access$002(Lcom/yftech/settings/manager/CarAssistantManager;Z)Z

    .line 80
    iget-object p1, p0, Lcom/yftech/settings/manager/CarAssistantManager$1;->this$0:Lcom/yftech/settings/manager/CarAssistantManager;

    sget-object v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;->FCW_OFF_ENABLED:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    iget-object p0, p0, Lcom/yftech/settings/manager/CarAssistantManager$1;->this$0:Lcom/yftech/settings/manager/CarAssistantManager;

    invoke-static {p0}, Lcom/yftech/settings/manager/CarAssistantManager;->access$000(Lcom/yftech/settings/manager/CarAssistantManager;)Z

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/yftech/settings/manager/CarAssistantManager;->notifyOnEnableChanged(Ljava/lang/Object;Z)V

    return-void
.end method

.method public onFCWWarningDistanceChanged(Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;)V
    .locals 4

    .line 85
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager$CarSettingsListener;->onFCWWarningDistanceChanged(Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;)V

    .line 86
    iget-object v0, p0, Lcom/yftech/settings/manager/CarAssistantManager$1;->this$0:Lcom/yftech/settings/manager/CarAssistantManager;

    sget-object v1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->FCW_WARNING_DISTANCE_OPTION:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarAssistantManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarAssistantManager$Function;)Z

    move-result v0

    const-string v1, "CarAssistantManager"

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFCWWarningDistanceChanged distance:"

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

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/yftech/settings/manager/CarAssistantManager$1;->this$0:Lcom/yftech/settings/manager/CarAssistantManager;

    invoke-static {v0, p1}, Lcom/yftech/settings/manager/CarAssistantManager;->access$100(Lcom/yftech/settings/manager/CarAssistantManager;Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;)I

    move-result p1

    .line 92
    iget-object p0, p0, Lcom/yftech/settings/manager/CarAssistantManager$1;->this$0:Lcom/yftech/settings/manager/CarAssistantManager;

    sget-object v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;->FCW_WARNING_DISTANCE_OPTION:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {p0, v0, p1}, Lcom/yftech/settings/manager/CarAssistantManager;->notifyOnOptionChanged(Ljava/lang/Object;I)V

    return-void
.end method

.method public onFrontCarDistanceDisplayEnableStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V
    .locals 4

    .line 194
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager$CarSettingsListener;->onFrontCarDistanceDisplayEnableStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V

    .line 195
    iget-object v0, p0, Lcom/yftech/settings/manager/CarAssistantManager$1;->this$0:Lcom/yftech/settings/manager/CarAssistantManager;

    sget-object v1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->DFC_ENABLE:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarAssistantManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarAssistantManager$Function;)Z

    move-result v0

    const-string v1, "CarAssistantManager"

    .line 196
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFrontCarDistanceDisplayEnableStateChanged state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " isFunctionPresent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/yftech/settings/manager/CarAssistantManager$1;->this$0:Lcom/yftech/settings/manager/CarAssistantManager;

    iget-object v1, p0, Lcom/yftech/settings/manager/CarAssistantManager$1;->this$0:Lcom/yftech/settings/manager/CarAssistantManager;

    iget-object v2, p0, Lcom/yftech/settings/manager/CarAssistantManager$1;->this$0:Lcom/yftech/settings/manager/CarAssistantManager;

    invoke-static {v2}, Lcom/yftech/settings/manager/CarAssistantManager;->access$1000(Lcom/yftech/settings/manager/CarAssistantManager;)Z

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/yftech/settings/manager/CarAssistantManager;->getValidEnable(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;Z)Z

    move-result p1

    invoke-static {v0, p1}, Lcom/yftech/settings/manager/CarAssistantManager;->access$1002(Lcom/yftech/settings/manager/CarAssistantManager;Z)Z

    .line 201
    iget-object p1, p0, Lcom/yftech/settings/manager/CarAssistantManager$1;->this$0:Lcom/yftech/settings/manager/CarAssistantManager;

    sget-object v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;->DFC_ENABLE:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    iget-object p0, p0, Lcom/yftech/settings/manager/CarAssistantManager$1;->this$0:Lcom/yftech/settings/manager/CarAssistantManager;

    invoke-static {p0}, Lcom/yftech/settings/manager/CarAssistantManager;->access$1000(Lcom/yftech/settings/manager/CarAssistantManager;)Z

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/yftech/settings/manager/CarAssistantManager;->notifyOnEnableChanged(Ljava/lang/Object;Z)V

    return-void
.end method

.method public onIAccEnableStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V
    .locals 4

    .line 134
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager$CarSettingsListener;->onIAccEnableStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V

    .line 135
    iget-object v0, p0, Lcom/yftech/settings/manager/CarAssistantManager$1;->this$0:Lcom/yftech/settings/manager/CarAssistantManager;

    sget-object v1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->IACC_ENABLED:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarAssistantManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarAssistantManager$Function;)Z

    move-result v0

    const-string v1, "CarAssistantManager"

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onIAccStateChanged EnabledState:"

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

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/yftech/settings/manager/CarAssistantManager$1;->this$0:Lcom/yftech/settings/manager/CarAssistantManager;

    iget-object v1, p0, Lcom/yftech/settings/manager/CarAssistantManager$1;->this$0:Lcom/yftech/settings/manager/CarAssistantManager;

    iget-object v2, p0, Lcom/yftech/settings/manager/CarAssistantManager$1;->this$0:Lcom/yftech/settings/manager/CarAssistantManager;

    invoke-static {v2}, Lcom/yftech/settings/manager/CarAssistantManager;->access$500(Lcom/yftech/settings/manager/CarAssistantManager;)Z

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/yftech/settings/manager/CarAssistantManager;->getValidEnable(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;Z)Z

    move-result p1

    invoke-static {v0, p1}, Lcom/yftech/settings/manager/CarAssistantManager;->access$502(Lcom/yftech/settings/manager/CarAssistantManager;Z)Z

    .line 141
    iget-object p1, p0, Lcom/yftech/settings/manager/CarAssistantManager$1;->this$0:Lcom/yftech/settings/manager/CarAssistantManager;

    sget-object v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;->IACC_ENABLED:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    iget-object p0, p0, Lcom/yftech/settings/manager/CarAssistantManager$1;->this$0:Lcom/yftech/settings/manager/CarAssistantManager;

    invoke-static {p0}, Lcom/yftech/settings/manager/CarAssistantManager;->access$500(Lcom/yftech/settings/manager/CarAssistantManager;)Z

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/yftech/settings/manager/CarAssistantManager;->notifyOnEnableChanged(Ljava/lang/Object;Z)V

    return-void
.end method

.method public onIntelligentAvoidEnableStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V
    .locals 4

    .line 206
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager$CarSettingsListener;->onIntelligentAvoidEnableStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V

    .line 207
    iget-object v0, p0, Lcom/yftech/settings/manager/CarAssistantManager$1;->this$0:Lcom/yftech/settings/manager/CarAssistantManager;

    sget-object v1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->IA_ENABLE:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarAssistantManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarAssistantManager$Function;)Z

    move-result v0

    const-string v1, "CarAssistantManager"

    .line 208
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onIntelligentAvoidEnableStateChanged state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " isFunctionPresent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/yftech/settings/manager/CarAssistantManager$1;->this$0:Lcom/yftech/settings/manager/CarAssistantManager;

    iget-object v1, p0, Lcom/yftech/settings/manager/CarAssistantManager$1;->this$0:Lcom/yftech/settings/manager/CarAssistantManager;

    iget-object v2, p0, Lcom/yftech/settings/manager/CarAssistantManager$1;->this$0:Lcom/yftech/settings/manager/CarAssistantManager;

    invoke-static {v2}, Lcom/yftech/settings/manager/CarAssistantManager;->access$1100(Lcom/yftech/settings/manager/CarAssistantManager;)Z

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/yftech/settings/manager/CarAssistantManager;->getValidEnable(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;Z)Z

    move-result p1

    invoke-static {v0, p1}, Lcom/yftech/settings/manager/CarAssistantManager;->access$1102(Lcom/yftech/settings/manager/CarAssistantManager;Z)Z

    .line 213
    iget-object p1, p0, Lcom/yftech/settings/manager/CarAssistantManager$1;->this$0:Lcom/yftech/settings/manager/CarAssistantManager;

    sget-object v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;->IA_ENABLE:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    iget-object p0, p0, Lcom/yftech/settings/manager/CarAssistantManager$1;->this$0:Lcom/yftech/settings/manager/CarAssistantManager;

    invoke-static {p0}, Lcom/yftech/settings/manager/CarAssistantManager;->access$1100(Lcom/yftech/settings/manager/CarAssistantManager;)Z

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/yftech/settings/manager/CarAssistantManager;->notifyOnEnableChanged(Ljava/lang/Object;Z)V

    return-void
.end method

.method public onLksModeChanged(Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;)V
    .locals 4

    .line 109
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager$CarSettingsListener;->onLksModeChanged(Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;)V

    .line 110
    iget-object v0, p0, Lcom/yftech/settings/manager/CarAssistantManager$1;->this$0:Lcom/yftech/settings/manager/CarAssistantManager;

    sget-object v1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->LKS_MODE_OPTION:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarAssistantManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarAssistantManager$Function;)Z

    move-result v0

    const-string v1, "CarAssistantManager"

    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLksModeChanged type:"

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

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/yftech/settings/manager/CarAssistantManager$1;->this$0:Lcom/yftech/settings/manager/CarAssistantManager;

    invoke-static {v0, p1}, Lcom/yftech/settings/manager/CarAssistantManager;->access$300(Lcom/yftech/settings/manager/CarAssistantManager;Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;)I

    move-result v0

    .line 116
    iget-object v1, p0, Lcom/yftech/settings/manager/CarAssistantManager$1;->this$0:Lcom/yftech/settings/manager/CarAssistantManager;

    sget-object v2, Lcom/yftech/settings/manager/CarAssistantManager$Function;->LKS_MODE_OPTION:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {v1, v2, v0}, Lcom/yftech/settings/manager/CarAssistantManager;->notifyOnOptionChanged(Ljava/lang/Object;I)V

    .line 117
    iget-object v0, p0, Lcom/yftech/settings/manager/CarAssistantManager$1;->this$0:Lcom/yftech/settings/manager/CarAssistantManager;

    sget-object v1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->LDW_LKA_ENABLED:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    iget-object p0, p0, Lcom/yftech/settings/manager/CarAssistantManager$1;->this$0:Lcom/yftech/settings/manager/CarAssistantManager;

    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->get()Lcom/yftech/vehicle/sdk/CarSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getLksState()Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;

    move-result-object v2

    invoke-static {p0, v2, p1}, Lcom/yftech/settings/manager/CarAssistantManager;->access$200(Lcom/yftech/settings/manager/CarAssistantManager;Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;)Z

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/yftech/settings/manager/CarAssistantManager;->notifyOnEnableChanged(Ljava/lang/Object;Z)V

    return-void
.end method

.method public onLksStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;)V
    .locals 4

    .line 97
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager$CarSettingsListener;->onLksStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;)V

    .line 98
    iget-object v0, p0, Lcom/yftech/settings/manager/CarAssistantManager$1;->this$0:Lcom/yftech/settings/manager/CarAssistantManager;

    sget-object v1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->LDW_LKA_ENABLED:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarAssistantManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarAssistantManager$Function;)Z

    move-result v0

    const-string v1, "CarAssistantManager"

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLksStateChanged state:"

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

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/yftech/settings/manager/CarAssistantManager$1;->this$0:Lcom/yftech/settings/manager/CarAssistantManager;

    sget-object v1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->LDW_LKA_ENABLED:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    iget-object p0, p0, Lcom/yftech/settings/manager/CarAssistantManager$1;->this$0:Lcom/yftech/settings/manager/CarAssistantManager;

    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->get()Lcom/yftech/vehicle/sdk/CarSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getLksMode()Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;

    move-result-object v2

    invoke-static {p0, p1, v2}, Lcom/yftech/settings/manager/CarAssistantManager;->access$200(Lcom/yftech/settings/manager/CarAssistantManager;Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;)Z

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/yftech/settings/manager/CarAssistantManager;->notifyOnEnableChanged(Ljava/lang/Object;Z)V

    return-void
.end method

.method public onTSRAudioWarningEnableStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V
    .locals 4

    .line 146
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager$CarSettingsListener;->onTSRAudioWarningEnableStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V

    .line 147
    iget-object v0, p0, Lcom/yftech/settings/manager/CarAssistantManager$1;->this$0:Lcom/yftech/settings/manager/CarAssistantManager;

    sget-object v1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->TSR_AUDIO_WARNING_ENABLED:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarAssistantManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarAssistantManager$Function;)Z

    move-result v0

    const-string v1, "CarAssistantManager"

    .line 148
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTSRAudioWarningStateChanged EnabledState:"

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

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/yftech/settings/manager/CarAssistantManager$1;->this$0:Lcom/yftech/settings/manager/CarAssistantManager;

    iget-object v1, p0, Lcom/yftech/settings/manager/CarAssistantManager$1;->this$0:Lcom/yftech/settings/manager/CarAssistantManager;

    iget-object v2, p0, Lcom/yftech/settings/manager/CarAssistantManager$1;->this$0:Lcom/yftech/settings/manager/CarAssistantManager;

    invoke-static {v2}, Lcom/yftech/settings/manager/CarAssistantManager;->access$600(Lcom/yftech/settings/manager/CarAssistantManager;)Z

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/yftech/settings/manager/CarAssistantManager;->getValidEnable(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;Z)Z

    move-result p1

    invoke-static {v0, p1}, Lcom/yftech/settings/manager/CarAssistantManager;->access$602(Lcom/yftech/settings/manager/CarAssistantManager;Z)Z

    .line 153
    iget-object p1, p0, Lcom/yftech/settings/manager/CarAssistantManager$1;->this$0:Lcom/yftech/settings/manager/CarAssistantManager;

    sget-object v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;->TSR_AUDIO_WARNING_ENABLED:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    iget-object p0, p0, Lcom/yftech/settings/manager/CarAssistantManager$1;->this$0:Lcom/yftech/settings/manager/CarAssistantManager;

    invoke-static {p0}, Lcom/yftech/settings/manager/CarAssistantManager;->access$600(Lcom/yftech/settings/manager/CarAssistantManager;)Z

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/yftech/settings/manager/CarAssistantManager;->notifyOnEnableChanged(Ljava/lang/Object;Z)V

    return-void
.end method

.method public onTSREnableStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V
    .locals 4

    .line 122
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager$CarSettingsListener;->onTSREnableStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V

    .line 123
    iget-object v0, p0, Lcom/yftech/settings/manager/CarAssistantManager$1;->this$0:Lcom/yftech/settings/manager/CarAssistantManager;

    sget-object v1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->TSR_ENABLED:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarAssistantManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarAssistantManager$Function;)Z

    move-result v0

    const-string v1, "CarAssistantManager"

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTSRStateChanged EnabledState:"

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

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/yftech/settings/manager/CarAssistantManager$1;->this$0:Lcom/yftech/settings/manager/CarAssistantManager;

    iget-object v1, p0, Lcom/yftech/settings/manager/CarAssistantManager$1;->this$0:Lcom/yftech/settings/manager/CarAssistantManager;

    iget-object v2, p0, Lcom/yftech/settings/manager/CarAssistantManager$1;->this$0:Lcom/yftech/settings/manager/CarAssistantManager;

    invoke-static {v2}, Lcom/yftech/settings/manager/CarAssistantManager;->access$400(Lcom/yftech/settings/manager/CarAssistantManager;)Z

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/yftech/settings/manager/CarAssistantManager;->getValidEnable(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;Z)Z

    move-result p1

    invoke-static {v0, p1}, Lcom/yftech/settings/manager/CarAssistantManager;->access$402(Lcom/yftech/settings/manager/CarAssistantManager;Z)Z

    .line 129
    iget-object p1, p0, Lcom/yftech/settings/manager/CarAssistantManager$1;->this$0:Lcom/yftech/settings/manager/CarAssistantManager;

    sget-object v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;->TSR_ENABLED:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    iget-object p0, p0, Lcom/yftech/settings/manager/CarAssistantManager$1;->this$0:Lcom/yftech/settings/manager/CarAssistantManager;

    invoke-static {p0}, Lcom/yftech/settings/manager/CarAssistantManager;->access$400(Lcom/yftech/settings/manager/CarAssistantManager;)Z

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/yftech/settings/manager/CarAssistantManager;->notifyOnEnableChanged(Ljava/lang/Object;Z)V

    return-void
.end method
