.class public Lcom/yftech/settings/utils/ConfigUtils;
.super Ljava/lang/Object;
.source "ConfigUtils.java"


# static fields
.field public static isAcConfig:Z

.field public static isAidTipMemoryConfig:Z

.field public static isAidsAssistanceConfig:Z

.field public static isAidsParkingConfig:Z

.field public static isAidsSafeConfig:Z

.field public static isCarDashboardConfig:Z

.field public static isCarPartsLightConfig:Z

.field public static isCarPartsLockConfig:Z

.field public static isCarPartsMoreConfig:Z

.field public static isCarPartsRearviewConfig:Z

.field public static isLinkConfig:Z

.field public static isSeatConfig:Z

.field public static isSoundInteractionConfig:Z

.field private static mInstance:Lcom/yftech/settings/utils/ConfigUtils;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/yftech/settings/utils/ConfigUtils;
    .locals 1

    .line 44
    sget-object v0, Lcom/yftech/settings/utils/ConfigUtils;->mInstance:Lcom/yftech/settings/utils/ConfigUtils;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/yftech/settings/utils/ConfigUtils;

    invoke-direct {v0}, Lcom/yftech/settings/utils/ConfigUtils;-><init>()V

    sput-object v0, Lcom/yftech/settings/utils/ConfigUtils;->mInstance:Lcom/yftech/settings/utils/ConfigUtils;

    .line 47
    :cond_0
    sget-object v0, Lcom/yftech/settings/utils/ConfigUtils;->mInstance:Lcom/yftech/settings/utils/ConfigUtils;

    return-object v0
.end method

