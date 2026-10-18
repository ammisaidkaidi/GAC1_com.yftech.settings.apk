.class public Lcom/yftech/settings/manager/CarDashboardManager;
.super Lcom/yftech/settings/manager/BaseManager;
.source "CarDashboardManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/settings/manager/CarDashboardManager$Function;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yftech/settings/manager/BaseManager<",
        "Lcom/yftech/settings/manager/CarDashboardManager$Function;",
        ">;"
    }
.end annotation


# static fields
.field public static final DASH_BACKLIGHT_LEVEL_PROGRESS_MAX:I = 0x7

.field public static final DASH_BACKLIGHT_LEVEL_PROGRESS_MIN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CarDashboardManager"

.field private static sDashboardManager:Lcom/yftech/settings/manager/CarDashboardManager;


# instance fields
.field private DASH_BACK_LIGHT_LEVEL:[Lcom/yftech/vehicle/internal/adapter/ICarIcm$BackLightLevel;

.field private DASH_DISTANCE_UNIT:[I

.field private DASH_FUEL_ECONOMY_AND_DISTANCE_UNIT:[Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;

.field private DASH_PRESSURE_UNIT:[Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;

.field private DASH_TEMPERATURE_UNIT:[Lcom/yftech/vehicle/internal/adapter/ICarIcm$TemperatureUnit;

.field private DASH_VOLUME_TYPE:[Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;

.field private LANGUAGE_TYPE:[Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

.field private mCarIcmListener:Lcom/yftech/vehicle/sdk/CarIcmManager$CarIcmListener;

.field private mDashBackLightLevelValue:I

.field private mDashDistanceUnitOption:I

.field private mDashFuelEconomyAndDistanceUnitOption:I

.field private mDashLanguageOption:I

.field private mDashPressureUnitOption:I

.field private mDashTemperatureUnitOption:I

.field private mDashVolumeOption:I


# direct methods
.method private constructor <init>()V
    .locals 8

    .line 143
    invoke-direct {p0}, Lcom/yftech/settings/manager/BaseManager;-><init>()V

    const/16 v0, 0x8

    .line 31
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarIcm$BackLightLevel;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarIcm$BackLightLevel;->LEVEL_1:Lcom/yftech/vehicle/internal/adapter/ICarIcm$BackLightLevel;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarIcm$BackLightLevel;->LEVEL_2:Lcom/yftech/vehicle/internal/adapter/ICarIcm$BackLightLevel;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarIcm$BackLightLevel;->LEVEL_3:Lcom/yftech/vehicle/internal/adapter/ICarIcm$BackLightLevel;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarIcm$BackLightLevel;->LEVEL_4:Lcom/yftech/vehicle/internal/adapter/ICarIcm$BackLightLevel;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarIcm$BackLightLevel;->LEVEL_5:Lcom/yftech/vehicle/internal/adapter/ICarIcm$BackLightLevel;

    const/4 v6, 0x4

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarIcm$BackLightLevel;->LEVEL_6:Lcom/yftech/vehicle/internal/adapter/ICarIcm$BackLightLevel;

    const/4 v7, 0x5

    aput-object v1, v0, v7

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarIcm$BackLightLevel;->LEVEL_7:Lcom/yftech/vehicle/internal/adapter/ICarIcm$BackLightLevel;

    const/4 v7, 0x6

    aput-object v1, v0, v7

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarIcm$BackLightLevel;->LEVEL_8:Lcom/yftech/vehicle/internal/adapter/ICarIcm$BackLightLevel;

    const/4 v7, 0x7

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/yftech/settings/manager/CarDashboardManager;->DASH_BACK_LIGHT_LEVEL:[Lcom/yftech/vehicle/internal/adapter/ICarIcm$BackLightLevel;

    .line 43
    new-array v0, v4, [Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->CHINESE:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->ENGLISH:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/yftech/settings/manager/CarDashboardManager;->LANGUAGE_TYPE:[Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    .line 45
    new-array v0, v5, [Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;->LOW:Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;->MIDDLE:Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;->HIGH:Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/yftech/settings/manager/CarDashboardManager;->DASH_VOLUME_TYPE:[Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;

    .line 47
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/yftech/settings/manager/CarDashboardManager;->DASH_DISTANCE_UNIT:[I

    .line 49
    new-array v0, v6, [Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;->L_PER_100KM_AND_KM:Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;->KM_L_AND_KM:Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;->MPG_GB_AND_M:Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;->MPG_US_AND_M:Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/yftech/settings/manager/CarDashboardManager;->DASH_FUEL_ECONOMY_AND_DISTANCE_UNIT:[Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;

    .line 54
    new-array v0, v4, [Lcom/yftech/vehicle/internal/adapter/ICarIcm$TemperatureUnit;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarIcm$TemperatureUnit;->CELSIUS:Lcom/yftech/vehicle/internal/adapter/ICarIcm$TemperatureUnit;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarIcm$TemperatureUnit;->FAHRENHEIT:Lcom/yftech/vehicle/internal/adapter/ICarIcm$TemperatureUnit;

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/yftech/settings/manager/CarDashboardManager;->DASH_TEMPERATURE_UNIT:[Lcom/yftech/vehicle/internal/adapter/ICarIcm$TemperatureUnit;

    .line 56
    new-array v0, v5, [Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;->K_PA:Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;->BAR:Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;->PSI:Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/yftech/settings/manager/CarDashboardManager;->DASH_PRESSURE_UNIT:[Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;

    .line 58
    iput v5, p0, Lcom/yftech/settings/manager/CarDashboardManager;->mDashBackLightLevelValue:I

    .line 59
    iput v2, p0, Lcom/yftech/settings/manager/CarDashboardManager;->mDashLanguageOption:I

    .line 60
    iput v3, p0, Lcom/yftech/settings/manager/CarDashboardManager;->mDashVolumeOption:I

    .line 61
    iput v2, p0, Lcom/yftech/settings/manager/CarDashboardManager;->mDashDistanceUnitOption:I

    .line 62
    iput v2, p0, Lcom/yftech/settings/manager/CarDashboardManager;->mDashFuelEconomyAndDistanceUnitOption:I

    .line 63
    iput v2, p0, Lcom/yftech/settings/manager/CarDashboardManager;->mDashTemperatureUnitOption:I

    .line 64
    iput v2, p0, Lcom/yftech/settings/manager/CarDashboardManager;->mDashPressureUnitOption:I

    .line 66
    new-instance v0, Lcom/yftech/settings/manager/CarDashboardManager$1;

    invoke-direct {v0, p0}, Lcom/yftech/settings/manager/CarDashboardManager$1;-><init>(Lcom/yftech/settings/manager/CarDashboardManager;)V

    iput-object v0, p0, Lcom/yftech/settings/manager/CarDashboardManager;->mCarIcmListener:Lcom/yftech/vehicle/sdk/CarIcmManager$CarIcmListener;

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method static synthetic access$000(Lcom/yftech/settings/manager/CarDashboardManager;Lcom/yftech/vehicle/internal/adapter/ICarIcm$BackLightLevel;)I
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/yftech/settings/manager/CarDashboardManager;->getValidDashBackLightLevelValue(Lcom/yftech/vehicle/internal/adapter/ICarIcm$BackLightLevel;)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/yftech/settings/manager/CarDashboardManager;Lcom/yftech/vehicle/internal/adapter/ICarIcm$TemperatureUnit;)I
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/yftech/settings/manager/CarDashboardManager;->getValidDashTemperatureUnitOption(Lcom/yftech/vehicle/internal/adapter/ICarIcm$TemperatureUnit;)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/yftech/settings/manager/CarDashboardManager;Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;)I
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/yftech/settings/manager/CarDashboardManager;->getValidDashPressureUnitOption(Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/yftech/settings/manager/CarDashboardManager;Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;)I
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/yftech/settings/manager/CarDashboardManager;->getValidDashFuelEconomyAndDistanceUnitOption(Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/yftech/settings/manager/CarDashboardManager;Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;)I
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/yftech/settings/manager/CarDashboardManager;->getValidDashLanguageOption(Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;)I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/yftech/settings/manager/CarDashboardManager;Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;)I
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/yftech/settings/manager/CarDashboardManager;->getValidDashVolumeOption(Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;)I

    move-result p0

    return p0
.end method

.method private getDashBackLightLevel()I
    .locals 1

    .line 259
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarIcmManager;->get()Lcom/yftech/vehicle/sdk/CarIcmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarIcmManager;->getBackLightLevel()Lcom/yftech/vehicle/internal/adapter/ICarIcm$BackLightLevel;

    move-result-object v0

    .line 260
    invoke-direct {p0, v0}, Lcom/yftech/settings/manager/CarDashboardManager;->getValidDashBackLightLevelValue(Lcom/yftech/vehicle/internal/adapter/ICarIcm$BackLightLevel;)I

    move-result p0

    return p0
.end method

.method private getDashDistanceUnit()I
    .locals 1

    const/4 v0, -0x1

    .line 305
    invoke-direct {p0, v0}, Lcom/yftech/settings/manager/CarDashboardManager;->getValidDashDistanceUnitOption(I)I

    move-result p0

    return p0
.end method

.method private getDashLanguage()I
    .locals 1

    .line 274
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarIcmManager;->get()Lcom/yftech/vehicle/sdk/CarIcmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarIcmManager;->getLanguage()Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    move-result-object v0

    .line 275
    invoke-direct {p0, v0}, Lcom/yftech/settings/manager/CarDashboardManager;->getValidDashLanguageOption(Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;)I

    move-result p0

    return p0
.end method

.method private getDashVolume()I
    .locals 1

    .line 289
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarIcmManager;->get()Lcom/yftech/vehicle/sdk/CarIcmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarIcmManager;->getMeterVolumeMode()Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;

    move-result-object v0

    .line 290
    invoke-direct {p0, v0}, Lcom/yftech/settings/manager/CarDashboardManager;->getValidDashVolumeOption(Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;)I

    move-result p0

    return p0
.end method

.method private getFuelEconomyAndDistanceUnit()I
    .locals 1

    .line 319
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarIcmManager;->get()Lcom/yftech/vehicle/sdk/CarIcmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarIcmManager;->getFuelEconomyAndDistanceUnit()Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;

    move-result-object v0

    .line 320
    invoke-direct {p0, v0}, Lcom/yftech/settings/manager/CarDashboardManager;->getValidDashFuelEconomyAndDistanceUnitOption(Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;)I

    move-result p0

    return p0
.end method

.method public static declared-synchronized getInstance()Lcom/yftech/settings/manager/CarDashboardManager;
    .locals 2

    const-class v0, Lcom/yftech/settings/manager/CarDashboardManager;

    monitor-enter v0

    .line 147
    :try_start_0
    sget-object v1, Lcom/yftech/settings/manager/CarDashboardManager;->sDashboardManager:Lcom/yftech/settings/manager/CarDashboardManager;

    if-nez v1, :cond_0

    .line 148
    new-instance v1, Lcom/yftech/settings/manager/CarDashboardManager;

    invoke-direct {v1}, Lcom/yftech/settings/manager/CarDashboardManager;-><init>()V

    sput-object v1, Lcom/yftech/settings/manager/CarDashboardManager;->sDashboardManager:Lcom/yftech/settings/manager/CarDashboardManager;

    .line 150
    :cond_0
    sget-object v1, Lcom/yftech/settings/manager/CarDashboardManager;->sDashboardManager:Lcom/yftech/settings/manager/CarDashboardManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 146
    monitor-exit v0

    throw v1
.end method

.method private getPressureUnit()I
    .locals 1

    .line 349
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarIcmManager;->get()Lcom/yftech/vehicle/sdk/CarIcmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarIcmManager;->getPressureUnit()Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;

    move-result-object v0

    .line 350
    invoke-direct {p0, v0}, Lcom/yftech/settings/manager/CarDashboardManager;->getValidDashPressureUnitOption(Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;)I

    move-result p0

    return p0
.end method

.method private getTemperatureUnit()I
    .locals 1

    .line 334
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarIcmManager;->get()Lcom/yftech/vehicle/sdk/CarIcmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarIcmManager;->getTemperatureUnit()Lcom/yftech/vehicle/internal/adapter/ICarIcm$TemperatureUnit;

    move-result-object v0

    .line 335
    invoke-direct {p0, v0}, Lcom/yftech/settings/manager/CarDashboardManager;->getValidDashTemperatureUnitOption(Lcom/yftech/vehicle/internal/adapter/ICarIcm$TemperatureUnit;)I

    move-result p0

    return p0
.end method

.method private getValidDashBackLightLevelValue(Lcom/yftech/vehicle/internal/adapter/ICarIcm$BackLightLevel;)I
    .locals 3

    const/4 v0, 0x0

    .line 373
    :goto_0
    iget-object v1, p0, Lcom/yftech/settings/manager/CarDashboardManager;->DASH_BACK_LIGHT_LEVEL:[Lcom/yftech/vehicle/internal/adapter/ICarIcm$BackLightLevel;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 374
    iget-object v1, p0, Lcom/yftech/settings/manager/CarDashboardManager;->DASH_BACK_LIGHT_LEVEL:[Lcom/yftech/vehicle/internal/adapter/ICarIcm$BackLightLevel;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 375
    iput v0, p0, Lcom/yftech/settings/manager/CarDashboardManager;->mDashBackLightLevelValue:I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-string v0, "CarDashboardManager"

    .line 379
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getValidDashBackLightLevelValue level:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", index:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/yftech/settings/manager/CarDashboardManager;->mDashBackLightLevelValue:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget p0, p0, Lcom/yftech/settings/manager/CarDashboardManager;->mDashBackLightLevelValue:I

    return p0
.end method

.method private getValidDashDistanceUnitOption(I)I
    .locals 3

    const/4 v0, 0x0

    .line 439
    :goto_0
    iget-object v1, p0, Lcom/yftech/settings/manager/CarDashboardManager;->DASH_DISTANCE_UNIT:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 440
    iget-object v1, p0, Lcom/yftech/settings/manager/CarDashboardManager;->DASH_DISTANCE_UNIT:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 441
    iput v0, p0, Lcom/yftech/settings/manager/CarDashboardManager;->mDashDistanceUnitOption:I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-string v0, "CarDashboardManager"

    .line 445
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getValidDashDistanceUnitOption unit:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", index:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/yftech/settings/manager/CarDashboardManager;->mDashDistanceUnitOption:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    iget p0, p0, Lcom/yftech/settings/manager/CarDashboardManager;->mDashDistanceUnitOption:I

    return p0
.end method

.method private getValidDashFuelEconomyAndDistanceUnitOption(Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;)I
    .locals 3

    const/4 v0, 0x0

    .line 384
    :goto_0
    iget-object v1, p0, Lcom/yftech/settings/manager/CarDashboardManager;->DASH_FUEL_ECONOMY_AND_DISTANCE_UNIT:[Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 385
    iget-object v1, p0, Lcom/yftech/settings/manager/CarDashboardManager;->DASH_FUEL_ECONOMY_AND_DISTANCE_UNIT:[Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 386
    iput v0, p0, Lcom/yftech/settings/manager/CarDashboardManager;->mDashFuelEconomyAndDistanceUnitOption:I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-string v0, "CarDashboardManager"

    .line 390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getValidDashFuelEconomyAndDistanceUnitOption unit:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", index:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/yftech/settings/manager/CarDashboardManager;->mDashFuelEconomyAndDistanceUnitOption:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    iget p0, p0, Lcom/yftech/settings/manager/CarDashboardManager;->mDashFuelEconomyAndDistanceUnitOption:I

    return p0
.end method

.method private getValidDashLanguageOption(Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;)I
    .locals 3

    const/4 v0, 0x0

    .line 417
    :goto_0
    iget-object v1, p0, Lcom/yftech/settings/manager/CarDashboardManager;->LANGUAGE_TYPE:[Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 418
    iget-object v1, p0, Lcom/yftech/settings/manager/CarDashboardManager;->LANGUAGE_TYPE:[Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 419
    iput v0, p0, Lcom/yftech/settings/manager/CarDashboardManager;->mDashLanguageOption:I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-string v0, "CarDashboardManager"

    .line 423
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getValidDashLanguageOption lang:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", index:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/yftech/settings/manager/CarDashboardManager;->mDashLanguageOption:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    iget p0, p0, Lcom/yftech/settings/manager/CarDashboardManager;->mDashLanguageOption:I

    return p0
.end method

.method private getValidDashPressureUnitOption(Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;)I
    .locals 3

    const/4 v0, 0x0

    .line 406
    :goto_0
    iget-object v1, p0, Lcom/yftech/settings/manager/CarDashboardManager;->DASH_PRESSURE_UNIT:[Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 407
    iget-object v1, p0, Lcom/yftech/settings/manager/CarDashboardManager;->DASH_PRESSURE_UNIT:[Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 408
    iput v0, p0, Lcom/yftech/settings/manager/CarDashboardManager;->mDashPressureUnitOption:I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-string v0, "CarDashboardManager"

    .line 412
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getValidDashPressureUnitOption unit:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", index:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/yftech/settings/manager/CarDashboardManager;->mDashPressureUnitOption:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    iget p0, p0, Lcom/yftech/settings/manager/CarDashboardManager;->mDashPressureUnitOption:I

    return p0
.end method

.method private getValidDashTemperatureUnitOption(Lcom/yftech/vehicle/internal/adapter/ICarIcm$TemperatureUnit;)I
    .locals 3

    const/4 v0, 0x0

    .line 395
    :goto_0
    iget-object v1, p0, Lcom/yftech/settings/manager/CarDashboardManager;->DASH_TEMPERATURE_UNIT:[Lcom/yftech/vehicle/internal/adapter/ICarIcm$TemperatureUnit;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 396
    iget-object v1, p0, Lcom/yftech/settings/manager/CarDashboardManager;->DASH_TEMPERATURE_UNIT:[Lcom/yftech/vehicle/internal/adapter/ICarIcm$TemperatureUnit;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 397
    iput v0, p0, Lcom/yftech/settings/manager/CarDashboardManager;->mDashTemperatureUnitOption:I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-string v0, "CarDashboardManager"

    .line 401
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getValidDashTemperatureUnitOption unit:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", index:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/yftech/settings/manager/CarDashboardManager;->mDashTemperatureUnitOption:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    iget p0, p0, Lcom/yftech/settings/manager/CarDashboardManager;->mDashTemperatureUnitOption:I

    return p0
.end method

.method private getValidDashVolumeOption(Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;)I
    .locals 3

    const/4 v0, 0x0

    .line 428
    :goto_0
    iget-object v1, p0, Lcom/yftech/settings/manager/CarDashboardManager;->DASH_VOLUME_TYPE:[Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 429
    iget-object v1, p0, Lcom/yftech/settings/manager/CarDashboardManager;->DASH_VOLUME_TYPE:[Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 430
    iput v0, p0, Lcom/yftech/settings/manager/CarDashboardManager;->mDashVolumeOption:I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-string v0, "CarDashboardManager"

    .line 434
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getValidDashVolumeOption mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", index:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/yftech/settings/manager/CarDashboardManager;->mDashVolumeOption:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    iget p0, p0, Lcom/yftech/settings/manager/CarDashboardManager;->mDashVolumeOption:I

    return p0
.end method

.method private resetCumulativeTravel()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private restoreFactorySetting()Z
    .locals 0

    .line 364
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarMiscManager;->get()Lcom/yftech/vehicle/sdk/CarMiscManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarMiscManager;->setFactoryModeReSetDashBoardFactorySetting()Z

    move-result p0

    return p0
.end method

.method private setDashDistanceUnit(I)Z
    .locals 1

    if-ltz p1, :cond_0

    .line 311
    iget-object v0, p0, Lcom/yftech/settings/manager/CarDashboardManager;->DASH_DISTANCE_UNIT:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 312
    iget-object p0, p0, Lcom/yftech/settings/manager/CarDashboardManager;->DASH_DISTANCE_UNIT:[I

    aget p0, p0, p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private setDashLanguage(I)Z
    .locals 1

    if-ltz p1, :cond_0

    .line 281
    iget-object v0, p0, Lcom/yftech/settings/manager/CarDashboardManager;->LANGUAGE_TYPE:[Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 282
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarIcmManager;->get()Lcom/yftech/vehicle/sdk/CarIcmManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/settings/manager/CarDashboardManager;->LANGUAGE_TYPE:[Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    aget-object p0, p0, p1

    invoke-virtual {v0, p0}, Lcom/yftech/vehicle/sdk/CarIcmManager;->setLanguage(Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setDashVolume(I)Z
    .locals 1

    if-ltz p1, :cond_0

    .line 296
    iget-object v0, p0, Lcom/yftech/settings/manager/CarDashboardManager;->DASH_VOLUME_TYPE:[Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 297
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarIcmManager;->get()Lcom/yftech/vehicle/sdk/CarIcmManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/settings/manager/CarDashboardManager;->DASH_VOLUME_TYPE:[Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;

    aget-object p0, p0, p1

    invoke-virtual {v0, p0}, Lcom/yftech/vehicle/sdk/CarIcmManager;->setMeterVolumeMode(Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setFuelEconomyAndDistanceUnit(I)Z
    .locals 1

    if-ltz p1, :cond_0

    .line 326
    iget-object v0, p0, Lcom/yftech/settings/manager/CarDashboardManager;->DASH_FUEL_ECONOMY_AND_DISTANCE_UNIT:[Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 327
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarIcmManager;->get()Lcom/yftech/vehicle/sdk/CarIcmManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/settings/manager/CarDashboardManager;->DASH_FUEL_ECONOMY_AND_DISTANCE_UNIT:[Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;

    aget-object p0, p0, p1

    invoke-virtual {v0, p0}, Lcom/yftech/vehicle/sdk/CarIcmManager;->setFuelEconomyAndDistanceUnit(Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setPressureUnit(I)Z
    .locals 1

    if-ltz p1, :cond_0

    .line 356
    iget-object v0, p0, Lcom/yftech/settings/manager/CarDashboardManager;->DASH_PRESSURE_UNIT:[Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 357
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarIcmManager;->get()Lcom/yftech/vehicle/sdk/CarIcmManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/settings/manager/CarDashboardManager;->DASH_PRESSURE_UNIT:[Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;

    aget-object p0, p0, p1

    invoke-virtual {v0, p0}, Lcom/yftech/vehicle/sdk/CarIcmManager;->setPressureUnit(Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setTemperatureUnit(I)Z
    .locals 1

    if-ltz p1, :cond_0

    .line 341
    iget-object v0, p0, Lcom/yftech/settings/manager/CarDashboardManager;->DASH_TEMPERATURE_UNIT:[Lcom/yftech/vehicle/internal/adapter/ICarIcm$TemperatureUnit;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 342
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarIcmManager;->get()Lcom/yftech/vehicle/sdk/CarIcmManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/settings/manager/CarDashboardManager;->DASH_TEMPERATURE_UNIT:[Lcom/yftech/vehicle/internal/adapter/ICarIcm$TemperatureUnit;

    aget-object p0, p0, p1

    invoke-virtual {v0, p0}, Lcom/yftech/vehicle/sdk/CarIcmManager;->setTemperatureUnit(Lcom/yftech/vehicle/internal/adapter/ICarIcm$TemperatureUnit;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public deInit()V
    .locals 1

    .line 161
    invoke-super {p0}, Lcom/yftech/settings/manager/BaseManager;->deInit()V

    .line 162
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarIcmManager;->get()Lcom/yftech/vehicle/sdk/CarIcmManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/settings/manager/CarDashboardManager;->mCarIcmListener:Lcom/yftech/vehicle/sdk/CarIcmManager$CarIcmListener;

    invoke-virtual {v0, p0}, Lcom/yftech/vehicle/sdk/CarIcmManager;->unregisterListener(Lcom/yftech/vehicle/sdk/CarIcmManager$CarIcmListener;)V

    return-void
.end method

.method public getFunctionPresent(Lcom/yftech/settings/manager/CarDashboardManager$Function;)Z
    .locals 0

    .line 450
    sget-object p0, Lcom/yftech/settings/manager/CarDashboardManager$2;->$SwitchMap$com$yftech$settings$manager$CarDashboardManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/CarDashboardManager$Function;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    return p1

    .line 452
    :pswitch_1
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isClusterBackLightPresent()Z

    move-result p0

    return p0

    :pswitch_2
    return p1

    .line 458
    :pswitch_3
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isClusterVolumeSettingPresent()Z

    move-result p0

    return p0

    .line 455
    :pswitch_4
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isClusterLanguageSettingPresent()Z

    move-result p0

    return p0

    .line 472
    :pswitch_5
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isClusterPressureUnitPresent()Z

    move-result p0

    return p0

    .line 469
    :pswitch_6
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isClusterTemperatureUnitPresent()Z

    move-result p0

    return p0

    .line 467
    :pswitch_7
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isClusterFuelConsumptionUnitPresent()Z

    move-result p0

    return p0

    :pswitch_8
    return p1

    .line 475
    :pswitch_9
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isClusterDefaultSettingPresent()Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getOption(Lcom/yftech/settings/manager/CarDashboardManager$Function;)I
    .locals 1

    .line 185
    sget-object v0, Lcom/yftech/settings/manager/CarDashboardManager$2;->$SwitchMap$com$yftech$settings$manager$CarDashboardManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/CarDashboardManager$Function;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p0, -0x1

    return p0

    .line 197
    :pswitch_0
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarDashboardManager;->getDashDistanceUnit()I

    move-result p0

    return p0

    .line 195
    :pswitch_1
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarDashboardManager;->getDashVolume()I

    move-result p0

    return p0

    .line 193
    :pswitch_2
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarDashboardManager;->getDashLanguage()I

    move-result p0

    return p0

    .line 191
    :pswitch_3
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarDashboardManager;->getPressureUnit()I

    move-result p0

    return p0

    .line 189
    :pswitch_4
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarDashboardManager;->getTemperatureUnit()I

    move-result p0

    return p0

    .line 187
    :pswitch_5
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarDashboardManager;->getFuelEconomyAndDistanceUnit()I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic getOption(Ljava/lang/Object;)I
    .locals 0

    .line 13
    check-cast p1, Lcom/yftech/settings/manager/CarDashboardManager$Function;

    invoke-virtual {p0, p1}, Lcom/yftech/settings/manager/CarDashboardManager;->getOption(Lcom/yftech/settings/manager/CarDashboardManager$Function;)I

    move-result p0

    return p0
.end method

.method public getValue(Lcom/yftech/settings/manager/CarDashboardManager$Function;)Ljava/lang/Object;
    .locals 1

    .line 237
    sget-object v0, Lcom/yftech/settings/manager/CarDashboardManager$2;->$SwitchMap$com$yftech$settings$manager$CarDashboardManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/CarDashboardManager$Function;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/4 p0, -0x1

    .line 241
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 239
    :cond_0
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarDashboardManager;->getDashBackLightLevel()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Lcom/yftech/settings/manager/CarDashboardManager$Function;

    invoke-virtual {p0, p1}, Lcom/yftech/settings/manager/CarDashboardManager;->getValue(Lcom/yftech/settings/manager/CarDashboardManager$Function;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    .line 155
    invoke-super {p0, p1}, Lcom/yftech/settings/manager/BaseManager;->init(Landroid/content/Context;)V

    .line 156
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarIcmManager;->get()Lcom/yftech/vehicle/sdk/CarIcmManager;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/settings/manager/CarDashboardManager;->mCarIcmListener:Lcom/yftech/vehicle/sdk/CarIcmManager$CarIcmListener;

    invoke-virtual {p1, p0}, Lcom/yftech/vehicle/sdk/CarIcmManager;->registerListener(Lcom/yftech/vehicle/sdk/CarIcmManager$CarIcmListener;)V

    return-void
.end method

.method public setAction(Lcom/yftech/settings/manager/CarDashboardManager$Function;)Z
    .locals 3

    .line 168
    sget-object v0, Lcom/yftech/settings/manager/CarDashboardManager$2;->$SwitchMap$com$yftech$settings$manager$CarDashboardManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/CarDashboardManager$Function;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    .line 176
    :pswitch_0
    invoke-virtual {p0}, Lcom/yftech/settings/manager/CarDashboardManager;->stopTimeout()Z

    move-result p0

    goto :goto_0

    .line 173
    :pswitch_1
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarDashboardManager;->resetCumulativeTravel()Z

    move-result p0

    goto :goto_0

    .line 170
    :pswitch_2
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarDashboardManager;->restoreFactorySetting()Z

    move-result p0

    :goto_0
    const-string v0, "CarDashboardManager"

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAction function:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", result:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic setAction(Ljava/lang/Object;)Z
    .locals 0

    .line 13
    check-cast p1, Lcom/yftech/settings/manager/CarDashboardManager$Function;

    invoke-virtual {p0, p1}, Lcom/yftech/settings/manager/CarDashboardManager;->setAction(Lcom/yftech/settings/manager/CarDashboardManager$Function;)Z

    move-result p0

    return p0
.end method

.method public setDashBackLightLevel(I)Z
    .locals 1

    if-ltz p1, :cond_0

    .line 266
    iget-object v0, p0, Lcom/yftech/settings/manager/CarDashboardManager;->DASH_BACK_LIGHT_LEVEL:[Lcom/yftech/vehicle/internal/adapter/ICarIcm$BackLightLevel;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 267
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarIcmManager;->get()Lcom/yftech/vehicle/sdk/CarIcmManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/settings/manager/CarDashboardManager;->DASH_BACK_LIGHT_LEVEL:[Lcom/yftech/vehicle/internal/adapter/ICarIcm$BackLightLevel;

    aget-object p0, p0, p1

    invoke-virtual {v0, p0}, Lcom/yftech/vehicle/sdk/CarIcmManager;->setBackLightLevel(Lcom/yftech/vehicle/internal/adapter/ICarIcm$BackLightLevel;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setOption(Lcom/yftech/settings/manager/CarDashboardManager$Function;I)Z
    .locals 3

    .line 205
    sget-object v0, Lcom/yftech/settings/manager/CarDashboardManager$2;->$SwitchMap$com$yftech$settings$manager$CarDashboardManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/CarDashboardManager$Function;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    .line 227
    :pswitch_0
    invoke-virtual {p0}, Lcom/yftech/settings/manager/CarDashboardManager;->startTimeout()V

    .line 228
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/CarDashboardManager;->setDashDistanceUnit(I)Z

    move-result p0

    goto :goto_0

    .line 223
    :pswitch_1
    invoke-virtual {p0}, Lcom/yftech/settings/manager/CarDashboardManager;->startTimeout()V

    .line 224
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/CarDashboardManager;->setDashVolume(I)Z

    move-result p0

    goto :goto_0

    .line 219
    :pswitch_2
    invoke-virtual {p0}, Lcom/yftech/settings/manager/CarDashboardManager;->startTimeout()V

    .line 220
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/CarDashboardManager;->setDashLanguage(I)Z

    move-result p0

    goto :goto_0

    .line 215
    :pswitch_3
    invoke-virtual {p0}, Lcom/yftech/settings/manager/CarDashboardManager;->startTimeout()V

    .line 216
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/CarDashboardManager;->setPressureUnit(I)Z

    move-result p0

    goto :goto_0

    .line 211
    :pswitch_4
    invoke-virtual {p0}, Lcom/yftech/settings/manager/CarDashboardManager;->startTimeout()V

    .line 212
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/CarDashboardManager;->setTemperatureUnit(I)Z

    move-result p0

    goto :goto_0

    .line 207
    :pswitch_5
    invoke-virtual {p0}, Lcom/yftech/settings/manager/CarDashboardManager;->startTimeout()V

    .line 208
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/CarDashboardManager;->setFuelEconomyAndDistanceUnit(I)Z

    move-result p0

    :goto_0
    const-string v0, "CarDashboardManager"

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOption function:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", index:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", result:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic setOption(Ljava/lang/Object;I)Z
    .locals 0

    .line 13
    check-cast p1, Lcom/yftech/settings/manager/CarDashboardManager$Function;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/settings/manager/CarDashboardManager;->setOption(Lcom/yftech/settings/manager/CarDashboardManager$Function;I)Z

    move-result p0

    return p0
.end method

.method public setValue(Lcom/yftech/settings/manager/CarDashboardManager$Function;Ljava/lang/Object;)Z
    .locals 3

    .line 247
    sget-object v0, Lcom/yftech/settings/manager/CarDashboardManager$2;->$SwitchMap$com$yftech$settings$manager$CarDashboardManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/CarDashboardManager$Function;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 249
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/settings/manager/CarDashboardManager;->startTimeout()V

    .line 250
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yftech/settings/manager/CarDashboardManager;->setDashBackLightLevel(I)Z

    move-result p0

    :goto_0
    const-string v0, "CarDashboardManager"

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setValue function:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", value:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", result:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 13
    check-cast p1, Lcom/yftech/settings/manager/CarDashboardManager$Function;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/settings/manager/CarDashboardManager;->setValue(Lcom/yftech/settings/manager/CarDashboardManager$Function;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
