.class public Lcom/yftech/settings/manager/CarPartsManager;
.super Lcom/yftech/settings/manager/BaseManager;
.source "CarPartsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/settings/manager/CarPartsManager$Function;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yftech/settings/manager/BaseManager<",
        "Lcom/yftech/settings/manager/CarPartsManager$Function;",
        ">;"
    }
.end annotation


# static fields
.field private static final REREAD_COUNT_MAX:I = 0x2

.field private static final TAG:Ljava/lang/String; = "CarPartsManager"

.field private static sCarPartsManager:Lcom/yftech/settings/manager/CarPartsManager;


# instance fields
.field private AC_COMFORT_CURVE_MODE:[Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;

.field private AC_FAN_SPEED_OF_AUTO_MODE:[Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;

.field private PARKING_AID_VOLUME_TYPE:[I

.field private PEPS_AUTO_TRUNK_OPEN:[Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;

.field private PSD_DOOR_MODE:[Z

.field private PSD_DOOR_SPEED:[Lcom/yftech/vehicle/internal/adapter/ICarDoor$PSDDoorSpeed;

.field private REMOTE_UNLOCK_MODE:[Lcom/yftech/vehicle/internal/adapter/ICarDoor$RemoteUnlockMode;

.field private STEERING_WHEEL_ASTERISK_KEY_TYPE:[I

.field private mAVASEnable:Z

.field private mAcAirCirculationModeOfAutoModeEnabled:Z

.field private mAcAirSelfDryingEnable:Z

.field private mAcComfortCurveModeOption:I

.field private mAcFanSpeedOfAutoModeOption:I

.field private mAirConditionListener:Lcom/yftech/vehicle/sdk/AirConditionManager$AirConditionListener;

.field private mAirUnlockVentilationEnable:Z

.field private mAsteriskKeyOption:I

.field private mAutoUnlockEnabled:Z

.field private mAutoWiperModeEnabled:Z

.field private mCarDoorListener:Lcom/yftech/vehicle/sdk/CarDoorManager$CarDoorListener;

.field private mCarLightListener:Lcom/yftech/vehicle/sdk/CarLightManager$CarLightListener;

.field private mCarSettingsListener:Lcom/yftech/vehicle/sdk/CarSettingsManager$CarSettingsListener;

.field private mCarWindowListener:Lcom/yftech/vehicle/sdk/CarWindowManager$CarWindowListener;

.field private mETCEnable:Z

.field private mHeadLightDelayEnable:Z

.field private mIHBCEnable:Z

.field private mIsPSDDoorSpeedLChanged:Z

.field private mIsPSDDoorSpeedRChanged:Z

.field private mLockUnlockSoundEnable:Z

.field private mOSRMAutoFoldEnable:Z

.field private mOSRMTurnDownEnable:Z

.field private mPEPSUnlockEnable:Z

.field private mPEPSWalkAwayLockEnable:Z

.field private mParkingAidVolumeOption:I

.field private mPepsAutoTrunkOpenOption:I

.field private mPsdDoorModeOption:I

.field private mPsdDoorSpeedOption:I

.field private mRemoteUnlockModeOption:I

.field private mRereadCount:I

.field private final mRereadPSDDoorSpeedTimeoutRunnable:Ljava/lang/Runnable;

.field private mSpeedAutoLockEnable:Z

.field private mStartRereadPSDDoorSpeedTimeout:Z

.field private mStartWaitPSDDoorSpeedCallbackTimeout:Z

.field private mSunroofWindowAutoCloseEnable:Z

.field private mTargetSpeedIndex:I

.field private final mWaitPSDDoorSpeedCallbackTimeoutRunnable:Ljava/lang/Runnable;

.field private mWirelessChargingEnable:Z


# direct methods
.method private constructor <init>()V
    .locals 6

    .line 461
    invoke-direct {p0}, Lcom/yftech/settings/manager/BaseManager;-><init>()V

    const/4 v0, 0x2

    .line 73
    new-array v1, v0, [Lcom/yftech/vehicle/internal/adapter/ICarDoor$RemoteUnlockMode;

    sget-object v2, Lcom/yftech/vehicle/internal/adapter/ICarDoor$RemoteUnlockMode;->ALL_DOORS:Lcom/yftech/vehicle/internal/adapter/ICarDoor$RemoteUnlockMode;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/yftech/vehicle/internal/adapter/ICarDoor$RemoteUnlockMode;->DRIVER_DOOR:Lcom/yftech/vehicle/internal/adapter/ICarDoor$RemoteUnlockMode;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iput-object v1, p0, Lcom/yftech/settings/manager/CarPartsManager;->REMOTE_UNLOCK_MODE:[Lcom/yftech/vehicle/internal/adapter/ICarDoor$RemoteUnlockMode;

    const/4 v1, 0x3

    .line 76
    new-array v2, v1, [Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;

    sget-object v5, Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;->LOW:Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;

    aput-object v5, v2, v3

    sget-object v5, Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;->NORMAL:Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;

    aput-object v5, v2, v4

    sget-object v5, Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;->HIGH:Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;

    aput-object v5, v2, v0

    iput-object v2, p0, Lcom/yftech/settings/manager/CarPartsManager;->AC_FAN_SPEED_OF_AUTO_MODE:[Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;

    .line 80
    new-array v2, v1, [Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;

    sget-object v5, Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;->SOFT:Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;

    aput-object v5, v2, v3

    sget-object v5, Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;->NORMAL:Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;

    aput-object v5, v2, v4

    sget-object v5, Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;->FAST:Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;

    aput-object v5, v2, v0

    iput-object v2, p0, Lcom/yftech/settings/manager/CarPartsManager;->AC_COMFORT_CURVE_MODE:[Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;

    .line 84
    new-array v2, v1, [Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;

    sget-object v5, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;->NOT_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;

    aput-object v5, v2, v3

    sget-object v5, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;->SATO_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;

    aput-object v5, v2, v4

    sget-object v5, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;->SATO_AND_SOUNDREMINDER_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;

    aput-object v5, v2, v0

    iput-object v2, p0, Lcom/yftech/settings/manager/CarPartsManager;->PEPS_AUTO_TRUNK_OPEN:[Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;

    .line 88
    new-array v2, v0, [Lcom/yftech/vehicle/internal/adapter/ICarDoor$PSDDoorSpeed;

    sget-object v5, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PSDDoorSpeed;->LOW_SPEED:Lcom/yftech/vehicle/internal/adapter/ICarDoor$PSDDoorSpeed;

    aput-object v5, v2, v3

    sget-object v5, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PSDDoorSpeed;->HIGH_SPEED:Lcom/yftech/vehicle/internal/adapter/ICarDoor$PSDDoorSpeed;

    aput-object v5, v2, v4

    iput-object v2, p0, Lcom/yftech/settings/manager/CarPartsManager;->PSD_DOOR_SPEED:[Lcom/yftech/vehicle/internal/adapter/ICarDoor$PSDDoorSpeed;

    .line 91
    new-array v2, v0, [Z

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/yftech/settings/manager/CarPartsManager;->PSD_DOOR_MODE:[Z

    .line 93
    new-array v1, v1, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/yftech/settings/manager/CarPartsManager;->PARKING_AID_VOLUME_TYPE:[I

    .line 98
    iput v3, p0, Lcom/yftech/settings/manager/CarPartsManager;->mRemoteUnlockModeOption:I

    .line 99
    iput v0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mAcFanSpeedOfAutoModeOption:I

    .line 100
    iput v4, p0, Lcom/yftech/settings/manager/CarPartsManager;->mAcComfortCurveModeOption:I

    .line 101
    iput v3, p0, Lcom/yftech/settings/manager/CarPartsManager;->mPepsAutoTrunkOpenOption:I

    .line 102
    iput v4, p0, Lcom/yftech/settings/manager/CarPartsManager;->mPsdDoorSpeedOption:I

    .line 103
    iput v4, p0, Lcom/yftech/settings/manager/CarPartsManager;->mPsdDoorModeOption:I

    .line 104
    iput-boolean v3, p0, Lcom/yftech/settings/manager/CarPartsManager;->mAcAirCirculationModeOfAutoModeEnabled:Z

    .line 105
    iput-boolean v4, p0, Lcom/yftech/settings/manager/CarPartsManager;->mAutoWiperModeEnabled:Z

    .line 106
    iput-boolean v4, p0, Lcom/yftech/settings/manager/CarPartsManager;->mAutoUnlockEnabled:Z

    .line 107
    iput v4, p0, Lcom/yftech/settings/manager/CarPartsManager;->mParkingAidVolumeOption:I

    .line 108
    iput v3, p0, Lcom/yftech/settings/manager/CarPartsManager;->mAsteriskKeyOption:I

    .line 110
    iput-boolean v4, p0, Lcom/yftech/settings/manager/CarPartsManager;->mIHBCEnable:Z

    .line 111
    iput-boolean v4, p0, Lcom/yftech/settings/manager/CarPartsManager;->mPEPSWalkAwayLockEnable:Z

    .line 112
    iput-boolean v4, p0, Lcom/yftech/settings/manager/CarPartsManager;->mPEPSUnlockEnable:Z

    .line 113
    iput-boolean v3, p0, Lcom/yftech/settings/manager/CarPartsManager;->mSpeedAutoLockEnable:Z

    .line 114
    iput-boolean v4, p0, Lcom/yftech/settings/manager/CarPartsManager;->mETCEnable:Z

    .line 115
    iput-boolean v3, p0, Lcom/yftech/settings/manager/CarPartsManager;->mSunroofWindowAutoCloseEnable:Z

    .line 116
    iput-boolean v4, p0, Lcom/yftech/settings/manager/CarPartsManager;->mOSRMAutoFoldEnable:Z

    .line 117
    iput-boolean v3, p0, Lcom/yftech/settings/manager/CarPartsManager;->mHeadLightDelayEnable:Z

    .line 118
    iput-boolean v4, p0, Lcom/yftech/settings/manager/CarPartsManager;->mLockUnlockSoundEnable:Z

    .line 119
    iput-boolean v4, p0, Lcom/yftech/settings/manager/CarPartsManager;->mAVASEnable:Z

    .line 120
    iput-boolean v3, p0, Lcom/yftech/settings/manager/CarPartsManager;->mAcAirSelfDryingEnable:Z

    .line 121
    iput-boolean v3, p0, Lcom/yftech/settings/manager/CarPartsManager;->mAirUnlockVentilationEnable:Z

    .line 122
    iput-boolean v3, p0, Lcom/yftech/settings/manager/CarPartsManager;->mOSRMTurnDownEnable:Z

    .line 123
    iput-boolean v4, p0, Lcom/yftech/settings/manager/CarPartsManager;->mWirelessChargingEnable:Z

    .line 125
    new-instance v0, Lcom/yftech/settings/manager/CarPartsManager$1;

    invoke-direct {v0, p0}, Lcom/yftech/settings/manager/CarPartsManager$1;-><init>(Lcom/yftech/settings/manager/CarPartsManager;)V

    iput-object v0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mCarWindowListener:Lcom/yftech/vehicle/sdk/CarWindowManager$CarWindowListener;

    .line 140
    new-instance v0, Lcom/yftech/settings/manager/CarPartsManager$2;

    invoke-direct {v0, p0}, Lcom/yftech/settings/manager/CarPartsManager$2;-><init>(Lcom/yftech/settings/manager/CarPartsManager;)V

    iput-object v0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mCarDoorListener:Lcom/yftech/vehicle/sdk/CarDoorManager$CarDoorListener;

    .line 263
    new-instance v0, Lcom/yftech/settings/manager/CarPartsManager$3;

    invoke-direct {v0, p0}, Lcom/yftech/settings/manager/CarPartsManager$3;-><init>(Lcom/yftech/settings/manager/CarPartsManager;)V

    iput-object v0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mCarLightListener:Lcom/yftech/vehicle/sdk/CarLightManager$CarLightListener;

    .line 290
    new-instance v0, Lcom/yftech/settings/manager/CarPartsManager$4;

    invoke-direct {v0, p0}, Lcom/yftech/settings/manager/CarPartsManager$4;-><init>(Lcom/yftech/settings/manager/CarPartsManager;)V

    iput-object v0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mCarSettingsListener:Lcom/yftech/vehicle/sdk/CarSettingsManager$CarSettingsListener;

    .line 397
    new-instance v0, Lcom/yftech/settings/manager/CarPartsManager$5;

    invoke-direct {v0, p0}, Lcom/yftech/settings/manager/CarPartsManager$5;-><init>(Lcom/yftech/settings/manager/CarPartsManager;)V

    iput-object v0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mAirConditionListener:Lcom/yftech/vehicle/sdk/AirConditionManager$AirConditionListener;

    .line 1484
    iput-boolean v3, p0, Lcom/yftech/settings/manager/CarPartsManager;->mIsPSDDoorSpeedLChanged:Z

    .line 1485
    iput-boolean v3, p0, Lcom/yftech/settings/manager/CarPartsManager;->mIsPSDDoorSpeedRChanged:Z

    .line 1486
    iput-boolean v3, p0, Lcom/yftech/settings/manager/CarPartsManager;->mStartWaitPSDDoorSpeedCallbackTimeout:Z

    .line 1515
    new-instance v0, Lcom/yftech/settings/manager/CarPartsManager$6;

    invoke-direct {v0, p0}, Lcom/yftech/settings/manager/CarPartsManager$6;-><init>(Lcom/yftech/settings/manager/CarPartsManager;)V

    iput-object v0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mWaitPSDDoorSpeedCallbackTimeoutRunnable:Ljava/lang/Runnable;

    .line 1526
    iput-boolean v3, p0, Lcom/yftech/settings/manager/CarPartsManager;->mStartRereadPSDDoorSpeedTimeout:Z

    .line 1544
    new-instance v0, Lcom/yftech/settings/manager/CarPartsManager$7;

    invoke-direct {v0, p0}, Lcom/yftech/settings/manager/CarPartsManager$7;-><init>(Lcom/yftech/settings/manager/CarPartsManager;)V

    iput-object v0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mRereadPSDDoorSpeedTimeoutRunnable:Ljava/lang/Runnable;

    const/4 v0, -0x1

    .line 1553
    iput v0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mTargetSpeedIndex:I

    .line 1554
    iput v3, p0, Lcom/yftech/settings/manager/CarPartsManager;->mRereadCount:I

    return-void

    :array_0
    .array-data 1
        0x0t
        0x1t
    .end array-data

    nop

    :array_1
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data
.end method

.method static synthetic access$000(Lcom/yftech/settings/manager/CarPartsManager;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mSunroofWindowAutoCloseEnable:Z

    return p0
.end method

.method static synthetic access$002(Lcom/yftech/settings/manager/CarPartsManager;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/yftech/settings/manager/CarPartsManager;->mSunroofWindowAutoCloseEnable:Z

    return p1
.end method

.method static synthetic access$100(Lcom/yftech/settings/manager/CarPartsManager;Lcom/yftech/vehicle/internal/adapter/ICarDoor$RemoteUnlockMode;)I
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/yftech/settings/manager/CarPartsManager;->getValidRemoteUnlockModeOption(Lcom/yftech/vehicle/internal/adapter/ICarDoor$RemoteUnlockMode;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/yftech/settings/manager/CarPartsManager;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mLockUnlockSoundEnable:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/yftech/settings/manager/CarPartsManager;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/yftech/settings/manager/CarPartsManager;->mLockUnlockSoundEnable:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/yftech/settings/manager/CarPartsManager;Z)I
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/yftech/settings/manager/CarPartsManager;->getValidPsdDoorModeOption(Z)I

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/yftech/settings/manager/CarPartsManager;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mIHBCEnable:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/yftech/settings/manager/CarPartsManager;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/yftech/settings/manager/CarPartsManager;->mIHBCEnable:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/yftech/settings/manager/CarPartsManager;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mHeadLightDelayEnable:Z

    return p0
.end method

.method static synthetic access$1302(Lcom/yftech/settings/manager/CarPartsManager;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/yftech/settings/manager/CarPartsManager;->mHeadLightDelayEnable:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/yftech/settings/manager/CarPartsManager;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mOSRMAutoFoldEnable:Z

    return p0
.end method

.method static synthetic access$1402(Lcom/yftech/settings/manager/CarPartsManager;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/yftech/settings/manager/CarPartsManager;->mOSRMAutoFoldEnable:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/yftech/settings/manager/CarPartsManager;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mOSRMTurnDownEnable:Z

    return p0
.end method

.method static synthetic access$1502(Lcom/yftech/settings/manager/CarPartsManager;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/yftech/settings/manager/CarPartsManager;->mOSRMTurnDownEnable:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/yftech/settings/manager/CarPartsManager;Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;)Z
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/yftech/settings/manager/CarPartsManager;->getValidOSRMTurnDownEnable(Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lcom/yftech/settings/manager/CarPartsManager;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mETCEnable:Z

    return p0
.end method

.method static synthetic access$1702(Lcom/yftech/settings/manager/CarPartsManager;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/yftech/settings/manager/CarPartsManager;->mETCEnable:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/yftech/settings/manager/CarPartsManager;Lcom/yftech/vehicle/internal/adapter/ICarSettings$AutoWiperMode;)Z
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/yftech/settings/manager/CarPartsManager;->getValidAutoWiperModeEnabled(Lcom/yftech/vehicle/internal/adapter/ICarSettings$AutoWiperMode;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1900(Lcom/yftech/settings/manager/CarPartsManager;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mAVASEnable:Z

    return p0
.end method

.method static synthetic access$1902(Lcom/yftech/settings/manager/CarPartsManager;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/yftech/settings/manager/CarPartsManager;->mAVASEnable:Z

    return p1
.end method

.method static synthetic access$200(Lcom/yftech/settings/manager/CarPartsManager;Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;)Z
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/yftech/settings/manager/CarPartsManager;->getValidAutoUnlockEnabled(Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2000(Lcom/yftech/settings/manager/CarPartsManager;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mWirelessChargingEnable:Z

    return p0
.end method

.method static synthetic access$2002(Lcom/yftech/settings/manager/CarPartsManager;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/yftech/settings/manager/CarPartsManager;->mWirelessChargingEnable:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/yftech/settings/manager/CarPartsManager;Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;)Z
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/yftech/settings/manager/CarPartsManager;->getWirelessChargingEnable(Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2200(Lcom/yftech/settings/manager/CarPartsManager;Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;)I
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/yftech/settings/manager/CarPartsManager;->getValidAcFanSpeedOfAutoModeOption(Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;)I

    move-result p0

    return p0
.end method

.method static synthetic access$2300(Lcom/yftech/settings/manager/CarPartsManager;Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationMode;)Z
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/yftech/settings/manager/CarPartsManager;->getValidAcAirCirculationModeOfAutoModeEnabled(Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationMode;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2400(Lcom/yftech/settings/manager/CarPartsManager;Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;)I
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/yftech/settings/manager/CarPartsManager;->getValidAcComfortCurveModeOption(Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;)I

    move-result p0

    return p0
.end method

.method static synthetic access$2500(Lcom/yftech/settings/manager/CarPartsManager;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mAcAirSelfDryingEnable:Z

    return p0
.end method

.method static synthetic access$2502(Lcom/yftech/settings/manager/CarPartsManager;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/yftech/settings/manager/CarPartsManager;->mAcAirSelfDryingEnable:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/yftech/settings/manager/CarPartsManager;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mAirUnlockVentilationEnable:Z

    return p0
.end method

.method static synthetic access$2602(Lcom/yftech/settings/manager/CarPartsManager;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/yftech/settings/manager/CarPartsManager;->mAirUnlockVentilationEnable:Z

    return p1
.end method

.method static synthetic access$2702(Lcom/yftech/settings/manager/CarPartsManager;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/yftech/settings/manager/CarPartsManager;->mStartWaitPSDDoorSpeedCallbackTimeout:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/yftech/settings/manager/CarPartsManager;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarPartsManager;->notifyPSDDoorSpeed()V

    return-void
.end method

.method static synthetic access$2902(Lcom/yftech/settings/manager/CarPartsManager;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/yftech/settings/manager/CarPartsManager;->mStartRereadPSDDoorSpeedTimeout:Z

    return p1
.end method

.method static synthetic access$300(Lcom/yftech/settings/manager/CarPartsManager;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mSpeedAutoLockEnable:Z

    return p0
.end method

.method static synthetic access$302(Lcom/yftech/settings/manager/CarPartsManager;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/yftech/settings/manager/CarPartsManager;->mSpeedAutoLockEnable:Z

    return p1
.end method

.method static synthetic access$402(Lcom/yftech/settings/manager/CarPartsManager;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/yftech/settings/manager/CarPartsManager;->mIsPSDDoorSpeedLChanged:Z

    return p1
.end method

.method static synthetic access$500(Lcom/yftech/settings/manager/CarPartsManager;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarPartsManager;->startWaitPSDDoorSpeedCallbackTimeout()V

    return-void
.end method

.method static synthetic access$602(Lcom/yftech/settings/manager/CarPartsManager;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/yftech/settings/manager/CarPartsManager;->mIsPSDDoorSpeedRChanged:Z

    return p1
.end method

.method static synthetic access$700(Lcom/yftech/settings/manager/CarPartsManager;Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;)I
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/yftech/settings/manager/CarPartsManager;->getValidPepsAutoTrunkOpenOption(Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;)I

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/yftech/settings/manager/CarPartsManager;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mPEPSWalkAwayLockEnable:Z

    return p0
.end method

.method static synthetic access$802(Lcom/yftech/settings/manager/CarPartsManager;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/yftech/settings/manager/CarPartsManager;->mPEPSWalkAwayLockEnable:Z

    return p1
.end method

.method static synthetic access$900(Lcom/yftech/settings/manager/CarPartsManager;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mPEPSUnlockEnable:Z

    return p0
.end method

.method static synthetic access$902(Lcom/yftech/settings/manager/CarPartsManager;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/yftech/settings/manager/CarPartsManager;->mPEPSUnlockEnable:Z

    return p1
.end method

.method private frontWiperServicePosition()Z
    .locals 0

    .line 861
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->get()Lcom/yftech/vehicle/sdk/CarSettingsManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->performFrontWiperServicePositionButtonClick()Z

    move-result p0

    return p0
.end method

.method private getAVASEnabled()Z
    .locals 4

    .line 1197
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->get()Lcom/yftech/vehicle/sdk/CarSettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getAVASEnableState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object v0

    .line 1198
    iget-boolean v1, p0, Lcom/yftech/settings/manager/CarPartsManager;->mAVASEnable:Z

    invoke-virtual {p0, v0, v1}, Lcom/yftech/settings/manager/CarPartsManager;->getValidEnable(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/yftech/settings/manager/CarPartsManager;->mAVASEnable:Z

    const-string v1, "CarPartsManager"

    .line 1199
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAVASEnabled enableState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " enable:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mAVASEnable:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    iget-boolean p0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mAVASEnable:Z

    return p0
.end method

.method private getAcAutoDryingEnabled()Z
    .locals 4

    .line 1103
    invoke-static {}, Lcom/yftech/vehicle/sdk/AirConditionManager;->get()Lcom/yftech/vehicle/sdk/AirConditionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/AirConditionManager;->getAirSelfDryingEnableState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object v0

    .line 1104
    iget-boolean v1, p0, Lcom/yftech/settings/manager/CarPartsManager;->mAcAirSelfDryingEnable:Z

    invoke-virtual {p0, v0, v1}, Lcom/yftech/settings/manager/CarPartsManager;->getValidEnable(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/yftech/settings/manager/CarPartsManager;->mAcAirSelfDryingEnable:Z

    const-string v1, "CarPartsManager"

    .line 1105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAcAutoDryingEnabled enableState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " enable:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mAcAirSelfDryingEnable:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    iget-boolean p0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mAcAirSelfDryingEnable:Z

    return p0
.end method

.method private getAirCirculationModeOfAutoModeEnabled()Z
    .locals 1

    .line 941
    invoke-static {}, Lcom/yftech/vehicle/sdk/AirConditionManager;->get()Lcom/yftech/vehicle/sdk/AirConditionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/AirConditionManager;->getAirCirculationModeOfAutoMode()Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationMode;

    move-result-object v0

    .line 942
    invoke-direct {p0, v0}, Lcom/yftech/settings/manager/CarPartsManager;->getValidAcAirCirculationModeOfAutoModeEnabled(Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationMode;)Z

    move-result p0

    return p0
.end method

.method private getAirUnlockVentilationEnable()Z
    .locals 4

    .line 968
    invoke-static {}, Lcom/yftech/vehicle/sdk/AirConditionManager;->get()Lcom/yftech/vehicle/sdk/AirConditionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/AirConditionManager;->getAirUnlockVentilationEnableState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object v0

    .line 969
    iget-boolean v1, p0, Lcom/yftech/settings/manager/CarPartsManager;->mAirUnlockVentilationEnable:Z

    invoke-virtual {p0, v0, v1}, Lcom/yftech/settings/manager/CarPartsManager;->getValidEnable(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/yftech/settings/manager/CarPartsManager;->mAirUnlockVentilationEnable:Z

    const-string v1, "CarPartsManager"

    .line 970
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAirUnlockVentilationEnable: enableState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " enable:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mAirUnlockVentilationEnable:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    iget-boolean p0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mAirUnlockVentilationEnable:Z

    return p0
.end method

.method private getAsteriskKeyOption()I
    .locals 1

    .line 1210
    invoke-static {}, Lcom/yftech/car/input/CarInputManager;->getInstance()Lcom/yftech/car/input/CarInputManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/input/CarInputManager;->getCustomKeyFunction()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/yftech/settings/manager/CarPartsManager;->getValidAsteriskKeyOption(I)I

    move-result p0

    return p0
.end method

.method private getAutoUnlockEnabled()Z
    .locals 1

    .line 800
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDoorManager;->get()Lcom/yftech/vehicle/sdk/CarDoorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarDoorManager;->getAutoUnlock()Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;

    move-result-object v0

    .line 801
    invoke-direct {p0, v0}, Lcom/yftech/settings/manager/CarPartsManager;->getValidAutoUnlockEnabled(Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;)Z

    move-result p0

    return p0
.end method

.method private getAutoWindowUpInRainEnabled()Z
    .locals 2

    const-string p0, "CarPartsManager"

    .line 1009
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAutoWindowUpInRainEnabled enable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private getAutoWiperModeEnabled()Z
    .locals 1

    .line 1020
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->get()Lcom/yftech/vehicle/sdk/CarSettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getAutoWiperMode()Lcom/yftech/vehicle/internal/adapter/ICarSettings$AutoWiperMode;

    move-result-object v0

    .line 1021
    invoke-direct {p0, v0}, Lcom/yftech/settings/manager/CarPartsManager;->getValidAutoWiperModeEnabled(Lcom/yftech/vehicle/internal/adapter/ICarSettings$AutoWiperMode;)Z

    move-result p0

    return p0
.end method

.method private getComfortCurveMode()I
    .locals 1

    .line 953
    invoke-static {}, Lcom/yftech/vehicle/sdk/AirConditionManager;->get()Lcom/yftech/vehicle/sdk/AirConditionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/AirConditionManager;->getComfortCurveMode()Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;

    move-result-object v0

    .line 954
    invoke-direct {p0, v0}, Lcom/yftech/settings/manager/CarPartsManager;->getValidAcComfortCurveModeOption(Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;)I

    move-result p0

    return p0
.end method

.method private getConvenientCarSearchEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private getETCEnabled()Z
    .locals 4

    .line 867
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->get()Lcom/yftech/vehicle/sdk/CarSettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getETCEnableState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object v0

    .line 868
    iget-boolean v1, p0, Lcom/yftech/settings/manager/CarPartsManager;->mETCEnable:Z

    invoke-virtual {p0, v0, v1}, Lcom/yftech/settings/manager/CarPartsManager;->getValidEnable(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/yftech/settings/manager/CarPartsManager;->mETCEnable:Z

    const-string v1, "CarPartsManager"

    .line 869
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getETCEnabled: enableState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " enable:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mETCEnable:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    iget-boolean p0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mETCEnable:Z

    return p0
.end method

.method private getElectricHiddenDoorHandleEnable()Z
    .locals 0

    .line 1171
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->get()Lcom/yftech/vehicle/sdk/CarSettingsManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->isDoorHandleElectricHideEnabled()Z

    move-result p0

    return p0
.end method

.method private getFanSpeedOfAutoMode()I
    .locals 1

    .line 926
    invoke-static {}, Lcom/yftech/vehicle/sdk/AirConditionManager;->get()Lcom/yftech/vehicle/sdk/AirConditionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/AirConditionManager;->getFanSpeedOfAutoMode()Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;

    move-result-object v0

    .line 927
    invoke-direct {p0, v0}, Lcom/yftech/settings/manager/CarPartsManager;->getValidAcFanSpeedOfAutoModeOption(Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;)I

    move-result p0

    return p0
.end method

.method private getFrontWiperServicePositionEnabled()Z
    .locals 3

    .line 853
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->get()Lcom/yftech/vehicle/sdk/CarSettingsManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->isFrontWiperServicePositionEnabled()Z

    move-result p0

    const-string v0, "CarPartsManager"

    .line 854
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFrontWiperServicePositionEnabled enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method private getHeadLightDelayEnabled()Z
    .locals 4

    .line 980
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarLightManager;->get()Lcom/yftech/vehicle/sdk/CarLightManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarLightManager;->getHeadLightDelayEnableState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object v0

    .line 981
    iget-boolean v1, p0, Lcom/yftech/settings/manager/CarPartsManager;->mHeadLightDelayEnable:Z

    invoke-virtual {p0, v0, v1}, Lcom/yftech/settings/manager/CarPartsManager;->getValidEnable(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/yftech/settings/manager/CarPartsManager;->mHeadLightDelayEnable:Z

    const-string v1, "CarPartsManager"

    .line 982
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHeadLightDelayEnabled enableState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " enable:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mHeadLightDelayEnable:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    iget-boolean p0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mHeadLightDelayEnable:Z

    return p0
.end method

.method private getIHBCEnabled()Z
    .locals 4

    .line 772
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarLightManager;->get()Lcom/yftech/vehicle/sdk/CarLightManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarLightManager;->getIHBCEnableState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object v0

    .line 773
    iget-boolean v1, p0, Lcom/yftech/settings/manager/CarPartsManager;->mIHBCEnable:Z

    invoke-virtual {p0, v0, v1}, Lcom/yftech/settings/manager/CarPartsManager;->getValidEnable(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/yftech/settings/manager/CarPartsManager;->mIHBCEnable:Z

    const-string v1, "CarPartsManager"

    .line 774
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIHBCEnabled enableState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " enable:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mIHBCEnable:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    iget-boolean p0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mIHBCEnable:Z

    return p0
.end method

.method public static declared-synchronized getInstance()Lcom/yftech/settings/manager/CarPartsManager;
    .locals 2

    const-class v0, Lcom/yftech/settings/manager/CarPartsManager;

    monitor-enter v0

    .line 465
    :try_start_0
    sget-object v1, Lcom/yftech/settings/manager/CarPartsManager;->sCarPartsManager:Lcom/yftech/settings/manager/CarPartsManager;

    if-nez v1, :cond_0

    .line 466
    new-instance v1, Lcom/yftech/settings/manager/CarPartsManager;

    invoke-direct {v1}, Lcom/yftech/settings/manager/CarPartsManager;-><init>()V

    sput-object v1, Lcom/yftech/settings/manager/CarPartsManager;->sCarPartsManager:Lcom/yftech/settings/manager/CarPartsManager;

    .line 468
    :cond_0
    sget-object v1, Lcom/yftech/settings/manager/CarPartsManager;->sCarPartsManager:Lcom/yftech/settings/manager/CarPartsManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 464
    monitor-exit v0

    throw v1
.end method

.method private getKeyReminderEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private getLockUnlockSoundEnabled()Z
    .locals 4

    .line 1158
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDoorManager;->get()Lcom/yftech/vehicle/sdk/CarDoorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarDoorManager;->getLockUnlockSoundEnableState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object v0

    .line 1159
    iget-boolean v1, p0, Lcom/yftech/settings/manager/CarPartsManager;->mLockUnlockSoundEnable:Z

    invoke-virtual {p0, v0, v1}, Lcom/yftech/settings/manager/CarPartsManager;->getValidEnable(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/yftech/settings/manager/CarPartsManager;->mLockUnlockSoundEnable:Z

    const-string v1, "CarPartsManager"

    .line 1160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLockUnlockSoundEnabled enableState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " enable:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mLockUnlockSoundEnable:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1161
    iget-boolean p0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mLockUnlockSoundEnable:Z

    return p0
.end method

.method private getOSRMAutoFoldEnabled()Z
    .locals 4

    .line 895
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->get()Lcom/yftech/vehicle/sdk/CarSettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getOSRMAutoFoldEnableState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object v0

    .line 896
    iget-boolean v1, p0, Lcom/yftech/settings/manager/CarPartsManager;->mOSRMAutoFoldEnable:Z

    invoke-virtual {p0, v0, v1}, Lcom/yftech/settings/manager/CarPartsManager;->getValidEnable(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/yftech/settings/manager/CarPartsManager;->mOSRMAutoFoldEnable:Z

    const-string v1, "CarPartsManager"

    .line 897
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOSRMAutoFoldEnabled enableState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " enable:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mOSRMAutoFoldEnable:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    iget-boolean p0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mOSRMAutoFoldEnable:Z

    return p0
.end method

.method private getOSRMTurnDownEnabled()Z
    .locals 4

    .line 908
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->get()Lcom/yftech/vehicle/sdk/CarSettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getOSRMRAngleCmd()Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;

    move-result-object v0

    .line 909
    invoke-direct {p0, v0}, Lcom/yftech/settings/manager/CarPartsManager;->getValidOSRMTurnDownEnable(Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/yftech/settings/manager/CarPartsManager;->mOSRMTurnDownEnable:Z

    const-string v1, "CarPartsManager"

    .line 910
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOSRMTurnDownEnabled: OSRMRAngleCmd:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " mOSRMTurnDownEnable:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mOSRMTurnDownEnable:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    iget-boolean p0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mOSRMTurnDownEnable:Z

    return p0
.end method

.method private getPEPSAutoTrunkOpen()I
    .locals 1

    .line 993
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDoorManager;->get()Lcom/yftech/vehicle/sdk/CarDoorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarDoorManager;->getPEPSAutoTrunkOpen()Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;

    move-result-object v0

    .line 994
    invoke-direct {p0, v0}, Lcom/yftech/settings/manager/CarPartsManager;->getValidPepsAutoTrunkOpenOption(Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;)I

    move-result p0

    return p0
.end method

.method private getPEPSUnlockEnabled()Z
    .locals 4

    .line 826
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDoorManager;->get()Lcom/yftech/vehicle/sdk/CarDoorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarDoorManager;->getPEPSUnlockEnableState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object v0

    .line 827
    iget-boolean v1, p0, Lcom/yftech/settings/manager/CarPartsManager;->mPEPSUnlockEnable:Z

    invoke-virtual {p0, v0, v1}, Lcom/yftech/settings/manager/CarPartsManager;->getValidEnable(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/yftech/settings/manager/CarPartsManager;->mPEPSUnlockEnable:Z

    const-string v1, "CarPartsManager"

    .line 828
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPEPSUnlockEnabled enableState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " enable:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mPEPSUnlockEnable:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    iget-boolean p0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mPEPSUnlockEnable:Z

    return p0
.end method

.method private getPEPSWalkAwayLockEnabled()Z
    .locals 4

    .line 812
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDoorManager;->get()Lcom/yftech/vehicle/sdk/CarDoorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarDoorManager;->getPEPSWalkAwayLockEnableState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object v0

    .line 813
    iget-boolean v1, p0, Lcom/yftech/settings/manager/CarPartsManager;->mPEPSWalkAwayLockEnable:Z

    invoke-virtual {p0, v0, v1}, Lcom/yftech/settings/manager/CarPartsManager;->getValidEnable(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/yftech/settings/manager/CarPartsManager;->mPEPSWalkAwayLockEnable:Z

    const-string v1, "CarPartsManager"

    .line 814
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPEPSWalkAwayLockEnabled enableState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " enable:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mPEPSWalkAwayLockEnable:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    iget-boolean p0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mPEPSWalkAwayLockEnable:Z

    return p0
.end method

.method private getPSDDoorMode()I
    .locals 1

    .line 1077
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDoorManager;->get()Lcom/yftech/vehicle/sdk/CarDoorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarDoorManager;->isSlidingDoorModeAutoEnabled()Z

    move-result v0

    .line 1078
    invoke-direct {p0, v0}, Lcom/yftech/settings/manager/CarPartsManager;->getValidPsdDoorModeOption(Z)I

    move-result p0

    return p0
.end method

.method private getPSDDoorSpeed()I
    .locals 2

    .line 1055
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDoorManager;->get()Lcom/yftech/vehicle/sdk/CarDoorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarDoorManager;->getPSDDoorSpeedL()Lcom/yftech/vehicle/internal/adapter/ICarDoor$PSDDoorSpeed;

    move-result-object v0

    .line 1056
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDoorManager;->get()Lcom/yftech/vehicle/sdk/CarDoorManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/vehicle/sdk/CarDoorManager;->getPSDDoorSpeedR()Lcom/yftech/vehicle/internal/adapter/ICarDoor$PSDDoorSpeed;

    move-result-object v1

    .line 1057
    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/manager/CarPartsManager;->getValidPsdDoorSpeedOption(Lcom/yftech/vehicle/internal/adapter/ICarDoor$PSDDoorSpeed;Lcom/yftech/vehicle/internal/adapter/ICarDoor$PSDDoorSpeed;)I

    move-result p0

    return p0
.end method

.method private getRemoteUnlockMode()I
    .locals 1

    .line 785
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDoorManager;->get()Lcom/yftech/vehicle/sdk/CarDoorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarDoorManager;->getRemoteUnlockMode()Lcom/yftech/vehicle/internal/adapter/ICarDoor$RemoteUnlockMode;

    move-result-object v0

    .line 786
    invoke-direct {p0, v0}, Lcom/yftech/settings/manager/CarPartsManager;->getValidRemoteUnlockModeOption(Lcom/yftech/vehicle/internal/adapter/ICarDoor$RemoteUnlockMode;)I

    move-result p0

    return p0
.end method

.method private getSeatDriverConvenientAccessEnabled()Z
    .locals 0

    .line 1118
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->get()Lcom/yftech/vehicle/sdk/CarSettingsManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->isDriverEasyEntryAndExitEnabled()Z

    move-result p0

    return p0
.end method

.method private getSecondRowColdPermissionLeftEnabled()Z
    .locals 2

    const-string p0, "CarPartsManager"

    .line 1032
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSecondRowColdPermissionLeftEnabled enable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private getSecondRowColdPermissionRightEnabled()Z
    .locals 2

    const-string p0, "CarPartsManager"

    .line 1044
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSecondRowColdPermissionRightEnabled enable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private getSpeedAutoLockEnabled()Z
    .locals 4

    .line 840
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDoorManager;->get()Lcom/yftech/vehicle/sdk/CarDoorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarDoorManager;->getSpeedAutoLockEnableState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object v0

    .line 841
    iget-boolean v1, p0, Lcom/yftech/settings/manager/CarPartsManager;->mSpeedAutoLockEnable:Z

    invoke-virtual {p0, v0, v1}, Lcom/yftech/settings/manager/CarPartsManager;->getValidEnable(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/yftech/settings/manager/CarPartsManager;->mSpeedAutoLockEnable:Z

    const-string v1, "CarPartsManager"

    .line 842
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSpeedAutoLockEnabled enableState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " enable:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mSpeedAutoLockEnable:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    iget-boolean p0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mSpeedAutoLockEnable:Z

    return p0
.end method

.method private getSunroofWindowAutoCloseEnabled()Z
    .locals 4

    .line 881
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarWindowManager;->get()Lcom/yftech/vehicle/sdk/CarWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarWindowManager;->getSunroofWindowAutoCloseEnableState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object v0

    .line 882
    iget-boolean v1, p0, Lcom/yftech/settings/manager/CarPartsManager;->mSunroofWindowAutoCloseEnable:Z

    invoke-virtual {p0, v0, v1}, Lcom/yftech/settings/manager/CarPartsManager;->getValidEnable(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/yftech/settings/manager/CarPartsManager;->mSunroofWindowAutoCloseEnable:Z

    const-string v1, "CarPartsManager"

    .line 883
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSunroofWindowAutoCloseEnabled enableState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " enable:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mSunroofWindowAutoCloseEnable:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    iget-boolean p0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mSunroofWindowAutoCloseEnable:Z

    return p0
.end method

.method private getValidAcAirCirculationModeOfAutoModeEnabled(Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationMode;)Z
    .locals 3

    .line 1315
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationMode;->MANUAL:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationMode;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationMode;->AUTO:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationMode;

    if-ne p1, v0, :cond_2

    .line 1317
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationMode;->AUTO:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationMode;

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1318
    :goto_0
    iput-boolean v0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mAcAirCirculationModeOfAutoModeEnabled:Z

    :cond_2
    const-string v0, "CarPartsManager"

    .line 1320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getValidAcAirCirculationModeOfAutoModeEnabled mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", mAcAirCirculationModeOfAutoModeEnabled:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/yftech/settings/manager/CarPartsManager;->mAcAirCirculationModeOfAutoModeEnabled:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1321
    iget-boolean p0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mAcAirCirculationModeOfAutoModeEnabled:Z

    return p0
.end method

.method private getValidAcComfortCurveModeOption(Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;)I
    .locals 3

    const/4 v0, 0x0

    .line 1259
    :goto_0
    iget-object v1, p0, Lcom/yftech/settings/manager/CarPartsManager;->AC_COMFORT_CURVE_MODE:[Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1260
    iget-object v1, p0, Lcom/yftech/settings/manager/CarPartsManager;->AC_COMFORT_CURVE_MODE:[Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 1261
    iput v0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mAcComfortCurveModeOption:I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-string v0, "CarPartsManager"

    .line 1265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getValidAcComfortCurveModeOption mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", index:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/yftech/settings/manager/CarPartsManager;->mAcComfortCurveModeOption:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1266
    iget p0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mAcComfortCurveModeOption:I

    return p0
.end method

.method private getValidAcFanSpeedOfAutoModeOption(Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;)I
    .locals 3

    const/4 v0, 0x0

    .line 1248
    :goto_0
    iget-object v1, p0, Lcom/yftech/settings/manager/CarPartsManager;->AC_FAN_SPEED_OF_AUTO_MODE:[Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1249
    iget-object v1, p0, Lcom/yftech/settings/manager/CarPartsManager;->AC_FAN_SPEED_OF_AUTO_MODE:[Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 1250
    iput v0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mAcFanSpeedOfAutoModeOption:I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-string v0, "CarPartsManager"

    .line 1254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getValidAcFanSpeedOfAutoModeOption speed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", index:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/yftech/settings/manager/CarPartsManager;->mAcFanSpeedOfAutoModeOption:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    iget p0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mAcFanSpeedOfAutoModeOption:I

    return p0
.end method

.method private getValidAsteriskKeyOption(I)I
    .locals 3

    const/4 v0, 0x0

    .line 1226
    :goto_0
    iget-object v1, p0, Lcom/yftech/settings/manager/CarPartsManager;->STEERING_WHEEL_ASTERISK_KEY_TYPE:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1227
    iget-object v1, p0, Lcom/yftech/settings/manager/CarPartsManager;->STEERING_WHEEL_ASTERISK_KEY_TYPE:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 1228
    iput v0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mAsteriskKeyOption:I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-string v0, "CarPartsManager"

    .line 1232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getValidAsteriskKeyOption customKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", index:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/yftech/settings/manager/CarPartsManager;->mAsteriskKeyOption:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    iget p0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mAsteriskKeyOption:I

    return p0
.end method

.method private getValidAutoUnlockEnabled(Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;)Z
    .locals 3

    .line 1325
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;->ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;->NOT_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;

    if-ne p1, v0, :cond_2

    .line 1327
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;->ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1328
    :goto_0
    iput-boolean v0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mAutoUnlockEnabled:Z

    :cond_2
    const-string v0, "CarPartsManager"

    .line 1330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getValidAutoUnlockEnabled state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", mAutoUnlockEnabled:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/yftech/settings/manager/CarPartsManager;->mAutoUnlockEnabled:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1331
    iget-boolean p0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mAutoUnlockEnabled:Z

    return p0
.end method

.method private getValidAutoWiperModeEnabled(Lcom/yftech/vehicle/internal/adapter/ICarSettings$AutoWiperMode;)Z
    .locals 3

    .line 1335
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$AutoWiperMode;->INTERMITTENT:Lcom/yftech/vehicle/internal/adapter/ICarSettings$AutoWiperMode;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$AutoWiperMode;->AUTO:Lcom/yftech/vehicle/internal/adapter/ICarSettings$AutoWiperMode;

    if-ne p1, v0, :cond_2

    .line 1337
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$AutoWiperMode;->AUTO:Lcom/yftech/vehicle/internal/adapter/ICarSettings$AutoWiperMode;

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1338
    :goto_0
    iput-boolean v0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mAutoWiperModeEnabled:Z

    :cond_2
    const-string v0, "CarPartsManager"

    .line 1340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getValidAutoWiperModeEnabled mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", mAutoWiperModeEnabled:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/yftech/settings/manager/CarPartsManager;->mAutoWiperModeEnabled:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1341
    iget-boolean p0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mAutoWiperModeEnabled:Z

    return p0
.end method

.method private getValidOSRMTurnDownEnable(Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;)Z
    .locals 1

    .line 1356
    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$8;->$SwitchMap$com$yftech$vehicle$internal$adapter$ICarSettings$OSRMRAngleCmd:[I

    invoke-virtual {p1}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 1362
    iget-boolean p0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mOSRMTurnDownEnable:Z

    return p0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_1
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getValidParkingAidVolumeOption(I)I
    .locals 3

    const/4 v0, 0x0

    .line 1345
    :goto_0
    iget-object v1, p0, Lcom/yftech/settings/manager/CarPartsManager;->PARKING_AID_VOLUME_TYPE:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1346
    iget-object v1, p0, Lcom/yftech/settings/manager/CarPartsManager;->PARKING_AID_VOLUME_TYPE:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 1347
    iput v0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mParkingAidVolumeOption:I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-string v0, "CarPartsManager"

    .line 1351
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getValidParkingAidVolumeOption type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", index:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/yftech/settings/manager/CarPartsManager;->mParkingAidVolumeOption:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1352
    iget p0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mParkingAidVolumeOption:I

    return p0
.end method

.method private getValidPepsAutoTrunkOpenOption(Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;)I
    .locals 3

    const/4 v0, 0x0

    .line 1270
    :goto_0
    iget-object v1, p0, Lcom/yftech/settings/manager/CarPartsManager;->PEPS_AUTO_TRUNK_OPEN:[Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1271
    iget-object v1, p0, Lcom/yftech/settings/manager/CarPartsManager;->PEPS_AUTO_TRUNK_OPEN:[Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 1272
    iput v0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mPepsAutoTrunkOpenOption:I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-string v0, "CarPartsManager"

    .line 1276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getValidPepsAutoTrunkOpenOption state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", index:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/yftech/settings/manager/CarPartsManager;->mPepsAutoTrunkOpenOption:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1277
    iget p0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mPepsAutoTrunkOpenOption:I

    return p0
.end method

.method private getValidPsdDoorModeOption(Z)I
    .locals 3

    const/4 v0, 0x0

    .line 1304
    :goto_0
    iget-object v1, p0, Lcom/yftech/settings/manager/CarPartsManager;->PSD_DOOR_MODE:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1305
    iget-object v1, p0, Lcom/yftech/settings/manager/CarPartsManager;->PSD_DOOR_MODE:[Z

    aget-boolean v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 1306
    iput v0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mPsdDoorModeOption:I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-string v0, "CarPartsManager"

    .line 1310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getValidPsdDoorModeOption isEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", index:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/yftech/settings/manager/CarPartsManager;->mPsdDoorModeOption:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1311
    iget p0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mPsdDoorModeOption:I

    return p0
.end method

.method private getValidPsdDoorSpeedOption(Lcom/yftech/vehicle/internal/adapter/ICarDoor$PSDDoorSpeed;Lcom/yftech/vehicle/internal/adapter/ICarDoor$PSDDoorSpeed;)I
    .locals 4

    .line 1287
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PSDDoorSpeed;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDoor$PSDDoorSpeed;

    .line 1288
    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PSDDoorSpeed;->HIGH_SPEED:Lcom/yftech/vehicle/internal/adapter/ICarDoor$PSDDoorSpeed;

    if-eq p2, v1, :cond_2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PSDDoorSpeed;->LOW_SPEED:Lcom/yftech/vehicle/internal/adapter/ICarDoor$PSDDoorSpeed;

    if-ne p2, v1, :cond_0

    goto :goto_0

    .line 1290
    :cond_0
    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PSDDoorSpeed;->HIGH_SPEED:Lcom/yftech/vehicle/internal/adapter/ICarDoor$PSDDoorSpeed;

    if-eq p1, v1, :cond_1

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PSDDoorSpeed;->LOW_SPEED:Lcom/yftech/vehicle/internal/adapter/ICarDoor$PSDDoorSpeed;

    if-ne p1, v1, :cond_3

    :cond_1
    move-object v0, p1

    goto :goto_1

    :cond_2
    :goto_0
    move-object v0, p2

    :cond_3
    :goto_1
    const/4 v1, 0x0

    .line 1293
    :goto_2
    iget-object v2, p0, Lcom/yftech/settings/manager/CarPartsManager;->PSD_DOOR_SPEED:[Lcom/yftech/vehicle/internal/adapter/ICarDoor$PSDDoorSpeed;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 1294
    iget-object v2, p0, Lcom/yftech/settings/manager/CarPartsManager;->PSD_DOOR_SPEED:[Lcom/yftech/vehicle/internal/adapter/ICarDoor$PSDDoorSpeed;

    aget-object v2, v2, v1

    if-ne v2, v0, :cond_4

    .line 1295
    iput v1, p0, Lcom/yftech/settings/manager/CarPartsManager;->mPsdDoorSpeedOption:I

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    const-string v1, "CarPartsManager"

    .line 1299
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getValidPsdDoorSpeedOption speedL:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", speedR:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", speed:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", index:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/yftech/settings/manager/CarPartsManager;->mPsdDoorSpeedOption:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    iget p0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mPsdDoorSpeedOption:I

    return p0
.end method

.method private getValidRemoteUnlockModeOption(Lcom/yftech/vehicle/internal/adapter/ICarDoor$RemoteUnlockMode;)I
    .locals 3

    const/4 v0, 0x0

    .line 1237
    :goto_0
    iget-object v1, p0, Lcom/yftech/settings/manager/CarPartsManager;->REMOTE_UNLOCK_MODE:[Lcom/yftech/vehicle/internal/adapter/ICarDoor$RemoteUnlockMode;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1238
    iget-object v1, p0, Lcom/yftech/settings/manager/CarPartsManager;->REMOTE_UNLOCK_MODE:[Lcom/yftech/vehicle/internal/adapter/ICarDoor$RemoteUnlockMode;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 1239
    iput v0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mRemoteUnlockModeOption:I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-string v0, "CarPartsManager"

    .line 1243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getValidRemoteUnlockModeOption mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", index:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/yftech/settings/manager/CarPartsManager;->mRemoteUnlockModeOption:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1244
    iget p0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mRemoteUnlockModeOption:I

    return p0
.end method

.method private getWirelessChargingEnable(Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;)Z
    .locals 1

    .line 1366
    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$8;->$SwitchMap$com$yftech$vehicle$internal$adapter$ICarSettings$WCMCtlResult:[I

    invoke-virtual {p1}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 1373
    iget-boolean p0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mOSRMTurnDownEnable:Z

    return p0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_1
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getWirelessChargingEnabled()Z
    .locals 4

    .line 1132
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->get()Lcom/yftech/vehicle/sdk/CarSettingsManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getWCMCtlResult()Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;

    move-result-object p0

    .line 1133
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;->ENABLED:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;->DISABLED_BY_PEPS:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "CarPartsManager"

    .line 1134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wcmCtlResult: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "enable: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private initCarKeyCustomFunction()V
    .locals 10

    const/4 v0, 0x6

    .line 487
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 489
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 490
    :goto_0
    array-length v5, v0

    if-ge v3, v5, :cond_4

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    .line 492
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->getCameraNumber()Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;

    move-result-object v6

    const-string v7, "CarPartsManager"

    .line 493
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initCarKeyCustomFunction() cameraNumber:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    sget-object v7, Lcom/yftech/settings/manager/CarPartsManager$8;->$SwitchMap$com$yftech$vehicle$internal$adapter$ICarConfig$CameraNumber:[I

    invoke-virtual {v6}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;->ordinal()I

    move-result v6

    aget v6, v7, v6

    packed-switch v6, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    move v4, v5

    .line 503
    :pswitch_1
    aget v5, v0, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const/4 v5, 0x4

    if-ne v3, v5, :cond_1

    .line 511
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isSportPlusPresent()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 512
    aget v5, v0, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const/4 v5, 0x5

    if-ne v3, v5, :cond_2

    if-eqz v4, :cond_3

    .line 517
    aget v5, v0, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 520
    :cond_2
    aget v5, v0, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 523
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/yftech/settings/manager/CarPartsManager;->STEERING_WHEEL_ASTERISK_KEY_TYPE:[I

    .line 524
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    .line 525
    iget-object v0, p0, Lcom/yftech/settings/manager/CarPartsManager;->STEERING_WHEEL_ASTERISK_KEY_TYPE:[I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v0, v2

    const-string v0, "CarPartsManager"

    .line 526
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initCarKeyCustomFunction: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/yftech/settings/manager/CarPartsManager;->STEERING_WHEEL_ASTERISK_KEY_TYPE:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :array_0
    .array-data 4
        0x7
        0xa
        0x3
        0x2
        0x12
        0xd
    .end array-data
.end method

.method private notifyPSDDoorSpeed()V
    .locals 7

    .line 1557
    iget v0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mRereadCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mRereadCount:I

    .line 1558
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDoorManager;->get()Lcom/yftech/vehicle/sdk/CarDoorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarDoorManager;->getPSDDoorSpeedL()Lcom/yftech/vehicle/internal/adapter/ICarDoor$PSDDoorSpeed;

    move-result-object v0

    .line 1559
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDoorManager;->get()Lcom/yftech/vehicle/sdk/CarDoorManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/vehicle/sdk/CarDoorManager;->getPSDDoorSpeedR()Lcom/yftech/vehicle/internal/adapter/ICarDoor$PSDDoorSpeed;

    move-result-object v1

    .line 1560
    sget-object v2, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PSDDoorSpeed;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDoor$PSDDoorSpeed;

    .line 1561
    sget-object v3, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PSDDoorSpeed;->HIGH_SPEED:Lcom/yftech/vehicle/internal/adapter/ICarDoor$PSDDoorSpeed;

    if-eq v1, v3, :cond_2

    sget-object v3, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PSDDoorSpeed;->LOW_SPEED:Lcom/yftech/vehicle/internal/adapter/ICarDoor$PSDDoorSpeed;

    if-ne v1, v3, :cond_0

    goto :goto_0

    .line 1563
    :cond_0
    sget-object v3, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PSDDoorSpeed;->HIGH_SPEED:Lcom/yftech/vehicle/internal/adapter/ICarDoor$PSDDoorSpeed;

    if-eq v0, v3, :cond_1

    sget-object v3, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PSDDoorSpeed;->LOW_SPEED:Lcom/yftech/vehicle/internal/adapter/ICarDoor$PSDDoorSpeed;

    if-ne v0, v3, :cond_3

    :cond_1
    move-object v2, v0

    goto :goto_1

    :cond_2
    :goto_0
    move-object v2, v1

    .line 1566
    :cond_3
    :goto_1
    sget-object v3, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PSDDoorSpeed;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDoor$PSDDoorSpeed;

    .line 1567
    iget v4, p0, Lcom/yftech/settings/manager/CarPartsManager;->mTargetSpeedIndex:I

    if-ltz v4, :cond_4

    iget v4, p0, Lcom/yftech/settings/manager/CarPartsManager;->mTargetSpeedIndex:I

    iget-object v5, p0, Lcom/yftech/settings/manager/CarPartsManager;->PSD_DOOR_SPEED:[Lcom/yftech/vehicle/internal/adapter/ICarDoor$PSDDoorSpeed;

    array-length v5, v5

    if-ge v4, v5, :cond_4

    .line 1568
    iget-object v3, p0, Lcom/yftech/settings/manager/CarPartsManager;->PSD_DOOR_SPEED:[Lcom/yftech/vehicle/internal/adapter/ICarDoor$PSDDoorSpeed;

    iget v4, p0, Lcom/yftech/settings/manager/CarPartsManager;->mTargetSpeedIndex:I

    aget-object v3, v3, v4

    :cond_4
    const-string v4, "CarPartsManager"

    .line 1570
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyPSDDoorSpeed() rereadCount:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/yftech/settings/manager/CarPartsManager;->mRereadCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " targetSpeedIndex:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/yftech/settings/manager/CarPartsManager;->mTargetSpeedIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " speedL:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " speedR:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " curSpeed:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " targetSpeed:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1572
    sget-object v4, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PSDDoorSpeed;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDoor$PSDDoorSpeed;

    const/4 v5, 0x2

    if-eq v2, v4, :cond_6

    .line 1574
    sget-object v4, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PSDDoorSpeed;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDoor$PSDDoorSpeed;

    if-eq v3, v4, :cond_5

    if-eq v3, v2, :cond_5

    iget v2, p0, Lcom/yftech/settings/manager/CarPartsManager;->mRereadCount:I

    if-ge v2, v5, :cond_5

    const-string v0, "CarPartsManager"

    const-string v1, "notifyPSDDoorSpeed() value different, set again"

    .line 1577
    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1578
    iget v0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mTargetSpeedIndex:I

    invoke-direct {p0, v0}, Lcom/yftech/settings/manager/CarPartsManager;->setPSDDoorSpeed(I)Z

    return-void

    .line 1581
    :cond_5
    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/manager/CarPartsManager;->getValidPsdDoorSpeedOption(Lcom/yftech/vehicle/internal/adapter/ICarDoor$PSDDoorSpeed;Lcom/yftech/vehicle/internal/adapter/ICarDoor$PSDDoorSpeed;)I

    move-result v0

    .line 1582
    iput v0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mPsdDoorSpeedOption:I

    const-string v1, "CarPartsManager"

    .line 1583
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyPSDDoorSpeed() notify index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1584
    sget-object v1, Lcom/yftech/settings/manager/CarPartsManager$Function;->PSD_DOOR_SPEED_OPTION:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {p0, v1, v0}, Lcom/yftech/settings/manager/CarPartsManager;->notifyOnOptionChanged(Ljava/lang/Object;I)V

    goto :goto_2

    .line 1586
    :cond_6
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PSDDoorSpeed;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDoor$PSDDoorSpeed;

    if-eq v3, v0, :cond_7

    iget v0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mRereadCount:I

    if-ge v0, v5, :cond_7

    const-string v0, "CarPartsManager"

    const-string v1, "notifyPSDDoorSpeed() value unknown, set again"

    .line 1588
    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1589
    iget v0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mTargetSpeedIndex:I

    invoke-direct {p0, v0}, Lcom/yftech/settings/manager/CarPartsManager;->setPSDDoorSpeed(I)Z

    return-void

    :cond_7
    const-string v0, "CarPartsManager"

    const-string v1, "notifyPSDDoorSpeed() value unknown"

    .line 1592
    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const/4 v0, 0x0

    .line 1594
    iput v0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mRereadCount:I

    const-string p0, "CarPartsManager"

    const-string v0, "notifyPSDDoorSpeed() end"

    .line 1595
    invoke-static {p0, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setAVASEnabled(Z)Z
    .locals 0

    .line 1205
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->get()Lcom/yftech/vehicle/sdk/CarSettingsManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->setAVASEnabled(Z)Z

    move-result p0

    return p0
.end method

.method private setAcAutoDryingEnabled(Z)Z
    .locals 0

    .line 1111
    invoke-static {}, Lcom/yftech/vehicle/sdk/AirConditionManager;->get()Lcom/yftech/vehicle/sdk/AirConditionManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/AirConditionManager;->setAirSelfDryingEnabled(Z)Z

    move-result p0

    return p0
.end method

.method private setAirCirculationModeOfAutoModeEnabled(Z)Z
    .locals 0

    .line 947
    invoke-static {}, Lcom/yftech/vehicle/sdk/AirConditionManager;->get()Lcom/yftech/vehicle/sdk/AirConditionManager;

    move-result-object p0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationMode;->AUTO:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationMode;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationMode;->MANUAL:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationMode;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/AirConditionManager;->setAirCirculationModeOfAutoMode(Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationMode;)Z

    move-result p0

    return p0
.end method

.method private setAirUnlockVentilation(Z)Z
    .locals 0

    .line 975
    invoke-static {}, Lcom/yftech/vehicle/sdk/AirConditionManager;->get()Lcom/yftech/vehicle/sdk/AirConditionManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/AirConditionManager;->setAirUnlockVentilationEnabled(Z)Z

    move-result p0

    return p0
.end method

.method private setAsteriskKeyOption(I)Z
    .locals 3

    const-string v0, "CarPartsManager"

    .line 1216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAsteriskKeyOption() index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " CarKeyCustomFunction:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/settings/manager/CarPartsManager;->STEERING_WHEEL_ASTERISK_KEY_TYPE:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz p1, :cond_0

    .line 1217
    iget-object v0, p0, Lcom/yftech/settings/manager/CarPartsManager;->STEERING_WHEEL_ASTERISK_KEY_TYPE:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 1218
    invoke-static {}, Lcom/yftech/car/input/CarInputManager;->getInstance()Lcom/yftech/car/input/CarInputManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/settings/manager/CarPartsManager;->STEERING_WHEEL_ASTERISK_KEY_TYPE:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/yftech/car/input/CarInputManager;->setCustomKeyFunction(I)V

    const-string v0, "CarPartsManager"

    .line 1219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAsteriskKeyOption() index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " CarKeyCustomFunction:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yftech/settings/manager/CarPartsManager;->STEERING_WHEEL_ASTERISK_KEY_TYPE:[I

    aget p0, p0, p1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setAutoUnlockEnabled(Z)Z
    .locals 0

    .line 806
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDoorManager;->get()Lcom/yftech/vehicle/sdk/CarDoorManager;

    move-result-object p0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;->ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;->NOT_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarDoorManager;->setAutoUnlock(Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;)Z

    move-result p0

    return p0
.end method

.method private setAutoWindowUpInRainEnabled(Z)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private setAutoWiperModeEnabled(Z)Z
    .locals 0

    .line 1026
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->get()Lcom/yftech/vehicle/sdk/CarSettingsManager;

    move-result-object p0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$AutoWiperMode;->AUTO:Lcom/yftech/vehicle/internal/adapter/ICarSettings$AutoWiperMode;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$AutoWiperMode;->INTERMITTENT:Lcom/yftech/vehicle/internal/adapter/ICarSettings$AutoWiperMode;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->setAutoWiperMode(Lcom/yftech/vehicle/internal/adapter/ICarSettings$AutoWiperMode;)Z

    move-result p0

    return p0
.end method

.method private setComfortCurveMode(I)Z
    .locals 1

    if-ltz p1, :cond_0

    .line 960
    iget-object v0, p0, Lcom/yftech/settings/manager/CarPartsManager;->AC_COMFORT_CURVE_MODE:[Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 961
    invoke-static {}, Lcom/yftech/vehicle/sdk/AirConditionManager;->get()Lcom/yftech/vehicle/sdk/AirConditionManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/settings/manager/CarPartsManager;->AC_COMFORT_CURVE_MODE:[Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;

    aget-object p0, p0, p1

    invoke-virtual {v0, p0}, Lcom/yftech/vehicle/sdk/AirConditionManager;->setComfortCurveMode(Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setConvenientCarSearchEnabled(Z)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private setETCEnabled(Z)Z
    .locals 0

    .line 875
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->get()Lcom/yftech/vehicle/sdk/CarSettingsManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->setETCEnabled(Z)Z

    move-result p0

    return p0
.end method

.method private setElectricHiddenDoorHandleEnable(Z)Z
    .locals 0

    .line 1176
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->get()Lcom/yftech/vehicle/sdk/CarSettingsManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->setDoorHandleElectricHideEnabled(Z)Z

    move-result p0

    return p0
.end method

.method private setFanSpeedOfAutoMode(I)Z
    .locals 1

    if-ltz p1, :cond_0

    .line 933
    iget-object v0, p0, Lcom/yftech/settings/manager/CarPartsManager;->AC_FAN_SPEED_OF_AUTO_MODE:[Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 934
    invoke-static {}, Lcom/yftech/vehicle/sdk/AirConditionManager;->get()Lcom/yftech/vehicle/sdk/AirConditionManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/settings/manager/CarPartsManager;->AC_FAN_SPEED_OF_AUTO_MODE:[Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;

    aget-object p0, p0, p1

    invoke-virtual {v0, p0}, Lcom/yftech/vehicle/sdk/AirConditionManager;->setFanSpeedOfAutoMode(Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setHeadLightDelayEnabled(Z)Z
    .locals 0

    .line 988
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarLightManager;->get()Lcom/yftech/vehicle/sdk/CarLightManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarLightManager;->setHeadLightDelayEnabled(Z)Z

    move-result p0

    return p0
.end method

.method private setIHBCEnabled(Z)Z
    .locals 0

    .line 780
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarLightManager;->get()Lcom/yftech/vehicle/sdk/CarLightManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarLightManager;->setIHBCEnabled(Z)Z

    move-result p0

    return p0
.end method

.method private setKeyReminderEnabled(Z)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private setLockUnlockSoundEnabled(Z)Z
    .locals 0

    .line 1166
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDoorManager;->get()Lcom/yftech/vehicle/sdk/CarDoorManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarDoorManager;->setLockUnlockSoundEnabled(Z)Z

    move-result p0

    return p0
.end method

.method private setOSRMAutoFoldEnabled(Z)Z
    .locals 0

    .line 903
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->get()Lcom/yftech/vehicle/sdk/CarSettingsManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->setOSRMAutoFoldEnabled(Z)Z

    move-result p0

    return p0
.end method

.method private setOSRMTurnDownEnabled(Z)Z
    .locals 0

    .line 916
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->get()Lcom/yftech/vehicle/sdk/CarSettingsManager;

    move-result-object p0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;->BOTH_MIRROR_DIP:Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->setOSRMRAngleCmd(Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;)Z

    move-result p0

    return p0
.end method

.method private setOSRMTurnDownValue(Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleSaveCmd;)Z
    .locals 0

    .line 921
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->get()Lcom/yftech/vehicle/sdk/CarSettingsManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->setOSRMRAngleSaveCmd(Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleSaveCmd;)Z

    move-result p0

    return p0
.end method

.method private setPEPSAutoTrunkOpen(I)Z
    .locals 1

    if-ltz p1, :cond_0

    .line 1000
    iget-object v0, p0, Lcom/yftech/settings/manager/CarPartsManager;->PEPS_AUTO_TRUNK_OPEN:[Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 1001
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDoorManager;->get()Lcom/yftech/vehicle/sdk/CarDoorManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/settings/manager/CarPartsManager;->PEPS_AUTO_TRUNK_OPEN:[Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;

    aget-object p0, p0, p1

    invoke-virtual {v0, p0}, Lcom/yftech/vehicle/sdk/CarDoorManager;->setPEPSAutoTrunkOpen(Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setPEPSUnlockEnabled(Z)Z
    .locals 0

    .line 834
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDoorManager;->get()Lcom/yftech/vehicle/sdk/CarDoorManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarDoorManager;->setPEPSUnlockEnabled(Z)Z

    move-result p0

    return p0
.end method

.method private setPEPSWalkAwayLockEnabled(Z)Z
    .locals 0

    .line 820
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDoorManager;->get()Lcom/yftech/vehicle/sdk/CarDoorManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarDoorManager;->setPEPSWalkAwayLockEnabled(Z)Z

    move-result p0

    return p0
.end method

.method private setPSDDoorMode(I)Z
    .locals 1

    if-ltz p1, :cond_0

    .line 1084
    iget-object v0, p0, Lcom/yftech/settings/manager/CarPartsManager;->PSD_DOOR_MODE:[Z

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 1085
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDoorManager;->get()Lcom/yftech/vehicle/sdk/CarDoorManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/settings/manager/CarPartsManager;->PSD_DOOR_MODE:[Z

    aget-boolean p0, p0, p1

    invoke-virtual {v0, p0}, Lcom/yftech/vehicle/sdk/CarDoorManager;->setSlidingDoorModeAutoEnabled(Z)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setPSDDoorSpeed(I)Z
    .locals 7

    const/4 v0, 0x0

    if-ltz p1, :cond_2

    .line 1063
    iget-object v1, p0, Lcom/yftech/settings/manager/CarPartsManager;->PSD_DOOR_SPEED:[Lcom/yftech/vehicle/internal/adapter/ICarDoor$PSDDoorSpeed;

    array-length v1, v1

    if-ge p1, v1, :cond_2

    .line 1064
    iput p1, p0, Lcom/yftech/settings/manager/CarPartsManager;->mPsdDoorSpeedOption:I

    .line 1065
    iget-object v1, p0, Lcom/yftech/settings/manager/CarPartsManager;->PSD_DOOR_SPEED:[Lcom/yftech/vehicle/internal/adapter/ICarDoor$PSDDoorSpeed;

    aget-object v1, v1, p1

    .line 1066
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDoorManager;->get()Lcom/yftech/vehicle/sdk/CarDoorManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/yftech/vehicle/sdk/CarDoorManager;->setPSDDoorSpeedL(Lcom/yftech/vehicle/internal/adapter/ICarDoor$PSDDoorSpeed;)Z

    move-result v2

    .line 1067
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDoorManager;->get()Lcom/yftech/vehicle/sdk/CarDoorManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/yftech/vehicle/sdk/CarDoorManager;->setPSDDoorSpeedR(Lcom/yftech/vehicle/internal/adapter/ICarDoor$PSDDoorSpeed;)Z

    move-result v3

    if-nez v2, :cond_0

    if-eqz v3, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    const-string v4, "CarPartsManager"

    .line 1069
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setPSDDoorSpeed speed:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " resultL:"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " resultR:"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " result:"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    invoke-direct {p0, p1}, Lcom/yftech/settings/manager/CarPartsManager;->startRereadPSDDoorSpeedTimeout(I)V

    :cond_2
    return v0
.end method

.method private setParkingAidVolumeType(I)Z
    .locals 1

    if-ltz p1, :cond_0

    .line 1188
    iget-object v0, p0, Lcom/yftech/settings/manager/CarPartsManager;->PARKING_AID_VOLUME_TYPE:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 1189
    iget-object p0, p0, Lcom/yftech/settings/manager/CarPartsManager;->PARKING_AID_VOLUME_TYPE:[I

    aget p0, p0, p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private setRemoteUnlockMode(I)Z
    .locals 1

    if-ltz p1, :cond_0

    .line 792
    iget-object v0, p0, Lcom/yftech/settings/manager/CarPartsManager;->REMOTE_UNLOCK_MODE:[Lcom/yftech/vehicle/internal/adapter/ICarDoor$RemoteUnlockMode;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 793
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDoorManager;->get()Lcom/yftech/vehicle/sdk/CarDoorManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/settings/manager/CarPartsManager;->REMOTE_UNLOCK_MODE:[Lcom/yftech/vehicle/internal/adapter/ICarDoor$RemoteUnlockMode;

    aget-object p0, p0, p1

    invoke-virtual {v0, p0}, Lcom/yftech/vehicle/sdk/CarDoorManager;->setRemoteUnlockMode(Lcom/yftech/vehicle/internal/adapter/ICarDoor$RemoteUnlockMode;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setSeatDriverConvenientAccessEnabled(Z)Z
    .locals 0

    .line 1125
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->get()Lcom/yftech/vehicle/sdk/CarSettingsManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->setDriverEasyEntryAndExitEnabled(Z)Z

    move-result p0

    return p0
.end method

.method private setSecondRowColdPermissionLeftEnabled(Z)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private setSecondRowColdPermissionRightEnabled(Z)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private setSpeedAutoLockEnabled(Z)Z
    .locals 0

    .line 848
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDoorManager;->get()Lcom/yftech/vehicle/sdk/CarDoorManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarDoorManager;->setSpeedAutoLockEnabled(Z)Z

    move-result p0

    return p0
.end method

.method private setSunroofWindowAutoCloseEnabled(Z)Z
    .locals 0

    .line 889
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarWindowManager;->get()Lcom/yftech/vehicle/sdk/CarWindowManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarWindowManager;->setSunroofWindowAutoCloseEnabled(Z)Z

    move-result p0

    return p0
.end method

.method private setWirelessChargingEnabled(Z)Z
    .locals 0

    .line 1141
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->get()Lcom/yftech/vehicle/sdk/CarSettingsManager;

    move-result-object p0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtl;->ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtl;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtl;->NOT_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtl;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->setWCMCtl(Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtl;)Z

    move-result p0

    return p0
.end method

.method private startRereadPSDDoorSpeedTimeout(I)V
    .locals 3

    .line 1528
    iput p1, p0, Lcom/yftech/settings/manager/CarPartsManager;->mTargetSpeedIndex:I

    .line 1529
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarPartsManager;->stopRereadPSDDoorSpeedTimeout()V

    const-string v0, "CarPartsManager"

    .line 1530
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRereadPSDDoorSpeedTimeout() targetSpeedIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 1531
    iput-boolean p1, p0, Lcom/yftech/settings/manager/CarPartsManager;->mStartRereadPSDDoorSpeedTimeout:Z

    .line 1532
    iget-object p1, p0, Lcom/yftech/settings/manager/CarPartsManager;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mRereadPSDDoorSpeedTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startWaitPSDDoorSpeedCallbackTimeout()V
    .locals 3

    .line 1488
    iget-boolean v0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mIsPSDDoorSpeedLChanged:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mIsPSDDoorSpeedRChanged:Z

    if-eqz v0, :cond_0

    const-string v0, "CarPartsManager"

    const-string v1, "startWaitPSDDoorSpeedCallbackTimeout() both callback"

    .line 1489
    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1490
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarPartsManager;->stopWaitPSDDoorSpeedCallbackTimeout()V

    .line 1491
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarPartsManager;->stopRereadPSDDoorSpeedTimeout()V

    .line 1492
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarPartsManager;->notifyPSDDoorSpeed()V

    const/4 v0, 0x0

    .line 1493
    iput-boolean v0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mIsPSDDoorSpeedLChanged:Z

    .line 1494
    iput-boolean v0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mIsPSDDoorSpeedRChanged:Z

    return-void

    .line 1497
    :cond_0
    iget-boolean v0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mStartWaitPSDDoorSpeedCallbackTimeout:Z

    if-eqz v0, :cond_1

    const-string p0, "CarPartsManager"

    const-string v0, "startWaitPSDDoorSpeedCallbackTimeout() started"

    .line 1498
    invoke-static {p0, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "CarPartsManager"

    const-string v1, "startWaitPSDDoorSpeedCallbackTimeout()"

    .line 1501
    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1502
    iput-boolean v0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mStartWaitPSDDoorSpeedCallbackTimeout:Z

    .line 1503
    iget-object v0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mWaitPSDDoorSpeedCallbackTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private stopRereadPSDDoorSpeedTimeout()V
    .locals 2

    .line 1536
    iget-boolean v0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mStartRereadPSDDoorSpeedTimeout:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "CarPartsManager"

    const-string v1, "stopRereadPSDDoorSpeedTimeout()"

    .line 1539
    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1540
    iput-boolean v0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mStartRereadPSDDoorSpeedTimeout:Z

    .line 1541
    iget-object v0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mRereadPSDDoorSpeedTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private stopWaitPSDDoorSpeedCallbackTimeout()V
    .locals 2

    .line 1507
    iget-boolean v0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mStartWaitPSDDoorSpeedCallbackTimeout:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "CarPartsManager"

    const-string v1, "stopWaitPSDDoorSpeedCallbackTimeout()"

    .line 1510
    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1511
    iput-boolean v0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mStartWaitPSDDoorSpeedCallbackTimeout:Z

    .line 1512
    iget-object v0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mWaitPSDDoorSpeedCallbackTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public deInit()V
    .locals 2

    .line 532
    invoke-super {p0}, Lcom/yftech/settings/manager/BaseManager;->deInit()V

    .line 533
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->get()Lcom/yftech/vehicle/sdk/CarSettingsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/settings/manager/CarPartsManager;->mCarSettingsListener:Lcom/yftech/vehicle/sdk/CarSettingsManager$CarSettingsListener;

    invoke-virtual {v0, v1}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->unregisterListener(Lcom/yftech/vehicle/sdk/CarSettingsManager$CarSettingsListener;)V

    .line 534
    invoke-static {}, Lcom/yftech/vehicle/sdk/AirConditionManager;->get()Lcom/yftech/vehicle/sdk/AirConditionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/settings/manager/CarPartsManager;->mAirConditionListener:Lcom/yftech/vehicle/sdk/AirConditionManager$AirConditionListener;

    invoke-virtual {v0, v1}, Lcom/yftech/vehicle/sdk/AirConditionManager;->unregisterListener(Lcom/yftech/vehicle/sdk/AirConditionManager$AirConditionListener;)V

    .line 535
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarWindowManager;->get()Lcom/yftech/vehicle/sdk/CarWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/settings/manager/CarPartsManager;->mCarWindowListener:Lcom/yftech/vehicle/sdk/CarWindowManager$CarWindowListener;

    invoke-virtual {v0, v1}, Lcom/yftech/vehicle/sdk/CarWindowManager;->unregisterListener(Lcom/yftech/vehicle/sdk/CarWindowManager$CarWindowListener;)V

    .line 536
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDoorManager;->get()Lcom/yftech/vehicle/sdk/CarDoorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/settings/manager/CarPartsManager;->mCarDoorListener:Lcom/yftech/vehicle/sdk/CarDoorManager$CarDoorListener;

    invoke-virtual {v0, v1}, Lcom/yftech/vehicle/sdk/CarDoorManager;->unregisterListener(Lcom/yftech/vehicle/sdk/CarDoorManager$CarDoorListener;)V

    .line 537
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarLightManager;->get()Lcom/yftech/vehicle/sdk/CarLightManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mCarLightListener:Lcom/yftech/vehicle/sdk/CarLightManager$CarLightListener;

    invoke-virtual {v0, p0}, Lcom/yftech/vehicle/sdk/CarLightManager;->unregisterListener(Lcom/yftech/vehicle/sdk/CarLightManager$CarLightListener;)V

    return-void
.end method

.method public getEnabled(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z
    .locals 1

    .line 557
    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$8;->$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/CarPartsManager$Function;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    .line 605
    :pswitch_0
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarPartsManager;->getElectricHiddenDoorHandleEnable()Z

    move-result p0

    return p0

    .line 603
    :pswitch_1
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarPartsManager;->getAirUnlockVentilationEnable()Z

    move-result p0

    return p0

    .line 601
    :pswitch_2
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarPartsManager;->getAVASEnabled()Z

    move-result p0

    return p0

    .line 599
    :pswitch_3
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarPartsManager;->getLockUnlockSoundEnabled()Z

    move-result p0

    return p0

    .line 597
    :pswitch_4
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarPartsManager;->getOSRMTurnDownEnabled()Z

    move-result p0

    return p0

    .line 595
    :pswitch_5
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarPartsManager;->getConvenientCarSearchEnabled()Z

    move-result p0

    return p0

    .line 593
    :pswitch_6
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarPartsManager;->getWirelessChargingEnabled()Z

    move-result p0

    return p0

    .line 591
    :pswitch_7
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarPartsManager;->getAcAutoDryingEnabled()Z

    move-result p0

    return p0

    .line 589
    :pswitch_8
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarPartsManager;->getSeatDriverConvenientAccessEnabled()Z

    move-result p0

    return p0

    .line 587
    :pswitch_9
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarPartsManager;->getKeyReminderEnabled()Z

    move-result p0

    return p0

    .line 585
    :pswitch_a
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarPartsManager;->getSecondRowColdPermissionRightEnabled()Z

    move-result p0

    return p0

    .line 583
    :pswitch_b
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarPartsManager;->getSecondRowColdPermissionLeftEnabled()Z

    move-result p0

    return p0

    .line 581
    :pswitch_c
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarPartsManager;->getAutoWiperModeEnabled()Z

    move-result p0

    return p0

    .line 579
    :pswitch_d
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarPartsManager;->getAutoWindowUpInRainEnabled()Z

    move-result p0

    return p0

    .line 577
    :pswitch_e
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarPartsManager;->getHeadLightDelayEnabled()Z

    move-result p0

    return p0

    .line 575
    :pswitch_f
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarPartsManager;->getAirCirculationModeOfAutoModeEnabled()Z

    move-result p0

    return p0

    .line 573
    :pswitch_10
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarPartsManager;->getOSRMAutoFoldEnabled()Z

    move-result p0

    return p0

    .line 571
    :pswitch_11
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarPartsManager;->getSunroofWindowAutoCloseEnabled()Z

    move-result p0

    return p0

    .line 569
    :pswitch_12
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarPartsManager;->getETCEnabled()Z

    move-result p0

    return p0

    .line 567
    :pswitch_13
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarPartsManager;->getSpeedAutoLockEnabled()Z

    move-result p0

    return p0

    .line 565
    :pswitch_14
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarPartsManager;->getPEPSUnlockEnabled()Z

    move-result p0

    return p0

    .line 563
    :pswitch_15
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarPartsManager;->getPEPSWalkAwayLockEnabled()Z

    move-result p0

    return p0

    .line 561
    :pswitch_16
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarPartsManager;->getAutoUnlockEnabled()Z

    move-result p0

    return p0

    .line 559
    :pswitch_17
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarPartsManager;->getIHBCEnabled()Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic getEnabled(Ljava/lang/Object;)Z
    .locals 0

    .line 30
    check-cast p1, Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {p0, p1}, Lcom/yftech/settings/manager/CarPartsManager;->getEnabled(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result p0

    return p0
.end method

.method public getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z
    .locals 2

    .line 1377
    sget-object p0, Lcom/yftech/settings/manager/CarPartsManager$8;->$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/CarPartsManager$Function;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    return v0

    .line 1475
    :pswitch_1
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isSteeringWheelCustomButtonPresent()Z

    move-result p0

    return p0

    :pswitch_2
    return v0

    :pswitch_3
    return v0

    .line 1439
    :pswitch_4
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isSlidingDoorSpeedAdjustmentPresent()Z

    move-result p0

    return p0

    .line 1420
    :pswitch_5
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isSmartTailgatePresent()Z

    move-result p0

    return p0

    .line 1414
    :pswitch_6
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isComfortCurvePresent()Z

    move-result p0

    return p0

    .line 1407
    :pswitch_7
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isFanSpeedOfAutoModePresent()Z

    move-result p0

    return p0

    .line 1382
    :pswitch_8
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isRemoteUnlockPresent()Z

    move-result p0

    return p0

    .line 1478
    :pswitch_9
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isHiddenDoorHandlePresent()Z

    move-result p0

    return p0

    .line 1472
    :pswitch_a
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isUnlockVentilationPresent()Z

    move-result p0

    return p0

    :pswitch_b
    return v0

    .line 1465
    :pswitch_c
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isLockAndUnlockWhistleNotePresent()Z

    move-result p0

    return p0

    .line 1462
    :pswitch_d
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isExteriorRearviewMirrorDipPresent()Z

    move-result p0

    return p0

    :pswitch_e
    return v0

    .line 1456
    :pswitch_f
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isWirelessChargingPresent()Z

    move-result p0

    return p0

    .line 1453
    :pswitch_10
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isEvaporatorSelfDryingPresent()Z

    move-result p0

    return p0

    .line 1450
    :pswitch_11
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isDriverEasyEntryAndExitFunctionPresent()Z

    move-result p0

    return p0

    :pswitch_12
    return v0

    :pswitch_13
    return v0

    :pswitch_14
    return v0

    .line 1426
    :pswitch_15
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isAutoWiperPresent()Z

    move-result p0

    return p0

    :pswitch_16
    return v0

    .line 1417
    :pswitch_17
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isLightTurnedOffDelayPresent()Z

    move-result p0

    return p0

    .line 1410
    :pswitch_18
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isAutoModeOfFrsAndRecControlPresent()Z

    move-result p0

    return p0

    .line 1403
    :pswitch_19
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isExteriorRearViewMirrorAutoFoldingAndUnfoldingPresent()Z

    move-result p0

    return p0

    .line 1400
    :pswitch_1a
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isCloseWindowWhileLockPresent()Z

    move-result p0

    return p0

    .line 1397
    :pswitch_1b
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isEtcSettingPresent()Z

    move-result p0

    return p0

    .line 1392
    :pswitch_1c
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isSpeedLockPresent()Z

    move-result p0

    return p0

    .line 1389
    :pswitch_1d
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->getWalAndApu()Lcom/yftech/vehicle/internal/adapter/ICarConfig$WalAndApu;

    move-result-object p0

    .line 1390
    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$WalAndApu;->APU:Lcom/yftech/vehicle/internal/adapter/ICarConfig$WalAndApu;

    if-eq p0, v1, :cond_1

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$WalAndApu;->WAL_AND_APU:Lcom/yftech/vehicle/internal/adapter/ICarConfig$WalAndApu;

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    :cond_1
    :goto_0
    return p1

    .line 1386
    :pswitch_1e
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->getWalAndApu()Lcom/yftech/vehicle/internal/adapter/ICarConfig$WalAndApu;

    move-result-object p0

    .line 1387
    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$WalAndApu;->WAL:Lcom/yftech/vehicle/internal/adapter/ICarConfig$WalAndApu;

    if-eq p0, v1, :cond_3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$WalAndApu;->WAL_AND_APU:Lcom/yftech/vehicle/internal/adapter/ICarConfig$WalAndApu;

    if-ne p0, v1, :cond_2

    goto :goto_1

    :cond_2
    move p1, v0

    :cond_3
    :goto_1
    return p1

    .line 1384
    :pswitch_1f
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isAutoUnlockingPresent()Z

    move-result p0

    return p0

    .line 1379
    :pswitch_20
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isControlHighBeamAssistantPresent()Z

    move-result p0

    return p0

    .line 1394
    :pswitch_21
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isWiperMaintanencePresent()Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_21
        :pswitch_0
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getOption(Lcom/yftech/settings/manager/CarPartsManager$Function;)I
    .locals 1

    .line 712
    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$8;->$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/CarPartsManager$Function;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p0, -0x1

    return p0

    .line 728
    :pswitch_0
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarPartsManager;->getAsteriskKeyOption()I

    move-result p0

    return p0

    .line 726
    :pswitch_1
    invoke-virtual {p0}, Lcom/yftech/settings/manager/CarPartsManager;->getParkingAidVolumeType()I

    move-result p0

    return p0

    .line 724
    :pswitch_2
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarPartsManager;->getPSDDoorMode()I

    move-result p0

    return p0

    .line 722
    :pswitch_3
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarPartsManager;->getPSDDoorSpeed()I

    move-result p0

    return p0

    .line 720
    :pswitch_4
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarPartsManager;->getPEPSAutoTrunkOpen()I

    move-result p0

    return p0

    .line 718
    :pswitch_5
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarPartsManager;->getComfortCurveMode()I

    move-result p0

    return p0

    .line 716
    :pswitch_6
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarPartsManager;->getFanSpeedOfAutoMode()I

    move-result p0

    return p0

    .line 714
    :pswitch_7
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarPartsManager;->getRemoteUnlockMode()I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1c
        :pswitch_7
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

    .line 30
    check-cast p1, Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {p0, p1}, Lcom/yftech/settings/manager/CarPartsManager;->getOption(Lcom/yftech/settings/manager/CarPartsManager$Function;)I

    move-result p0

    return p0
.end method

.method public getParkingAidVolumeType()I
    .locals 1

    const/4 v0, 0x0

    .line 1182
    invoke-direct {p0, v0}, Lcom/yftech/settings/manager/CarPartsManager;->getValidParkingAidVolumeOption(I)I

    move-result p0

    return p0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    .line 473
    invoke-super {p0, p1}, Lcom/yftech/settings/manager/BaseManager;->init(Landroid/content/Context;)V

    .line 474
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->get()Lcom/yftech/vehicle/sdk/CarSettingsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mCarSettingsListener:Lcom/yftech/vehicle/sdk/CarSettingsManager$CarSettingsListener;

    invoke-virtual {p1, v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->registerListener(Lcom/yftech/vehicle/sdk/CarSettingsManager$CarSettingsListener;)V

    .line 475
    invoke-static {}, Lcom/yftech/vehicle/sdk/AirConditionManager;->get()Lcom/yftech/vehicle/sdk/AirConditionManager;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mAirConditionListener:Lcom/yftech/vehicle/sdk/AirConditionManager$AirConditionListener;

    invoke-virtual {p1, v0}, Lcom/yftech/vehicle/sdk/AirConditionManager;->registerListener(Lcom/yftech/vehicle/sdk/AirConditionManager$AirConditionListener;)V

    .line 476
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarWindowManager;->get()Lcom/yftech/vehicle/sdk/CarWindowManager;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mCarWindowListener:Lcom/yftech/vehicle/sdk/CarWindowManager$CarWindowListener;

    invoke-virtual {p1, v0}, Lcom/yftech/vehicle/sdk/CarWindowManager;->registerListener(Lcom/yftech/vehicle/sdk/CarWindowManager$CarWindowListener;)V

    .line 477
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDoorManager;->get()Lcom/yftech/vehicle/sdk/CarDoorManager;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mCarDoorListener:Lcom/yftech/vehicle/sdk/CarDoorManager$CarDoorListener;

    invoke-virtual {p1, v0}, Lcom/yftech/vehicle/sdk/CarDoorManager;->registerListener(Lcom/yftech/vehicle/sdk/CarDoorManager$CarDoorListener;)V

    .line 478
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarLightManager;->get()Lcom/yftech/vehicle/sdk/CarLightManager;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/settings/manager/CarPartsManager;->mCarLightListener:Lcom/yftech/vehicle/sdk/CarLightManager$CarLightListener;

    invoke-virtual {p1, v0}, Lcom/yftech/vehicle/sdk/CarLightManager;->registerListener(Lcom/yftech/vehicle/sdk/CarLightManager$CarLightListener;)V

    .line 479
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarPartsManager;->initCarKeyCustomFunction()V

    return-void
.end method

.method public setAction(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z
    .locals 3

    .line 543
    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$8;->$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/CarPartsManager$Function;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    .line 548
    :pswitch_0
    invoke-virtual {p0}, Lcom/yftech/settings/manager/CarPartsManager;->stopTimeout()Z

    move-result p0

    goto :goto_0

    .line 545
    :pswitch_1
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarPartsManager;->frontWiperServicePosition()Z

    move-result p0

    :goto_0
    const-string v0, "CarPartsManager"

    .line 551
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

    .line 30
    check-cast p1, Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {p0, p1}, Lcom/yftech/settings/manager/CarPartsManager;->setAction(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result p0

    return p0
.end method

.method public setEnabled(Lcom/yftech/settings/manager/CarPartsManager$Function;Z)Z
    .locals 3

    .line 626
    invoke-virtual {p0}, Lcom/yftech/settings/manager/CarPartsManager;->startTimeout()V

    .line 628
    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$8;->$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/CarPartsManager$Function;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    goto/16 :goto_0

    .line 702
    :pswitch_0
    invoke-virtual {p0}, Lcom/yftech/settings/manager/CarPartsManager;->startTimeout()V

    .line 703
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/CarPartsManager;->setElectricHiddenDoorHandleEnable(Z)Z

    move-result p0

    goto/16 :goto_0

    .line 698
    :pswitch_1
    invoke-virtual {p0}, Lcom/yftech/settings/manager/CarPartsManager;->startTimeout()V

    .line 699
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/CarPartsManager;->setAirUnlockVentilation(Z)Z

    move-result p0

    goto/16 :goto_0

    .line 694
    :pswitch_2
    invoke-virtual {p0}, Lcom/yftech/settings/manager/CarPartsManager;->startTimeout()V

    .line 695
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/CarPartsManager;->setAVASEnabled(Z)Z

    move-result p0

    goto/16 :goto_0

    .line 690
    :pswitch_3
    invoke-virtual {p0}, Lcom/yftech/settings/manager/CarPartsManager;->startTimeout()V

    .line 691
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/CarPartsManager;->setLockUnlockSoundEnabled(Z)Z

    move-result p0

    goto/16 :goto_0

    .line 687
    :pswitch_4
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/CarPartsManager;->setOSRMTurnDownEnabled(Z)Z

    move-result p0

    goto/16 :goto_0

    .line 684
    :pswitch_5
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/CarPartsManager;->setConvenientCarSearchEnabled(Z)Z

    move-result p0

    goto :goto_0

    .line 681
    :pswitch_6
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/CarPartsManager;->setWirelessChargingEnabled(Z)Z

    move-result p0

    goto :goto_0

    .line 678
    :pswitch_7
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/CarPartsManager;->setAcAutoDryingEnabled(Z)Z

    move-result p0

    goto :goto_0

    .line 675
    :pswitch_8
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/CarPartsManager;->setSeatDriverConvenientAccessEnabled(Z)Z

    move-result p0

    goto :goto_0

    .line 672
    :pswitch_9
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/CarPartsManager;->setKeyReminderEnabled(Z)Z

    move-result p0

    goto :goto_0

    .line 669
    :pswitch_a
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/CarPartsManager;->setSecondRowColdPermissionRightEnabled(Z)Z

    move-result p0

    goto :goto_0

    .line 666
    :pswitch_b
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/CarPartsManager;->setSecondRowColdPermissionLeftEnabled(Z)Z

    move-result p0

    goto :goto_0

    .line 663
    :pswitch_c
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/CarPartsManager;->setAutoWiperModeEnabled(Z)Z

    move-result p0

    goto :goto_0

    .line 660
    :pswitch_d
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/CarPartsManager;->setAutoWindowUpInRainEnabled(Z)Z

    move-result p0

    goto :goto_0

    .line 657
    :pswitch_e
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/CarPartsManager;->setHeadLightDelayEnabled(Z)Z

    move-result p0

    goto :goto_0

    .line 654
    :pswitch_f
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/CarPartsManager;->setAirCirculationModeOfAutoModeEnabled(Z)Z

    move-result p0

    goto :goto_0

    .line 651
    :pswitch_10
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/CarPartsManager;->setOSRMAutoFoldEnabled(Z)Z

    move-result p0

    goto :goto_0

    .line 648
    :pswitch_11
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/CarPartsManager;->setSunroofWindowAutoCloseEnabled(Z)Z

    move-result p0

    goto :goto_0

    .line 645
    :pswitch_12
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/CarPartsManager;->setETCEnabled(Z)Z

    move-result p0

    goto :goto_0

    .line 642
    :pswitch_13
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/CarPartsManager;->setSpeedAutoLockEnabled(Z)Z

    move-result p0

    goto :goto_0

    .line 639
    :pswitch_14
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/CarPartsManager;->setPEPSUnlockEnabled(Z)Z

    move-result p0

    goto :goto_0

    .line 636
    :pswitch_15
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/CarPartsManager;->setPEPSWalkAwayLockEnabled(Z)Z

    move-result p0

    goto :goto_0

    .line 633
    :pswitch_16
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/CarPartsManager;->setAutoUnlockEnabled(Z)Z

    move-result p0

    goto :goto_0

    .line 630
    :pswitch_17
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/CarPartsManager;->setIHBCEnabled(Z)Z

    move-result p0

    :goto_0
    const-string v0, "CarPartsManager"

    .line 706
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
    .packed-switch 0x3
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic setEnabled(Ljava/lang/Object;Z)Z
    .locals 0

    .line 30
    check-cast p1, Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/settings/manager/CarPartsManager;->setEnabled(Lcom/yftech/settings/manager/CarPartsManager$Function;Z)Z

    move-result p0

    return p0
.end method

.method public setOption(Lcom/yftech/settings/manager/CarPartsManager$Function;I)Z
    .locals 3

    .line 735
    invoke-virtual {p0}, Lcom/yftech/settings/manager/CarPartsManager;->startTimeout()V

    .line 737
    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$8;->$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/CarPartsManager$Function;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    .line 761
    :pswitch_0
    invoke-virtual {p0}, Lcom/yftech/settings/manager/CarPartsManager;->stopTimeout()Z

    .line 762
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/CarPartsManager;->setAsteriskKeyOption(I)Z

    move-result p0

    goto :goto_0

    .line 758
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/CarPartsManager;->setParkingAidVolumeType(I)Z

    move-result p0

    goto :goto_0

    .line 755
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/CarPartsManager;->setPSDDoorMode(I)Z

    move-result p0

    goto :goto_0

    .line 751
    :pswitch_3
    invoke-virtual {p0}, Lcom/yftech/settings/manager/CarPartsManager;->stopTimeout()Z

    .line 752
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/CarPartsManager;->setPSDDoorSpeed(I)Z

    move-result p0

    goto :goto_0

    .line 748
    :pswitch_4
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/CarPartsManager;->setPEPSAutoTrunkOpen(I)Z

    move-result p0

    goto :goto_0

    .line 745
    :pswitch_5
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/CarPartsManager;->setComfortCurveMode(I)Z

    move-result p0

    goto :goto_0

    .line 742
    :pswitch_6
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/CarPartsManager;->setFanSpeedOfAutoMode(I)Z

    move-result p0

    goto :goto_0

    .line 739
    :pswitch_7
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/CarPartsManager;->setRemoteUnlockMode(I)Z

    move-result p0

    :goto_0
    const-string v0, "CarPartsManager"

    .line 765
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
    .packed-switch 0x1c
        :pswitch_7
        :pswitch_6
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

    .line 30
    check-cast p1, Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/settings/manager/CarPartsManager;->setOption(Lcom/yftech/settings/manager/CarPartsManager$Function;I)Z

    move-result p0

    return p0
.end method

.method public setValue(Lcom/yftech/settings/manager/CarPartsManager$Function;Ljava/lang/Object;)Z
    .locals 3

    .line 613
    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$8;->$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/CarPartsManager$Function;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 615
    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleSaveCmd;

    invoke-direct {p0, v0}, Lcom/yftech/settings/manager/CarPartsManager;->setOSRMTurnDownValue(Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleSaveCmd;)Z

    move-result p0

    :goto_0
    const-string v0, "CarPartsManager"

    .line 620
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setValue() function:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " value:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " result:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 30
    check-cast p1, Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/settings/manager/CarPartsManager;->setValue(Lcom/yftech/settings/manager/CarPartsManager$Function;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