.method private isAcConfig()Z
    .locals 1

    .line 155
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->AC_FAN_SPEED_OF_AUTO_MODE_OPTION:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {p0, v0}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 156
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->AC_AIR_CIRCULATION_MODE_OF_AUTO_MODE_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {p0, v0}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 157
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->AC_AUTO_DRYING_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {p0, v0}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 158
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->AC_AIR_UNLOCK_VENTILATION_ENABLE:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {p0, v0}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isAidTipMemoryConfig()Z
    .locals 1

    .line 92
    invoke-static {}, Lcom/yftech/settings/manager/CarAssistantManager;->getInstance()Lcom/yftech/settings/manager/CarAssistantManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;->SPEED_WARNING_VALUE:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {p0, v0}, Lcom/yftech/settings/manager/CarAssistantManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarAssistantManager$Function;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 93
    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->REMEMBER_DRIVING_MODE_ENABLED:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {p0, v0}, Lcom/yftech/settings/manager/CarDriveModeManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isAidsAssistanceConfig()Z
    .locals 1

    .line 112
    invoke-static {}, Lcom/yftech/settings/manager/CarAssistantManager;->getInstance()Lcom/yftech/settings/manager/CarAssistantManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;->CRUISE_ASSIST_OPTION:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {p0, v0}, Lcom/yftech/settings/manager/CarAssistantManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarAssistantManager$Function;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 113
    invoke-static {}, Lcom/yftech/settings/manager/CarAssistantManager;->getInstance()Lcom/yftech/settings/manager/CarAssistantManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;->DFC_ENABLE:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {p0, v0}, Lcom/yftech/settings/manager/CarAssistantManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarAssistantManager$Function;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 114
    invoke-static {}, Lcom/yftech/settings/manager/CarAssistantManager;->getInstance()Lcom/yftech/settings/manager/CarAssistantManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;->IA_ENABLE:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {p0, v0}, Lcom/yftech/settings/manager/CarAssistantManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarAssistantManager$Function;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isAidsParkingConfig()Z
    .locals 1

    .line 118
    invoke-static {}, Lcom/yftech/settings/manager/CarParkingManager;->getInstance()Lcom/yftech/settings/manager/CarParkingManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/settings/manager/CarParkingManager$Function;->PARKING_RADAR_WARNING_TONE_ENABLED:Lcom/yftech/settings/manager/CarParkingManager$Function;

    invoke-virtual {p0, v0}, Lcom/yftech/settings/manager/CarParkingManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarParkingManager$Function;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 119
    invoke-static {}, Lcom/yftech/settings/manager/CarParkingManager;->getInstance()Lcom/yftech/settings/manager/CarParkingManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/settings/manager/CarParkingManager$Function;->PARKING_PUSH_ENABLED:Lcom/yftech/settings/manager/CarParkingManager$Function;

    invoke-virtual {p0, v0}, Lcom/yftech/settings/manager/CarParkingManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarParkingManager$Function;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 120
    invoke-static {}, Lcom/yftech/settings/manager/CarParkingManager;->getInstance()Lcom/yftech/settings/manager/CarParkingManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/settings/manager/CarParkingManager$Function;->PARKING_VOICE_TIP_ENABLED:Lcom/yftech/settings/manager/CarParkingManager$Function;

    invoke-virtual {p0, v0}, Lcom/yftech/settings/manager/CarParkingManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarParkingManager$Function;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isAidsSafeConfig()Z
    .locals 1

    .line 97
    invoke-static {}, Lcom/yftech/settings/manager/CarAssistantManager;->getInstance()Lcom/yftech/settings/manager/CarAssistantManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;->FCW_OFF_ENABLED:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {p0, v0}, Lcom/yftech/settings/manager/CarAssistantManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarAssistantManager$Function;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 100
    invoke-static {}, Lcom/yftech/settings/manager/CarAssistantManager;->getInstance()Lcom/yftech/settings/manager/CarAssistantManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;->AEB_OFF_ENABLED:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {p0, v0}, Lcom/yftech/settings/manager/CarAssistantManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarAssistantManager$Function;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 101
    invoke-static {}, Lcom/yftech/settings/manager/CarAssistantManager;->getInstance()Lcom/yftech/settings/manager/CarAssistantManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;->LDW_LKA_ENABLED:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {p0, v0}, Lcom/yftech/settings/manager/CarAssistantManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarAssistantManager$Function;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 104
    invoke-static {}, Lcom/yftech/settings/manager/CarAssistantManager;->getInstance()Lcom/yftech/settings/manager/CarAssistantManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;->TSR_ENABLED:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {p0, v0}, Lcom/yftech/settings/manager/CarAssistantManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarAssistantManager$Function;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 107
    invoke-static {}, Lcom/yftech/settings/manager/CarAssistantManager;->getInstance()Lcom/yftech/settings/manager/CarAssistantManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;->ADAS_WARN_TYPE_OPTION:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {p0, v0}, Lcom/yftech/settings/manager/CarAssistantManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarAssistantManager$Function;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 108
    invoke-static {}, Lcom/yftech/settings/manager/CarAssistantManager;->getInstance()Lcom/yftech/settings/manager/CarAssistantManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;->DSA_OFF_ENABLES:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {p0, v0}, Lcom/yftech/settings/manager/CarAssistantManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarAssistantManager$Function;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isCarDashboardConfig()Z
    .locals 1

    .line 166
    invoke-static {}, Lcom/yftech/settings/manager/CarDashboardManager;->getInstance()Lcom/yftech/settings/manager/CarDashboardManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/settings/manager/CarDashboardManager$Function;->DASH_BACK_LIGHT_LEVEL_VALUE:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    invoke-virtual {p0, v0}, Lcom/yftech/settings/manager/CarDashboardManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarDashboardManager$Function;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 167
    invoke-static {}, Lcom/yftech/settings/manager/CarDashboardManager;->getInstance()Lcom/yftech/settings/manager/CarDashboardManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/settings/manager/CarDashboardManager$Function;->DASH_LANGUAGE_OPTION:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    invoke-virtual {p0, v0}, Lcom/yftech/settings/manager/CarDashboardManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarDashboardManager$Function;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 168
    invoke-static {}, Lcom/yftech/settings/manager/CarDashboardManager;->getInstance()Lcom/yftech/settings/manager/CarDashboardManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/settings/manager/CarDashboardManager$Function;->DASH_VOLUME_OPTION:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    invoke-virtual {p0, v0}, Lcom/yftech/settings/manager/CarDashboardManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarDashboardManager$Function;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 169
    invoke-static {}, Lcom/yftech/settings/manager/CarDashboardManager;->getInstance()Lcom/yftech/settings/manager/CarDashboardManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/settings/manager/CarDashboardManager$Function;->DASH_FUEL_ECONOMY_AND_DISTANCE_UNIT_OPTION:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    invoke-virtual {p0, v0}, Lcom/yftech/settings/manager/CarDashboardManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarDashboardManager$Function;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 170
    invoke-static {}, Lcom/yftech/settings/manager/CarDashboardManager;->getInstance()Lcom/yftech/settings/manager/CarDashboardManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/settings/manager/CarDashboardManager$Function;->DASH_TEMPERATURE_UNIT_OPTION:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    invoke-virtual {p0, v0}, Lcom/yftech/settings/manager/CarDashboardManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarDashboardManager$Function;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 171
    invoke-static {}, Lcom/yftech/settings/manager/CarDashboardManager;->getInstance()Lcom/yftech/settings/manager/CarDashboardManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/settings/manager/CarDashboardManager$Function;->DASH_PRESSURE_UNIT_OPTION:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    invoke-virtual {p0, v0}, Lcom/yftech/settings/manager/CarDashboardManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarDashboardManager$Function;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 172
    invoke-static {}, Lcom/yftech/settings/manager/CarDashboardManager;->getInstance()Lcom/yftech/settings/manager/CarDashboardManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/settings/manager/CarDashboardManager$Function;->DASH_RESTORE_FACTORY_SETTINGS_ACTION:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    invoke-virtual {p0, v0}, Lcom/yftech/settings/manager/CarDashboardManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarDashboardManager$Function;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isCarPartsLightConfig()Z
    .locals 1

    .line 124
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->IHBC_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {p0, v0}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 125
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->HEAD_LIGHT_DELAY_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {p0, v0}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isCarPartsLockConfig()Z
    .locals 1

    .line 129
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->REMOTE_UNLOCK_MODE_OPTION:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {p0, v0}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 130
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->AUTO_UNLOCK_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {p0, v0}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 131
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->PEPS_WALK_AWAY_LOCK_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {p0, v0}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 132
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->PEPS_UNLOCK_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {p0, v0}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 133
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->SPEED_AUTO_LOCK_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {p0, v0}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 134
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->PEPS_AUTO_TRUNK_OPEN_OPTION:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {p0, v0}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 135
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->SUNROOF_WINDOW_AUTO_CLOSE_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {p0, v0}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 136
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->ELECTRIC_HIDDEN_DOOR_HANDLE_ENABLE:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {p0, v0}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isCarPartsMoreConfig()Z
    .locals 1

    .line 145
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->AUTO_WIPER_MODE_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {p0, v0}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 146
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->FRONT_WIPER_SERVICE_POSITION_ACTION:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {p0, v0}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 147
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->ETC_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {p0, v0}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 148
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->WIRELESS_CHARGING_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {p0, v0}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 150
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->STEERING_WHEEL_ASTERISK_KEY:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {p0, v0}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 151
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->CONVENIENT_CAR_SEARCH_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {p0, v0}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isCarPartsRearviewConfig()Z
    .locals 1

    .line 140
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->OSRM_AUTO_FOLD_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {p0, v0}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 141
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->OSRM_TURN_DOWN_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {p0, v0}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isLinkConfig()Z
    .locals 0

    .line 79
    invoke-static {}, Lcom/yftech/vehicle/sdk/HostConfig;->isCarplayPresent()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/yftech/vehicle/sdk/HostConfig;->isHicarPresent()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isSeatConfig()Z
    .locals 1

    .line 162
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->SEAT_DRIVER_CONVENIENT_ACCESS_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {p0, v0}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result p0

    return p0
