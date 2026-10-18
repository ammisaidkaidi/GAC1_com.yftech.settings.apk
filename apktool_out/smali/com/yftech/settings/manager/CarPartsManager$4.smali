.class Lcom/yftech/settings/manager/CarPartsManager$4;
.super Lcom/yftech/vehicle/sdk/CarSettingsManager$CarSettingsListener;
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

    .line 290
    iput-object p1, p0, Lcom/yftech/settings/manager/CarPartsManager$4;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    invoke-direct {p0}, Lcom/yftech/vehicle/sdk/CarSettingsManager$CarSettingsListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAVASEnableStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V
    .locals 4

    .line 352
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager$CarSettingsListener;->onAVASEnableStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V

    .line 353
    iget-object v0, p0, Lcom/yftech/settings/manager/CarPartsManager$4;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    sget-object v1, Lcom/yftech/settings/manager/CarPartsManager$Function;->AVAS_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v0

    const-string v1, "CarPartsManager"

    .line 354
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAVASStateChanged isEnabled:"

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

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/yftech/settings/manager/CarPartsManager$4;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    iget-object v1, p0, Lcom/yftech/settings/manager/CarPartsManager$4;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    iget-object v2, p0, Lcom/yftech/settings/manager/CarPartsManager$4;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    invoke-static {v2}, Lcom/yftech/settings/manager/CarPartsManager;->access$1900(Lcom/yftech/settings/manager/CarPartsManager;)Z

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/yftech/settings/manager/CarPartsManager;->getValidEnable(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;Z)Z

    move-result p1

    invoke-static {v0, p1}, Lcom/yftech/settings/manager/CarPartsManager;->access$1902(Lcom/yftech/settings/manager/CarPartsManager;Z)Z

    .line 359
    iget-object p1, p0, Lcom/yftech/settings/manager/CarPartsManager$4;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->AVAS_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    iget-object p0, p0, Lcom/yftech/settings/manager/CarPartsManager$4;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    invoke-static {p0}, Lcom/yftech/settings/manager/CarPartsManager;->access$1900(Lcom/yftech/settings/manager/CarPartsManager;)Z

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/yftech/settings/manager/CarPartsManager;->notifyOnEnableChanged(Ljava/lang/Object;Z)V

    return-void
.end method

.method public onAutoWiperModeChanged(Lcom/yftech/vehicle/internal/adapter/ICarSettings$AutoWiperMode;)V
    .locals 4

    .line 341
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager$CarSettingsListener;->onAutoWiperModeChanged(Lcom/yftech/vehicle/internal/adapter/ICarSettings$AutoWiperMode;)V

    .line 342
    iget-object v0, p0, Lcom/yftech/settings/manager/CarPartsManager$4;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    sget-object v1, Lcom/yftech/settings/manager/CarPartsManager$Function;->AUTO_WIPER_MODE_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v0

    const-string v1, "CarPartsManager"

    .line 343
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAutoWiperModeChanged mode:"

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

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/yftech/settings/manager/CarPartsManager$4;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    sget-object v1, Lcom/yftech/settings/manager/CarPartsManager$Function;->AUTO_WIPER_MODE_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    iget-object p0, p0, Lcom/yftech/settings/manager/CarPartsManager$4;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    invoke-static {p0, p1}, Lcom/yftech/settings/manager/CarPartsManager;->access$1800(Lcom/yftech/settings/manager/CarPartsManager;Lcom/yftech/vehicle/internal/adapter/ICarSettings$AutoWiperMode;)Z

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/yftech/settings/manager/CarPartsManager;->notifyOnEnableChanged(Ljava/lang/Object;Z)V

    return-void
.end method

.method public onDoorHandleElectricHideStateChanged(Z)V
    .locals 4

    .line 364
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager$CarSettingsListener;->onDoorHandleElectricHideStateChanged(Z)V

    .line 365
    iget-object v0, p0, Lcom/yftech/settings/manager/CarPartsManager$4;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    sget-object v1, Lcom/yftech/settings/manager/CarPartsManager$Function;->ELECTRIC_HIDDEN_DOOR_HANDLE_ENABLE:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v0

    const-string v1, "CarPartsManager"

    .line 366
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDoorHandleElectricHideStateChanged: isEnable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    return-void

    .line 370
    :cond_0
    iget-object p0, p0, Lcom/yftech/settings/manager/CarPartsManager$4;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->ELECTRIC_HIDDEN_DOOR_HANDLE_ENABLE:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {p0, v0, p1}, Lcom/yftech/settings/manager/CarPartsManager;->notifyOnEnableChanged(Ljava/lang/Object;Z)V

    return-void
