.class public Lcom/yftech/settings/manager/SettingsManager;
.super Lcom/yftech/settings/manager/BaseManager;
.source "SettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/settings/manager/SettingsManager$Function;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yftech/settings/manager/BaseManager<",
        "Lcom/yftech/settings/manager/SettingsManager$Function;",
        ">;"
    }
.end annotation


# static fields
.field private static final FACTORY_MODE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SettingsManager"

.field private static sSettingsManager:Lcom/yftech/settings/manager/SettingsManager;


# instance fields
.field private AC_VIEW_HOLD_TIME:[I

.field private INTELLIGENT_SCENE_SWITCH:[I

.field private LANGUAGE_AVM:[Lcom/yftech/vehicle/internal/adapter/IMpuAvm$Language;

.field private LANGUAGE_AVM_CS112:[Lcom/yftech/vehicle/internal/adapter/IMpuAvm$Language;

.field private LANGUAGE_AVM_RIGHT:[Lcom/yftech/vehicle/internal/adapter/IMpuAvm$Language;

.field private LANGUAGE_DASHBOARD:[Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

.field private LANGUAGE_DASHBOARD_CS112:[Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

.field private LANGUAGE_DASHBOARD_RIGHT:[Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

.field private LANGUAGE_SETTING_TYPE:[Ljava/util/Locale;

.field private LANGUAGE_SETTING_TYPE_CS112:[Ljava/util/Locale;

.field private LANGUAGE_SETTING_TYPE_RIGHT:[Ljava/util/Locale;

.field private NAVI_SIGNAL_MODE:[I

.field private mCarMiscListener:Lcom/yftech/vehicle/sdk/CarMiscManager$CarMiscListener;

.field private mCarScreenCallback:Lcom/yftech/car/screen/CarScreenManager$CarScreenCallback;

.field private mCarScreenHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 9

    .line 88
    invoke-direct {p0}, Lcom/yftech/settings/manager/BaseManager;-><init>()V

    const/4 v0, 0x4

    .line 57
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/yftech/settings/manager/SettingsManager;->AC_VIEW_HOLD_TIME:[I

    const/4 v1, 0x2

    .line 59
    new-array v2, v1, [I

    fill-array-data v2, :array_1

    iput-object v2, p0, Lcom/yftech/settings/manager/SettingsManager;->INTELLIGENT_SCENE_SWITCH:[I

    .line 61
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/yftech/settings/manager/SettingsManager;->mCarScreenHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    .line 63
    new-array v3, v2, [I

    fill-array-data v3, :array_2

    iput-object v3, p0, Lcom/yftech/settings/manager/SettingsManager;->NAVI_SIGNAL_MODE:[I

    const/4 v3, 0x6

    .line 65
    new-array v4, v3, [Ljava/util/Locale;

    sget-object v5, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    new-instance v5, Ljava/util/Locale;

    const-string v8, "es"

    invoke-direct {v5, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v1

    new-instance v5, Ljava/util/Locale;

    const-string v8, "ar"

    invoke-direct {v5, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v2

    new-instance v5, Ljava/util/Locale;

    const-string v8, "ru"

    invoke-direct {v5, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v0

    new-instance v5, Ljava/util/Locale;

    const-string v8, "it"

    invoke-direct {v5, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x5

    aput-object v5, v4, v8

    iput-object v4, p0, Lcom/yftech/settings/manager/SettingsManager;->LANGUAGE_SETTING_TYPE:[Ljava/util/Locale;

    .line 66
    new-array v4, v3, [Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    sget-object v5, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->CHINESE:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    aput-object v5, v4, v6

    sget-object v5, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->ENGLISH:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    aput-object v5, v4, v7

    sget-object v5, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->SPANISH:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    aput-object v5, v4, v1

    sget-object v5, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->ARABIC:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    aput-object v5, v4, v2

    sget-object v5, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->RUSSIAN:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    aput-object v5, v4, v0

    sget-object v5, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->ITALY:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    aput-object v5, v4, v8

    iput-object v4, p0, Lcom/yftech/settings/manager/SettingsManager;->LANGUAGE_DASHBOARD:[Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    .line 67
    new-array v3, v3, [Lcom/yftech/vehicle/internal/adapter/IMpuAvm$Language;

    sget-object v4, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$Language;->CHINESE:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$Language;

    aput-object v4, v3, v6

    sget-object v4, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$Language;->ENGLISH:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$Language;

    aput-object v4, v3, v7

    sget-object v4, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$Language;->SPANISH:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$Language;

    aput-object v4, v3, v1

    sget-object v4, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$Language;->ARABIC_RESERVED:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$Language;

    aput-object v4, v3, v2

    sget-object v4, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$Language;->RUSSIAN_RESERVED:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$Language;

    aput-object v4, v3, v0

    sget-object v4, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$Language;->ITALIAN:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$Language;

    aput-object v4, v3, v8

    iput-object v3, p0, Lcom/yftech/settings/manager/SettingsManager;->LANGUAGE_AVM:[Lcom/yftech/vehicle/internal/adapter/IMpuAvm$Language;

    .line 69
    new-array v3, v8, [Ljava/util/Locale;

    sget-object v4, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    aput-object v4, v3, v6

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    aput-object v4, v3, v7

    new-instance v4, Ljava/util/Locale;

    const-string v5, "es"

    invoke-direct {v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v1

    new-instance v4, Ljava/util/Locale;

    const-string v5, "ru"

    invoke-direct {v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v2

    new-instance v4, Ljava/util/Locale;

    const-string v5, "in"

    invoke-direct {v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v0

    iput-object v3, p0, Lcom/yftech/settings/manager/SettingsManager;->LANGUAGE_SETTING_TYPE_RIGHT:[Ljava/util/Locale;

    .line 70
    new-array v3, v8, [Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    sget-object v4, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->CHINESE:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    aput-object v4, v3, v6

    sget-object v4, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->ENGLISH:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    aput-object v4, v3, v7

    sget-object v4, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->SPANISH:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    aput-object v4, v3, v1

    sget-object v4, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->RUSSIAN:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    aput-object v4, v3, v2

    sget-object v4, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->INDONESIAN:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    aput-object v4, v3, v0

    iput-object v3, p0, Lcom/yftech/settings/manager/SettingsManager;->LANGUAGE_DASHBOARD_RIGHT:[Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    .line 71
    new-array v3, v8, [Lcom/yftech/vehicle/internal/adapter/IMpuAvm$Language;

    sget-object v4, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$Language;->CHINESE:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$Language;

    aput-object v4, v3, v6

    sget-object v4, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$Language;->ENGLISH:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$Language;

    aput-object v4, v3, v7

    sget-object v4, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$Language;->SPANISH:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$Language;

    aput-object v4, v3, v1

    sget-object v4, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$Language;->RUSSIAN_RESERVED:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$Language;

    aput-object v4, v3, v2

    sget-object v4, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$Language;->INDONESIAN:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$Language;

    aput-object v4, v3, v0

    iput-object v3, p0, Lcom/yftech/settings/manager/SettingsManager;->LANGUAGE_AVM_RIGHT:[Lcom/yftech/vehicle/internal/adapter/IMpuAvm$Language;

    .line 73
    new-array v0, v2, [Ljava/util/Locale;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    aput-object v3, v0, v6

    new-instance v3, Ljava/util/Locale;

    const-string v4, "es"

    invoke-direct {v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    aput-object v3, v0, v7

    new-instance v3, Ljava/util/Locale;

    const-string v4, "it"

    invoke-direct {v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    aput-object v3, v0, v1

    iput-object v0, p0, Lcom/yftech/settings/manager/SettingsManager;->LANGUAGE_SETTING_TYPE_CS112:[Ljava/util/Locale;

    .line 74
    new-array v0, v2, [Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    sget-object v3, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->ENGLISH:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    aput-object v3, v0, v6

    sget-object v3, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->SPANISH:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    aput-object v3, v0, v7

    sget-object v3, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->ITALY:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    aput-object v3, v0, v1

    iput-object v0, p0, Lcom/yftech/settings/manager/SettingsManager;->LANGUAGE_DASHBOARD_CS112:[Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    .line 75
    new-array v0, v2, [Lcom/yftech/vehicle/internal/adapter/IMpuAvm$Language;

    sget-object v2, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$Language;->ENGLISH:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$Language;

    aput-object v2, v0, v6

    sget-object v2, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$Language;->SPANISH:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$Language;

    aput-object v2, v0, v7

    sget-object v2, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$Language;->ITALIAN:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$Language;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/yftech/settings/manager/SettingsManager;->LANGUAGE_AVM_CS112:[Lcom/yftech/vehicle/internal/adapter/IMpuAvm$Language;

    .line 77
    new-instance v0, Lcom/yftech/settings/manager/SettingsManager$1;

    invoke-direct {v0, p0}, Lcom/yftech/settings/manager/SettingsManager$1;-><init>(Lcom/yftech/settings/manager/SettingsManager;)V

    iput-object v0, p0, Lcom/yftech/settings/manager/SettingsManager;->mCarScreenCallback:Lcom/yftech/car/screen/CarScreenManager$CarScreenCallback;

    .line 166
    new-instance v0, Lcom/yftech/settings/manager/SettingsManager$2;

    invoke-direct {v0, p0}, Lcom/yftech/settings/manager/SettingsManager$2;-><init>(Lcom/yftech/settings/manager/SettingsManager;)V

    iput-object v0, p0, Lcom/yftech/settings/manager/SettingsManager;->mCarMiscListener:Lcom/yftech/vehicle/sdk/CarMiscManager$CarMiscListener;

    return-void

    :array_0
    .array-data 4
        0x5
        0xa
        0xf
        0x1e
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data
.end method

.method static synthetic access$000(Lcom/yftech/settings/manager/SettingsManager;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/yftech/settings/manager/SettingsManager;->startEngineeringmodeActivity()V

    return-void
.end method

.method private closeScreenBrightness()Z
    .locals 1

    .line 363
    invoke-static {}, Lcom/yftech/car/screen/CarScreenManager;->getInstance()Lcom/yftech/car/screen/CarScreenManager;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yftech/car/screen/CarScreenManager;->closeScreenBrightness(I)Z

    move-result p0

    return p0
.end method

.method private getAcViewHoldTime()I
    .locals 6

    .line 301
    invoke-virtual {p0}, Lcom/yftech/settings/manager/SettingsManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ac_view_hold_time"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "SettingsManager"

    .line 302
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAcViewHoldTime time:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xa

    if-ne v0, v2, :cond_4

    .line 304
    invoke-static {}, Lcom/yftech/vehicle/sdk/HostConfig;->getHvacDisplayTime()Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;

    move-result-object v0

    const-string v3, "SettingsManager"

    .line 305
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAcViewHoldTime hvacDisplayTime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    sget-object v3, Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;->FIVES_SEC:Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;

    if-ne v0, v3, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    .line 308
    :cond_0
    sget-object v3, Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;->TEN_SEC:Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;

    if-ne v0, v3, :cond_2

    :cond_1
    move v0, v1

    goto :goto_0

    .line 310
    :cond_2
    sget-object v3, Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;->FIFTEEN_SEC:Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;

    if-ne v0, v3, :cond_3

    const/16 v0, 0xf

    goto :goto_0

    .line 312
    :cond_3
    sget-object v3, Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;->THIRTY_SEC:Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;

    if-ne v0, v3, :cond_1

    const/16 v0, 0x1e

    :cond_4
    :goto_0
    const/4 v1, 0x0

    .line 319
    :goto_1
    iget-object v3, p0, Lcom/yftech/settings/manager/SettingsManager;->AC_VIEW_HOLD_TIME:[I

    array-length v3, v3

    if-ge v1, v3, :cond_6

    .line 320
    iget-object v3, p0, Lcom/yftech/settings/manager/SettingsManager;->AC_VIEW_HOLD_TIME:[I

    aget v3, v3, v1

    if-ne v3, v0, :cond_5

    return v1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    return v2
.end method

.method private getBrightnessMaxValue()I
    .locals 0

    .line 358
    invoke-static {}, Lcom/yftech/car/screen/CarScreenManager;->getInstance()Lcom/yftech/car/screen/CarScreenManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/screen/CarScreenManager;->getBrightnessMaxValue()I

    move-result p0

    return p0
.end method

.method public static declared-synchronized getInstance()Lcom/yftech/settings/manager/SettingsManager;
    .locals 2

    const-class v0, Lcom/yftech/settings/manager/SettingsManager;

    monitor-enter v0

    .line 92
    :try_start_0
    sget-object v1, Lcom/yftech/settings/manager/SettingsManager;->sSettingsManager:Lcom/yftech/settings/manager/SettingsManager;

    if-nez v1, :cond_0

    .line 93
    new-instance v1, Lcom/yftech/settings/manager/SettingsManager;

    invoke-direct {v1}, Lcom/yftech/settings/manager/SettingsManager;-><init>()V

    sput-object v1, Lcom/yftech/settings/manager/SettingsManager;->sSettingsManager:Lcom/yftech/settings/manager/SettingsManager;

    .line 95
    :cond_0
    sget-object v1, Lcom/yftech/settings/manager/SettingsManager;->sSettingsManager:Lcom/yftech/settings/manager/SettingsManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 91
    monitor-exit v0

    throw v1
.end method

.method private getIntelligentSceneSwitchType()I
    .locals 2

    const/4 v0, 0x0

    .line 339
    :goto_0
    iget-object v1, p0, Lcom/yftech/settings/manager/SettingsManager;->INTELLIGENT_SCENE_SWITCH:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 340
    iget-object v1, p0, Lcom/yftech/settings/manager/SettingsManager;->INTELLIGENT_SCENE_SWITCH:[I

    aget v1, v1, v0

    if-nez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private getLanguageType()I
    .locals 4

    .line 388
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 390
    invoke-static {}, Lcom/yftech/settings/utils/Utils;->isRightDrive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 391
    iget-object p0, p0, Lcom/yftech/settings/manager/SettingsManager;->LANGUAGE_SETTING_TYPE_RIGHT:[Ljava/util/Locale;

    goto :goto_0

    .line 393
    :cond_0
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->getVehiclePlatform()Lcom/yftech/vehicle/internal/adapter/ICarConfig$VehiclePlatform;

    move-result-object v1

    sget-object v2, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VehiclePlatform;->CS112:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VehiclePlatform;

    if-ne v1, v2, :cond_1

    .line 394
    iget-object p0, p0, Lcom/yftech/settings/manager/SettingsManager;->LANGUAGE_SETTING_TYPE_CS112:[Ljava/util/Locale;

    goto :goto_0

    .line 396
    :cond_1
    iget-object p0, p0, Lcom/yftech/settings/manager/SettingsManager;->LANGUAGE_SETTING_TYPE:[Ljava/util/Locale;

    :goto_0
    const/4 v1, 0x0

    .line 399
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 400
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p0, "getLanguageType "

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yftech/settings/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method private getManufacturer()Ljava/lang/String;
    .locals 1

    const-string p0, "ro.product.manufacturer"

    const-string v0, ""

    .line 368
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getNaviSignalMode()I
    .locals 2

    const/4 v0, 0x0

    .line 272
    :goto_0
    iget-object v1, p0, Lcom/yftech/settings/manager/SettingsManager;->NAVI_SIGNAL_MODE:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 273
    iget-object v1, p0, Lcom/yftech/settings/manager/SettingsManager;->NAVI_SIGNAL_MODE:[I

    aget v1, v1, v0

    if-nez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private getScreenBrightness()I
    .locals 0

    .line 291
    invoke-static {}, Lcom/yftech/car/screen/CarScreenManager;->getInstance()Lcom/yftech/car/screen/CarScreenManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/screen/CarScreenManager;->getBrightness()I

    move-result p0

    return p0
.end method

.method private getVehicleMode()Ljava/lang/String;
    .locals 1

    const-string p0, "ro.product.model"

    const-string v0, ""

    .line 372
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private setAcViewHoldTime(I)Z
    .locals 2

    if-ltz p1, :cond_0

    .line 330
    iget-object v0, p0, Lcom/yftech/settings/manager/SettingsManager;->AC_VIEW_HOLD_TIME:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 331
    invoke-virtual {p0}, Lcom/yftech/settings/manager/SettingsManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ac_view_hold_time"

    iget-object p0, p0, Lcom/yftech/settings/manager/SettingsManager;->AC_VIEW_HOLD_TIME:[I

    aget p0, p0, p1

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setIntelligentSceneSwitchType(I)Z
    .locals 0

    if-ltz p1, :cond_0

    .line 350
    iget-object p0, p0, Lcom/yftech/settings/manager/SettingsManager;->INTELLIGENT_SCENE_SWITCH:[I

    array-length p0, p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private setLanguageType(I)Z
    .locals 8

    .line 414
    invoke-static {}, Lcom/yftech/settings/utils/Utils;->isRightDrive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/yftech/settings/manager/SettingsManager;->LANGUAGE_SETTING_TYPE_RIGHT:[Ljava/util/Locale;

    .line 416
    iget-object v1, p0, Lcom/yftech/settings/manager/SettingsManager;->LANGUAGE_DASHBOARD_RIGHT:[Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    .line 417
    iget-object p0, p0, Lcom/yftech/settings/manager/SettingsManager;->LANGUAGE_AVM_RIGHT:[Lcom/yftech/vehicle/internal/adapter/IMpuAvm$Language;

    goto :goto_0

    .line 419
    :cond_0
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->getVehiclePlatform()Lcom/yftech/vehicle/internal/adapter/ICarConfig$VehiclePlatform;

    move-result-object v0

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VehiclePlatform;->CS112:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VehiclePlatform;

    if-ne v0, v1, :cond_1

    .line 420
    iget-object v0, p0, Lcom/yftech/settings/manager/SettingsManager;->LANGUAGE_SETTING_TYPE_CS112:[Ljava/util/Locale;

    .line 421
    iget-object v1, p0, Lcom/yftech/settings/manager/SettingsManager;->LANGUAGE_DASHBOARD_CS112:[Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    .line 422
    iget-object p0, p0, Lcom/yftech/settings/manager/SettingsManager;->LANGUAGE_AVM_CS112:[Lcom/yftech/vehicle/internal/adapter/IMpuAvm$Language;

    goto :goto_0

    .line 424
    :cond_1
    iget-object v0, p0, Lcom/yftech/settings/manager/SettingsManager;->LANGUAGE_SETTING_TYPE:[Ljava/util/Locale;

    .line 425
    iget-object v1, p0, Lcom/yftech/settings/manager/SettingsManager;->LANGUAGE_DASHBOARD:[Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    .line 426
    iget-object p0, p0, Lcom/yftech/settings/manager/SettingsManager;->LANGUAGE_AVM:[Lcom/yftech/vehicle/internal/adapter/IMpuAvm$Language;

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ltz p1, :cond_2

    .line 429
    array-length v4, v0

    if-ge p1, v4, :cond_2

    .line 431
    :try_start_0
    aget-object v0, v0, p1

    const-string v4, "SettingsManager"

    .line 432
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setLanguageType:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    .line 434
    invoke-interface {v4}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    .line 436
    new-instance v6, Landroid/os/LocaleList;

    new-array v7, v3, [Ljava/util/Locale;

    aput-object v0, v7, v2

    invoke-direct {v6, v7}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    invoke-virtual {v5, v6}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 437
    iput-boolean v3, v5, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 439
    invoke-interface {v4, v5}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    goto :goto_1

    :catch_0
    move-exception v0

    .line 442
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    move v0, v2

    :goto_1
    if-ltz p1, :cond_4

    .line 446
    array-length v4, v1

    if-ge p1, v4, :cond_4

    .line 447
    aget-object v1, v1, p1

    if-eqz v0, :cond_3

    .line 448
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarIcmManager;->get()Lcom/yftech/vehicle/sdk/CarIcmManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/yftech/vehicle/sdk/CarIcmManager;->setLanguage(Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_2

    :cond_3
    move v0, v2

    :cond_4
    :goto_2
    if-ltz p1, :cond_6

    .line 451
    array-length v1, p0

    if-ge p1, v1, :cond_6

    .line 452
    aget-object p0, p0, p1

    if-eqz v0, :cond_5

    .line 453
    invoke-static {}, Lcom/yftech/vehicle/sdk/MpuAvmManager;->get()Lcom/yftech/vehicle/sdk/MpuAvmManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/yftech/vehicle/sdk/MpuAvmManager;->setAvmLanguage(Lcom/yftech/vehicle/internal/adapter/IMpuAvm$Language;)Z

    move-result p0

    if-eqz p0, :cond_5

    move v0, v3

    goto :goto_3

    :cond_5
    move v0, v2

    :cond_6
    :goto_3
    return v0
.end method

.method private setNaviSignalMode(I)Z
    .locals 0

    if-ltz p1, :cond_0

    .line 283
    iget-object p0, p0, Lcom/yftech/settings/manager/SettingsManager;->NAVI_SIGNAL_MODE:[I

    array-length p0, p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private startEngineeringmodeActivity()V
    .locals 2

    .line 377
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.yftech.intent.action.start.engineeringmode"

    .line 378
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 379
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 380
    invoke-virtual {p0}, Lcom/yftech/settings/manager/SettingsManager;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 382
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public cleanStorageSpace()V
    .locals 0

    return-void
.end method

.method public deInit()V
    .locals 2

    .line 186
    invoke-super {p0}, Lcom/yftech/settings/manager/BaseManager;->deInit()V

    .line 187
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarMiscManager;->get()Lcom/yftech/vehicle/sdk/CarMiscManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/settings/manager/SettingsManager;->mCarMiscListener:Lcom/yftech/vehicle/sdk/CarMiscManager$CarMiscListener;

    invoke-virtual {v0, v1}, Lcom/yftech/vehicle/sdk/CarMiscManager;->unregisterReceiver(Ljava/lang/Object;)V

    .line 188
    invoke-static {}, Lcom/yftech/car/screen/CarScreenManager;->getInstance()Lcom/yftech/car/screen/CarScreenManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/settings/manager/SettingsManager;->mCarScreenCallback:Lcom/yftech/car/screen/CarScreenManager$CarScreenCallback;

    invoke-virtual {v0, p0}, Lcom/yftech/car/screen/CarScreenManager;->unregisterCarScreenCallback(Lcom/yftech/car/screen/CarScreenManager$CarScreenCallback;)V

    return-void
.end method

.method public get24HourFormatState(Landroid/content/Context;)Z
    .locals 0

    .line 128
    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public getCurTime()Ljava/lang/String;
    .locals 1

    .line 99
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-MM-dd HH:mm"

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 100
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCurTime(Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    .line 104
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const v4, 0x7f0d0180

    const v5, 0x7f0d014d

    const v6, 0x7f0d005d

    const/16 v7, 0x9

    if-eqz v0, :cond_2

    .line 105
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v8, "es"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    invoke-virtual {p0, p1}, Lcom/yftech/settings/manager/SettingsManager;->get24HourFormatState(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 107
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string p1, "dd-MM-yyyy HH:mm"

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {p0, p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 108
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 110
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0, v7}, Ljava/util/Calendar;->get(I)I

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 111
    :goto_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v5, "dd-MM-yyyy"

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 112
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "hh:mm"

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v5, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 113
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p0, v0, v2

    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 116
    :cond_2
    invoke-virtual {p0, p1}, Lcom/yftech/settings/manager/SettingsManager;->get24HourFormatState(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 117
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string p1, "yyyy-MM-dd HH:mm"

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {p0, p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 118
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 120
    :cond_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0, v7}, Ljava/util/Calendar;->get(I)I

    move-result p0

    if-nez p0, :cond_4

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 121
    :goto_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd"

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 122
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "hh:mm"

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v5, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 123
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p0, v0, v2

    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFunctionPresent(Lcom/yftech/settings/manager/SettingsManager$Function;)Z
    .locals 2

    .line 460
    sget-object p0, Lcom/yftech/settings/manager/SettingsManager$3;->$SwitchMap$com$yftech$settings$manager$SettingsManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/SettingsManager$Function;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, p1, :cond_2

    const/4 p1, 0x6

    if-eq p0, p1, :cond_0

    return v1

    .line 464
    :cond_0
    invoke-static {}, Lcom/yftech/vehicle/sdk/HostConfig;->getLanguage()Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    move-result-object p0

    sget-object p1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->ENGLISH:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0

    .line 462
    :cond_2
    invoke-static {}, Lcom/yftech/vehicle/sdk/HostConfig;->getHvacDisplayTime()Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;

    move-result-object p0

    sget-object p1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;->NOT_PRESENT:Lcom/yftech/vehicle/internal/adapter/IHostConfig$HvacDisplayTime;

    if-eq p0, p1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    return v0
.end method

.method public getHardwareVersion()Ljava/lang/String;
    .locals 1

    const-string p0, "persist.version.hardware"

    const-string v0, ""

    .line 149
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOption(Lcom/yftech/settings/manager/SettingsManager$Function;)I
    .locals 1

    .line 208
    sget-object v0, Lcom/yftech/settings/manager/SettingsManager$3;->$SwitchMap$com$yftech$settings$manager$SettingsManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/SettingsManager$Function;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p0, -0x1

    return p0

    .line 216
    :pswitch_0
    invoke-direct {p0}, Lcom/yftech/settings/manager/SettingsManager;->getLanguageType()I

    move-result p0

    return p0

    .line 214
    :pswitch_1
    invoke-direct {p0}, Lcom/yftech/settings/manager/SettingsManager;->getIntelligentSceneSwitchType()I

    move-result p0

    return p0

    .line 212
    :pswitch_2
    invoke-direct {p0}, Lcom/yftech/settings/manager/SettingsManager;->getAcViewHoldTime()I

    move-result p0

    return p0

    .line 210
    :pswitch_3
    invoke-direct {p0}, Lcom/yftech/settings/manager/SettingsManager;->getNaviSignalMode()I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic getOption(Ljava/lang/Object;)I
    .locals 0

    .line 37
    check-cast p1, Lcom/yftech/settings/manager/SettingsManager$Function;

    invoke-virtual {p0, p1}, Lcom/yftech/settings/manager/SettingsManager;->getOption(Lcom/yftech/settings/manager/SettingsManager$Function;)I

    move-result p0

    return p0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 1

    const-string p0, "ro.boot.serialno"

    const-string v0, ""

    .line 145
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStorageSpaceSize()I
    .locals 6

    .line 153
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/settings/utils/Utils;->getTotalSpace(Ljava/io/File;)J

    move-result-wide v0

    .line 154
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/settings/utils/Utils;->getAvailableSpace(Ljava/io/File;)J

    move-result-wide v2

    const-string p0, "SettingsManager"

    .line 155
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "totalSpace:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", available:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    cmp-long p0, v0, v4

    if-lez p0, :cond_1

    cmp-long p0, v2, v4

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    sub-long v2, v0, v2

    long-to-float p0, v2

    long-to-float v0, v0

    div-float/2addr p0, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getSystemVersion()Ljava/lang/String;
    .locals 1

    const-string p0, "ro.build.display.id"

    const-string v0, ""

    .line 141
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getValue(Lcom/yftech/settings/manager/SettingsManager$Function;)Ljava/lang/Object;
    .locals 1

    .line 244
    sget-object v0, Lcom/yftech/settings/manager/SettingsManager$3;->$SwitchMap$com$yftech$settings$manager$SettingsManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/SettingsManager$Function;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p0, -0x1

    .line 254
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 252
    :pswitch_0
    invoke-direct {p0}, Lcom/yftech/settings/manager/SettingsManager;->getVehicleMode()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 250
    :pswitch_1
    invoke-direct {p0}, Lcom/yftech/settings/manager/SettingsManager;->getManufacturer()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 248
    :pswitch_2
    invoke-direct {p0}, Lcom/yftech/settings/manager/SettingsManager;->getBrightnessMaxValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 246
    :pswitch_3
    invoke-direct {p0}, Lcom/yftech/settings/manager/SettingsManager;->getScreenBrightness()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 37
    check-cast p1, Lcom/yftech/settings/manager/SettingsManager$Function;

    invoke-virtual {p0, p1}, Lcom/yftech/settings/manager/SettingsManager;->getValue(Lcom/yftech/settings/manager/SettingsManager$Function;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    .line 179
    invoke-super {p0, p1}, Lcom/yftech/settings/manager/BaseManager;->init(Landroid/content/Context;)V

    .line 180
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarMiscManager;->get()Lcom/yftech/vehicle/sdk/CarMiscManager;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/settings/manager/SettingsManager;->mCarMiscListener:Lcom/yftech/vehicle/sdk/CarMiscManager$CarMiscListener;

    invoke-virtual {p1, v0}, Lcom/yftech/vehicle/sdk/CarMiscManager;->registerReceiver(Ljava/lang/Object;)V

    .line 181
    invoke-static {}, Lcom/yftech/car/screen/CarScreenManager;->getInstance()Lcom/yftech/car/screen/CarScreenManager;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/settings/manager/SettingsManager;->mCarScreenCallback:Lcom/yftech/car/screen/CarScreenManager$CarScreenCallback;

    iget-object p0, p0, Lcom/yftech/settings/manager/SettingsManager;->mCarScreenHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, p0}, Lcom/yftech/car/screen/CarScreenManager;->registerCarScreenCallback(Lcom/yftech/car/screen/CarScreenManager$CarScreenCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public set24HourFormatState(Landroid/content/Context;Z)V
    .locals 2

    const-string p0, "SettingsManager"

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set24HourFormatState() open:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "time_12_24"

    if-eqz p2, :cond_0

    const-string v1, "24"

    goto :goto_0

    :cond_0
    const-string v1, "12"

    :goto_0
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 134
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.TIME_SET"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.extra.TIME_PREF_24_HOUR_FORMAT"

    .line 135
    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 136
    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 137
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    const/4 p2, 0x1

    invoke-static {p1, p0, p2}, Lcom/yftech/settings/utils/Utils;->setDateTime(Landroid/content/Context;Ljava/util/Calendar;Z)V

    return-void
.end method

.method public setAction(Lcom/yftech/settings/manager/SettingsManager$Function;)Z
    .locals 3

    .line 194
    sget-object v0, Lcom/yftech/settings/manager/SettingsManager$3;->$SwitchMap$com$yftech$settings$manager$SettingsManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/SettingsManager$Function;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    .line 199
    :pswitch_0
    invoke-direct {p0}, Lcom/yftech/settings/manager/SettingsManager;->closeScreenBrightness()Z

    move-result p0

    goto :goto_0

    .line 196
    :pswitch_1
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarMiscManager;->get()Lcom/yftech/vehicle/sdk/CarMiscManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarMiscManager;->setCheckFactoryModeState()Z

    move-result p0

    :goto_0
    const-string v0, "SettingsManager"

    .line 202
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

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic setAction(Ljava/lang/Object;)Z
    .locals 0

    .line 37
    check-cast p1, Lcom/yftech/settings/manager/SettingsManager$Function;

    invoke-virtual {p0, p1}, Lcom/yftech/settings/manager/SettingsManager;->setAction(Lcom/yftech/settings/manager/SettingsManager$Function;)Z

    move-result p0

    return p0
.end method

.method public setOption(Lcom/yftech/settings/manager/SettingsManager$Function;I)Z
    .locals 3

    .line 224
    sget-object v0, Lcom/yftech/settings/manager/SettingsManager$3;->$SwitchMap$com$yftech$settings$manager$SettingsManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/SettingsManager$Function;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    .line 235
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/SettingsManager;->setLanguageType(I)Z

    move-result p0

    goto :goto_0

    .line 232
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/SettingsManager;->setIntelligentSceneSwitchType(I)Z

    move-result p0

    goto :goto_0

    .line 229
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/SettingsManager;->setAcViewHoldTime(I)Z

    move-result p0

    goto :goto_0

    .line 226
    :pswitch_3
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/SettingsManager;->setNaviSignalMode(I)Z

    move-result p0

    :goto_0
    const-string v0, "SettingsManager"

    .line 238
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
    .packed-switch 0x3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic setOption(Ljava/lang/Object;I)Z
    .locals 0

    .line 37
    check-cast p1, Lcom/yftech/settings/manager/SettingsManager$Function;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/settings/manager/SettingsManager;->setOption(Lcom/yftech/settings/manager/SettingsManager$Function;I)Z

    move-result p0

    return p0
.end method

.method public setScreenBrightness(I)Z
    .locals 0

    .line 296
    invoke-static {}, Lcom/yftech/car/screen/CarScreenManager;->getInstance()Lcom/yftech/car/screen/CarScreenManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/car/screen/CarScreenManager;->setBrightness(I)Z

    move-result p0

    return p0
.end method

.method public setValue(Lcom/yftech/settings/manager/SettingsManager$Function;Ljava/lang/Object;)Z
    .locals 3

    .line 260
    sget-object v0, Lcom/yftech/settings/manager/SettingsManager$3;->$SwitchMap$com$yftech$settings$manager$SettingsManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/SettingsManager$Function;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 262
    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yftech/settings/manager/SettingsManager;->setScreenBrightness(I)Z

    move-result p0

    :goto_0
    const-string v0, "SettingsManager"

    .line 265
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

    .line 37
    check-cast p1, Lcom/yftech/settings/manager/SettingsManager$Function;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/settings/manager/SettingsManager;->setValue(Lcom/yftech/settings/manager/SettingsManager$Function;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
