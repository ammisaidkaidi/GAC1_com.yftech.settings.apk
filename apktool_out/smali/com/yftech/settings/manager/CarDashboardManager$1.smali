.class Lcom/yftech/settings/manager/CarDashboardManager$1;
.super Lcom/yftech/vehicle/sdk/CarIcmManager$CarIcmListener;
.source "CarDashboardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/manager/CarDashboardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/manager/CarDashboardManager;


# direct methods
.method constructor <init>(Lcom/yftech/settings/manager/CarDashboardManager;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/yftech/settings/manager/CarDashboardManager$1;->this$0:Lcom/yftech/settings/manager/CarDashboardManager;

    invoke-direct {p0}, Lcom/yftech/vehicle/sdk/CarIcmManager$CarIcmListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackLightLevelChanged(Lcom/yftech/vehicle/internal/adapter/ICarIcm$BackLightLevel;)V
    .locals 4

    .line 70
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarIcmManager$CarIcmListener;->onBackLightLevelChanged(Lcom/yftech/vehicle/internal/adapter/ICarIcm$BackLightLevel;)V

    .line 71
    iget-object v0, p0, Lcom/yftech/settings/manager/CarDashboardManager$1;->this$0:Lcom/yftech/settings/manager/CarDashboardManager;

    sget-object v1, Lcom/yftech/settings/manager/CarDashboardManager$Function;->DASH_BACK_LIGHT_LEVEL_VALUE:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarDashboardManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarDashboardManager$Function;)Z

    move-result v0

    const-string v1, "CarDashboardManager"

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBackLightLevelChanged level:"

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

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/yftech/settings/manager/CarDashboardManager$1;->this$0:Lcom/yftech/settings/manager/CarDashboardManager;

    invoke-static {v0, p1}, Lcom/yftech/settings/manager/CarDashboardManager;->access$000(Lcom/yftech/settings/manager/CarDashboardManager;Lcom/yftech/vehicle/internal/adapter/ICarIcm$BackLightLevel;)I

    move-result p1

    .line 77
    iget-object p0, p0, Lcom/yftech/settings/manager/CarDashboardManager$1;->this$0:Lcom/yftech/settings/manager/CarDashboardManager;

    sget-object v0, Lcom/yftech/settings/manager/CarDashboardManager$Function;->DASH_BACK_LIGHT_LEVEL_VALUE:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/yftech/settings/manager/CarDashboardManager;->notifyOnValueChanged(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public onFuelEconomyAndDistanceUnitChanged(Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;)V
    .locals 4

    .line 106
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarIcmManager$CarIcmListener;->onFuelEconomyAndDistanceUnitChanged(Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;)V

    .line 107
    iget-object v0, p0, Lcom/yftech/settings/manager/CarDashboardManager$1;->this$0:Lcom/yftech/settings/manager/CarDashboardManager;

    sget-object v1, Lcom/yftech/settings/manager/CarDashboardManager$Function;->DASH_FUEL_ECONOMY_AND_DISTANCE_UNIT_OPTION:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarDashboardManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarDashboardManager$Function;)Z

    move-result v0

    const-string v1, "CarDashboardManager"

    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFuelEconomyAndDistanceUnitChanged unit:"

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

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/yftech/settings/manager/CarDashboardManager$1;->this$0:Lcom/yftech/settings/manager/CarDashboardManager;

    invoke-static {v0, p1}, Lcom/yftech/settings/manager/CarDashboardManager;->access$300(Lcom/yftech/settings/manager/CarDashboardManager;Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;)I

    move-result p1

    .line 113
    iget-object p0, p0, Lcom/yftech/settings/manager/CarDashboardManager$1;->this$0:Lcom/yftech/settings/manager/CarDashboardManager;

    sget-object v0, Lcom/yftech/settings/manager/CarDashboardManager$Function;->DASH_FUEL_ECONOMY_AND_DISTANCE_UNIT_OPTION:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    invoke-virtual {p0, v0, p1}, Lcom/yftech/settings/manager/CarDashboardManager;->notifyOnOptionChanged(Ljava/lang/Object;I)V

    return-void
.end method

.method public onLanguageChanged(Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;)V
    .locals 4

    .line 118
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarIcmManager$CarIcmListener;->onLanguageChanged(Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;)V

    .line 119
    iget-object v0, p0, Lcom/yftech/settings/manager/CarDashboardManager$1;->this$0:Lcom/yftech/settings/manager/CarDashboardManager;

    sget-object v1, Lcom/yftech/settings/manager/CarDashboardManager$Function;->DASH_LANGUAGE_OPTION:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarDashboardManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarDashboardManager$Function;)Z

    move-result v0

    const-string v1, "CarDashboardManager"

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLanguageChanged lang:"

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

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/yftech/settings/manager/CarDashboardManager$1;->this$0:Lcom/yftech/settings/manager/CarDashboardManager;

    invoke-static {v0, p1}, Lcom/yftech/settings/manager/CarDashboardManager;->access$400(Lcom/yftech/settings/manager/CarDashboardManager;Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;)I

    move-result p1

    .line 125
    iget-object p0, p0, Lcom/yftech/settings/manager/CarDashboardManager$1;->this$0:Lcom/yftech/settings/manager/CarDashboardManager;

    sget-object v0, Lcom/yftech/settings/manager/CarDashboardManager$Function;->DASH_LANGUAGE_OPTION:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    invoke-virtual {p0, v0, p1}, Lcom/yftech/settings/manager/CarDashboardManager;->notifyOnOptionChanged(Ljava/lang/Object;I)V

    return-void
