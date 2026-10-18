.class Lcom/yftech/settings/manager/CarPartsManager$5;
.super Lcom/yftech/vehicle/sdk/AirConditionManager$AirConditionListener;
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

    .line 397
    iput-object p1, p0, Lcom/yftech/settings/manager/CarPartsManager$5;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    invoke-direct {p0}, Lcom/yftech/vehicle/sdk/AirConditionManager$AirConditionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAirCirculationModeOfAutoModeChanged(Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationMode;)V
    .locals 4

    .line 412
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/AirConditionManager$AirConditionListener;->onAirCirculationModeOfAutoModeChanged(Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationMode;)V

    .line 413
    iget-object v0, p0, Lcom/yftech/settings/manager/CarPartsManager$5;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    sget-object v1, Lcom/yftech/settings/manager/CarPartsManager$Function;->AC_AIR_CIRCULATION_MODE_OF_AUTO_MODE_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v0

    const-string v1, "CarPartsManager"

    .line 414
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAirCirculationModeOfAutoModeChanged mode:"

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

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/yftech/settings/manager/CarPartsManager$5;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    sget-object v1, Lcom/yftech/settings/manager/CarPartsManager$Function;->AC_AIR_CIRCULATION_MODE_OF_AUTO_MODE_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    iget-object p0, p0, Lcom/yftech/settings/manager/CarPartsManager$5;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    invoke-static {p0, p1}, Lcom/yftech/settings/manager/CarPartsManager;->access$2300(Lcom/yftech/settings/manager/CarPartsManager;Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationMode;)Z

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/yftech/settings/manager/CarPartsManager;->notifyOnEnableChanged(Ljava/lang/Object;Z)V

    return-void
.end method

.method public onAirSelfDryingEnableStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V
    .locals 4

    .line 435
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/AirConditionManager$AirConditionListener;->onAirSelfDryingEnableStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V

    .line 436
    iget-object v0, p0, Lcom/yftech/settings/manager/CarPartsManager$5;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    sget-object v1, Lcom/yftech/settings/manager/CarPartsManager$Function;->AC_AUTO_DRYING_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v0

    const-string v1, "CarPartsManager"

    .line 437
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAirSelfDryingEnableStateChanged mode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " isFunctionPresent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    return-void

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/yftech/settings/manager/CarPartsManager$5;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    iget-object v1, p0, Lcom/yftech/settings/manager/CarPartsManager$5;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    iget-object v2, p0, Lcom/yftech/settings/manager/CarPartsManager$5;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    invoke-static {v2}, Lcom/yftech/settings/manager/CarPartsManager;->access$2500(Lcom/yftech/settings/manager/CarPartsManager;)Z

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/yftech/settings/manager/CarPartsManager;->getValidEnable(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;Z)Z

    move-result p1

    invoke-static {v0, p1}, Lcom/yftech/settings/manager/CarPartsManager;->access$2502(Lcom/yftech/settings/manager/CarPartsManager;Z)Z

    .line 442
    iget-object p1, p0, Lcom/yftech/settings/manager/CarPartsManager$5;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->AC_AUTO_DRYING_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    iget-object p0, p0, Lcom/yftech/settings/manager/CarPartsManager$5;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    invoke-static {p0}, Lcom/yftech/settings/manager/CarPartsManager;->access$2500(Lcom/yftech/settings/manager/CarPartsManager;)Z

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/yftech/settings/manager/CarPartsManager;->notifyOnEnableChanged(Ljava/lang/Object;Z)V

    return-void
.end method

.method public onAirUnlockVentilationEnableStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V
    .locals 4

    .line 447
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/AirConditionManager$AirConditionListener;->onAirUnlockVentilationEnableStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V

    .line 448
    iget-object v0, p0, Lcom/yftech/settings/manager/CarPartsManager$5;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    sget-object v1, Lcom/yftech/settings/manager/CarPartsManager$Function;->AC_AIR_UNLOCK_VENTILATION_ENABLE:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v0

    const-string v1, "CarPartsManager"

    .line 449
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAirUnlockVentilationEnableStateChanged mode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " isFunctionPresent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    return-void

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/yftech/settings/manager/CarPartsManager$5;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    iget-object v1, p0, Lcom/yftech/settings/manager/CarPartsManager$5;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    iget-object v2, p0, Lcom/yftech/settings/manager/CarPartsManager$5;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    invoke-static {v2}, Lcom/yftech/settings/manager/CarPartsManager;->access$2600(Lcom/yftech/settings/manager/CarPartsManager;)Z

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/yftech/settings/manager/CarPartsManager;->getValidEnable(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;Z)Z

    move-result p1

    invoke-static {v0, p1}, Lcom/yftech/settings/manager/CarPartsManager;->access$2602(Lcom/yftech/settings/manager/CarPartsManager;Z)Z

    .line 454
    iget-object p1, p0, Lcom/yftech/settings/manager/CarPartsManager$5;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->AC_AIR_UNLOCK_VENTILATION_ENABLE:Lcom/yftech/settings/manager/CarPartsManager$Function;

    iget-object p0, p0, Lcom/yftech/settings/manager/CarPartsManager$5;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    invoke-static {p0}, Lcom/yftech/settings/manager/CarPartsManager;->access$2600(Lcom/yftech/settings/manager/CarPartsManager;)Z

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/yftech/settings/manager/CarPartsManager;->notifyOnEnableChanged(Ljava/lang/Object;Z)V

    return-void
.end method

.method public onComfortCurveModeChanged(Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;)V
    .locals 4

    .line 423
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/AirConditionManager$AirConditionListener;->onComfortCurveModeChanged(Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;)V

    .line 424
    iget-object v0, p0, Lcom/yftech/settings/manager/CarPartsManager$5;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    sget-object v1, Lcom/yftech/settings/manager/CarPartsManager$Function;->AC_COMFORT_CURVE_MODE_OPTION:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v0

    const-string v1, "CarPartsManager"

    .line 425
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onComfortCurveModeChanged mode:"

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

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/yftech/settings/manager/CarPartsManager$5;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    invoke-static {v0, p1}, Lcom/yftech/settings/manager/CarPartsManager;->access$2400(Lcom/yftech/settings/manager/CarPartsManager;Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;)I

    move-result p1

    .line 430
    iget-object p0, p0, Lcom/yftech/settings/manager/CarPartsManager$5;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->AC_COMFORT_CURVE_MODE_OPTION:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {p0, v0, p1}, Lcom/yftech/settings/manager/CarPartsManager;->notifyOnOptionChanged(Ljava/lang/Object;I)V

    return-void
.end method

.method public onFanSpeedOfAutoModeChanged(Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;)V
    .locals 4

    .line 400
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/AirConditionManager$AirConditionListener;->onFanSpeedOfAutoModeChanged(Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;)V

    .line 401
    iget-object v0, p0, Lcom/yftech/settings/manager/CarPartsManager$5;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    sget-object v1, Lcom/yftech/settings/manager/CarPartsManager$Function;->AC_FAN_SPEED_OF_AUTO_MODE_OPTION:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v0

    const-string v1, "CarPartsManager"

    .line 402
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFanSpeedOfAutoModeChanged speed:"

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

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/yftech/settings/manager/CarPartsManager$5;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    invoke-static {v0, p1}, Lcom/yftech/settings/manager/CarPartsManager;->access$2200(Lcom/yftech/settings/manager/CarPartsManager;Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;)I

    move-result p1

    .line 407
    iget-object p0, p0, Lcom/yftech/settings/manager/CarPartsManager$5;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->AC_FAN_SPEED_OF_AUTO_MODE_OPTION:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {p0, v0, p1}, Lcom/yftech/settings/manager/CarPartsManager;->notifyOnOptionChanged(Ljava/lang/Object;I)V

    return-void
.end method
