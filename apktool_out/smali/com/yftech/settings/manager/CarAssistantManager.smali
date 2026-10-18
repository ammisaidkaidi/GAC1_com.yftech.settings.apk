.class public Lcom/yftech/settings/manager/CarAssistantManager;
.super Lcom/yftech/settings/manager/BaseManager;
.source "CarAssistantManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/settings/manager/CarAssistantManager$Function;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yftech/settings/manager/BaseManager<",
        "Lcom/yftech/settings/manager/CarAssistantManager$Function;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CarAssistantManager"

.field private static sCarAssistantManager:Lcom/yftech/settings/manager/CarAssistantManager;


# instance fields
.field private ADAS_WARN_TYPE:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;

.field private CRUISE_ASSIST:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$CruiseAssistMode;

.field private FCW_WARNING_DISTANCE:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;

.field private IS_LKS_MODE_OPTION:Z

.field private LKS_MODE:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;

.field private mAEBOffEnable:Z

.field private mAdasWarnTypeOption:I

.field private mCarIcmListener:Lcom/yftech/vehicle/sdk/CarIcmManager$CarIcmListener;

.field private mCarSettingsListener:Lcom/yftech/vehicle/sdk/CarSettingsManager$CarSettingsListener;

.field private mCruiseAssistOption:I

.field private mFcwWarningDistanceEnable:Z

.field private mFcwWarningDistanceOption:I

.field private mFrontCarDistanceDisplayEnable:Z

.field private mIAccEnable:Z

.field private mIntelligentAvoidEnable:Z

.field private mLdwLkaEnabled:Z

.field private mLksModeOption:I

.field private mSpeedWarningValue:I

.field private mTSRAudioWarningEnable:Z

.field private mTSREnable:Z


# direct methods
.method private constructor <init>()V
    .locals 6

    .line 236
    invoke-direct {p0}, Lcom/yftech/settings/manager/BaseManager;-><init>()V

    const/4 v0, 0x3

    .line 41
    new-array v1, v0, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;

    sget-object v2, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;->FAR:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;->NORMAL:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;->CLOSE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    iput-object v1, p0, Lcom/yftech/settings/manager/CarAssistantManager;->FCW_WARNING_DISTANCE:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;

    .line 45
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;->STEERING:Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;->WARNING:Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;->STEERING_AND_WARNING:Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/yftech/settings/manager/CarAssistantManager;->LKS_MODE:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;

    .line 50
    new-array v0, v5, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$CruiseAssistMode;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$CruiseAssistMode;->ACC_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$CruiseAssistMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$CruiseAssistMode;->TJA_ICA_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$CruiseAssistMode;

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/yftech/settings/manager/CarAssistantManager;->CRUISE_ASSIST:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$CruiseAssistMode;

    .line 52
    iput-boolean v4, p0, Lcom/yftech/settings/manager/CarAssistantManager;->mFcwWarningDistanceEnable:Z

    .line 53
    iput v4, p0, Lcom/yftech/settings/manager/CarAssistantManager;->mFcwWarningDistanceOption:I

    .line 54
    iput-boolean v4, p0, Lcom/yftech/settings/manager/CarAssistantManager;->mLdwLkaEnabled:Z

    .line 55
    iput v4, p0, Lcom/yftech/settings/manager/CarAssistantManager;->mLksModeOption:I

    .line 56
    iput v3, p0, Lcom/yftech/settings/manager/CarAssistantManager;->mSpeedWarningValue:I

    .line 57
    iput v3, p0, Lcom/yftech/settings/manager/CarAssistantManager;->mCruiseAssistOption:I

    .line 58
    iput v3, p0, Lcom/yftech/settings/manager/CarAssistantManager;->mAdasWarnTypeOption:I

    .line 60
    iput-boolean v4, p0, Lcom/yftech/settings/manager/CarAssistantManager;->mTSREnable:Z

    .line 61
    iput-boolean v3, p0, Lcom/yftech/settings/manager/CarAssistantManager;->mIAccEnable:Z

    .line 62
    iput-boolean v4, p0, Lcom/yftech/settings/manager/CarAssistantManager;->mTSRAudioWarningEnable:Z

    .line 63
    iput-boolean v4, p0, Lcom/yftech/settings/manager/CarAssistantManager;->mAEBOffEnable:Z

    .line 64
    iput-boolean v4, p0, Lcom/yftech/settings/manager/CarAssistantManager;->mFrontCarDistanceDisplayEnable:Z

    .line 65
    iput-boolean v4, p0, Lcom/yftech/settings/manager/CarAssistantManager;->mIntelligentAvoidEnable:Z

    .line 67
    iput-boolean v3, p0, Lcom/yftech/settings/manager/CarAssistantManager;->IS_LKS_MODE_OPTION:Z

    .line 69
    new-instance v0, Lcom/yftech/settings/manager/CarAssistantManager$1;

    invoke-direct {v0, p0}, Lcom/yftech/settings/manager/CarAssistantManager$1;-><init>(Lcom/yftech/settings/manager/CarAssistantManager;)V

    iput-object v0, p0, Lcom/yftech/settings/manager/CarAssistantManager;->mCarSettingsListener:Lcom/yftech/vehicle/sdk/CarSettingsManager$CarSettingsListener;

    .line 217
    new-instance v0, Lcom/yftech/settings/manager/CarAssistantManager$2;

    invoke-direct {v0, p0}, Lcom/yftech/settings/manager/CarAssistantManager$2;-><init>(Lcom/yftech/settings/manager/CarAssistantManager;)V

    iput-object v0, p0, Lcom/yftech/settings/manager/CarAssistantManager;->mCarIcmListener:Lcom/yftech/vehicle/sdk/CarIcmManager$CarIcmListener;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/settings/manager/CarAssistantManager;)Z
    .locals 0

    .line 16
    iget-boolean p0, p0, Lcom/yftech/settings/manager/CarAssistantManager;->mFcwWarningDistanceEnable:Z

    return p0