.end method

.method public onDriverEasyEntryAndExitStateChanged(Z)V
    .locals 4

    .line 375
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager$CarSettingsListener;->onDriverEasyEntryAndExitStateChanged(Z)V

    .line 376
    iget-object v0, p0, Lcom/yftech/settings/manager/CarPartsManager$4;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    sget-object v1, Lcom/yftech/settings/manager/CarPartsManager$Function;->SEAT_DRIVER_CONVENIENT_ACCESS_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v0

    const-string v1, "CarPartsManager"

    .line 377
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDriverEasyEntryAndExitStateChanged: isEnable"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    return-void

    .line 381
    :cond_0
    iget-object p0, p0, Lcom/yftech/settings/manager/CarPartsManager$4;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->SEAT_DRIVER_CONVENIENT_ACCESS_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {p0, v0, p1}, Lcom/yftech/settings/manager/CarPartsManager;->notifyOnEnableChanged(Ljava/lang/Object;Z)V

    return-void
.end method

.method public onETCEnableStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V
    .locals 4

    .line 329
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager$CarSettingsListener;->onETCEnableStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V

    .line 330
    iget-object v0, p0, Lcom/yftech/settings/manager/CarPartsManager$4;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    sget-object v1, Lcom/yftech/settings/manager/CarPartsManager$Function;->ETC_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v0

    const-string v1, "CarPartsManager"

    .line 331
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onETCStateChanged EnabledState:"

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

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/yftech/settings/manager/CarPartsManager$4;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    iget-object v1, p0, Lcom/yftech/settings/manager/CarPartsManager$4;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    iget-object v2, p0, Lcom/yftech/settings/manager/CarPartsManager$4;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    invoke-static {v2}, Lcom/yftech/settings/manager/CarPartsManager;->access$1700(Lcom/yftech/settings/manager/CarPartsManager;)Z

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/yftech/settings/manager/CarPartsManager;->getValidEnable(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;Z)Z

    move-result p1

    invoke-static {v0, p1}, Lcom/yftech/settings/manager/CarPartsManager;->access$1702(Lcom/yftech/settings/manager/CarPartsManager;Z)Z

    .line 336
    iget-object p1, p0, Lcom/yftech/settings/manager/CarPartsManager$4;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->ETC_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    iget-object p0, p0, Lcom/yftech/settings/manager/CarPartsManager$4;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    invoke-static {p0}, Lcom/yftech/settings/manager/CarPartsManager;->access$1700(Lcom/yftech/settings/manager/CarPartsManager;)Z

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/yftech/settings/manager/CarPartsManager;->notifyOnEnableChanged(Ljava/lang/Object;Z)V

    return-void
.end method

.method public onFrontWiperServicePositionStateChanged(Z)V
    .locals 3

    .line 319
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager$CarSettingsListener;->onFrontWiperServicePositionStateChanged(Z)V

    .line 320
    iget-object p0, p0, Lcom/yftech/settings/manager/CarPartsManager$4;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->FRONT_WIPER_SERVICE_POSITION_ACTION:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {p0, v0}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result p0

    const-string v0, "CarPartsManager"

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFrontWiperServicePositionStateChanged isEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " isFunctionPresent:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_0

    return-void

    :cond_0
    return-void
.end method

.method public onOSRMAutoFoldEnableStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V
    .locals 4

    .line 294
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager$CarSettingsListener;->onOSRMAutoFoldEnableStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V

    .line 295
    iget-object v0, p0, Lcom/yftech/settings/manager/CarPartsManager$4;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    sget-object v1, Lcom/yftech/settings/manager/CarPartsManager$Function;->OSRM_AUTO_FOLD_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v0

    const-string v1, "CarPartsManager"

    .line 296
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOSRMAutoFoldStateChanged EnabledState:"

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

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/yftech/settings/manager/CarPartsManager$4;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    iget-object v1, p0, Lcom/yftech/settings/manager/CarPartsManager$4;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    iget-object v2, p0, Lcom/yftech/settings/manager/CarPartsManager$4;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    invoke-static {v2}, Lcom/yftech/settings/manager/CarPartsManager;->access$1400(Lcom/yftech/settings/manager/CarPartsManager;)Z

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/yftech/settings/manager/CarPartsManager;->getValidEnable(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;Z)Z

    move-result p1

    invoke-static {v0, p1}, Lcom/yftech/settings/manager/CarPartsManager;->access$1402(Lcom/yftech/settings/manager/CarPartsManager;Z)Z

    .line 301
    iget-object p1, p0, Lcom/yftech/settings/manager/CarPartsManager$4;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->OSRM_AUTO_FOLD_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    iget-object p0, p0, Lcom/yftech/settings/manager/CarPartsManager$4;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    invoke-static {p0}, Lcom/yftech/settings/manager/CarPartsManager;->access$1400(Lcom/yftech/settings/manager/CarPartsManager;)Z

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/yftech/settings/manager/CarPartsManager;->notifyOnEnableChanged(Ljava/lang/Object;Z)V

    return-void
