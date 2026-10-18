.class public Lcom/yftech/settings/manager/CarParkingManager;
.super Lcom/yftech/settings/manager/BaseManager;
.source "CarParkingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/settings/manager/CarParkingManager$Function;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yftech/settings/manager/BaseManager<",
        "Lcom/yftech/settings/manager/CarParkingManager$Function;",
        ">;"
    }
.end annotation


# static fields
.field private static final REVERSING_RADAR_ALARM_TONE_STATE:Ljava/lang/String; = "reversing_radar_alarm_tone_state"

.field private static final REVERSING_RADAR_ALARM_TONE_STATE_CLOSE:I = 0x0

.field private static final REVERSING_RADAR_ALARM_TONE_STATE_OPEN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CarParkingManager"

.field private static sCarParkingManager:Lcom/yftech/settings/manager/CarParkingManager;


# instance fields
.field mCarParkingListener:Lcom/yftech/vehicle/sdk/CarParkingManager$CarParkingListener;

.field private mParkingPushEnable:Z

.field private mParkingRadarWarningToneEnabled:Z

.field private mParkingVoiceTipEnable:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Lcom/yftech/settings/manager/BaseManager;-><init>()V

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/yftech/settings/manager/CarParkingManager;->mParkingRadarWarningToneEnabled:Z

    .line 32
    iput-boolean v0, p0, Lcom/yftech/settings/manager/CarParkingManager;->mParkingVoiceTipEnable:Z

    .line 33
    iput-boolean v0, p0, Lcom/yftech/settings/manager/CarParkingManager;->mParkingPushEnable:Z

    .line 48
    new-instance v0, Lcom/yftech/settings/manager/CarParkingManager$1;

    invoke-direct {v0, p0}, Lcom/yftech/settings/manager/CarParkingManager$1;-><init>(Lcom/yftech/settings/manager/CarParkingManager;)V

    iput-object v0, p0, Lcom/yftech/settings/manager/CarParkingManager;->mCarParkingListener:Lcom/yftech/vehicle/sdk/CarParkingManager$CarParkingListener;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/settings/manager/CarParkingManager;)Z
    .locals 0

    .line 13
    iget-boolean p0, p0, Lcom/yftech/settings/manager/CarParkingManager;->mParkingRadarWarningToneEnabled:Z

    return p0
.end method

.method static synthetic access$002(Lcom/yftech/settings/manager/CarParkingManager;Z)Z
    .locals 0

    .line 13
    iput-boolean p1, p0, Lcom/yftech/settings/manager/CarParkingManager;->mParkingRadarWarningToneEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/yftech/settings/manager/CarParkingManager;)Z
    .locals 0

    .line 13
    iget-boolean p0, p0, Lcom/yftech/settings/manager/CarParkingManager;->mParkingVoiceTipEnable:Z

    return p0
.end method

.method static synthetic access$102(Lcom/yftech/settings/manager/CarParkingManager;Z)Z
    .locals 0

    .line 13
    iput-boolean p1, p0, Lcom/yftech/settings/manager/CarParkingManager;->mParkingVoiceTipEnable:Z

    return p1
.end method

.method public static declared-synchronized getInstance()Lcom/yftech/settings/manager/CarParkingManager;
    .locals 2

    const-class v0, Lcom/yftech/settings/manager/CarParkingManager;

    monitor-enter v0

    .line 81
    :try_start_0
    sget-object v1, Lcom/yftech/settings/manager/CarParkingManager;->sCarParkingManager:Lcom/yftech/settings/manager/CarParkingManager;

    if-nez v1, :cond_0

    .line 82
    new-instance v1, Lcom/yftech/settings/manager/CarParkingManager;

    invoke-direct {v1}, Lcom/yftech/settings/manager/CarParkingManager;-><init>()V

    sput-object v1, Lcom/yftech/settings/manager/CarParkingManager;->sCarParkingManager:Lcom/yftech/settings/manager/CarParkingManager;

    .line 84
    :cond_0
    sget-object v1, Lcom/yftech/settings/manager/CarParkingManager;->sCarParkingManager:Lcom/yftech/settings/manager/CarParkingManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 80
    monitor-exit v0

    throw v1
.end method

.method private getParkingAutoParkingPushEnabled()Z
    .locals 3

    .line 198
    :try_start_0
    invoke-virtual {p0}, Lcom/yftech/settings/manager/CarParkingManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.yftech.settings.parking.push"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/yftech/settings/manager/CarParkingManager;->mParkingPushEnable:Z

    const-string v0, "CarParkingManager"

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getParkingAutoParkingPushEnabled enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/yftech/settings/manager/CarParkingManager;->mParkingPushEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    iget-boolean p0, p0, Lcom/yftech/settings/manager/CarParkingManager;->mParkingPushEnable:Z

    return p0

    :catch_0
    move-exception v0

    .line 201
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    .line 202
    iget-boolean p0, p0, Lcom/yftech/settings/manager/CarParkingManager;->mParkingPushEnable:Z

    return p0
.end method