.end method

.method static synthetic access$002(Lcom/yftech/settings/manager/CarAssistantManager;Z)Z
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcom/yftech/settings/manager/CarAssistantManager;->mFcwWarningDistanceEnable:Z

    return p1
.end method

.method static synthetic access$100(Lcom/yftech/settings/manager/CarAssistantManager;Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;)I
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/yftech/settings/manager/CarAssistantManager;->getValidFcwWarningDistanceOption(Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/yftech/settings/manager/CarAssistantManager;)Z
    .locals 0

    .line 16
    iget-boolean p0, p0, Lcom/yftech/settings/manager/CarAssistantManager;->mFrontCarDistanceDisplayEnable:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/yftech/settings/manager/CarAssistantManager;Z)Z
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcom/yftech/settings/manager/CarAssistantManager;->mFrontCarDistanceDisplayEnable:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/yftech/settings/manager/CarAssistantManager;)Z
    .locals 0

    .line 16
    iget-boolean p0, p0, Lcom/yftech/settings/manager/CarAssistantManager;->mIntelligentAvoidEnable:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/yftech/settings/manager/CarAssistantManager;Z)Z
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcom/yftech/settings/manager/CarAssistantManager;->mIntelligentAvoidEnable:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/yftech/settings/manager/CarAssistantManager;I)I
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/yftech/settings/manager/CarAssistantManager;->getValidSpeedWarningValue(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/yftech/settings/manager/CarAssistantManager;Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;)Z
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/manager/CarAssistantManager;->getValidLdwLkaEnabled(Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/yftech/settings/manager/CarAssistantManager;Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;)I
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/yftech/settings/manager/CarAssistantManager;->getValidLksModeOption(Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/yftech/settings/manager/CarAssistantManager;)Z
    .locals 0

    .line 16
    iget-boolean p0, p0, Lcom/yftech/settings/manager/CarAssistantManager;->mTSREnable:Z

    return p0
.end method

.method static synthetic access$402(Lcom/yftech/settings/manager/CarAssistantManager;Z)Z
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcom/yftech/settings/manager/CarAssistantManager;->mTSREnable:Z

    return p1
.end method

.method static synthetic access$500(Lcom/yftech/settings/manager/CarAssistantManager;)Z
    .locals 0

    .line 16
    iget-boolean p0, p0, Lcom/yftech/settings/manager/CarAssistantManager;->mIAccEnable:Z

    return p0
.end method

.method static synthetic access$502(Lcom/yftech/settings/manager/CarAssistantManager;Z)Z
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcom/yftech/settings/manager/CarAssistantManager;->mIAccEnable:Z

    return p1
.end method

.method static synthetic access$600(Lcom/yftech/settings/manager/CarAssistantManager;)Z
    .locals 0

    .line 16
    iget-boolean p0, p0, Lcom/yftech/settings/manager/CarAssistantManager;->mTSRAudioWarningEnable:Z

    return p0
.end method

.method static synthetic access$602(Lcom/yftech/settings/manager/CarAssistantManager;Z)Z
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcom/yftech/settings/manager/CarAssistantManager;->mTSRAudioWarningEnable:Z

    return p1
.end method

.method static synthetic access$700(Lcom/yftech/settings/manager/CarAssistantManager;)Z
    .locals 0

    .line 16
    iget-boolean p0, p0, Lcom/yftech/settings/manager/CarAssistantManager;->mAEBOffEnable:Z

    return p0
.end method

.method static synthetic access$702(Lcom/yftech/settings/manager/CarAssistantManager;Z)Z
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcom/yftech/settings/manager/CarAssistantManager;->mAEBOffEnable:Z

    return p1
.end method

.method static synthetic access$800(Lcom/yftech/settings/manager/CarAssistantManager;Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;)I
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/yftech/settings/manager/CarAssistantManager;->getValidAdasWarnTypeOption(Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;)I

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/yftech/settings/manager/CarAssistantManager;Lcom/yftech/vehicle/internal/adapter/ICarSettings$CruiseAssistMode;)I
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/yftech/settings/manager/CarAssistantManager;->getValidCruiseAssistOption(Lcom/yftech/vehicle/internal/adapter/ICarSettings$CruiseAssistMode;)I

    move-result p0

    return p0
.end method

.method private getADASWarnType()I
    .locals 1

    .line 534
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->get()Lcom/yftech/vehicle/sdk/CarSettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getADASWarnType()Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;

    move-result-object v0

    .line 535
    invoke-direct {p0, v0}, Lcom/yftech/settings/manager/CarAssistantManager;->getValidAdasWarnTypeOption(Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;)I

    move-result p0

    return p0
.end method