.end method

.method public onOSRMRAngleCmdChanged(Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;)V
    .locals 4

    .line 306
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager$CarSettingsListener;->onOSRMRAngleCmdChanged(Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;)V

    .line 307
    iget-object v0, p0, Lcom/yftech/settings/manager/CarPartsManager$4;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    sget-object v1, Lcom/yftech/settings/manager/CarPartsManager$Function;->OSRM_TURN_DOWN_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v0

    const-string v1, "CarPartsManager"

    .line 308
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOSRMRAngleCmdChanged: "

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

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/yftech/settings/manager/CarPartsManager$4;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    iget-object v1, p0, Lcom/yftech/settings/manager/CarPartsManager$4;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    invoke-static {v1, p1}, Lcom/yftech/settings/manager/CarPartsManager;->access$1600(Lcom/yftech/settings/manager/CarPartsManager;Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;)Z

    move-result p1

    invoke-static {v0, p1}, Lcom/yftech/settings/manager/CarPartsManager;->access$1502(Lcom/yftech/settings/manager/CarPartsManager;Z)Z

    const-string p1, "CarPartsManager"

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOSRMRAngleCmdChanged() mOSRMTurnDownEnable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/settings/manager/CarPartsManager$4;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    invoke-static {v1}, Lcom/yftech/settings/manager/CarPartsManager;->access$1500(Lcom/yftech/settings/manager/CarPartsManager;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object p1, p0, Lcom/yftech/settings/manager/CarPartsManager$4;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->OSRM_TURN_DOWN_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    iget-object p0, p0, Lcom/yftech/settings/manager/CarPartsManager$4;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    invoke-static {p0}, Lcom/yftech/settings/manager/CarPartsManager;->access$1500(Lcom/yftech/settings/manager/CarPartsManager;)Z

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/yftech/settings/manager/CarPartsManager;->notifyOnEnableChanged(Ljava/lang/Object;Z)V

    return-void
.end method

.method public onWCMCtlResultChanged(Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;)V
    .locals 3

    .line 386
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager$CarSettingsListener;->onWCMCtlResultChanged(Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;)V

    const-string v0, "CarPartsManager"

    .line 387
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWCMCtlResultChangedonWCMCtlResultChanged: WCMCtlResult"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lcom/yftech/settings/manager/CarPartsManager$4;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    sget-object v1, Lcom/yftech/settings/manager/CarPartsManager$Function;->WIRELESS_CHARGING_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/yftech/settings/manager/CarPartsManager$4;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    iget-object v1, p0, Lcom/yftech/settings/manager/CarPartsManager$4;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    invoke-static {v1, p1}, Lcom/yftech/settings/manager/CarPartsManager;->access$2100(Lcom/yftech/settings/manager/CarPartsManager;Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;)Z

    move-result p1

    invoke-static {v0, p1}, Lcom/yftech/settings/manager/CarPartsManager;->access$2002(Lcom/yftech/settings/manager/CarPartsManager;Z)Z

    .line 393
    iget-object p1, p0, Lcom/yftech/settings/manager/CarPartsManager$4;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->WIRELESS_CHARGING_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    iget-object p0, p0, Lcom/yftech/settings/manager/CarPartsManager$4;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    invoke-static {p0}, Lcom/yftech/settings/manager/CarPartsManager;->access$2000(Lcom/yftech/settings/manager/CarPartsManager;)Z

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/yftech/settings/manager/CarPartsManager;->notifyOnEnableChanged(Ljava/lang/Object;Z)V

    return-void
.end method