.end method

.method private isSoundInteractionConfig()Z
    .locals 1

    .line 83
    invoke-static {}, Lcom/yftech/settings/manager/SoundManager;->getInstance()Lcom/yftech/settings/manager/SoundManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/settings/manager/SoundManager$Function;->KEY_SOUND_OPTION:Lcom/yftech/settings/manager/SoundManager$Function;

    invoke-virtual {p0, v0}, Lcom/yftech/settings/manager/SoundManager;->getFunctionPresent(Lcom/yftech/settings/manager/SoundManager$Function;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 84
    invoke-static {}, Lcom/yftech/settings/manager/SoundManager;->getInstance()Lcom/yftech/settings/manager/SoundManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/settings/manager/SoundManager$Function;->INTERFACE_EFFECTS_ENABLE:Lcom/yftech/settings/manager/SoundManager$Function;

    invoke-virtual {p0, v0}, Lcom/yftech/settings/manager/SoundManager;->getFunctionPresent(Lcom/yftech/settings/manager/SoundManager$Function;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public init()V
    .locals 1

    .line 55
    invoke-direct {p0}, Lcom/yftech/settings/utils/ConfigUtils;->isSoundInteractionConfig()Z

    move-result v0

    sput-boolean v0, Lcom/yftech/settings/utils/ConfigUtils;->isSoundInteractionConfig:Z

    .line 56
    invoke-direct {p0}, Lcom/yftech/settings/utils/ConfigUtils;->isLinkConfig()Z

    move-result v0

    sput-boolean v0, Lcom/yftech/settings/utils/ConfigUtils;->isLinkConfig:Z

    .line 57
    invoke-direct {p0}, Lcom/yftech/settings/utils/ConfigUtils;->isAidTipMemoryConfig()Z

    move-result v0

    sput-boolean v0, Lcom/yftech/settings/utils/ConfigUtils;->isAidTipMemoryConfig:Z

    .line 58
    invoke-direct {p0}, Lcom/yftech/settings/utils/ConfigUtils;->isAidsSafeConfig()Z

    move-result v0

    sput-boolean v0, Lcom/yftech/settings/utils/ConfigUtils;->isAidsSafeConfig:Z

    .line 59
    invoke-direct {p0}, Lcom/yftech/settings/utils/ConfigUtils;->isAidsAssistanceConfig()Z

    move-result v0

    sput-boolean v0, Lcom/yftech/settings/utils/ConfigUtils;->isAidsAssistanceConfig:Z

    .line 60
    invoke-direct {p0}, Lcom/yftech/settings/utils/ConfigUtils;->isAidsParkingConfig()Z

    move-result v0

    sput-boolean v0, Lcom/yftech/settings/utils/ConfigUtils;->isAidsParkingConfig:Z

    .line 61
    invoke-direct {p0}, Lcom/yftech/settings/utils/ConfigUtils;->isCarPartsLightConfig()Z

    move-result v0

    sput-boolean v0, Lcom/yftech/settings/utils/ConfigUtils;->isCarPartsLightConfig:Z

    .line 62
    invoke-direct {p0}, Lcom/yftech/settings/utils/ConfigUtils;->isCarPartsLockConfig()Z

    move-result v0

    sput-boolean v0, Lcom/yftech/settings/utils/ConfigUtils;->isCarPartsLockConfig:Z

    .line 63
    invoke-direct {p0}, Lcom/yftech/settings/utils/ConfigUtils;->isCarPartsRearviewConfig()Z

    move-result v0

    sput-boolean v0, Lcom/yftech/settings/utils/ConfigUtils;->isCarPartsRearviewConfig:Z

    .line 64
    invoke-direct {p0}, Lcom/yftech/settings/utils/ConfigUtils;->isCarPartsMoreConfig()Z

    move-result v0

    sput-boolean v0, Lcom/yftech/settings/utils/ConfigUtils;->isCarPartsMoreConfig:Z

    .line 65
    invoke-direct {p0}, Lcom/yftech/settings/utils/ConfigUtils;->isAcConfig()Z

    move-result v0

    sput-boolean v0, Lcom/yftech/settings/utils/ConfigUtils;->isAcConfig:Z

    .line 66
    invoke-direct {p0}, Lcom/yftech/settings/utils/ConfigUtils;->isSeatConfig()Z

    move-result v0

    sput-boolean v0, Lcom/yftech/settings/utils/ConfigUtils;->isSeatConfig:Z

    .line 67
    invoke-direct {p0}, Lcom/yftech/settings/utils/ConfigUtils;->isCarDashboardConfig()Z

    move-result p0

    sput-boolean p0, Lcom/yftech/settings/utils/ConfigUtils;->isCarDashboardConfig:Z

    return-void
.end method

.method public isAcSeatConfig()Z
    .locals 0

    .line 88
    sget-boolean p0, Lcom/yftech/settings/utils/ConfigUtils;->isAcConfig:Z

    if-nez p0, :cond_1

    sget-boolean p0, Lcom/yftech/settings/utils/ConfigUtils;->isSeatConfig:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isAidConfig()Z
    .locals 0

    .line 71
    sget-boolean p0, Lcom/yftech/settings/utils/ConfigUtils;->isAidTipMemoryConfig:Z

    if-nez p0, :cond_1

    sget-boolean p0, Lcom/yftech/settings/utils/ConfigUtils;->isAidsSafeConfig:Z

    if-nez p0, :cond_1

    sget-boolean p0, Lcom/yftech/settings/utils/ConfigUtils;->isAidsAssistanceConfig:Z

    if-nez p0, :cond_1

    sget-boolean p0, Lcom/yftech/settings/utils/ConfigUtils;->isAidsParkingConfig:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isCarPartsConfig()Z
    .locals 0

    .line 75
    sget-boolean p0, Lcom/yftech/settings/utils/ConfigUtils;->isCarPartsLightConfig:Z

    if-nez p0, :cond_1

    sget-boolean p0, Lcom/yftech/settings/utils/ConfigUtils;->isCarPartsLockConfig:Z

    if-nez p0, :cond_1

    sget-boolean p0, Lcom/yftech/settings/utils/ConfigUtils;->isCarPartsRearviewConfig:Z

    if-nez p0, :cond_1

    sget-boolean p0, Lcom/yftech/settings/utils/ConfigUtils;->isCarPartsMoreConfig:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