.method private getAEBOffEnabled()Z
    .locals 3

    .line 568
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->get()Lcom/yftech/vehicle/sdk/CarSettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getAEBOffEnableState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableStateOp;

    move-result-object v0

    .line 569
    iget-boolean v1, p0, Lcom/yftech/settings/manager/CarAssistantManager;->mAEBOffEnable:Z

    invoke-virtual {p0, v0, v1}, Lcom/yftech/settings/manager/CarAssistantManager;->getValidEnableStateOp(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableStateOp;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yftech/settings/manager/CarAssistantManager;->mAEBOffEnable:Z

    const-string v0, "CarAssistantManager"

    .line 570
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAEBOffEnabled enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/yftech/settings/manager/CarAssistantManager;->mAEBOffEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    iget-boolean p0, p0, Lcom/yftech/settings/manager/CarAssistantManager;->mAEBOffEnable:Z

    return p0
.end method

.method private getCruiseAssistType()I
    .locals 1

    .line 520
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->get()Lcom/yftech/vehicle/sdk/CarSettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getCruiseAssistMode()Lcom/yftech/vehicle/internal/adapter/ICarSettings$CruiseAssistMode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yftech/settings/manager/CarAssistantManager;->getValidCruiseAssistOption(Lcom/yftech/vehicle/internal/adapter/ICarSettings$CruiseAssistMode;)I

    move-result p0

    return p0
.end method

.method private getDSAWarningEnable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private getDSAWarningType()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method private getFCWOffEnabled()Z
    .locals 4

    .line 413
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->get()Lcom/yftech/vehicle/sdk/CarSettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getFCWOffEnableState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableStateOp;

    move-result-object v0

    .line 414
    iget-boolean v1, p0, Lcom/yftech/settings/manager/CarAssistantManager;->mFcwWarningDistanceEnable:Z

    invoke-virtual {p0, v0, v1}, Lcom/yftech/settings/manager/CarAssistantManager;->getValidEnableStateOp(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableStateOp;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/yftech/settings/manager/CarAssistantManager;->mFcwWarningDistanceEnable:Z

    const-string v1, "CarAssistantManager"

    .line 415
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFCWOffEnabled enableState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " enable:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/yftech/settings/manager/CarAssistantManager;->mFcwWarningDistanceEnable:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    iget-boolean p0, p0, Lcom/yftech/settings/manager/CarAssistantManager;->mFcwWarningDistanceEnable:Z

    return p0
.end method

.method private getFCWWarningDistance()I
    .locals 1

    .line 426
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->get()Lcom/yftech/vehicle/sdk/CarSettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getFCWWarningDistance()Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;

    move-result-object v0

    .line 427
    invoke-direct {p0, v0}, Lcom/yftech/settings/manager/CarAssistantManager;->getValidFcwWarningDistanceOption(Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;)I

    move-result p0

    return p0
.end method

.method private getFrontCarDistanceDisplay()Z
    .locals 4

    .line 581
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->get()Lcom/yftech/vehicle/sdk/CarSettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getFrontCarDistanceDisplayEnableState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object v0

    .line 582
    iget-boolean v1, p0, Lcom/yftech/settings/manager/CarAssistantManager;->mFrontCarDistanceDisplayEnable:Z

    invoke-virtual {p0, v0, v1}, Lcom/yftech/settings/manager/CarAssistantManager;->getValidEnable(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/yftech/settings/manager/CarAssistantManager;->mFrontCarDistanceDisplayEnable:Z

    const-string v1, "CarAssistantManager"

    .line 583
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFrontCarDistanceDisplay state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " enable:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/yftech/settings/manager/CarAssistantManager;->mFrontCarDistanceDisplayEnable:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    iget-boolean p0, p0, Lcom/yftech/settings/manager/CarAssistantManager;->mFrontCarDistanceDisplayEnable:Z

    return p0
.end method

.method private getIAEnable()Z
    .locals 4

    .line 594
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->get()Lcom/yftech/vehicle/sdk/CarSettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getIntelligentAvoidEnableState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object v0

    .line 595
    iget-boolean v1, p0, Lcom/yftech/settings/manager/CarAssistantManager;->mIntelligentAvoidEnable:Z

    invoke-virtual {p0, v0, v1}, Lcom/yftech/settings/manager/CarAssistantManager;->getValidEnable(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/yftech/settings/manager/CarAssistantManager;->mIntelligentAvoidEnable:Z

    const-string v1, "CarAssistantManager"

    .line 596
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIAEnable enableState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " enable:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/yftech/settings/manager/CarAssistantManager;->mIntelligentAvoidEnable:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    iget-boolean p0, p0, Lcom/yftech/settings/manager/CarAssistantManager;->mIntelligentAvoidEnable:Z

    return p0
.end method

.method private getIAccEnabled()Z
    .locals 4

    .line 493
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->get()Lcom/yftech/vehicle/sdk/CarSettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getIAccEnableState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object v0

    .line 494
    iget-boolean v1, p0, Lcom/yftech/settings/manager/CarAssistantManager;->mIAccEnable:Z

    invoke-virtual {p0, v0, v1}, Lcom/yftech/settings/manager/CarAssistantManager;->getValidEnable(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/yftech/settings/manager/CarAssistantManager;->mIAccEnable:Z

    const-string v1, "CarAssistantManager"

    .line 495
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIAccEnabled enableState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " enable:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/yftech/settings/manager/CarAssistantManager;->mIAccEnable:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    iget-boolean p0, p0, Lcom/yftech/settings/manager/CarAssistantManager;->mIAccEnable:Z

    return p0
.end method

.method public static declared-synchronized getInstance()Lcom/yftech/settings/manager/CarAssistantManager;
    .locals 2

    const-class v0, Lcom/yftech/settings/manager/CarAssistantManager;

    monitor-enter v0

    .line 240
    :try_start_0
    sget-object v1, Lcom/yftech/settings/manager/CarAssistantManager;->sCarAssistantManager:Lcom/yftech/settings/manager/CarAssistantManager;

    if-nez v1, :cond_0

    .line 241
    new-instance v1, Lcom/yftech/settings/manager/CarAssistantManager;

    invoke-direct {v1}, Lcom/yftech/settings/manager/CarAssistantManager;-><init>()V

    sput-object v1, Lcom/yftech/settings/manager/CarAssistantManager;->sCarAssistantManager:Lcom/yftech/settings/manager/CarAssistantManager;

    .line 243
    :cond_0
    sget-object v1, Lcom/yftech/settings/manager/CarAssistantManager;->sCarAssistantManager:Lcom/yftech/settings/manager/CarAssistantManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 239
    monitor-exit v0

    throw v1
.end method

.method private getLdwLkaEnabled()Z
    .locals 2

    .line 441
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->get()Lcom/yftech/vehicle/sdk/CarSettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getLksState()Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;

    move-result-object v0

    .line 442
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->get()Lcom/yftech/vehicle/sdk/CarSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getLksMode()Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;

    move-result-object v1

    .line 443
    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/manager/CarAssistantManager;->getValidLdwLkaEnabled(Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;)Z

    move-result p0

    return p0
.end method

.method private getLksMode()I
    .locals 1

    .line 459
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->get()Lcom/yftech/vehicle/sdk/CarSettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getLksMode()Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;

    move-result-object v0

    .line 460
    invoke-direct {p0, v0}, Lcom/yftech/settings/manager/CarAssistantManager;->getValidLksModeOption(Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;)I

    move-result p0

    return p0
.end method

.method private getSpeedWarning()I
    .locals 1

    .line 510
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarIcmManager;->get()Lcom/yftech/vehicle/sdk/CarIcmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarIcmManager;->getSpeedWarning()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/yftech/settings/manager/CarAssistantManager;->getValidSpeedWarningValue(I)I

    move-result p0

    return p0
.end method

.method private getTSRAudioWarningEnabled()Z
    .locals 4

    .line 550
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->get()Lcom/yftech/vehicle/sdk/CarSettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getTSRAudioWarningEnableState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object v0

    .line 551
    iget-boolean v1, p0, Lcom/yftech/settings/manager/CarAssistantManager;->mTSRAudioWarningEnable:Z

    invoke-virtual {p0, v0, v1}, Lcom/yftech/settings/manager/CarAssistantManager;->getValidEnable(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/yftech/settings/manager/CarAssistantManager;->mTSRAudioWarningEnable:Z

    const-string v1, "CarAssistantManager"

    .line 552
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTSRAudioWarningEnabled enableState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " enable:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/yftech/settings/manager/CarAssistantManager;->mTSRAudioWarningEnable:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    iget-boolean p0, p0, Lcom/yftech/settings/manager/CarAssistantManager;->mTSRAudioWarningEnable:Z

    return p0
.end method

.method private getTSREnabled()Z
    .locals 4

    .line 479
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->get()Lcom/yftech/vehicle/sdk/CarSettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->getTSREnableState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object v0

    .line 480
    iget-boolean v1, p0, Lcom/yftech/settings/manager/CarAssistantManager;->mTSREnable:Z

    invoke-virtual {p0, v0, v1}, Lcom/yftech/settings/manager/CarAssistantManager;->getValidEnable(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/yftech/settings/manager/CarAssistantManager;->mTSREnable:Z

    const-string v1, "CarAssistantManager"

    .line 481
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTSREnabled enableState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " enable:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/yftech/settings/manager/CarAssistantManager;->mTSREnable:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    iget-boolean p0, p0, Lcom/yftech/settings/manager/CarAssistantManager;->mTSREnable:Z

    return p0
.end method

.method private getValidAdasWarnTypeOption(Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;)I
    .locals 3

    const/4 v0, 0x0

    .line 674
    :goto_0
    iget-object v1, p0, Lcom/yftech/settings/manager/CarAssistantManager;->ADAS_WARN_TYPE:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 675
    iget-object v1, p0, Lcom/yftech/settings/manager/CarAssistantManager;->ADAS_WARN_TYPE:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 676
    iput v0, p0, Lcom/yftech/settings/manager/CarAssistantManager;->mAdasWarnTypeOption:I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-string v0, "CarAssistantManager"

    .line 680
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getValidAdasWarnTypeOption type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", index:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/yftech/settings/manager/CarAssistantManager;->mAdasWarnTypeOption:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    iget p0, p0, Lcom/yftech/settings/manager/CarAssistantManager;->mAdasWarnTypeOption:I

    return p0
.end method

.method private getValidCruiseAssistOption(Lcom/yftech/vehicle/internal/adapter/ICarSettings$CruiseAssistMode;)I
    .locals 3

    const/4 v0, 0x0

    .line 663
    :goto_0
    iget-object v1, p0, Lcom/yftech/settings/manager/CarAssistantManager;->CRUISE_ASSIST:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$CruiseAssistMode;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 664
    iget-object v1, p0, Lcom/yftech/settings/manager/CarAssistantManager;->CRUISE_ASSIST:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$CruiseAssistMode;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 665
    iput v0, p0, Lcom/yftech/settings/manager/CarAssistantManager;->mCruiseAssistOption:I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-string v0, "CarAssistantManager"

    .line 669
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getValidCruiseAssistOption mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", index:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/yftech/settings/manager/CarAssistantManager;->mCruiseAssistOption:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    iget p0, p0, Lcom/yftech/settings/manager/CarAssistantManager;->mCruiseAssistOption:I

    return p0
.end method

.method private getValidFcwWarningDistanceOption(Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;)I
    .locals 3

    const/4 v0, 0x0

    .line 641
    :goto_0
    iget-object v1, p0, Lcom/yftech/settings/manager/CarAssistantManager;->FCW_WARNING_DISTANCE:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 642
    iget-object v1, p0, Lcom/yftech/settings/manager/CarAssistantManager;->FCW_WARNING_DISTANCE:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 643
    iput v0, p0, Lcom/yftech/settings/manager/CarAssistantManager;->mFcwWarningDistanceOption:I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-string v0, "CarAssistantManager"

    .line 647
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getValidFcwWarningDistanceOption distance:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", index:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/yftech/settings/manager/CarAssistantManager;->mFcwWarningDistanceOption:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    iget p0, p0, Lcom/yftech/settings/manager/CarAssistantManager;->mFcwWarningDistanceOption:I

    return p0
.end method

.method private getValidLdwLkaEnabled(Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;)Z
    .locals 3

    .line 689
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;->LKS_OFF:Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;->LKS_STANDBY:Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;->LKS_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;->LKS_FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;->CAMERA_BLOCKED:Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;

    if-ne p1, v0, :cond_4

    .line 694
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;->LKS_STANDBY:Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;->LKS_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;

    if-ne p1, v0, :cond_2

    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;->STEERING:Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;

    if-eq p2, v0, :cond_3

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;->WARNING:Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;

    if-eq p2, v0, :cond_3

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;->STEERING_AND_WARNING:Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;

    if-ne p2, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 696
    :goto_1
    iput-boolean v0, p0, Lcom/yftech/settings/manager/CarAssistantManager;->mLdwLkaEnabled:Z

    :cond_4
    const-string v0, "CarAssistantManager"

    .line 698
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getValidLdwLkaEnabled state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", mode:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", mLdwLkaEnabled:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/yftech/settings/manager/CarAssistantManager;->mLdwLkaEnabled:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    iget-boolean p0, p0, Lcom/yftech/settings/manager/CarAssistantManager;->mLdwLkaEnabled:Z

    return p0
.end method

.method private getValidLksModeOption(Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;)I
    .locals 3

    const/4 v0, 0x0

    .line 652
    :goto_0
    iget-object v1, p0, Lcom/yftech/settings/manager/CarAssistantManager;->LKS_MODE:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 653
    iget-object v1, p0, Lcom/yftech/settings/manager/CarAssistantManager;->LKS_MODE:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 654
    iput v0, p0, Lcom/yftech/settings/manager/CarAssistantManager;->mLksModeOption:I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-string v0, "CarAssistantManager"

    .line 658
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getValidLksModeOption mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", index:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/yftech/settings/manager/CarAssistantManager;->mLksModeOption:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    iget p0, p0, Lcom/yftech/settings/manager/CarAssistantManager;->mLksModeOption:I

    return p0
.end method

.method private getValidSpeedWarningValue(I)I
    .locals 3

    if-ltz p1, :cond_0

    const/16 v0, 0xc8

    if-gt p1, v0, :cond_0

    .line 704
    iput p1, p0, Lcom/yftech/settings/manager/CarAssistantManager;->mSpeedWarningValue:I

    :cond_0
    const-string v0, "CarAssistantManager"

    .line 706
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getValidSpeedWarningValue value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mSpeedWarningValue:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/yftech/settings/manager/CarAssistantManager;->mSpeedWarningValue:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    iget p0, p0, Lcom/yftech/settings/manager/CarAssistantManager;->mSpeedWarningValue:I

    return p0
.end method

.method private setADASWarnType(I)Z
    .locals 1

    if-ltz p1, :cond_0

    .line 541
    iget-object v0, p0, Lcom/yftech/settings/manager/CarAssistantManager;->ADAS_WARN_TYPE:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 542
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->get()Lcom/yftech/vehicle/sdk/CarSettingsManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/settings/manager/CarAssistantManager;->ADAS_WARN_TYPE:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;

    aget-object p0, p0, p1

    invoke-virtual {v0, p0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->setADASWarnType(Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setAEBOffEnabled(Z)Z
    .locals 0

    .line 576
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->get()Lcom/yftech/vehicle/sdk/CarSettingsManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->setAEBOffEnabled(Z)Z

    move-result p0

    return p0
.end method

.method private setCruiseAssistType(I)Z
    .locals 1

    if-ltz p1, :cond_0

    .line 526
    iget-object v0, p0, Lcom/yftech/settings/manager/CarAssistantManager;->CRUISE_ASSIST:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$CruiseAssistMode;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 527
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->get()Lcom/yftech/vehicle/sdk/CarSettingsManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/settings/manager/CarAssistantManager;->CRUISE_ASSIST:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$CruiseAssistMode;

    aget-object p0, p0, p1

    invoke-virtual {v0, p0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->setCruiseAssistMode(Lcom/yftech/vehicle/internal/adapter/ICarSettings$CruiseAssistMode;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setDSAWarningEnable(Z)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private setDSAWarningType(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private setFCWOffEnabled(Z)Z
    .locals 0

    .line 421
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->get()Lcom/yftech/vehicle/sdk/CarSettingsManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->setFCWOffEnabled(Z)Z

    move-result p0

    return p0
.end method

.method private setFCWWarningDistance(I)Z
    .locals 1

    if-ltz p1, :cond_0

    .line 433
    iget-object v0, p0, Lcom/yftech/settings/manager/CarAssistantManager;->FCW_WARNING_DISTANCE:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 434
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->get()Lcom/yftech/vehicle/sdk/CarSettingsManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/settings/manager/CarAssistantManager;->FCW_WARNING_DISTANCE:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;

    aget-object p0, p0, p1

    invoke-virtual {v0, p0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->setFCWWarningDistance(Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setFrontCarDistanceDisplay(Z)Z
    .locals 0

    .line 589
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->get()Lcom/yftech/vehicle/sdk/CarSettingsManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->setFrontCarDistanceDisplayEnabled(Z)Z

    move-result p0

    return p0
.end method

.method private setIAEnable(Z)Z
    .locals 0

    .line 602
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->get()Lcom/yftech/vehicle/sdk/CarSettingsManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->setIntelligentAvoidEnabled(Z)Z

    move-result p0

    return p0
.end method

.method private setIAccEnabled(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 502
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarAssistantManager;->getTSREnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 503
    invoke-direct {p0, v0}, Lcom/yftech/settings/manager/CarAssistantManager;->setTSREnabled(Z)Z

    .line 505
    :cond_0
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->get()Lcom/yftech/vehicle/sdk/CarSettingsManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->setIAccEnabled(Z)Z

    move-result p0

    return p0
.end method

.method private setLdwLkaEnabled(Z)Z
    .locals 3

    if-eqz p1, :cond_0

    .line 450
    iget-boolean v0, p0, Lcom/yftech/settings/manager/CarAssistantManager;->IS_LKS_MODE_OPTION:Z

    if-nez v0, :cond_0

    .line 451
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->get()Lcom/yftech/vehicle/sdk/CarSettingsManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/settings/manager/CarAssistantManager;->LKS_MODE:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;

    const/4 v1, 0x1

    aget-object p0, p0, v1

    invoke-virtual {v0, p0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->setLksMode(Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;)Z

    move-result p0

    const-string v0, "CarAssistantManager"

    .line 452
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLdwLkaEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_0
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->get()Lcom/yftech/vehicle/sdk/CarSettingsManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->setLdwLkaEnabled(Z)Z

    move-result p0

    return p0
.end method

.method private setLksMode(I)Z
    .locals 1

    if-ltz p1, :cond_1

    .line 466
    iget-object v0, p0, Lcom/yftech/settings/manager/CarAssistantManager;->LKS_MODE:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;

    array-length v0, v0

    if-ge p1, v0, :cond_1

    .line 468
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarAssistantManager;->getLdwLkaEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 469
    invoke-direct {p0, v0}, Lcom/yftech/settings/manager/CarAssistantManager;->setLdwLkaEnabled(Z)Z

    .line 471
    :cond_0
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->get()Lcom/yftech/vehicle/sdk/CarSettingsManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/settings/manager/CarAssistantManager;->LKS_MODE:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;

    aget-object p0, p0, p1

    invoke-virtual {v0, p0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->setLksMode(Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;)Z

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setSpeedWarning(I)Z
    .locals 0

    .line 515
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarIcmManager;->get()Lcom/yftech/vehicle/sdk/CarIcmManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarIcmManager;->setSpeedWarning(I)Z

    move-result p0

    return p0
.end method

.method private setTSRAudioWarningEnabled(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 559
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarAssistantManager;->getTSREnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 560
    invoke-direct {p0, v0}, Lcom/yftech/settings/manager/CarAssistantManager;->setTSREnabled(Z)Z

    .line 562
    :cond_0
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->get()Lcom/yftech/vehicle/sdk/CarSettingsManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->setTSRAudioWarningEnabled(Z)Z

    move-result p0

    return p0
.end method

.method private setTSREnabled(Z)Z
    .locals 0

    .line 487
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->get()Lcom/yftech/vehicle/sdk/CarSettingsManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->setTSREnabled(Z)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public deInit()V
    .locals 2

    .line 268
    invoke-super {p0}, Lcom/yftech/settings/manager/BaseManager;->deInit()V

    .line 269
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->get()Lcom/yftech/vehicle/sdk/CarSettingsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/settings/manager/CarAssistantManager;->mCarSettingsListener:Lcom/yftech/vehicle/sdk/CarSettingsManager$CarSettingsListener;

    invoke-virtual {v0, v1}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->unregisterListener(Lcom/yftech/vehicle/sdk/CarSettingsManager$CarSettingsListener;)V

    .line 270
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarIcmManager;->get()Lcom/yftech/vehicle/sdk/CarIcmManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/settings/manager/CarAssistantManager;->mCarIcmListener:Lcom/yftech/vehicle/sdk/CarIcmManager$CarIcmListener;

    invoke-virtual {v0, p0}, Lcom/yftech/vehicle/sdk/CarIcmManager;->unregisterListener(Lcom/yftech/vehicle/sdk/CarIcmManager$CarIcmListener;)V

    return-void
.end method

.method public getEnabled(Lcom/yftech/settings/manager/CarAssistantManager$Function;)Z
    .locals 1

    .line 287
    sget-object v0, Lcom/yftech/settings/manager/CarAssistantManager$3;->$SwitchMap$com$yftech$settings$manager$CarAssistantManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/CarAssistantManager$Function;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    .line 305
    :pswitch_0
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarAssistantManager;->getIAEnable()Z

    move-result p0

    return p0

    .line 303
    :pswitch_1
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarAssistantManager;->getFrontCarDistanceDisplay()Z

    move-result p0

    return p0

    .line 301
    :pswitch_2
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarAssistantManager;->getDSAWarningEnable()Z

    move-result p0

    return p0

    .line 299
    :pswitch_3
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarAssistantManager;->getAEBOffEnabled()Z

    move-result p0

    return p0

    .line 297
    :pswitch_4
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarAssistantManager;->getTSRAudioWarningEnabled()Z

    move-result p0

    return p0

    .line 295
    :pswitch_5
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarAssistantManager;->getIAccEnabled()Z

    move-result p0

    return p0

    .line 293
    :pswitch_6
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarAssistantManager;->getTSREnabled()Z

    move-result p0

    return p0

    .line 291
    :pswitch_7
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarAssistantManager;->getLdwLkaEnabled()Z

    move-result p0

    return p0

    .line 289
    :pswitch_8
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarAssistantManager;->getFCWOffEnabled()Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x2
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

    .line 16
    check-cast p1, Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {p0, p1}, Lcom/yftech/settings/manager/CarAssistantManager;->getEnabled(Lcom/yftech/settings/manager/CarAssistantManager$Function;)Z

    move-result p0

    return p0
.end method

.method public getFunctionPresent(Lcom/yftech/settings/manager/CarAssistantManager$Function;)Z
    .locals 1

    .line 711
    sget-object v0, Lcom/yftech/settings/manager/CarAssistantManager$3;->$SwitchMap$com$yftech$settings$manager$CarAssistantManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/CarAssistantManager$Function;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    return v0

    .line 722
    :pswitch_0
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isOverspeedWarningPresent()Z

    move-result p0

    return p0

    .line 749
    :pswitch_1
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isAlertModePresent()Z

    move-result p0

    return p0

    :pswitch_2
    return v0

    .line 726
    :pswitch_3
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isIfcCruisemodePresent()Z

    move-result p0

    return p0

    .line 719
    :pswitch_4
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isLaneAssistPresent()Z

    move-result p1

    iput-boolean p1, p0, Lcom/yftech/settings/manager/CarAssistantManager;->IS_LKS_MODE_OPTION:Z

    .line 720
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isLaneAssistPresent()Z

    move-result p0

    return p0

    .line 715
    :pswitch_5
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isForwardCollisionWarningDistancePresent()Z

    move-result p0

    return p0

    .line 756
    :pswitch_6
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isIntelligentCollisionAvoidancePresent()Z

    move-result p0

    return p0

    .line 753
    :pswitch_7
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isFrontDistanceDisplayPresent()Z

    move-result p0

    return p0

    .line 746
    :pswitch_8
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isDriverStateOfAlertPresent()Z

    move-result p0

    return p0

    .line 743
    :pswitch_9
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isAutoEmergencyBrakingBrakingPresent()Z

    move-result p0

    return p0

    .line 740
    :pswitch_a
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isOverspeedAlarmOfTsrPresent()Z

    move-result p0

    return p0

    .line 738
    :pswitch_b
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isIntelligentSpeedLimitControlPresent()Z

    move-result p0

    return p0

    .line 736
    :pswitch_c
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isSpeedLimtedSignRecognitionPresent()Z

    move-result p0

    return p0

    .line 717
    :pswitch_d
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isLaneAuxiliarySwitchPresent()Z

    move-result p0

    return p0

    .line 713
    :pswitch_e
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isFrontCollisionWarningPresent()Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x2
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

.method public getOption(Lcom/yftech/settings/manager/CarAssistantManager$Function;)I
    .locals 1

    .line 349
    sget-object v0, Lcom/yftech/settings/manager/CarAssistantManager$3;->$SwitchMap$com$yftech$settings$manager$CarAssistantManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/CarAssistantManager$Function;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p0, -0x1

    return p0

    .line 359
    :pswitch_0
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarAssistantManager;->getDSAWarningType()I

    move-result p0

    return p0

    .line 357
    :pswitch_1
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarAssistantManager;->getADASWarnType()I

    move-result p0

    return p0

    .line 355
    :pswitch_2
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarAssistantManager;->getCruiseAssistType()I

    move-result p0

    return p0

    .line 353
    :pswitch_3
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarAssistantManager;->getLksMode()I

    move-result p0

    return p0

    .line 351
    :pswitch_4
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarAssistantManager;->getFCWWarningDistance()I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic getOption(Ljava/lang/Object;)I
    .locals 0

    .line 16
    check-cast p1, Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {p0, p1}, Lcom/yftech/settings/manager/CarAssistantManager;->getOption(Lcom/yftech/settings/manager/CarAssistantManager$Function;)I

    move-result p0

    return p0
.end method

.method public getValue(Lcom/yftech/settings/manager/CarAssistantManager$Function;)Ljava/lang/Object;
    .locals 1

    .line 390
    sget-object v0, Lcom/yftech/settings/manager/CarAssistantManager$3;->$SwitchMap$com$yftech$settings$manager$CarAssistantManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/CarAssistantManager$Function;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    const/4 p0, -0x1

    .line 394
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 392
    :cond_0
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarAssistantManager;->getSpeedWarning()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 16
    check-cast p1, Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {p0, p1}, Lcom/yftech/settings/manager/CarAssistantManager;->getValue(Lcom/yftech/settings/manager/CarAssistantManager$Function;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;)V
    .locals 5

    .line 248
    invoke-super {p0, p1}, Lcom/yftech/settings/manager/BaseManager;->init(Landroid/content/Context;)V

    .line 249
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->getPromptType()Lcom/yftech/vehicle/internal/adapter/ICarConfig$PromptType;

    move-result-object p1

    .line 250
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$PromptType;->SOUND_AND_VOICE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$PromptType;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne p1, v0, :cond_0

    .line 251
    new-array p1, v3, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;->SOUND:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;

    aput-object v0, p1, v2

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;->SEAT_VIBRATION:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;

    aput-object v0, p1, v1

    iput-object p1, p0, Lcom/yftech/settings/manager/CarAssistantManager;->ADAS_WARN_TYPE:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;

    goto :goto_0

    .line 253
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$PromptType;->SOUND_AND_VOICE_AND_SEAT_VIBRATION:Lcom/yftech/vehicle/internal/adapter/ICarConfig$PromptType;

    const/4 v4, 0x3

    if-ne p1, v0, :cond_1

    .line 254
    new-array p1, v4, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;->SOUND:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;

    aput-object v0, p1, v2

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;->SEAT_VIBRATION:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;

    aput-object v0, p1, v1

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;->BOTH:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;

    aput-object v0, p1, v3

    iput-object p1, p0, Lcom/yftech/settings/manager/CarAssistantManager;->ADAS_WARN_TYPE:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;

    goto :goto_0

    .line 258
    :cond_1
    new-array p1, v4, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;->SOUND:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;

    aput-object v0, p1, v2

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;->SEAT_VIBRATION:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;

    aput-object v0, p1, v1

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;->BOTH:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;

    aput-object v0, p1, v3

    iput-object p1, p0, Lcom/yftech/settings/manager/CarAssistantManager;->ADAS_WARN_TYPE:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;

    .line 262
    :goto_0
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->get()Lcom/yftech/vehicle/sdk/CarSettingsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/settings/manager/CarAssistantManager;->mCarSettingsListener:Lcom/yftech/vehicle/sdk/CarSettingsManager$CarSettingsListener;

    invoke-virtual {p1, v0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->registerListener(Lcom/yftech/vehicle/sdk/CarSettingsManager$CarSettingsListener;)V

    .line 263
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarIcmManager;->get()Lcom/yftech/vehicle/sdk/CarIcmManager;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/settings/manager/CarAssistantManager;->mCarIcmListener:Lcom/yftech/vehicle/sdk/CarIcmManager$CarIcmListener;

    invoke-virtual {p1, p0}, Lcom/yftech/vehicle/sdk/CarIcmManager;->registerListener(Lcom/yftech/vehicle/sdk/CarIcmManager$CarIcmListener;)V

    return-void
.end method

.method public setAction(Lcom/yftech/settings/manager/CarAssistantManager$Function;)Z
    .locals 3

    .line 276
    sget-object v0, Lcom/yftech/settings/manager/CarAssistantManager$3;->$SwitchMap$com$yftech$settings$manager$CarAssistantManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/CarAssistantManager$Function;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 278
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/settings/manager/CarAssistantManager;->stopTimeout()Z

    move-result p0

    :goto_0
    const-string v0, "CarAssistantManager"

    .line 281
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
.end method

.method public bridge synthetic setAction(Ljava/lang/Object;)Z
    .locals 0

    .line 16
    check-cast p1, Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {p0, p1}, Lcom/yftech/settings/manager/CarAssistantManager;->setAction(Lcom/yftech/settings/manager/CarAssistantManager$Function;)Z

    move-result p0

    return p0
.end method

.method public setEnabled(Lcom/yftech/settings/manager/CarAssistantManager$Function;Z)Z
    .locals 3

    .line 312
    invoke-virtual {p0}, Lcom/yftech/settings/manager/CarAssistantManager;->startTimeout()V

    .line 314
    sget-object v0, Lcom/yftech/settings/manager/CarAssistantManager$3;->$SwitchMap$com$yftech$settings$manager$CarAssistantManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/CarAssistantManager$Function;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    .line 340
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/CarAssistantManager;->setIAEnable(Z)Z

    move-result p0

    goto :goto_0

    .line 337
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/CarAssistantManager;->setFrontCarDistanceDisplay(Z)Z

    move-result p0

    goto :goto_0

    .line 334
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/CarAssistantManager;->setDSAWarningEnable(Z)Z

    move-result p0

    goto :goto_0

    .line 331
    :pswitch_3
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/CarAssistantManager;->setAEBOffEnabled(Z)Z

    move-result p0

    goto :goto_0

    .line 328
    :pswitch_4
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/CarAssistantManager;->setTSRAudioWarningEnabled(Z)Z

    move-result p0

    goto :goto_0

    .line 325
    :pswitch_5
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/CarAssistantManager;->setIAccEnabled(Z)Z

    move-result p0

    goto :goto_0

    .line 322
    :pswitch_6
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/CarAssistantManager;->setTSREnabled(Z)Z

    move-result p0

    goto :goto_0

    .line 319
    :pswitch_7
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/CarAssistantManager;->setLdwLkaEnabled(Z)Z

    move-result p0

    goto :goto_0

    .line 316
    :pswitch_8
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/CarAssistantManager;->setFCWOffEnabled(Z)Z

    move-result p0

    :goto_0
    const-string v0, "CarAssistantManager"

    .line 343
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

    nop

    :pswitch_data_0
    .packed-switch 0x2
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

    .line 16
    check-cast p1, Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/settings/manager/CarAssistantManager;->setEnabled(Lcom/yftech/settings/manager/CarAssistantManager$Function;Z)Z

    move-result p0

    return p0
.end method

.method public setOption(Lcom/yftech/settings/manager/CarAssistantManager$Function;I)Z
    .locals 3

    .line 366
    invoke-virtual {p0}, Lcom/yftech/settings/manager/CarAssistantManager;->startTimeout()V

    .line 368
    sget-object v0, Lcom/yftech/settings/manager/CarAssistantManager$3;->$SwitchMap$com$yftech$settings$manager$CarAssistantManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/CarAssistantManager$Function;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    .line 382
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/CarAssistantManager;->setDSAWarningType(I)Z

    move-result p0

    goto :goto_0

    .line 379
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/CarAssistantManager;->setADASWarnType(I)Z

    move-result p0

    goto :goto_0

    .line 376
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/CarAssistantManager;->setCruiseAssistType(I)Z

    move-result p0

    goto :goto_0

    .line 373
    :pswitch_3
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/CarAssistantManager;->setLksMode(I)Z

    move-result p0

    goto :goto_0

    .line 370
    :pswitch_4
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/CarAssistantManager;->setFCWWarningDistance(I)Z

    move-result p0

    :goto_0
    const-string v0, "CarAssistantManager"

    .line 384
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
    .packed-switch 0xb
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic setOption(Ljava/lang/Object;I)Z
    .locals 0

    .line 16
    check-cast p1, Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/settings/manager/CarAssistantManager;->setOption(Lcom/yftech/settings/manager/CarAssistantManager$Function;I)Z

    move-result p0

    return p0
.end method

.method public setValue(Lcom/yftech/settings/manager/CarAssistantManager$Function;Ljava/lang/Object;)Z
    .locals 3

    .line 399
    invoke-virtual {p0}, Lcom/yftech/settings/manager/CarAssistantManager;->startTimeout()V

    .line 401
    sget-object v0, Lcom/yftech/settings/manager/CarAssistantManager$3;->$SwitchMap$com$yftech$settings$manager$CarAssistantManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/CarAssistantManager$Function;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 403
    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/yftech/settings/manager/CarAssistantManager;->setSpeedWarning(I)Z

    move-result p0

    :goto_0
    const-string v0, "CarAssistantManager"

    .line 406
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

    .line 16
    check-cast p1, Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/settings/manager/CarAssistantManager;->setValue(Lcom/yftech/settings/manager/CarAssistantManager$Function;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
