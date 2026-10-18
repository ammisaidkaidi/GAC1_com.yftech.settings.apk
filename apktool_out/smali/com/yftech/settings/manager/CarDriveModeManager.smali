.class public Lcom/yftech/settings/manager/CarDriveModeManager;
.super Lcom/yftech/settings/manager/BaseManager;
.source "CarDriveModeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/settings/manager/CarDriveModeManager$Function;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yftech/settings/manager/BaseManager<",
        "Lcom/yftech/settings/manager/CarDriveModeManager$Function;",
        ">;"
    }
.end annotation


# static fields
.field private static final ESP_STYLE_OFF:I = 0x0

.field private static final ESP_STYLE_SPORT:I = 0x1

.field private static final ESP_STYLE_TOP_SPEED:I = 0x2

.field private static final TAG:Ljava/lang/String; = "CarDriveModeManager"

.field private static sCarDriveModeManager:Lcom/yftech/settings/manager/CarDriveModeManager;


# instance fields
.field private AC_COMFORT_CURVE_MODE:[Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;

.field private DRIVE_SYSTEM_MODE:[Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;

.field private EMS_ENGINE_WAVE:[Z

.field private ENERGY_RECOVERY_LEVEL_TYPE:[I

.field private EPS_STYLE:[Lcom/yftech/vehicle/internal/adapter/ICarDrive$EPSStyle;

.field private SHADOW_DRIVER_TYPE:[I

.field private SUSPENSION_MODE_TYPE:[I

.field private TCU_DRIVE_MODE:[Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

.field private drivingModeTrackDialDialog:Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;

.field private mAcComfortCurveModeOption:I

.field private mCarDriveListener:Lcom/yftech/vehicle/sdk/CarDriveManager$CarDriveListener;

.field private mContext:Landroid/content/Context;

.field private mDriveModeValue:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

.field private mDriveSystemModeOption:I

.field private mEmsEngineWaveEnable:Z

.field private mEnergyRecoveryLevelOption:I

.field private mEpsStyleEnable:Z

.field private mEpsStyleOption:I

.field private mEspStyleOption:I

.field private mRememberDrivingModeEnabled:Z

.field private mShadowDriverOption:I

.field private mSuspensionModeOption:I

.field private mTcuDriveModeOption:I

.field private mThrottleSensitivityValue:I

.field private final showTrackDialDialogRunnable:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>()V
    .locals 9

    .line 223
    invoke-direct {p0}, Lcom/yftech/settings/manager/BaseManager;-><init>()V

    const/4 v0, 0x3

    .line 44
    new-array v1, v0, [Lcom/yftech/vehicle/internal/adapter/ICarDrive$EPSStyle;

    sget-object v2, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EPSStyle;->LIGHT:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EPSStyle;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EPSStyle;->COMFORT:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EPSStyle;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EPSStyle;->SPORT:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EPSStyle;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    iput-object v1, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->EPS_STYLE:[Lcom/yftech/vehicle/internal/adapter/ICarDrive$EPSStyle;

    const/16 v1, 0x9

    .line 45
    new-array v1, v1, [Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    sget-object v2, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->NORMAL:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    aput-object v2, v1, v3

    sget-object v2, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->SPORT:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    aput-object v2, v1, v4

    sget-object v2, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->UPSLOPE_ONE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    aput-object v2, v1, v5

    sget-object v2, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->HOT_ONE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    aput-object v2, v1, v0

    sget-object v2, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->UPSLOPE_TWO:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    const/4 v6, 0x4

    aput-object v2, v1, v6

    sget-object v2, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->HOT_TWO:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    const/4 v7, 0x5

    aput-object v2, v1, v7

    sget-object v2, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->CRUISE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    const/4 v8, 0x6

    aput-object v2, v1, v8

    sget-object v2, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->ECO:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    const/4 v8, 0x7

    aput-object v2, v1, v8

    sget-object v2, Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;->SPORT_PLUS:Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    const/16 v8, 0x8

    aput-object v2, v1, v8

    iput-object v1, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->TCU_DRIVE_MODE:[Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    .line 49
    new-array v1, v6, [Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;

    sget-object v2, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;->NORMAL:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;

    aput-object v2, v1, v3

    sget-object v2, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;->ECO:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;

    aput-object v2, v1, v4

    sget-object v2, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;->SPORT:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;

    aput-object v2, v1, v5

    sget-object v2, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;->SPORT_PLUS:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->DRIVE_SYSTEM_MODE:[Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;

    .line 54
    new-array v1, v5, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->SUSPENSION_MODE_TYPE:[I

    .line 55
    new-array v1, v7, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->SHADOW_DRIVER_TYPE:[I

    .line 56
    new-array v1, v5, [Z

    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->EMS_ENGINE_WAVE:[Z

    .line 57
    new-array v1, v0, [Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;

    sget-object v2, Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;->SOFT:Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;

    aput-object v2, v1, v3

    sget-object v2, Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;->NORMAL:Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;

    aput-object v2, v1, v4

    sget-object v2, Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;->FAST:Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;

    aput-object v2, v1, v5

    iput-object v1, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->AC_COMFORT_CURVE_MODE:[Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;

    .line 58
    new-array v1, v0, [I

    fill-array-data v1, :array_3

    iput-object v1, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->ENERGY_RECOVERY_LEVEL_TYPE:[I

    .line 60
    iput v3, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->mEpsStyleOption:I

    .line 61
    iput-boolean v4, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->mEpsStyleEnable:Z

    .line 62
    iput v3, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->mSuspensionModeOption:I

    .line 63
    iput v3, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->mShadowDriverOption:I

    .line 64
    iput v3, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->mThrottleSensitivityValue:I

    .line 66
    iput-boolean v3, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->mEmsEngineWaveEnable:Z

    .line 67
    iput v3, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->mAcComfortCurveModeOption:I

    .line 68
    iput v0, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->mEnergyRecoveryLevelOption:I

    .line 69
    iput v3, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->mTcuDriveModeOption:I

    .line 70
    iput v4, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->mDriveSystemModeOption:I

    .line 71
    sget-object v0, Lcom/yftech/settings/CommonConstant;->DEFAULT_DRIVE_MODE_VALUE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    iput-object v0, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->mDriveModeValue:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    .line 72
    iput-boolean v3, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->mRememberDrivingModeEnabled:Z

    .line 73
    iput v3, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->mEspStyleOption:I

    .line 75
    new-instance v0, Lcom/yftech/settings/manager/CarDriveModeManager$1;

    invoke-direct {v0, p0}, Lcom/yftech/settings/manager/CarDriveModeManager$1;-><init>(Lcom/yftech/settings/manager/CarDriveModeManager;)V

    iput-object v0, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->mCarDriveListener:Lcom/yftech/vehicle/sdk/CarDriveManager$CarDriveListener;

    .line 584
    new-instance v0, Lcom/yftech/settings/manager/CarDriveModeManager$2;

    invoke-direct {v0, p0}, Lcom/yftech/settings/manager/CarDriveModeManager$2;-><init>(Lcom/yftech/settings/manager/CarDriveModeManager;)V

    iput-object v0, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->showTrackDialDialogRunnable:Ljava/lang/Runnable;

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
    .end array-data

    :array_2
    .array-data 1
        0x0t
        0x1t
    .end array-data

    nop

    :array_3
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data
.end method

.method static synthetic access$000(Lcom/yftech/settings/manager/CarDriveModeManager;)Ljava/lang/Runnable;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->showTrackDialDialogRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$100(Lcom/yftech/settings/manager/CarDriveModeManager;)Z
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarDriveModeManager;->getRememberDrivingModeEnabled()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/yftech/settings/manager/CarDriveModeManager;)Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->drivingModeTrackDialDialog:Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/yftech/settings/manager/CarDriveModeManager;Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;)Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->drivingModeTrackDialDialog:Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/yftech/settings/manager/CarDriveModeManager;)Landroid/content/Context;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yftech/settings/manager/CarDriveModeManager;Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;)Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/yftech/settings/manager/CarDriveModeManager;->getValidDriveModeValue(Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;)Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/yftech/settings/manager/CarDriveModeManager;Lcom/yftech/vehicle/internal/adapter/ICarDrive$EPSStyle;)I
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/yftech/settings/manager/CarDriveModeManager;->getValidEpsStyleOption(Lcom/yftech/vehicle/internal/adapter/ICarDrive$EPSStyle;)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/yftech/settings/manager/CarDriveModeManager;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->mEpsStyleEnable:Z

    return p0
.end method

.method static synthetic access$402(Lcom/yftech/settings/manager/CarDriveModeManager;Z)Z
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->mEpsStyleEnable:Z

    return p1
.end method

.method static synthetic access$500(Lcom/yftech/settings/manager/CarDriveModeManager;Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;Lcom/yftech/vehicle/internal/adapter/ICarDrive$VdcOffState;)I
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/manager/CarDriveModeManager;->getValidEspStyleOption(Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;Lcom/yftech/vehicle/internal/adapter/ICarDrive$VdcOffState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/yftech/settings/manager/CarDriveModeManager;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->mEmsEngineWaveEnable:Z

    return p0
.end method

.method static synthetic access$602(Lcom/yftech/settings/manager/CarDriveModeManager;Z)Z
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->mEmsEngineWaveEnable:Z

    return p1
.end method

.method static synthetic access$700(Lcom/yftech/settings/manager/CarDriveModeManager;Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;)Z
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/yftech/settings/manager/CarDriveModeManager;->getValidRememberDrivingModeEnabled(Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/yftech/settings/manager/CarDriveModeManager;Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;)I
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/yftech/settings/manager/CarDriveModeManager;->getValidTcuDriveModeOption(Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;)I

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/yftech/settings/manager/CarDriveModeManager;Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;)I
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/yftech/settings/manager/CarDriveModeManager;->getValidDriveSystemModeOption(Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;)I

    move-result p0

    return p0
.end method

.method private getAcComfortCurveMode()I
    .locals 1

    .line 523
    invoke-static {}, Lcom/yftech/vehicle/sdk/AirConditionManager;->get()Lcom/yftech/vehicle/sdk/AirConditionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/AirConditionManager;->getComfortCurveMode()Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;

    move-result-object v0

    .line 524
    invoke-direct {p0, v0}, Lcom/yftech/settings/manager/CarDriveModeManager;->getValidAcComfortCurveModeOption(Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;)I

    move-result p0

    return p0
.end method

.method private getDriveMode()Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;
    .locals 1

    .line 381
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDriveManager;->get()Lcom/yftech/vehicle/sdk/CarDriveManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarDriveManager;->getDriveMode()Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    move-result-object v0

    .line 382
    invoke-direct {p0, v0}, Lcom/yftech/settings/manager/CarDriveModeManager;->getValidDriveModeValue(Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;)Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    move-result-object p0

    return-object p0
.end method

.method private getDriveSystemMode()I
    .locals 1

    .line 570
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDriveManager;->get()Lcom/yftech/vehicle/sdk/CarDriveManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarDriveManager;->getDriveSystemMode()Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;

    move-result-object v0

    .line 571
    invoke-direct {p0, v0}, Lcom/yftech/settings/manager/CarDriveModeManager;->getValidDriveSystemModeOption(Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;)I

    move-result p0

    return p0
.end method

.method private getEMSEngineWave()Z
    .locals 4

    .line 506
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDriveManager;->get()Lcom/yftech/vehicle/sdk/CarDriveManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarDriveManager;->getEMSEngineWaveSwitchState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchState;

    move-result-object v0

    .line 507
    iget-boolean v1, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->mEmsEngineWaveEnable:Z

    invoke-virtual {p0, v0, v1}, Lcom/yftech/settings/manager/CarDriveModeManager;->getValidSwitchEnable(Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchState;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->mEmsEngineWaveEnable:Z

    const-string v1, "CarDriveModeManager"

    .line 508
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEMSEngineWave state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " enable:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->mEmsEngineWaveEnable:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    iget-boolean p0, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->mEmsEngineWaveEnable:Z

    return p0
.end method

.method private getEPSEnableState()Z
    .locals 4

    .line 392
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDriveManager;->get()Lcom/yftech/vehicle/sdk/CarDriveManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarDriveManager;->getAssistParaSwitchReqState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object v0

    .line 394
    sget-object v1, Lcom/yftech/settings/manager/CarDriveModeManager$3;->$SwitchMap$com$yftech$vehicle$internal$adapter$IBaseApi$EnableState:[I

    invoke-virtual {v0}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x1

    .line 399
    iput-boolean v1, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->mEpsStyleEnable:Z

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x0

    .line 396
    iput-boolean v1, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->mEpsStyleEnable:Z

    :goto_0
    const-string v1, "CarDriveModeManager"

    .line 403
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEPSEnableState() enableState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " mEpsStyleEnable:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->mEpsStyleEnable:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iget-boolean p0, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->mEpsStyleEnable:Z

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getEPSStyle()I
    .locals 1

    .line 409
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDriveManager;->get()Lcom/yftech/vehicle/sdk/CarDriveManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarDriveManager;->getEPSStyle()Lcom/yftech/vehicle/internal/adapter/ICarDrive$EPSStyle;

    move-result-object v0

    .line 410
    invoke-direct {p0, v0}, Lcom/yftech/settings/manager/CarDriveModeManager;->getValidEpsStyleOption(Lcom/yftech/vehicle/internal/adapter/ICarDrive$EPSStyle;)I

    move-result p0

    return p0
.end method

.method private getEnergyRecoveryLevel()I
    .locals 1

    const/4 v0, 0x0

    .line 539
    invoke-direct {p0, v0}, Lcom/yftech/settings/manager/CarDriveModeManager;->getValidEnergyRecoveryLevelOption(I)I

    move-result p0

    return p0
.end method

.method private getEspStyle()I
    .locals 2

    .line 576
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDriveManager;->get()Lcom/yftech/vehicle/sdk/CarDriveManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarDriveManager;->getEspStyle()Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;

    move-result-object v0

    .line 577
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDriveManager;->get()Lcom/yftech/vehicle/sdk/CarDriveManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/vehicle/sdk/CarDriveManager;->getBcsVdcOffState()Lcom/yftech/vehicle/internal/adapter/ICarDrive$VdcOffState;

    move-result-object v1

    .line 578
    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/manager/CarDriveModeManager;->getValidEspStyleOption(Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;Lcom/yftech/vehicle/internal/adapter/ICarDrive$VdcOffState;)I

    move-result p0

    return p0
.end method

.method public static declared-synchronized getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;
    .locals 2

    const-class v0, Lcom/yftech/settings/manager/CarDriveModeManager;

    monitor-enter v0

    .line 232
    :try_start_0
    sget-object v1, Lcom/yftech/settings/manager/CarDriveModeManager;->sCarDriveModeManager:Lcom/yftech/settings/manager/CarDriveModeManager;

    if-nez v1, :cond_0

    .line 233
    new-instance v1, Lcom/yftech/settings/manager/CarDriveModeManager;

    invoke-direct {v1}, Lcom/yftech/settings/manager/CarDriveModeManager;-><init>()V

    sput-object v1, Lcom/yftech/settings/manager/CarDriveModeManager;->sCarDriveModeManager:Lcom/yftech/settings/manager/CarDriveModeManager;

    .line 235
    :cond_0
    sget-object v1, Lcom/yftech/settings/manager/CarDriveModeManager;->sCarDriveModeManager:Lcom/yftech/settings/manager/CarDriveModeManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 231
    monitor-exit v0

    throw v1
.end method

.method private getRememberDrivingModeEnabled()Z
    .locals 1

    .line 553
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDriveManager;->get()Lcom/yftech/vehicle/sdk/CarDriveManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarDriveManager;->getMemoryDriveMode()Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;

    move-result-object v0

    .line 554
    invoke-direct {p0, v0}, Lcom/yftech/settings/manager/CarDriveModeManager;->getValidRememberDrivingModeEnabled(Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;)Z

    move-result p0

    return p0
.end method

.method private getShadowDriver()I
    .locals 1

    const/4 v0, 0x0

    .line 440
    invoke-direct {p0, v0}, Lcom/yftech/settings/manager/CarDriveModeManager;->getValidShadowDriverOption(I)I

    move-result p0

    return p0
.end method

.method private getSuspensionMode()I
    .locals 1

    const/4 v0, 0x0

    .line 425
    invoke-direct {p0, v0}, Lcom/yftech/settings/manager/CarDriveModeManager;->getValidSuspensionModeOption(I)I

    move-result p0

    return p0
.end method

.method private getTcuDriveMode()I
    .locals 1

    .line 564
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDriveManager;->get()Lcom/yftech/vehicle/sdk/CarDriveManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarDriveManager;->getTcuDriveMode()Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    move-result-object v0

    .line 565
    invoke-direct {p0, v0}, Lcom/yftech/settings/manager/CarDriveModeManager;->getValidTcuDriveModeOption(Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;)I

    move-result p0

    return p0
.end method

.method private getThrottleSensitivity()I
    .locals 1

    const/4 v0, 0x0

    .line 454
    invoke-direct {p0, v0}, Lcom/yftech/settings/manager/CarDriveModeManager;->getValidThrottleSensitivityValue(I)I

    move-result p0

    return p0
.end method

.method private getValidAcComfortCurveModeOption(Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;)I
    .locals 3

    const/4 v0, 0x0

    .line 653
    :goto_0
    iget-object v1, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->AC_COMFORT_CURVE_MODE:[Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 654
    iget-object v1, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->AC_COMFORT_CURVE_MODE:[Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 655
    iput v0, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->mAcComfortCurveModeOption:I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-string v0, "CarDriveModeManager"

    .line 659
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getValidAcComfortCurveModeOption mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", index:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->mAcComfortCurveModeOption:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    iget p0, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->mAcComfortCurveModeOption:I

    return p0
.end method

.method private getValidDriveModeValue(Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;)Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;
    .locals 3

    .line 676
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isSportPlusPresent()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->SPORT_PLUS_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    if-ne p1, v0, :cond_0

    .line 677
    iget-object p0, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->mDriveModeValue:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    return-object p0

    .line 679
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->ECO_PRO_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->COMFORT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->SPORT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->SPORT_PLUS_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    if-ne p1, v0, :cond_2

    .line 683
    :cond_1
    iput-object p1, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->mDriveModeValue:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    :cond_2
    const-string v0, "CarDriveModeManager"

    .line 685
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getValidDriveModeValue driveMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", mDriveModeValue:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->mDriveModeValue:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    iget-object p0, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->mDriveModeValue:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    return-object p0
.end method

.method private getValidDriveSystemModeOption(Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;)I
    .locals 3

    const/4 v0, 0x0

    .line 710
    :goto_0
    iget-object v1, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->DRIVE_SYSTEM_MODE:[Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 711
    iget-object v1, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->DRIVE_SYSTEM_MODE:[Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;

    aget-object v1, v1, v0

    if-ne p1, v1, :cond_0

    .line 712
    iput v0, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->mDriveSystemModeOption:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "CarDriveModeManager"

    .line 715
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getValidDriveSystemModeOption driveSystemMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " ,mDriveSystemModeOption:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->mDriveSystemModeOption:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    iget p0, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->mDriveSystemModeOption:I

    return p0
.end method

.method private getValidEnergyRecoveryLevelOption(I)I
    .locals 3

    const/4 v0, 0x0

    .line 664
    :goto_0
    iget-object v1, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->ENERGY_RECOVERY_LEVEL_TYPE:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 665
    iget-object v1, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->ENERGY_RECOVERY_LEVEL_TYPE:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 666
    iput v0, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->mEnergyRecoveryLevelOption:I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-string v0, "CarDriveModeManager"

    .line 670
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getValidEnergyRecoveryLevelOption type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", index:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->mEnergyRecoveryLevelOption:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    iget p0, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->mEnergyRecoveryLevelOption:I

    return p0
.end method

.method private getValidEpsStyleOption(Lcom/yftech/vehicle/internal/adapter/ICarDrive$EPSStyle;)I
    .locals 3

    const/4 v0, 0x0

    .line 603
    :goto_0
    iget-object v1, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->EPS_STYLE:[Lcom/yftech/vehicle/internal/adapter/ICarDrive$EPSStyle;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 604
    iget-object v1, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->EPS_STYLE:[Lcom/yftech/vehicle/internal/adapter/ICarDrive$EPSStyle;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 605
    iput v0, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->mEpsStyleOption:I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-string v0, "CarDriveModeManager"

    .line 609
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getValidEpsStyleOption style:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", index:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->mEpsStyleOption:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    iget p0, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->mEpsStyleOption:I

    return p0
.end method

.method private getValidEspStyleOption(Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;Lcom/yftech/vehicle/internal/adapter/ICarDrive$VdcOffState;)I
    .locals 3

    .line 720
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$VdcOffState;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarDrive$VdcOffState;

    if-ne p2, v0, :cond_0

    const/4 v0, 0x0

    .line 721
    iput v0, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->mEspStyleOption:I

    goto :goto_0

    .line 722
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$VdcOffState;->ON:Lcom/yftech/vehicle/internal/adapter/ICarDrive$VdcOffState;

    if-ne p2, v0, :cond_2

    .line 723
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;->NORMAL:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    .line 724
    iput v0, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->mEspStyleOption:I

    goto :goto_0

    .line 725
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;->SPORT:Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;

    if-ne p1, v0, :cond_2

    const/4 v0, 0x2

    .line 726
    iput v0, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->mEspStyleOption:I

    :cond_2
    :goto_0
    const-string v0, "CarDriveModeManager"

    .line 729
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getValidEspStyleOption style: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " state:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " mEspStyleOption:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->mEspStyleOption:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    iget p0, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->mEspStyleOption:I

    return p0
.end method

.method private getValidRememberDrivingModeEnabled(Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;)Z
    .locals 3

    .line 690
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;->MEMORY:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;->NOT_MEMORY:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;

    if-ne p1, v0, :cond_2

    .line 692
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;->MEMORY:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 693
    :goto_0
    iput-boolean v0, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->mRememberDrivingModeEnabled:Z

    :cond_2
    const-string v0, "CarDriveModeManager"

    .line 695
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getValidRememberDrivingModeEnabled mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", mRememberDrivingModeEnabled:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->mRememberDrivingModeEnabled:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    iget-boolean p0, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->mRememberDrivingModeEnabled:Z

    return p0
.end method

.method private getValidShadowDriverOption(I)I
    .locals 3

    const/4 v0, 0x0

    .line 625
    :goto_0
    iget-object v1, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->SHADOW_DRIVER_TYPE:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 626
    iget-object v1, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->SHADOW_DRIVER_TYPE:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 627
    iput v0, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->mShadowDriverOption:I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-string v0, "CarDriveModeManager"

    .line 631
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getValidShadowDriverOption type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", index:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->mShadowDriverOption:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    iget p0, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->mShadowDriverOption:I

    return p0
.end method

.method private getValidSuspensionModeOption(I)I
    .locals 3

    const/4 v0, 0x0

    .line 614
    :goto_0
    iget-object v1, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->SUSPENSION_MODE_TYPE:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 615
    iget-object v1, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->SUSPENSION_MODE_TYPE:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 616
    iput v0, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->mSuspensionModeOption:I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-string v0, "CarDriveModeManager"

    .line 620
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getValidSuspensionModeOption type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", index:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->mSuspensionModeOption:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    iget p0, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->mSuspensionModeOption:I

    return p0
.end method

.method private getValidTcuDriveModeOption(Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;)I
    .locals 3

    const/4 v0, 0x0

    .line 700
    :goto_0
    iget-object v1, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->TCU_DRIVE_MODE:[Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 701
    iget-object v1, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->TCU_DRIVE_MODE:[Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;

    aget-object v1, v1, v0

    if-ne p1, v1, :cond_0

    .line 702
    iput v0, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->mTcuDriveModeOption:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "CarDriveModeManager"

    .line 705
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getValidTcuDriveModeOption tcuDriveMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " ,mTcuDriveModeOption:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->mTcuDriveModeOption:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    iget p0, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->mTcuDriveModeOption:I

    return p0
.end method

.method private getValidThrottleSensitivityValue(I)I
    .locals 3

    .line 636
    iput p1, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->mThrottleSensitivityValue:I

    const-string v0, "CarDriveModeManager"

    .line 637
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getValidThrottleSensitivityValue value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", index:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->mThrottleSensitivityValue:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    iget p0, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->mThrottleSensitivityValue:I

    return p0
.end method

.method private reset()Z
    .locals 8

    .line 465
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "reset()"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 469
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarDriveModeManager;->getDriveMode()Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    move-result-object v1

    .line 470
    sget-object v2, Lcom/yftech/settings/manager/CarDriveModeManager$3;->$SwitchMap$com$yftech$vehicle$internal$adapter$ICarDrive$DriveMode:[I

    invoke-virtual {v1}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    move v1, v2

    move v6, v1

    move v5, v4

    goto :goto_1

    :pswitch_0
    const/4 v1, 0x2

    move v5, v3

    goto :goto_0

    :pswitch_1
    move v6, v3

    move v1, v4

    move v5, v1

    goto :goto_1

    :pswitch_2
    move v1, v3

    move v5, v4

    :goto_0
    move v6, v5

    :goto_1
    if-eq v1, v2, :cond_0

    .line 487
    sget-object v7, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->EPS_STYLE_OPTION:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {p0, v7}, Lcom/yftech/settings/manager/CarDriveModeManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 488
    invoke-direct {p0, v1}, Lcom/yftech/settings/manager/CarDriveModeManager;->setEPSStyle(I)Z

    move-result v1

    const-string v7, " resetEPSStyle:"

    .line 489
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_0
    move v1, v4

    .line 491
    :goto_2
    sget-object v7, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->EMS_ENGINE_WAVE_ENABLE:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {p0, v7}, Lcom/yftech/settings/manager/CarDriveModeManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 492
    invoke-direct {p0, v5}, Lcom/yftech/settings/manager/CarDriveModeManager;->setEMSEngineWave(Z)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_3

    :cond_1
    move v1, v4

    :goto_3
    const-string v5, " resetEMSEngineWave:"

    .line 493
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    :cond_2
    if-eq v6, v2, :cond_4

    .line 495
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v2

    sget-object v5, Lcom/yftech/settings/manager/CarPartsManager$Function;->AC_COMFORT_CURVE_MODE_OPTION:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v2, v5}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 496
    invoke-direct {p0, v6}, Lcom/yftech/settings/manager/CarDriveModeManager;->setAcComfortCurveMode(I)Z

    move-result p0

    if-eqz p0, :cond_3

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_4

    :cond_3
    move v1, v4

    :goto_4
    const-string p0, " resetComfortCurve:"

    .line 497
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    :cond_4
    const-string p0, "CarDriveModeManager"

    .line 499
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setAcComfortCurveMode(I)Z
    .locals 1

    if-ltz p1, :cond_0

    .line 530
    iget-object v0, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->AC_COMFORT_CURVE_MODE:[Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 531
    invoke-static {}, Lcom/yftech/vehicle/sdk/AirConditionManager;->get()Lcom/yftech/vehicle/sdk/AirConditionManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->AC_COMFORT_CURVE_MODE:[Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;

    aget-object p0, p0, p1

    invoke-virtual {v0, p0}, Lcom/yftech/vehicle/sdk/AirConditionManager;->setComfortCurveMode(Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setDriveMode(Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;)Z
    .locals 0

    .line 387
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDriveManager;->get()Lcom/yftech/vehicle/sdk/CarDriveManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarDriveManager;->setDriveMode(Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;)Z

    move-result p0

    return p0
.end method

.method private setEMSEngineWave(Z)Z
    .locals 0

    .line 518
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDriveManager;->get()Lcom/yftech/vehicle/sdk/CarDriveManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarDriveManager;->setEMSEngineWaveEnabled(Z)Z

    move-result p0

    return p0
.end method

.method private setEPSStyle(I)Z
    .locals 1

    if-ltz p1, :cond_0

    .line 416
    iget-object v0, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->EPS_STYLE:[Lcom/yftech/vehicle/internal/adapter/ICarDrive$EPSStyle;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 417
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDriveManager;->get()Lcom/yftech/vehicle/sdk/CarDriveManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->EPS_STYLE:[Lcom/yftech/vehicle/internal/adapter/ICarDrive$EPSStyle;

    aget-object p0, p0, p1

    invoke-virtual {v0, p0}, Lcom/yftech/vehicle/sdk/CarDriveManager;->setEPSStyle(Lcom/yftech/vehicle/internal/adapter/ICarDrive$EPSStyle;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setEnergyRecoveryLevel(I)Z
    .locals 0

    if-ltz p1, :cond_0

    .line 545
    iget-object p0, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->ENERGY_RECOVERY_LEVEL_TYPE:[I

    array-length p0, p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private setRememberDrivingModeEnabled(Z)Z
    .locals 0

    .line 559
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDriveManager;->get()Lcom/yftech/vehicle/sdk/CarDriveManager;

    move-result-object p0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;->MEMORY:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;->NOT_MEMORY:Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarDriveManager;->setMemoryDriveMode(Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;)Z

    move-result p0

    return p0
.end method

.method private setShadowDriver(I)Z
    .locals 0

    if-ltz p1, :cond_0

    .line 446
    iget-object p0, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->SHADOW_DRIVER_TYPE:[I

    array-length p0, p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private setSuspensionMode(I)Z
    .locals 0

    if-ltz p1, :cond_0

    .line 431
    iget-object p0, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->SUSPENSION_MODE_TYPE:[I

    array-length p0, p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private setThrottleSensitivity(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private showTrackDialog()Z
    .locals 3

    .line 597
    iget-object v0, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->showTrackDialDialogRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public deInit()V
    .locals 1

    .line 253
    invoke-super {p0}, Lcom/yftech/settings/manager/BaseManager;->deInit()V

    .line 254
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDriveManager;->get()Lcom/yftech/vehicle/sdk/CarDriveManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->mCarDriveListener:Lcom/yftech/vehicle/sdk/CarDriveManager$CarDriveListener;

    invoke-virtual {v0, p0}, Lcom/yftech/vehicle/sdk/CarDriveManager;->unregisterListener(Lcom/yftech/vehicle/sdk/CarDriveManager$CarDriveListener;)V

    return-void
.end method

.method public getEnabled(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)Z
    .locals 1

    .line 277
    sget-object v0, Lcom/yftech/settings/manager/CarDriveModeManager$3;->$SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    .line 283
    :pswitch_0
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarDriveModeManager;->getEPSEnableState()Z

    move-result p0

    return p0

    .line 281
    :pswitch_1
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarDriveModeManager;->getEMSEngineWave()Z

    move-result p0

    return p0

    .line 279
    :pswitch_2
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarDriveModeManager;->getRememberDrivingModeEnabled()Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic getEnabled(Ljava/lang/Object;)Z
    .locals 0

    .line 18
    check-cast p1, Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {p0, p1}, Lcom/yftech/settings/manager/CarDriveModeManager;->getEnabled(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)Z

    move-result p0

    return p0
.end method

.method public getFunctionPresent(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)Z
    .locals 1

    .line 734
    sget-object p0, Lcom/yftech/settings/manager/CarDriveModeManager$3;->$SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    return p1

    :pswitch_1
    return v0

    .line 745
    :pswitch_2
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isThrottleSensitivityPresent()Z

    move-result p0

    return p0

    :pswitch_3
    return v0

    .line 749
    :pswitch_4
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isEnergyRecoveryModePresent()Z

    move-result p0

    return p0

    :pswitch_5
    return p1

    .line 741
    :pswitch_6
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isSuspensionDampingPresent()Z

    move-result p0

    return p0

    .line 739
    :pswitch_7
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isSteeringWheelSteeringHandForcePresent()Z

    move-result p0

    return p0

    .line 747
    :pswitch_8
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isEngineWaveSwitchPresent()Z

    move-result p0

    return p0

    .line 753
    :pswitch_9
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isDriveModeMemorySwitchPresent()Z

    move-result p0

    return p0

    :pswitch_a
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getOption(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)I
    .locals 1

    .line 306
    sget-object v0, Lcom/yftech/settings/manager/CarDriveModeManager$3;->$SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p0, -0x1

    return p0

    .line 322
    :pswitch_0
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarDriveModeManager;->getEspStyle()I

    move-result p0

    return p0

    .line 320
    :pswitch_1
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarDriveModeManager;->getDriveSystemMode()I

    move-result p0

    return p0

    .line 318
    :pswitch_2
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarDriveModeManager;->getTcuDriveMode()I

    move-result p0

    return p0

    .line 316
    :pswitch_3
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarDriveModeManager;->getEnergyRecoveryLevel()I

    move-result p0

    return p0

    .line 312
    :pswitch_4
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarDriveModeManager;->getShadowDriver()I

    move-result p0

    return p0

    .line 310
    :pswitch_5
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarDriveModeManager;->getSuspensionMode()I

    move-result p0

    return p0

    .line 308
    :pswitch_6
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarDriveModeManager;->getEPSStyle()I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_6
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

    .line 18
    check-cast p1, Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {p0, p1}, Lcom/yftech/settings/manager/CarDriveModeManager;->getOption(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)I

    move-result p0

    return p0
.end method

.method public getValue(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)Ljava/lang/Object;
    .locals 1

    .line 354
    sget-object v0, Lcom/yftech/settings/manager/CarDriveModeManager$3;->$SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p0, -0x1

    .line 360
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 358
    :pswitch_0
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarDriveModeManager;->getDriveMode()Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    move-result-object p0

    return-object p0

    .line 356
    :pswitch_1
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarDriveModeManager;->getThrottleSensitivity()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 18
    check-cast p1, Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {p0, p1}, Lcom/yftech/settings/manager/CarDriveModeManager;->getValue(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    .line 240
    invoke-super {p0, p1}, Lcom/yftech/settings/manager/BaseManager;->init(Landroid/content/Context;)V

    .line 247
    iput-object p1, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->mContext:Landroid/content/Context;

    .line 248
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDriveManager;->get()Lcom/yftech/vehicle/sdk/CarDriveManager;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->mCarDriveListener:Lcom/yftech/vehicle/sdk/CarDriveManager$CarDriveListener;

    invoke-virtual {p1, p0}, Lcom/yftech/vehicle/sdk/CarDriveManager;->registerListener(Lcom/yftech/vehicle/sdk/CarDriveManager$CarDriveListener;)V

    return-void
.end method

.method public remove()V
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/yftech/settings/manager/CarDriveModeManager;->showTrackDialDialogRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setAction(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)Z
    .locals 3

    .line 260
    sget-object v0, Lcom/yftech/settings/manager/CarDriveModeManager$3;->$SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    .line 268
    :pswitch_0
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarDriveModeManager;->showTrackDialog()Z

    move-result p0

    goto :goto_0

    .line 265
    :pswitch_1
    invoke-virtual {p0}, Lcom/yftech/settings/manager/CarDriveModeManager;->stopTimeout()Z

    move-result p0

    goto :goto_0

    .line 262
    :pswitch_2
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarDriveModeManager;->reset()Z

    move-result p0

    :goto_0
    const-string v0, "CarDriveModeManager"

    .line 271
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

    .line 18
    check-cast p1, Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {p0, p1}, Lcom/yftech/settings/manager/CarDriveModeManager;->setAction(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)Z

    move-result p0

    return p0
.end method

.method public setEnabled(Lcom/yftech/settings/manager/CarDriveModeManager$Function;Z)Z
    .locals 3

    .line 290
    invoke-virtual {p0}, Lcom/yftech/settings/manager/CarDriveModeManager;->startTimeout()V

    .line 292
    sget-object v0, Lcom/yftech/settings/manager/CarDriveModeManager$3;->$SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    .line 297
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/CarDriveModeManager;->setEMSEngineWave(Z)Z

    move-result p0

    goto :goto_0

    .line 294
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/CarDriveModeManager;->setRememberDrivingModeEnabled(Z)Z

    move-result p0

    :goto_0
    const-string v0, "CarDriveModeManager"

    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnabled function:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", enable:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", result:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic setEnabled(Ljava/lang/Object;Z)Z
    .locals 0

    .line 18
    check-cast p1, Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/settings/manager/CarDriveModeManager;->setEnabled(Lcom/yftech/settings/manager/CarDriveModeManager$Function;Z)Z

    move-result p0

    return p0
.end method

.method public setOption(Lcom/yftech/settings/manager/CarDriveModeManager$Function;I)Z
    .locals 3

    .line 329
    invoke-virtual {p0}, Lcom/yftech/settings/manager/CarDriveModeManager;->startTimeout()V

    .line 331
    sget-object v0, Lcom/yftech/settings/manager/CarDriveModeManager$3;->$SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    .line 345
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/CarDriveModeManager;->setEnergyRecoveryLevel(I)Z

    move-result p0

    goto :goto_0

    .line 339
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/CarDriveModeManager;->setShadowDriver(I)Z

    move-result p0

    goto :goto_0

    .line 336
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/CarDriveModeManager;->setSuspensionMode(I)Z

    move-result p0

    goto :goto_0

    .line 333
    :pswitch_3
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/CarDriveModeManager;->setEPSStyle(I)Z

    move-result p0

    :goto_0
    const-string v0, "CarDriveModeManager"

    .line 348
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

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic setOption(Ljava/lang/Object;I)Z
    .locals 0

    .line 18
    check-cast p1, Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/settings/manager/CarDriveModeManager;->setOption(Lcom/yftech/settings/manager/CarDriveModeManager$Function;I)Z

    move-result p0

    return p0
.end method

.method public setValue(Lcom/yftech/settings/manager/CarDriveModeManager$Function;Ljava/lang/Object;)Z
    .locals 3

    .line 365
    invoke-virtual {p0}, Lcom/yftech/settings/manager/CarDriveModeManager;->startTimeout()V

    .line 367
    sget-object v0, Lcom/yftech/settings/manager/CarDriveModeManager$3;->$SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    .line 372
    :pswitch_0
    move-object v0, p2

    check-cast v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    invoke-direct {p0, v0}, Lcom/yftech/settings/manager/CarDriveModeManager;->setDriveMode(Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;)Z

    move-result p0

    goto :goto_0

    .line 369
    :pswitch_1
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/yftech/settings/manager/CarDriveModeManager;->setThrottleSensitivity(I)Z

    move-result p0

    :goto_0
    const-string v0, "CarDriveModeManager"

    .line 375
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

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 18
    check-cast p1, Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/settings/manager/CarDriveModeManager;->setValue(Lcom/yftech/settings/manager/CarDriveModeManager$Function;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