.method private getParkingAutoParkingVoiceTipEnabled()Z
    .locals 4

    .line 215
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarParkingManager;->get()Lcom/yftech/vehicle/sdk/CarParkingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarParkingManager;->getParkingVoiceSwitchEnableState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object v0

    .line 216
    iget-boolean v1, p0, Lcom/yftech/settings/manager/CarParkingManager;->mParkingVoiceTipEnable:Z

    invoke-virtual {p0, v0, v1}, Lcom/yftech/settings/manager/CarParkingManager;->getValidEnable(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/yftech/settings/manager/CarParkingManager;->mParkingVoiceTipEnable:Z

    const-string v1, "CarParkingManager"

    .line 217
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getParkingAutoParkingVoiceTipEnabled enableState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " mParkingVoiceTipEnable:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/yftech/settings/manager/CarParkingManager;->mParkingVoiceTipEnable:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method private getParkingBackTrackingAidEnabled()Z
    .locals 2

    const-string p0, "CarParkingManager"

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getParkingBackTrackingAidEnabled enable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private getParkingBackTrackingAidTipEnabled()Z
    .locals 2

    const-string p0, "CarParkingManager"

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getParkingBackTrackingAidTipEnabled enable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private getParkingRadarWarningToneEnabled()Z
    .locals 4

    .line 159
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarParkingManager;->get()Lcom/yftech/vehicle/sdk/CarParkingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarParkingManager;->getParkingRadarAlarmEnableState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object v0

    .line 160
    iget-boolean v1, p0, Lcom/yftech/settings/manager/CarParkingManager;->mParkingRadarWarningToneEnabled:Z

    invoke-virtual {p0, v0, v1}, Lcom/yftech/settings/manager/CarParkingManager;->getValidEnable(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/yftech/settings/manager/CarParkingManager;->mParkingRadarWarningToneEnabled:Z

    const-string v1, "CarParkingManager"

    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getParkingRadarWarningToneEnabled: enableState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " mParkingRadarWarningToneEnabled:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/yftech/settings/manager/CarParkingManager;->mParkingRadarWarningToneEnabled:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-boolean p0, p0, Lcom/yftech/settings/manager/CarParkingManager;->mParkingRadarWarningToneEnabled:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private getReversingRadarAlarmToneState()I
    .locals 2

    .line 227
    invoke-virtual {p0}, Lcom/yftech/settings/manager/CarParkingManager;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "reversing_radar_alarm_tone_state"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private getValidParkingRadarWarningToneEnabled(I)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-ne p1, v0, :cond_2

    :cond_0
    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 235
    :goto_0
    iput-boolean v0, p0, Lcom/yftech/settings/manager/CarParkingManager;->mParkingRadarWarningToneEnabled:Z

    :cond_2
    const-string v0, "CarParkingManager"

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getValidParkingRadarWarningToneEnabled value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mParkingRadarWarningToneEnabled:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/yftech/settings/manager/CarParkingManager;->mParkingRadarWarningToneEnabled:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-boolean p0, p0, Lcom/yftech/settings/manager/CarParkingManager;->mParkingRadarWarningToneEnabled:Z

    return p0
.end method

.method private setParkingAutoParkingPushEnabled(Z)Z
    .locals 1

    .line 209
    invoke-virtual {p0}, Lcom/yftech/settings/manager/CarParkingManager;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "com.yftech.settings.parking.push"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method private setParkingAutoParkingVoiceTipEnabled(Z)Z
    .locals 0

    .line 223
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarParkingManager;->get()Lcom/yftech/vehicle/sdk/CarParkingManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarParkingManager;->setParkingVoiceSwitchEnabled(Z)Z

    move-result p0

    return p0
.end method

.method private setParkingBackTrackingAidEnabled(Z)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private setParkingBackTrackingAidTipEnabled(Z)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private setParkingRadarWarningToneEnabled(Z)Z
    .locals 0

    .line 168
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarParkingManager;->get()Lcom/yftech/vehicle/sdk/CarParkingManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarParkingManager;->performParkingRadarAlarmButtonClick()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public deInit()V
    .locals 1

    .line 96
    invoke-super {p0}, Lcom/yftech/settings/manager/BaseManager;->deInit()V

    .line 98
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarParkingManager;->get()Lcom/yftech/vehicle/sdk/CarParkingManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/settings/manager/CarParkingManager;->mCarParkingListener:Lcom/yftech/vehicle/sdk/CarParkingManager$CarParkingListener;

    invoke-virtual {v0, p0}, Lcom/yftech/vehicle/sdk/CarParkingManager;->unregisterListener(Lcom/yftech/vehicle/sdk/CarParkingManager$CarParkingListener;)V

    return-void
.end method

.method public getEnabled(Lcom/yftech/settings/manager/CarParkingManager$Function;)Z
    .locals 1

    .line 115
    sget-object v0, Lcom/yftech/settings/manager/CarParkingManager$2;->$SwitchMap$com$yftech$settings$manager$CarParkingManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/CarParkingManager$Function;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    .line 125
    :pswitch_0
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarParkingManager;->getParkingAutoParkingVoiceTipEnabled()Z

    move-result p0

    return p0

    .line 123
    :pswitch_1
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarParkingManager;->getParkingAutoParkingPushEnabled()Z

    move-result p0

    return p0

    .line 121
    :pswitch_2
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarParkingManager;->getParkingBackTrackingAidEnabled()Z

    move-result p0

    return p0

    .line 119
    :pswitch_3
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarParkingManager;->getParkingBackTrackingAidTipEnabled()Z

    move-result p0

    return p0

    .line 117
    :pswitch_4
    invoke-direct {p0}, Lcom/yftech/settings/manager/CarParkingManager;->getParkingRadarWarningToneEnabled()Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic getEnabled(Ljava/lang/Object;)Z
    .locals 0

    .line 13
    check-cast p1, Lcom/yftech/settings/manager/CarParkingManager$Function;

    invoke-virtual {p0, p1}, Lcom/yftech/settings/manager/CarParkingManager;->getEnabled(Lcom/yftech/settings/manager/CarParkingManager$Function;)Z

    move-result p0

    return p0
.end method

.method public getFunctionPresent(Lcom/yftech/settings/manager/CarParkingManager$Function;)Z
    .locals 0

    .line 253
    sget-object p0, Lcom/yftech/settings/manager/CarParkingManager$2;->$SwitchMap$com$yftech$settings$manager$CarParkingManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/CarParkingManager$Function;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_0

    return p1

    .line 278
    :pswitch_0
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isApaVoicePromptButtonPresent()Z

    move-result p0

    return p0

    :pswitch_1
    return p1

    :pswitch_2
    return p1

    :pswitch_3
    return p1

    .line 263
    :pswitch_4
    invoke-static {}, Lcom/yftech/vehicle/sdk/HostConfig;->isRadarSwitchPresent()Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    .line 89
    invoke-super {p0, p1}, Lcom/yftech/settings/manager/BaseManager;->init(Landroid/content/Context;)V

    .line 91
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarParkingManager;->get()Lcom/yftech/vehicle/sdk/CarParkingManager;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/settings/manager/CarParkingManager;->mCarParkingListener:Lcom/yftech/vehicle/sdk/CarParkingManager$CarParkingListener;

    invoke-virtual {p1, p0}, Lcom/yftech/vehicle/sdk/CarParkingManager;->registerListener(Lcom/yftech/vehicle/sdk/CarParkingManager$CarParkingListener;)V

    return-void
.end method

.method public setAction(Lcom/yftech/settings/manager/CarParkingManager$Function;)Z
    .locals 3

    .line 104
    sget-object v0, Lcom/yftech/settings/manager/CarParkingManager$2;->$SwitchMap$com$yftech$settings$manager$CarParkingManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/CarParkingManager$Function;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/settings/manager/CarParkingManager;->stopTimeout()Z

    move-result p0

    :goto_0
    const-string v0, "CarParkingManager"

    .line 109
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

    .line 13
    check-cast p1, Lcom/yftech/settings/manager/CarParkingManager$Function;

    invoke-virtual {p0, p1}, Lcom/yftech/settings/manager/CarParkingManager;->setAction(Lcom/yftech/settings/manager/CarParkingManager$Function;)Z

    move-result p0

    return p0
.end method

.method public setEnabled(Lcom/yftech/settings/manager/CarParkingManager$Function;Z)Z
    .locals 3

    .line 132
    invoke-virtual {p0}, Lcom/yftech/settings/manager/CarParkingManager;->startTimeout()V

    .line 134
    sget-object v0, Lcom/yftech/settings/manager/CarParkingManager$2;->$SwitchMap$com$yftech$settings$manager$CarParkingManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/CarParkingManager$Function;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    .line 149
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/CarParkingManager;->setParkingAutoParkingVoiceTipEnabled(Z)Z

    move-result p0

    goto :goto_0

    .line 145
    :pswitch_1
    invoke-virtual {p0}, Lcom/yftech/settings/manager/CarParkingManager;->stopTimeout()Z

    .line 146
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/CarParkingManager;->setParkingAutoParkingPushEnabled(Z)Z

    move-result p0

    goto :goto_0

    .line 142
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/CarParkingManager;->setParkingBackTrackingAidEnabled(Z)Z

    move-result p0

    goto :goto_0

    .line 139
    :pswitch_3
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/CarParkingManager;->setParkingBackTrackingAidTipEnabled(Z)Z

    move-result p0

    goto :goto_0

    :pswitch_4
    xor-int/lit8 v0, p2, 0x1

    .line 136
    invoke-direct {p0, v0}, Lcom/yftech/settings/manager/CarParkingManager;->setParkingRadarWarningToneEnabled(Z)Z

    move-result p0

    :goto_0
    const-string v0, "CarParkingManager"

    .line 152
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
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic setEnabled(Ljava/lang/Object;Z)Z
    .locals 0

    .line 13
    check-cast p1, Lcom/yftech/settings/manager/CarParkingManager$Function;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/settings/manager/CarParkingManager;->setEnabled(Lcom/yftech/settings/manager/CarParkingManager$Function;Z)Z

    move-result p0

    return p0
.end method