.end method

.method public onMeterVolumeModeChanged(Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;)V
    .locals 4

    .line 130
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarIcmManager$CarIcmListener;->onMeterVolumeModeChanged(Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;)V

    .line 131
    iget-object v0, p0, Lcom/yftech/settings/manager/CarDashboardManager$1;->this$0:Lcom/yftech/settings/manager/CarDashboardManager;

    sget-object v1, Lcom/yftech/settings/manager/CarDashboardManager$Function;->DASH_VOLUME_OPTION:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarDashboardManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarDashboardManager$Function;)Z

    move-result v0

    const-string v1, "CarDashboardManager"

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMeterVolumeModeChanged mode:"

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

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/yftech/settings/manager/CarDashboardManager$1;->this$0:Lcom/yftech/settings/manager/CarDashboardManager;

    invoke-static {v0, p1}, Lcom/yftech/settings/manager/CarDashboardManager;->access$500(Lcom/yftech/settings/manager/CarDashboardManager;Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;)I

    move-result p1

    .line 137
    iget-object p0, p0, Lcom/yftech/settings/manager/CarDashboardManager$1;->this$0:Lcom/yftech/settings/manager/CarDashboardManager;

    sget-object v0, Lcom/yftech/settings/manager/CarDashboardManager$Function;->DASH_VOLUME_OPTION:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    invoke-virtual {p0, v0, p1}, Lcom/yftech/settings/manager/CarDashboardManager;->notifyOnOptionChanged(Ljava/lang/Object;I)V

    return-void
.end method

.method public onPressureUnitChanged(Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;)V
    .locals 4

    .line 94
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarIcmManager$CarIcmListener;->onPressureUnitChanged(Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;)V

    .line 95
    iget-object v0, p0, Lcom/yftech/settings/manager/CarDashboardManager$1;->this$0:Lcom/yftech/settings/manager/CarDashboardManager;

    sget-object v1, Lcom/yftech/settings/manager/CarDashboardManager$Function;->DASH_PRESSURE_UNIT_OPTION:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarDashboardManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarDashboardManager$Function;)Z

    move-result v0

    const-string v1, "CarDashboardManager"

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPressureUnitChanged unit:"

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

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/yftech/settings/manager/CarDashboardManager$1;->this$0:Lcom/yftech/settings/manager/CarDashboardManager;

    invoke-static {v0, p1}, Lcom/yftech/settings/manager/CarDashboardManager;->access$200(Lcom/yftech/settings/manager/CarDashboardManager;Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;)I

    move-result p1

    .line 101
    iget-object p0, p0, Lcom/yftech/settings/manager/CarDashboardManager$1;->this$0:Lcom/yftech/settings/manager/CarDashboardManager;

    sget-object v0, Lcom/yftech/settings/manager/CarDashboardManager$Function;->DASH_PRESSURE_UNIT_OPTION:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    invoke-virtual {p0, v0, p1}, Lcom/yftech/settings/manager/CarDashboardManager;->notifyOnOptionChanged(Ljava/lang/Object;I)V

    return-void
.end method

.method public onTemperatureUnitChanged(Lcom/yftech/vehicle/internal/adapter/ICarIcm$TemperatureUnit;)V
    .locals 4

    .line 82
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarIcmManager$CarIcmListener;->onTemperatureUnitChanged(Lcom/yftech/vehicle/internal/adapter/ICarIcm$TemperatureUnit;)V

    .line 83
    iget-object v0, p0, Lcom/yftech/settings/manager/CarDashboardManager$1;->this$0:Lcom/yftech/settings/manager/CarDashboardManager;

    sget-object v1, Lcom/yftech/settings/manager/CarDashboardManager$Function;->DASH_TEMPERATURE_UNIT_OPTION:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarDashboardManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarDashboardManager$Function;)Z

    move-result v0

    const-string v1, "CarDashboardManager"

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTemperatureUnitChanged unit:"

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

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/yftech/settings/manager/CarDashboardManager$1;->this$0:Lcom/yftech/settings/manager/CarDashboardManager;

    invoke-static {v0, p1}, Lcom/yftech/settings/manager/CarDashboardManager;->access$100(Lcom/yftech/settings/manager/CarDashboardManager;Lcom/yftech/vehicle/internal/adapter/ICarIcm$TemperatureUnit;)I

    move-result p1

    .line 89
    iget-object p0, p0, Lcom/yftech/settings/manager/CarDashboardManager$1;->this$0:Lcom/yftech/settings/manager/CarDashboardManager;

    sget-object v0, Lcom/yftech/settings/manager/CarDashboardManager$Function;->DASH_TEMPERATURE_UNIT_OPTION:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    invoke-virtual {p0, v0, p1}, Lcom/yftech/settings/manager/CarDashboardManager;->notifyOnOptionChanged(Ljava/lang/Object;I)V

    return-void
.end method
