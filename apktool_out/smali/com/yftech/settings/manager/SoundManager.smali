.class public Lcom/yftech/settings/manager/SoundManager;
.super Lcom/yftech/settings/manager/BaseManager;
.source "SoundManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/settings/manager/SoundManager$DtsStateSetThread;,
        Lcom/yftech/settings/manager/SoundManager$Function;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yftech/settings/manager/BaseManager<",
        "Lcom/yftech/settings/manager/SoundManager$Function;",
        ">;"
    }
.end annotation


# static fields
.field private static final BANDS_HZ_HIGH:I = 0x8

.field private static final BANDS_HZ_LOW:I = 0x1

.field private static final BANDS_HZ_MID:I = 0x4

.field private static final DEFAULT_INTERFACE_SOUND_EFFECT:I = 0x0

.field private static final KEEP_MUTE_WARNING_VALUE_INVARIANT:I = 0x0

.field private static final KEEP_MUTE_WARNING_VALUE_MUTE:I = 0x1

.field private static final KEEP_MUTE_WARNING_VALUE_REDUCE:I = 0x2

.field public static final KEY_INTERFACE_SOUND_EFFECT:Ljava/lang/String; = "interface_sound_effect"

.field private static final KEY_KEEP_MUTE_WARNING_ENABLE:Ljava/lang/String; = "Keep_Mute_Warning_Enable"

.field public static final STAGE_MAX_X:I = 0x14

.field public static final STAGE_MAX_Y:I = 0x14

.field private static final TAG:Ljava/lang/String; = "SoundManager"

.field private static final VALUE_INTERFACE_SOUND_EFFECT_CLOSE:I = 0x0

.field private static final VALUE_INTERFACE_SOUND_EFFECT_OPEN:I = 0x1

.field private static sSoundManager:Lcom/yftech/settings/manager/SoundManager;


# instance fields
.field private BOOT_VOLUME_TYPE:[I

.field public DTS_CLOSE:I

.field private DTS_SOUND_POSITION:[I

.field private DTS_TYPE:[I

.field private EQ_TYPE:[I

.field private KEEP_MUTE_WARNING:[I

.field private KEY_SOUND_TYPE:[I

.field private KEY_SOUND_TYPE_CLASSIC:I

.field private KEY_SOUND_TYPE_CLOSE:I

.field private KEY_SOUND_TYPE_MODERN:I

.field private mCarAudioCallbackHandler:Landroid/os/Handler;

.field private mCarSoundEffectCallback:Lcom/yftech/car/audio/CarSoundEffectManager$CarSoundEffectCallback;

.field private mContext:Landroid/content/Context;

.field private mDelayMaxValue:F

.field private mDelayMinValue:F

.field private mDtsStateSetThread:Lcom/yftech/settings/manager/SoundManager$DtsStateSetThread;

.field private mKeepMuteWarningOption:I

.field private mLastX:I

.field private mLastY:I

.field private mLock:Ljava/lang/Object;

.field private mMiddleBands:[F

.field private mRateX:F

.field private mRateY:F

.field private mRateZ:F


# direct methods
.method private constructor <init>()V
    .locals 6

    .line 208
    invoke-direct {p0}, Lcom/yftech/settings/manager/BaseManager;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput v0, p0, Lcom/yftech/settings/manager/SoundManager;->KEY_SOUND_TYPE_MODERN:I

    const/4 v1, 0x1

    .line 61
    iput v1, p0, Lcom/yftech/settings/manager/SoundManager;->KEY_SOUND_TYPE_CLASSIC:I

    const/4 v2, 0x2

    .line 62
    iput v2, p0, Lcom/yftech/settings/manager/SoundManager;->KEY_SOUND_TYPE_CLOSE:I

    const/4 v3, 0x3

    .line 63
    new-array v4, v3, [I

    iget v5, p0, Lcom/yftech/settings/manager/SoundManager;->KEY_SOUND_TYPE_MODERN:I

    aput v5, v4, v0

    iget v5, p0, Lcom/yftech/settings/manager/SoundManager;->KEY_SOUND_TYPE_CLASSIC:I

    aput v5, v4, v1

    iget v5, p0, Lcom/yftech/settings/manager/SoundManager;->KEY_SOUND_TYPE_CLOSE:I

    aput v5, v4, v2

    iput-object v4, p0, Lcom/yftech/settings/manager/SoundManager;->KEY_SOUND_TYPE:[I

    const/16 v4, -0x3e7

    .line 65
    iput v4, p0, Lcom/yftech/settings/manager/SoundManager;->DTS_CLOSE:I

    .line 67
    new-array v4, v3, [I

    aput v2, v4, v0

    aput v0, v4, v1

    iget v0, p0, Lcom/yftech/settings/manager/SoundManager;->DTS_CLOSE:I

    aput v0, v4, v2

    iput-object v4, p0, Lcom/yftech/settings/manager/SoundManager;->DTS_SOUND_POSITION:[I

    const/4 v0, 0x4

    .line 69
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/yftech/settings/manager/SoundManager;->DTS_TYPE:[I

    const/4 v0, 0x6

    .line 74
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/yftech/settings/manager/SoundManager;->EQ_TYPE:[I

    .line 81
    new-array v0, v2, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/yftech/settings/manager/SoundManager;->BOOT_VOLUME_TYPE:[I

    .line 87
    new-array v0, v3, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/yftech/settings/manager/SoundManager;->KEEP_MUTE_WARNING:[I

    const/4 v0, 0x0

    .line 91
    iput v0, p0, Lcom/yftech/settings/manager/SoundManager;->mDelayMinValue:F

    .line 92
    iput v0, p0, Lcom/yftech/settings/manager/SoundManager;->mDelayMaxValue:F

    .line 93
    iput v0, p0, Lcom/yftech/settings/manager/SoundManager;->mRateX:F

    .line 94
    iput v0, p0, Lcom/yftech/settings/manager/SoundManager;->mRateY:F

    .line 95
    iput v0, p0, Lcom/yftech/settings/manager/SoundManager;->mRateZ:F

    const/4 v0, -0x1

    .line 96
    iput v0, p0, Lcom/yftech/settings/manager/SoundManager;->mLastX:I

    .line 97
    iput v0, p0, Lcom/yftech/settings/manager/SoundManager;->mLastY:I

    .line 99
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yftech/settings/manager/SoundManager;->mCarAudioCallbackHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 100
    iput-object v0, p0, Lcom/yftech/settings/manager/SoundManager;->mDtsStateSetThread:Lcom/yftech/settings/manager/SoundManager$DtsStateSetThread;

    .line 101
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/yftech/settings/manager/SoundManager;->mLock:Ljava/lang/Object;

    .line 104
    iput v1, p0, Lcom/yftech/settings/manager/SoundManager;->mKeepMuteWarningOption:I

    .line 106
    new-instance v0, Lcom/yftech/settings/manager/SoundManager$1;

    invoke-direct {v0, p0}, Lcom/yftech/settings/manager/SoundManager$1;-><init>(Lcom/yftech/settings/manager/SoundManager;)V

    iput-object v0, p0, Lcom/yftech/settings/manager/SoundManager;->mCarSoundEffectCallback:Lcom/yftech/car/audio/CarSoundEffectManager$CarSoundEffectCallback;

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data

    :array_1
    .array-data 4
        0x8
        0x6
        0x5
        0x4
        0x0
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x2
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x2
        0x1
    .end array-data
.end method

.method static synthetic access$000(Lcom/yftech/settings/manager/SoundManager;)I
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/yftech/settings/manager/SoundManager;->getDTSSoundPosition()I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/yftech/settings/manager/SoundManager;)[I
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/yftech/settings/manager/SoundManager;->EQ_TYPE:[I

    return-object p0
.end method

.method static synthetic access$200(Lcom/yftech/settings/manager/SoundManager;)[I
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/yftech/settings/manager/SoundManager;->DTS_TYPE:[I

    return-object p0
.end method

.method static synthetic access$300(Lcom/yftech/settings/manager/SoundManager;)[I
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/yftech/settings/manager/SoundManager;->DTS_SOUND_POSITION:[I

    return-object p0
.end method

.method static synthetic access$500(Lcom/yftech/settings/manager/SoundManager;)Ljava/lang/Object;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/yftech/settings/manager/SoundManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$600(Lcom/yftech/settings/manager/SoundManager;II)Z
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/manager/SoundManager;->setDelay(II)Z

    move-result p0

    return p0
.end method

.method private cancelDelay()Z
    .locals 1

    .line 524
    iget-object v0, p0, Lcom/yftech/settings/manager/SoundManager;->mDtsStateSetThread:Lcom/yftech/settings/manager/SoundManager$DtsStateSetThread;

    if-eqz v0, :cond_0

    .line 525
    iget-object p0, p0, Lcom/yftech/settings/manager/SoundManager;->mDtsStateSetThread:Lcom/yftech/settings/manager/SoundManager$DtsStateSetThread;

    invoke-virtual {p0}, Lcom/yftech/settings/manager/SoundManager$DtsStateSetThread;->cancle()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private getBandCurValue(I)F
    .locals 1

    .line 478
    invoke-static {}, Lcom/yftech/car/audio/CarSoundEffectManager;->getInstance()Lcom/yftech/car/audio/CarSoundEffectManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/audio/CarSoundEffectManager;->getBandCurValue()[F

    move-result-object p0

    if-eqz p0, :cond_0

    .line 479
    array-length v0, p0

    if-ge p1, v0, :cond_0

    .line 480
    aget p0, p0, p1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private getBootVolumeType()I
    .locals 3

    .line 687
    invoke-static {}, Lcom/yftech/car/audio/CarAudioManager;->getInstance()Lcom/yftech/car/audio/CarAudioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/audio/CarAudioManager;->getBootVolumeType()I

    move-result v0

    const/4 v1, 0x0

    .line 688
    :goto_0
    iget-object v2, p0, Lcom/yftech/settings/manager/SoundManager;->BOOT_VOLUME_TYPE:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 689
    iget-object v2, p0, Lcom/yftech/settings/manager/SoundManager;->BOOT_VOLUME_TYPE:[I

    aget v2, v2, v1

    if-ne v2, v0, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private getDTSEnable()Z
    .locals 0

    .line 382
    invoke-static {}, Lcom/yftech/car/audio/CarSoundEffectManager;->getInstance()Lcom/yftech/car/audio/CarSoundEffectManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/audio/CarSoundEffectManager;->isDTSEnable()Z

    move-result p0

    return p0
.end method

.method private getDTSSoundPosition()I
    .locals 5

    .line 399
    invoke-static {}, Lcom/yftech/car/audio/CarSoundEffectManager;->getInstance()Lcom/yftech/car/audio/CarSoundEffectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/audio/CarSoundEffectManager;->isDTSEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    invoke-static {}, Lcom/yftech/car/audio/CarSoundEffectManager;->getInstance()Lcom/yftech/car/audio/CarSoundEffectManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/car/audio/CarSoundEffectManager;->getDTSSoundPosition()I

    move-result v1

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/yftech/settings/manager/SoundManager;->DTS_CLOSE:I

    :goto_0
    const-string v2, "SoundManager"

    .line 401
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDTSSoundPosition isDTSEnable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", dtsSoundPosition:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 402
    :goto_1
    iget-object v2, p0, Lcom/yftech/settings/manager/SoundManager;->DTS_SOUND_POSITION:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 403
    iget-object v2, p0, Lcom/yftech/settings/manager/SoundManager;->DTS_SOUND_POSITION:[I

    aget v2, v2, v0

    if-ne v2, v1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method private getDTSType()I
    .locals 3

    .line 431
    invoke-static {}, Lcom/yftech/car/audio/CarSoundEffectManager;->getInstance()Lcom/yftech/car/audio/CarSoundEffectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/audio/CarSoundEffectManager;->getDTSType()I

    move-result v0

    const/4 v1, 0x0

    .line 432
    :goto_0
    iget-object v2, p0, Lcom/yftech/settings/manager/SoundManager;->DTS_TYPE:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 433
    iget-object v2, p0, Lcom/yftech/settings/manager/SoundManager;->DTS_TYPE:[I

    aget v2, v2, v1

    if-ne v2, v0, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private getDbInterval(I)F
    .locals 1

    .line 507
    invoke-static {}, Lcom/yftech/car/audio/CarSoundEffectManager;->getInstance()Lcom/yftech/car/audio/CarSoundEffectManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/audio/CarSoundEffectManager;->getBandMaxValue()[F

    move-result-object p0

    .line 508
    invoke-static {}, Lcom/yftech/car/audio/CarSoundEffectManager;->getInstance()Lcom/yftech/car/audio/CarSoundEffectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/audio/CarSoundEffectManager;->getBandMinValue()[F

    move-result-object v0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    .line 510
    aget p0, p0, p1

    aget p1, v0, p1

    sub-float/2addr p0, p1

    return p0

    :cond_0
    const/high16 p0, -0x40800000    # -1.0f

    return p0
.end method

.method private getDelay()[I
    .locals 4

    .line 543
    invoke-virtual {p0}, Lcom/yftech/settings/manager/SoundManager;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "eq_x"

    const/16 v2, 0xa

    .line 544
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v3, "eq_y"

    .line 545
    invoke-interface {p0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v2, 0x2

    .line 546
    new-array v2, v2, [I

    aput v0, v2, v1

    const/4 v0, 0x1

    aput p0, v2, v0

    return-object v2
.end method

.method private getEQType()I
    .locals 3

    .line 451
    invoke-static {}, Lcom/yftech/car/audio/CarSoundEffectManager;->getInstance()Lcom/yftech/car/audio/CarSoundEffectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/audio/CarSoundEffectManager;->getEQType()I

    move-result v0

    const/4 v1, 0x0

    .line 452
    :goto_0
    iget-object v2, p0, Lcom/yftech/settings/manager/SoundManager;->EQ_TYPE:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 453
    iget-object v2, p0, Lcom/yftech/settings/manager/SoundManager;->EQ_TYPE:[I

    aget v2, v2, v1

    if-ne v2, v0, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static declared-synchronized getInstance()Lcom/yftech/settings/manager/SoundManager;
    .locals 2

    const-class v0, Lcom/yftech/settings/manager/SoundManager;

    monitor-enter v0

    .line 212
    :try_start_0
    sget-object v1, Lcom/yftech/settings/manager/SoundManager;->sSoundManager:Lcom/yftech/settings/manager/SoundManager;

    if-nez v1, :cond_0

    .line 213
    new-instance v1, Lcom/yftech/settings/manager/SoundManager;

    invoke-direct {v1}, Lcom/yftech/settings/manager/SoundManager;-><init>()V

    sput-object v1, Lcom/yftech/settings/manager/SoundManager;->sSoundManager:Lcom/yftech/settings/manager/SoundManager;

    .line 215
    :cond_0
    sget-object v1, Lcom/yftech/settings/manager/SoundManager;->sSoundManager:Lcom/yftech/settings/manager/SoundManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 211
    monitor-exit v0

    throw v1
.end method

.method private getInterfaceEffectsEnable()Z
    .locals 5

    .line 763
    iget-object v0, p0, Lcom/yftech/settings/manager/SoundManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "interface_sound_effect"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "SoundManager"

    .line 764
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isOpenInterfaceSoundEffect: status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    .line 766
    invoke-static {}, Lcom/yftech/vehicle/sdk/HostConfig;->getInterfaceSound()Lcom/yftech/vehicle/internal/adapter/IHostConfig$InterfaceSound;

    move-result-object v0

    .line 767
    sget-object v2, Lcom/yftech/vehicle/internal/adapter/IHostConfig$InterfaceSound;->ON:Lcom/yftech/vehicle/internal/adapter/IHostConfig$InterfaceSound;

    if-ne v0, v2, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v1

    .line 772
    :goto_0
    iget-object p0, p0, Lcom/yftech/settings/manager/SoundManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "interface_sound_effect"

    invoke-static {p0, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    if-ne v0, v3, :cond_2

    move v1, v3

    :cond_2
    return v1
.end method

.method private getKeepMuteWarning()I
    .locals 4

    .line 707
    iget-object v0, p0, Lcom/yftech/settings/manager/SoundManager;->KEEP_MUTE_WARNING:[I

    iget v1, p0, Lcom/yftech/settings/manager/SoundManager;->mKeepMuteWarningOption:I

    aget v0, v0, v1

    .line 708
    new-instance v1, Lcom/yftech/car/data/CarData;

    new-instance v2, Lcom/yftech/car/data/CarData$CarDataEntry;

    const-string v3, "Keep_Mute_Warning_Enable"

    invoke-direct {v2, v3, v0}, Lcom/yftech/car/data/CarData$CarDataEntry;-><init>(Ljava/lang/String;I)V

    invoke-direct {v1, v2}, Lcom/yftech/car/data/CarData;-><init>(Lcom/yftech/car/data/CarData$CarDataEntry;)V

    invoke-static {v1}, Lcom/yftech/car/data/CarDataManager;->get(Lcom/yftech/car/data/CarData;)Lcom/yftech/car/data/CarData;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "Keep_Mute_Warning_Enable"

    .line 709
    invoke-virtual {v1, v2}, Lcom/yftech/car/data/CarData;->getDataEntry(Ljava/lang/String;)Lcom/yftech/car/data/CarData$CarDataEntry;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v0, "Keep_Mute_Warning_Enable"

    .line 710
    invoke-virtual {v1, v0}, Lcom/yftech/car/data/CarData;->getDataEntry(Ljava/lang/String;)Lcom/yftech/car/data/CarData$CarDataEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/data/CarData$CarDataEntry;->getValueInt()I

    move-result v0

    .line 712
    :cond_0
    invoke-direct {p0, v0}, Lcom/yftech/settings/manager/SoundManager;->getValidKeepMuteWarningOption(I)I

    move-result p0

    return p0
.end method

.method private getKeySoundType()I
    .locals 4

    .line 727
    iget v0, p0, Lcom/yftech/settings/manager/SoundManager;->KEY_SOUND_TYPE_CLOSE:I

    .line 728
    invoke-virtual {p0}, Lcom/yftech/settings/manager/SoundManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sound_effects_enabled"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    const-string v0, "persist.yf.sound_effect_index"

    .line 730
    iget v1, p0, Lcom/yftech/settings/manager/SoundManager;->KEY_SOUND_TYPE_MODERN:I

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    :cond_0
    const/4 v1, 0x0

    .line 732
    :goto_0
    iget-object v2, p0, Lcom/yftech/settings/manager/SoundManager;->KEY_SOUND_TYPE:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 733
    iget-object v2, p0, Lcom/yftech/settings/manager/SoundManager;->KEY_SOUND_TYPE:[I

    aget v2, v2, v1

    if-ne v2, v0, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method private getMiddleBand(I)F
    .locals 1

    .line 840
    iget-object v0, p0, Lcom/yftech/settings/manager/SoundManager;->mMiddleBands:[F

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/yftech/settings/manager/SoundManager;->mMiddleBands:[F

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 841
    iget-object p0, p0, Lcom/yftech/settings/manager/SoundManager;->mMiddleBands:[F

    aget p0, p0, p1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private getSpeedGainEnable()Z
    .locals 0

    .line 677
    invoke-static {}, Lcom/yftech/car/audio/CarAudioManager;->getInstance()Lcom/yftech/car/audio/CarAudioManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/audio/CarAudioManager;->getSpeedGainLevel()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getValidKeepMuteWarningOption(I)I
    .locals 3

    const/4 v0, 0x0

    .line 784
    :goto_0
    iget-object v1, p0, Lcom/yftech/settings/manager/SoundManager;->KEEP_MUTE_WARNING:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 785
    iget-object v1, p0, Lcom/yftech/settings/manager/SoundManager;->KEEP_MUTE_WARNING:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 786
    iput v0, p0, Lcom/yftech/settings/manager/SoundManager;->mKeepMuteWarningOption:I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-string v0, "SoundManager"

    .line 790
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getValidKeepMuteWarningOption type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", index:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/yftech/settings/manager/SoundManager;->mKeepMuteWarningOption:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    iget p0, p0, Lcom/yftech/settings/manager/SoundManager;->mKeepMuteWarningOption:I

    return p0
.end method

.method private initMiddleBands()V
    .locals 7

    .line 828
    invoke-static {}, Lcom/yftech/car/audio/CarSoundEffectManager;->getInstance()Lcom/yftech/car/audio/CarSoundEffectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/audio/CarSoundEffectManager;->getBandMaxValue()[F

    move-result-object v0

    .line 829
    invoke-static {}, Lcom/yftech/car/audio/CarSoundEffectManager;->getInstance()Lcom/yftech/car/audio/CarSoundEffectManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/car/audio/CarSoundEffectManager;->getBandMinValue()[F

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 831
    array-length v2, v0

    array-length v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 832
    new-array v3, v2, [F

    iput-object v3, p0, Lcom/yftech/settings/manager/SoundManager;->mMiddleBands:[F

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 834
    iget-object v4, p0, Lcom/yftech/settings/manager/SoundManager;->mMiddleBands:[F

    aget v5, v0, v3

    aget v6, v1, v3

    add-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private playKeySoundEffect()V
    .locals 3

    .line 795
    invoke-virtual {p0}, Lcom/yftech/settings/manager/SoundManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sound_effects_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 797
    invoke-virtual {p0}, Lcom/yftech/settings/manager/SoundManager;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    .line 798
    invoke-virtual {p0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    :cond_1
    return-void
.end method

.method private setBandValue(IF)Z
    .locals 3

    .line 487
    invoke-static {}, Lcom/yftech/car/audio/CarSoundEffectManager;->getInstance()Lcom/yftech/car/audio/CarSoundEffectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/audio/CarSoundEffectManager;->getBandCurValue()[F

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 488
    array-length v2, v0

    if-ge p1, v2, :cond_3

    .line 489
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 493
    :cond_0
    invoke-direct {p0, v1}, Lcom/yftech/settings/manager/SoundManager;->getMiddleBand(I)F

    move-result v2

    aput v2, v0, v1

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 495
    :cond_2
    aput p2, v0, p1

    .line 496
    invoke-static {}, Lcom/yftech/car/audio/CarSoundEffectManager;->getInstance()Lcom/yftech/car/audio/CarSoundEffectManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/yftech/car/audio/CarSoundEffectManager;->setBandValue([F)Z

    move-result p0

    const-string v0, "SoundManager"

    .line 497
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBandValue index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", value:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", result:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yftech/settings/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p0

    :cond_3
    const-string p0, "SoundManager"

    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBandValue index:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", value:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", getBandCurValue is null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yftech/settings/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private setBootVolumeType(I)Z
    .locals 1

    if-ltz p1, :cond_0

    .line 699
    iget-object v0, p0, Lcom/yftech/settings/manager/SoundManager;->DTS_TYPE:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 700
    invoke-static {}, Lcom/yftech/car/audio/CarAudioManager;->getInstance()Lcom/yftech/car/audio/CarAudioManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/settings/manager/SoundManager;->BOOT_VOLUME_TYPE:[I

    aget p0, p0, p1

    invoke-virtual {v0, p0}, Lcom/yftech/car/audio/CarAudioManager;->setBootVolumeType(I)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setDTSEnable(Z)Z
    .locals 3

    .line 387
    invoke-static {}, Lcom/yftech/car/audio/CarSoundEffectManager;->getInstance()Lcom/yftech/car/audio/CarSoundEffectManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/car/audio/CarSoundEffectManager;->setDTSEnable(Z)Z

    move-result p0

    const-string v0, "SoundManager"

    .line 388
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDTSEnable enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 390
    invoke-static {}, Lcom/yftech/car/audio/CarSoundEffectManager;->getInstance()Lcom/yftech/car/audio/CarSoundEffectManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/audio/CarSoundEffectManager;->isEQEnable()Z

    move-result p1

    if-nez p1, :cond_0

    .line 391
    invoke-static {}, Lcom/yftech/car/audio/CarSoundEffectManager;->getInstance()Lcom/yftech/car/audio/CarSoundEffectManager;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/yftech/car/audio/CarSoundEffectManager;->setEQEnable(Z)Z

    move-result p1

    const-string v0, "SoundManager"

    .line 392
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDTSEnable resultEQEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return p0
.end method

.method private setDTSSoundPosition(I)Z
    .locals 3

    const/4 v0, 0x0

    if-ltz p1, :cond_2

    .line 413
    iget-object v1, p0, Lcom/yftech/settings/manager/SoundManager;->DTS_SOUND_POSITION:[I

    array-length v1, v1

    if-ge p1, v1, :cond_2

    .line 414
    iget-object v1, p0, Lcom/yftech/settings/manager/SoundManager;->DTS_SOUND_POSITION:[I

    aget p1, v1, p1

    .line 415
    iget v1, p0, Lcom/yftech/settings/manager/SoundManager;->DTS_CLOSE:I

    if-ne p1, v1, :cond_0

    .line 416
    invoke-direct {p0, v0}, Lcom/yftech/settings/manager/SoundManager;->setDTSEnable(Z)Z

    move-result v0

    const-string p0, "SoundManager"

    const-string p1, "setDTSSoundPosition() close DTSEnable"

    .line 417
    invoke-static {p0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 419
    :cond_0
    invoke-direct {p0}, Lcom/yftech/settings/manager/SoundManager;->getDTSEnable()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 420
    invoke-direct {p0, v0}, Lcom/yftech/settings/manager/SoundManager;->setDTSEnable(Z)Z

    move-result p0

    const-string v0, "SoundManager"

    .line 421
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDTSSoundPosition() open DTSEnable setDTSEnableResult:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    :cond_1
    invoke-static {}, Lcom/yftech/car/audio/CarSoundEffectManager;->getInstance()Lcom/yftech/car/audio/CarSoundEffectManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/car/audio/CarSoundEffectManager;->setDTSSoundPosition(I)Z

    move-result v0

    :cond_2
    :goto_0
    return v0
.end method

.method private setDTSType(I)Z
    .locals 1

    if-ltz p1, :cond_0

    .line 443
    iget-object v0, p0, Lcom/yftech/settings/manager/SoundManager;->DTS_TYPE:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 444
    invoke-static {}, Lcom/yftech/car/audio/CarSoundEffectManager;->getInstance()Lcom/yftech/car/audio/CarSoundEffectManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/settings/manager/SoundManager;->DTS_TYPE:[I

    aget p0, p0, p1

    invoke-virtual {v0, p0}, Lcom/yftech/car/audio/CarSoundEffectManager;->setDTSType(I)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setDelay(II)Z
    .locals 17

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    .line 598
    iget v0, v1, Lcom/yftech/settings/manager/SoundManager;->mLastX:I

    if-ne v0, v2, :cond_0

    iget v0, v1, Lcom/yftech/settings/manager/SoundManager;->mLastY:I

    if-ne v0, v3, :cond_0

    const-string v0, "SoundManager"

    .line 599
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDelay the same, mLastX:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/yftech/settings/manager/SoundManager;->mLastX:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mLastY:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/yftech/settings/manager/SoundManager;->mLastY:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", x:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", y:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    .line 603
    :cond_0
    iget v4, v1, Lcom/yftech/settings/manager/SoundManager;->mDelayMaxValue:F

    .line 604
    iget v5, v1, Lcom/yftech/settings/manager/SoundManager;->mDelayMaxValue:F

    .line 605
    iget v6, v1, Lcom/yftech/settings/manager/SoundManager;->mDelayMaxValue:F

    .line 606
    iget v7, v1, Lcom/yftech/settings/manager/SoundManager;->mDelayMaxValue:F

    .line 612
    iget v8, v1, Lcom/yftech/settings/manager/SoundManager;->mRateZ:F

    const/16 v9, 0xa

    rsub-int/lit8 v0, v2, 0xa

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 614
    :try_start_0
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    rsub-int/lit8 v12, v3, 0xa

    .line 615
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    int-to-float v12, v12

    float-to-double v13, v0

    .line 616
    invoke-static {v13, v14, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v15, v4

    move/from16 v16, v5

    float-to-double v4, v12

    :try_start_1
    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v13, v4

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    cmpl-float v5, v0, v12

    if-lez v5, :cond_1

    int-to-float v5, v9

    sub-float/2addr v5, v0

    .line 618
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v5, v4

    div-float/2addr v5, v0

    add-float/2addr v5, v4

    .line 619
    iget v13, v1, Lcom/yftech/settings/manager/SoundManager;->mDelayMaxValue:F

    iget v14, v1, Lcom/yftech/settings/manager/SoundManager;->mDelayMinValue:F

    sub-float/2addr v13, v14

    div-float v8, v13, v5

    const-string v13, "SoundManager"

    .line 620
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setDelay, centralTriX:"

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", centralTriY:"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", centralTriZ:"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", extendedTriZ:"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", rateZ:"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    cmpg-float v5, v0, v12

    if-gez v5, :cond_2

    int-to-float v5, v9

    sub-float/2addr v5, v12

    .line 623
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v5, v4

    div-float/2addr v5, v12

    add-float/2addr v5, v4

    .line 624
    iget v10, v1, Lcom/yftech/settings/manager/SoundManager;->mDelayMaxValue:F

    iget v11, v1, Lcom/yftech/settings/manager/SoundManager;->mDelayMinValue:F

    sub-float/2addr v10, v11

    div-float v8, v10, v5

    const-string v10, "SoundManager"

    .line 625
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setDelay, centralTriX:"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", centralTriY:"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", centralTriZ:"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", extendedTriZ:"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", rateZ:"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v5, "SoundManager"

    .line 628
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setDelay, centralTriX:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", centralTriY:"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", centralTriZ:"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", rateZ:"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move v15, v4

    move/from16 v16, v5

    .line 632
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    if-ltz v2, :cond_3

    if-gt v2, v9, :cond_3

    if-ltz v3, :cond_3

    if-gt v3, v9, :cond_3

    .line 637
    iget v4, v1, Lcom/yftech/settings/manager/SoundManager;->mDelayMaxValue:F

    .line 638
    iget v0, v1, Lcom/yftech/settings/manager/SoundManager;->mDelayMaxValue:F

    add-int/lit8 v5, v2, -0xa

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    iget v7, v1, Lcom/yftech/settings/manager/SoundManager;->mRateX:F

    mul-float/2addr v6, v7

    sub-float/2addr v0, v6

    .line 639
    iget v6, v1, Lcom/yftech/settings/manager/SoundManager;->mDelayMaxValue:F

    add-int/lit8 v7, v3, -0xa

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v9

    int-to-float v9, v9

    iget v10, v1, Lcom/yftech/settings/manager/SoundManager;->mRateY:F

    mul-float/2addr v9, v10

    sub-float/2addr v6, v9

    .line 640
    iget v9, v1, Lcom/yftech/settings/manager/SoundManager;->mDelayMaxValue:F

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-double v10, v5

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-double v14, v5

    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v5, v10

    mul-float/2addr v5, v8

    sub-float v7, v9, v5

    move v5, v0

    move v0, v4

    goto/16 :goto_2

    :cond_3
    const/16 v0, 0x14

    if-le v2, v9, :cond_4

    if-gt v2, v0, :cond_4

    if-ltz v3, :cond_4

    if-gt v3, v9, :cond_4

    .line 643
    iget v0, v1, Lcom/yftech/settings/manager/SoundManager;->mDelayMaxValue:F

    add-int/lit8 v4, v2, -0xa

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    iget v6, v1, Lcom/yftech/settings/manager/SoundManager;->mRateX:F

    mul-float/2addr v5, v6

    sub-float/2addr v0, v5

    .line 644
    iget v5, v1, Lcom/yftech/settings/manager/SoundManager;->mDelayMaxValue:F

    .line 645
    iget v6, v1, Lcom/yftech/settings/manager/SoundManager;->mDelayMaxValue:F

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-double v9, v4

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    add-int/lit8 v4, v3, -0xa

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-double v13, v7

    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    add-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    double-to-float v7, v9

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    .line 646
    iget v7, v1, Lcom/yftech/settings/manager/SoundManager;->mDelayMaxValue:F

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    iget v8, v1, Lcom/yftech/settings/manager/SoundManager;->mRateY:F

    mul-float/2addr v4, v8

    sub-float/2addr v7, v4

    goto/16 :goto_2

    :cond_4
    if-ltz v2, :cond_5

    if-gt v2, v9, :cond_5

    if-le v3, v9, :cond_5

    if-gt v3, v0, :cond_5

    .line 649
    iget v0, v1, Lcom/yftech/settings/manager/SoundManager;->mDelayMaxValue:F

    add-int/lit8 v4, v3, -0xa

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    iget v6, v1, Lcom/yftech/settings/manager/SoundManager;->mRateY:F

    mul-float/2addr v5, v6

    sub-float/2addr v0, v5

    .line 650
    iget v5, v1, Lcom/yftech/settings/manager/SoundManager;->mDelayMaxValue:F

    add-int/lit8 v6, v2, -0xa

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-double v9, v7

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-double v13, v4

    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    add-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    double-to-float v4, v9

    mul-float/2addr v4, v8

    sub-float/2addr v5, v4

    .line 651
    iget v4, v1, Lcom/yftech/settings/manager/SoundManager;->mDelayMaxValue:F

    .line 652
    iget v7, v1, Lcom/yftech/settings/manager/SoundManager;->mDelayMaxValue:F

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    iget v8, v1, Lcom/yftech/settings/manager/SoundManager;->mRateX:F

    mul-float/2addr v6, v8

    sub-float/2addr v7, v6

    move v6, v4

    goto :goto_2

    :cond_5
    if-le v2, v9, :cond_6

    if-gt v2, v0, :cond_6

    if-le v3, v9, :cond_6

    if-gt v3, v0, :cond_6

    .line 655
    iget v0, v1, Lcom/yftech/settings/manager/SoundManager;->mDelayMaxValue:F

    add-int/lit8 v4, v2, -0xa

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-double v5, v5

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-int/lit8 v7, v3, -0xa

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v11

    int-to-double v11, v11

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    add-double/2addr v5, v9

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float/2addr v5, v8

    sub-float/2addr v0, v5

    .line 656
    iget v5, v1, Lcom/yftech/settings/manager/SoundManager;->mDelayMaxValue:F

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    iget v7, v1, Lcom/yftech/settings/manager/SoundManager;->mRateY:F

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    .line 657
    iget v6, v1, Lcom/yftech/settings/manager/SoundManager;->mDelayMaxValue:F

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    iget v7, v1, Lcom/yftech/settings/manager/SoundManager;->mRateX:F

    mul-float/2addr v4, v7

    sub-float/2addr v6, v4

    .line 658
    iget v7, v1, Lcom/yftech/settings/manager/SoundManager;->mDelayMaxValue:F

    goto :goto_2

    :cond_6
    move v0, v15

    move/from16 v5, v16

    .line 660
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/yftech/settings/manager/SoundManager;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v8, "settings"

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 661
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v8, "eq_x"

    .line 662
    invoke-interface {v4, v8, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v8, "eq_y"

    .line 663
    invoke-interface {v4, v8, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 664
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 665
    invoke-static {}, Lcom/yftech/car/audio/CarSoundEffectManager;->getInstance()Lcom/yftech/car/audio/CarSoundEffectManager;

    move-result-object v4

    invoke-virtual {v4, v0, v5, v6, v7}, Lcom/yftech/car/audio/CarSoundEffectManager;->setBalance(FFFF)Z

    move-result v4

    const-string v8, "SoundManager"

    .line 666
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setDelay, x:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", y:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", fl:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", fr:"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", rl:"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", rr:"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", ret:"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_7

    .line 669
    iput v2, v1, Lcom/yftech/settings/manager/SoundManager;->mLastX:I

    .line 670
    iput v3, v1, Lcom/yftech/settings/manager/SoundManager;->mLastY:I

    :cond_7
    return v4
.end method

.method private setDelayValue(II)Z
    .locals 1

    .line 534
    iget-object v0, p0, Lcom/yftech/settings/manager/SoundManager;->mDtsStateSetThread:Lcom/yftech/settings/manager/SoundManager$DtsStateSetThread;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 536
    iget-object p0, p0, Lcom/yftech/settings/manager/SoundManager;->mDtsStateSetThread:Lcom/yftech/settings/manager/SoundManager$DtsStateSetThread;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/settings/manager/SoundManager$DtsStateSetThread;->setDelayValue(II)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setEQType(I)Z
    .locals 3

    .line 463
    invoke-static {}, Lcom/yftech/car/audio/CarSoundEffectManager;->getInstance()Lcom/yftech/car/audio/CarSoundEffectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/audio/CarSoundEffectManager;->isEQEnable()Z

    move-result v0

    if-ltz p1, :cond_1

    .line 464
    iget-object v1, p0, Lcom/yftech/settings/manager/SoundManager;->EQ_TYPE:[I

    array-length v1, v1

    if-ge p1, v1, :cond_1

    .line 466
    invoke-static {}, Lcom/yftech/car/audio/CarSoundEffectManager;->getInstance()Lcom/yftech/car/audio/CarSoundEffectManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/car/audio/CarSoundEffectManager;->isEQEnable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 467
    invoke-static {}, Lcom/yftech/car/audio/CarSoundEffectManager;->getInstance()Lcom/yftech/car/audio/CarSoundEffectManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yftech/car/audio/CarSoundEffectManager;->setEQEnable(Z)Z

    .line 468
    invoke-static {}, Lcom/yftech/car/audio/CarSoundEffectManager;->getInstance()Lcom/yftech/car/audio/CarSoundEffectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/audio/CarSoundEffectManager;->isEQEnable()Z

    move-result v0

    .line 470
    :cond_0
    invoke-static {}, Lcom/yftech/car/audio/CarSoundEffectManager;->getInstance()Lcom/yftech/car/audio/CarSoundEffectManager;

    move-result-object v1

    iget-object p0, p0, Lcom/yftech/settings/manager/SoundManager;->EQ_TYPE:[I

    aget p0, p0, p1

    invoke-virtual {v1, p0}, Lcom/yftech/car/audio/CarSoundEffectManager;->setEQType(I)Z

    move-result p0

    const-string p1, "SoundManager"

    .line 471
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEQType() isOpenEQ:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " setEQType result:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setInterfaceEffectsEnable(Z)Z
    .locals 1

    .line 779
    iget-object p0, p0, Lcom/yftech/settings/manager/SoundManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "interface_sound_effect"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method private setKeepMuteWarning(I)Z
    .locals 2

    if-ltz p1, :cond_0

    .line 718
    iget-object v0, p0, Lcom/yftech/settings/manager/SoundManager;->KEEP_MUTE_WARNING:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 719
    iget-object p0, p0, Lcom/yftech/settings/manager/SoundManager;->KEEP_MUTE_WARNING:[I

    aget p0, p0, p1

    .line 720
    new-instance p1, Lcom/yftech/car/data/CarData;

    new-instance v0, Lcom/yftech/car/data/CarData$CarDataEntry;

    const-string v1, "Keep_Mute_Warning_Enable"

    invoke-direct {v0, v1, p0}, Lcom/yftech/car/data/CarData$CarDataEntry;-><init>(Ljava/lang/String;I)V

    invoke-direct {p1, v0}, Lcom/yftech/car/data/CarData;-><init>(Lcom/yftech/car/data/CarData$CarDataEntry;)V

    const/4 p0, 0x1

    invoke-static {p1, p0}, Lcom/yftech/car/data/CarDataManager;->set(Lcom/yftech/car/data/CarData;Z)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setKeySoundType(I)Z
    .locals 3

    const/4 v0, 0x0

    if-ltz p1, :cond_1

    .line 743
    iget-object v1, p0, Lcom/yftech/settings/manager/SoundManager;->KEY_SOUND_TYPE:[I

    array-length v1, v1

    if-ge p1, v1, :cond_1

    .line 744
    iget-object v1, p0, Lcom/yftech/settings/manager/SoundManager;->KEY_SOUND_TYPE:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/yftech/settings/manager/SoundManager;->KEY_SOUND_TYPE_CLOSE:I

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 745
    :goto_0
    invoke-virtual {p0}, Lcom/yftech/settings/manager/SoundManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sound_effects_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    const-string v1, "persist.yf.sound_effect_index"

    .line 749
    iget-object p0, p0, Lcom/yftech/settings/manager/SoundManager;->KEY_SOUND_TYPE:[I

    aget p0, p0, p1

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v0
.end method

.method private setSpeedGainEnable(Z)Z
    .locals 0

    .line 682
    invoke-static {}, Lcom/yftech/car/audio/CarAudioManager;->getInstance()Lcom/yftech/car/audio/CarAudioManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/car/audio/CarAudioManager;->setSpeedGainLevel(I)Z

    move-result p0

    return p0
.end method

.method private startDelay()Z
    .locals 2

    .line 517
    new-instance v0, Lcom/yftech/settings/manager/SoundManager$DtsStateSetThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yftech/settings/manager/SoundManager$DtsStateSetThread;-><init>(Lcom/yftech/settings/manager/SoundManager;Lcom/yftech/settings/manager/SoundManager$1;)V

    iput-object v0, p0, Lcom/yftech/settings/manager/SoundManager;->mDtsStateSetThread:Lcom/yftech/settings/manager/SoundManager$DtsStateSetThread;

    .line 518
    iget-object p0, p0, Lcom/yftech/settings/manager/SoundManager;->mDtsStateSetThread:Lcom/yftech/settings/manager/SoundManager$DtsStateSetThread;

    invoke-virtual {p0}, Lcom/yftech/settings/manager/SoundManager$DtsStateSetThread;->start()V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public deInit()V
    .locals 1

    .line 237
    invoke-super {p0}, Lcom/yftech/settings/manager/BaseManager;->deInit()V

    .line 238
    invoke-static {}, Lcom/yftech/car/audio/CarSoundEffectManager;->getInstance()Lcom/yftech/car/audio/CarSoundEffectManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/settings/manager/SoundManager;->mCarSoundEffectCallback:Lcom/yftech/car/audio/CarSoundEffectManager$CarSoundEffectCallback;

    invoke-virtual {v0, p0}, Lcom/yftech/car/audio/CarSoundEffectManager;->unregisterCarSoundEffectCallback(Lcom/yftech/car/audio/CarSoundEffectManager$CarSoundEffectCallback;)V

    return-void
.end method

.method public getDtsSoundPosition()[I
    .locals 0

    .line 377
    iget-object p0, p0, Lcom/yftech/settings/manager/SoundManager;->DTS_SOUND_POSITION:[I

    return-object p0
.end method

.method public getEnabled(Lcom/yftech/settings/manager/SoundManager$Function;)Z
    .locals 1

    .line 258
    sget-object v0, Lcom/yftech/settings/manager/SoundManager$2;->$SwitchMap$com$yftech$settings$manager$SoundManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/SoundManager$Function;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    .line 264
    :pswitch_0
    invoke-direct {p0}, Lcom/yftech/settings/manager/SoundManager;->getInterfaceEffectsEnable()Z

    move-result p0

    return p0

    .line 262
    :pswitch_1
    invoke-direct {p0}, Lcom/yftech/settings/manager/SoundManager;->getSpeedGainEnable()Z

    move-result p0

    return p0

    .line 260
    :pswitch_2
    invoke-direct {p0}, Lcom/yftech/settings/manager/SoundManager;->getDTSEnable()Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic getEnabled(Ljava/lang/Object;)Z
    .locals 0

    .line 21
    check-cast p1, Lcom/yftech/settings/manager/SoundManager$Function;

    invoke-virtual {p0, p1}, Lcom/yftech/settings/manager/SoundManager;->getEnabled(Lcom/yftech/settings/manager/SoundManager$Function;)Z

    move-result p0

    return p0
.end method

.method public getFunctionPresent(Lcom/yftech/settings/manager/SoundManager$Function;)Z
    .locals 2

    .line 803
    sget-object p0, Lcom/yftech/settings/manager/SoundManager$2;->$SwitchMap$com$yftech$settings$manager$SoundManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/SoundManager$Function;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, p1, :cond_1

    packed-switch p0, :pswitch_data_0

    return v1

    .line 816
    :pswitch_0
    invoke-static {}, Lcom/yftech/vehicle/sdk/HostConfig;->getKeytone()Lcom/yftech/vehicle/internal/adapter/IHostConfig$Keytone;

    move-result-object p0

    .line 817
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Keytone;->NOT_PRESENT:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Keytone;

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    .line 805
    :pswitch_1
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isDriverAssistanceWarningPresent()Z

    move-result p0

    return p0

    .line 820
    :cond_1
    invoke-static {}, Lcom/yftech/vehicle/sdk/HostConfig;->getInterfaceSound()Lcom/yftech/vehicle/internal/adapter/IHostConfig$InterfaceSound;

    move-result-object p0

    .line 821
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$InterfaceSound;->NOT_PRESENT:Lcom/yftech/vehicle/internal/adapter/IHostConfig$InterfaceSound;

    if-eq p0, p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    return v0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getOption(Lcom/yftech/settings/manager/SoundManager$Function;)I
    .locals 1

    .line 289
    sget-object v0, Lcom/yftech/settings/manager/SoundManager$2;->$SwitchMap$com$yftech$settings$manager$SoundManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/SoundManager$Function;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p0, -0x1

    return p0

    .line 301
    :pswitch_0
    invoke-direct {p0}, Lcom/yftech/settings/manager/SoundManager;->getKeySoundType()I

    move-result p0

    return p0

    .line 299
    :pswitch_1
    invoke-direct {p0}, Lcom/yftech/settings/manager/SoundManager;->getKeepMuteWarning()I

    move-result p0

    return p0

    .line 297
    :pswitch_2
    invoke-direct {p0}, Lcom/yftech/settings/manager/SoundManager;->getBootVolumeType()I

    move-result p0

    return p0

    .line 295
    :pswitch_3
    invoke-direct {p0}, Lcom/yftech/settings/manager/SoundManager;->getEQType()I

    move-result p0

    return p0

    .line 293
    :pswitch_4
    invoke-direct {p0}, Lcom/yftech/settings/manager/SoundManager;->getDTSSoundPosition()I

    move-result p0

    return p0

    .line 291
    :pswitch_5
    invoke-direct {p0}, Lcom/yftech/settings/manager/SoundManager;->getDTSType()I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x6
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

    .line 21
    check-cast p1, Lcom/yftech/settings/manager/SoundManager$Function;

    invoke-virtual {p0, p1}, Lcom/yftech/settings/manager/SoundManager;->getOption(Lcom/yftech/settings/manager/SoundManager$Function;)I

    move-result p0

    return p0
.end method

.method public getValue(Lcom/yftech/settings/manager/SoundManager$Function;)Ljava/lang/Object;
    .locals 3

    .line 335
    sget-object v0, Lcom/yftech/settings/manager/SoundManager$2;->$SwitchMap$com$yftech$settings$manager$SoundManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/SoundManager$Function;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x4

    const/16 v2, 0x8

    packed-switch p1, :pswitch_data_0

    const/4 p0, -0x1

    .line 351
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 349
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/yftech/settings/manager/SoundManager;->getDbInterval(I)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 347
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/yftech/settings/manager/SoundManager;->getDbInterval(I)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 345
    :pswitch_2
    invoke-direct {p0, v2}, Lcom/yftech/settings/manager/SoundManager;->getDbInterval(I)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 343
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/yftech/settings/manager/SoundManager;->getBandCurValue(I)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 341
    :pswitch_4
    invoke-direct {p0, v1}, Lcom/yftech/settings/manager/SoundManager;->getBandCurValue(I)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 339
    :pswitch_5
    invoke-direct {p0, v2}, Lcom/yftech/settings/manager/SoundManager;->getBandCurValue(I)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 337
    :pswitch_6
    invoke-direct {p0}, Lcom/yftech/settings/manager/SoundManager;->getDelay()[I

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    check-cast p1, Lcom/yftech/settings/manager/SoundManager$Function;

    invoke-virtual {p0, p1}, Lcom/yftech/settings/manager/SoundManager;->getValue(Lcom/yftech/settings/manager/SoundManager$Function;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;)V
    .locals 6

    .line 220
    invoke-super {p0, p1}, Lcom/yftech/settings/manager/BaseManager;->init(Landroid/content/Context;)V

    .line 221
    invoke-static {}, Lcom/yftech/car/audio/CarSoundEffectManager;->getInstance()Lcom/yftech/car/audio/CarSoundEffectManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/settings/manager/SoundManager;->mCarSoundEffectCallback:Lcom/yftech/car/audio/CarSoundEffectManager$CarSoundEffectCallback;

    iget-object v2, p0, Lcom/yftech/settings/manager/SoundManager;->mCarAudioCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/yftech/car/audio/CarSoundEffectManager;->registerCarSoundEffectCallback(Lcom/yftech/car/audio/CarSoundEffectManager$CarSoundEffectCallback;Landroid/os/Handler;)V

    .line 222
    iput-object p1, p0, Lcom/yftech/settings/manager/SoundManager;->mContext:Landroid/content/Context;

    .line 224
    invoke-static {}, Lcom/yftech/car/audio/CarSoundEffectManager;->getInstance()Lcom/yftech/car/audio/CarSoundEffectManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/audio/CarSoundEffectManager;->getBalanceMinValue()F

    move-result p1

    iput p1, p0, Lcom/yftech/settings/manager/SoundManager;->mDelayMinValue:F

    .line 225
    invoke-static {}, Lcom/yftech/car/audio/CarSoundEffectManager;->getInstance()Lcom/yftech/car/audio/CarSoundEffectManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/audio/CarSoundEffectManager;->getBalanceMaxValue()F

    move-result p1

    iput p1, p0, Lcom/yftech/settings/manager/SoundManager;->mDelayMaxValue:F

    .line 226
    iget p1, p0, Lcom/yftech/settings/manager/SoundManager;->mDelayMaxValue:F

    iget v0, p0, Lcom/yftech/settings/manager/SoundManager;->mDelayMinValue:F

    sub-float/2addr p1, v0

    const/high16 v0, 0x41200000    # 10.0f

    div-float/2addr p1, v0

    iput p1, p0, Lcom/yftech/settings/manager/SoundManager;->mRateX:F

    .line 227
    iget p1, p0, Lcom/yftech/settings/manager/SoundManager;->mDelayMaxValue:F

    iget v1, p0, Lcom/yftech/settings/manager/SoundManager;->mDelayMinValue:F

    sub-float/2addr p1, v1

    div-float/2addr p1, v0

    iput p1, p0, Lcom/yftech/settings/manager/SoundManager;->mRateY:F

    .line 228
    iget p1, p0, Lcom/yftech/settings/manager/SoundManager;->mDelayMaxValue:F

    iget v0, p0, Lcom/yftech/settings/manager/SoundManager;->mDelayMinValue:F

    sub-float/2addr p1, v0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    .line 229
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Lcom/yftech/settings/manager/SoundManager;->mRateZ:F

    const-string p1, "SoundManager"

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init() mDelayMinValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yftech/settings/manager/SoundManager;->mDelayMinValue:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mDelayMaxValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yftech/settings/manager/SoundManager;->mDelayMaxValue:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mRateX:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yftech/settings/manager/SoundManager;->mRateX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mRateY:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yftech/settings/manager/SoundManager;->mRateY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mRateZ:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yftech/settings/manager/SoundManager;->mRateZ:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/yftech/settings/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-direct {p0}, Lcom/yftech/settings/manager/SoundManager;->initMiddleBands()V

    return-void
.end method

.method public setAction(Lcom/yftech/settings/manager/SoundManager$Function;)Z
    .locals 3

    .line 244
    sget-object v0, Lcom/yftech/settings/manager/SoundManager$2;->$SwitchMap$com$yftech$settings$manager$SoundManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/SoundManager$Function;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    .line 249
    :pswitch_0
    invoke-direct {p0}, Lcom/yftech/settings/manager/SoundManager;->cancelDelay()Z

    move-result p0

    goto :goto_0

    .line 246
    :pswitch_1
    invoke-direct {p0}, Lcom/yftech/settings/manager/SoundManager;->startDelay()Z

    move-result p0

    :goto_0
    const-string v0, "SoundManager"

    .line 252
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

    .line 21
    check-cast p1, Lcom/yftech/settings/manager/SoundManager$Function;

    invoke-virtual {p0, p1}, Lcom/yftech/settings/manager/SoundManager;->setAction(Lcom/yftech/settings/manager/SoundManager$Function;)Z

    move-result p0

    return p0
.end method

.method public setEnabled(Lcom/yftech/settings/manager/SoundManager$Function;Z)Z
    .locals 3

    .line 272
    sget-object v0, Lcom/yftech/settings/manager/SoundManager$2;->$SwitchMap$com$yftech$settings$manager$SoundManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/SoundManager$Function;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    .line 280
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/SoundManager;->setInterfaceEffectsEnable(Z)Z

    move-result p0

    goto :goto_0

    .line 277
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/SoundManager;->setSpeedGainEnable(Z)Z

    move-result p0

    goto :goto_0

    .line 274
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/SoundManager;->setDTSEnable(Z)Z

    move-result p0

    :goto_0
    const-string v0, "SoundManager"

    .line 283
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
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic setEnabled(Ljava/lang/Object;Z)Z
    .locals 0

    .line 21
    check-cast p1, Lcom/yftech/settings/manager/SoundManager$Function;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/settings/manager/SoundManager;->setEnabled(Lcom/yftech/settings/manager/SoundManager$Function;Z)Z

    move-result p0

    return p0
.end method

.method public setOption(Lcom/yftech/settings/manager/SoundManager$Function;I)Z
    .locals 3

    .line 309
    sget-object v0, Lcom/yftech/settings/manager/SoundManager$2;->$SwitchMap$com$yftech$settings$manager$SoundManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/SoundManager$Function;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    .line 326
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/SoundManager;->setKeySoundType(I)Z

    move-result p0

    goto :goto_0

    .line 323
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/SoundManager;->setKeepMuteWarning(I)Z

    move-result p0

    goto :goto_0

    .line 320
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/SoundManager;->setBootVolumeType(I)Z

    move-result p0

    goto :goto_0

    .line 317
    :pswitch_3
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/SoundManager;->setEQType(I)Z

    move-result p0

    goto :goto_0

    .line 314
    :pswitch_4
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/SoundManager;->setDTSSoundPosition(I)Z

    move-result p0

    goto :goto_0

    .line 311
    :pswitch_5
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/SoundManager;->setDTSType(I)Z

    move-result p0

    :goto_0
    const-string v0, "SoundManager"

    .line 329
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
    .packed-switch 0x6
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

    .line 21
    check-cast p1, Lcom/yftech/settings/manager/SoundManager$Function;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/settings/manager/SoundManager;->setOption(Lcom/yftech/settings/manager/SoundManager$Function;I)Z

    move-result p0

    return p0
.end method

.method public setValue(Lcom/yftech/settings/manager/SoundManager$Function;Ljava/lang/Object;)Z
    .locals 3

    .line 357
    sget-object v0, Lcom/yftech/settings/manager/SoundManager$2;->$SwitchMap$com$yftech$settings$manager$SoundManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/SoundManager$Function;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 369
    :pswitch_0
    move-object v0, p2

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/yftech/settings/manager/SoundManager;->setBandValue(IF)Z

    move-result v2

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x4

    .line 366
    move-object v1, p2

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/manager/SoundManager;->setBandValue(IF)Z

    move-result v2

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x8

    .line 363
    move-object v1, p2

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/manager/SoundManager;->setBandValue(IF)Z

    move-result v2

    goto :goto_0

    .line 359
    :pswitch_3
    move-object v0, p2

    check-cast v0, [I

    .line 360
    aget v2, v0, v2

    aget v0, v0, v1

    invoke-direct {p0, v2, v0}, Lcom/yftech/settings/manager/SoundManager;->setDelayValue(II)Z

    move-result v2

    :goto_0
    const-string p0, "SoundManager"

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setValue function:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", value:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", result:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 21
    check-cast p1, Lcom/yftech/settings/manager/SoundManager$Function;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/settings/manager/SoundManager;->setValue(Lcom/yftech/settings/manager/SoundManager$Function;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
