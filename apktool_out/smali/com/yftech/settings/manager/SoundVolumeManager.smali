.class public Lcom/yftech/settings/manager/SoundVolumeManager;
.super Ljava/lang/Object;
.source "SoundVolumeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/settings/manager/SoundVolumeManager$SoundVolumeListener;
    }
.end annotation


# static fields
.field public static final STREAM_CALL:I = 0x6

.field public static final STREAM_MUSIC:I = 0x3

.field public static final STREAM_NAVI:I = 0xb

.field public static final STREAM_VOICE:I = 0x9

.field private static final TAG:Ljava/lang/String; = "SoundVolumeManager"

.field public static final VOLUME_CALL_MIN:I = 0x3

.field public static final VOLUME_MEDIA_MIN:I = 0x0

.field public static final VOLUME_NAVI_MIN:I = 0x0

.field public static final VOLUME_VOICE_MIN:I = 0x3

.field private static mSoundVolumeManager:Lcom/yftech/settings/manager/SoundVolumeManager;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCarAudioCallback:Lcom/yftech/car/audio/CarAudioManager$CarAudioCallback;

.field private mCarAudioCallbackHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mSoundVolumeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/settings/manager/SoundVolumeManager$SoundVolumeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yftech/settings/manager/SoundVolumeManager;->mCarAudioCallbackHandler:Landroid/os/Handler;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/settings/manager/SoundVolumeManager;->mSoundVolumeListeners:Ljava/util/List;

    .line 59
    new-instance v0, Lcom/yftech/settings/manager/SoundVolumeManager$1;

    invoke-direct {v0, p0}, Lcom/yftech/settings/manager/SoundVolumeManager$1;-><init>(Lcom/yftech/settings/manager/SoundVolumeManager;)V

    iput-object v0, p0, Lcom/yftech/settings/manager/SoundVolumeManager;->mCarAudioCallback:Lcom/yftech/car/audio/CarAudioManager$CarAudioCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/settings/manager/SoundVolumeManager;)Ljava/util/List;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/yftech/settings/manager/SoundVolumeManager;->mSoundVolumeListeners:Ljava/util/List;

    return-object p0
.end method

.method public static declared-synchronized getInstance()Lcom/yftech/settings/manager/SoundVolumeManager;
    .locals 2

    const-class v0, Lcom/yftech/settings/manager/SoundVolumeManager;

    monitor-enter v0

    .line 43
    :try_start_0
    sget-object v1, Lcom/yftech/settings/manager/SoundVolumeManager;->mSoundVolumeManager:Lcom/yftech/settings/manager/SoundVolumeManager;

    if-nez v1, :cond_0

    .line 44
    new-instance v1, Lcom/yftech/settings/manager/SoundVolumeManager;

    invoke-direct {v1}, Lcom/yftech/settings/manager/SoundVolumeManager;-><init>()V

    sput-object v1, Lcom/yftech/settings/manager/SoundVolumeManager;->mSoundVolumeManager:Lcom/yftech/settings/manager/SoundVolumeManager;

    .line 46
    :cond_0
    sget-object v1, Lcom/yftech/settings/manager/SoundVolumeManager;->mSoundVolumeManager:Lcom/yftech/settings/manager/SoundVolumeManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 42
    monitor-exit v0

    throw v1
.end method

.method private setVolume(III)V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/yftech/settings/manager/SoundVolumeManager;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 135
    iget-object p0, p0, Lcom/yftech/settings/manager/SoundVolumeManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1, p2, p3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    const-string p0, "SoundVolumeManager"

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVolume, streamType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", value:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", flags:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addSoundVolumeListener(Lcom/yftech/settings/manager/SoundVolumeManager$SoundVolumeListener;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/yftech/settings/manager/SoundVolumeManager;->mSoundVolumeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    iget-object p0, p0, Lcom/yftech/settings/manager/SoundVolumeManager;->mSoundVolumeListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public deInit()V
    .locals 1

    .line 56
    invoke-static {}, Lcom/yftech/car/audio/CarAudioManager;->getInstance()Lcom/yftech/car/audio/CarAudioManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/settings/manager/SoundVolumeManager;->mCarAudioCallback:Lcom/yftech/car/audio/CarAudioManager$CarAudioCallback;

    invoke-virtual {v0, p0}, Lcom/yftech/car/audio/CarAudioManager;->unregisterCarAudioCallback(Lcom/yftech/car/audio/CarAudioManager$CarAudioCallback;)V

    return-void
.end method

.method public getMaxVolume(I)I
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/yftech/settings/manager/SoundVolumeManager;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 124
    iget-object p0, p0, Lcom/yftech/settings/manager/SoundVolumeManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getVolume(I)I
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/yftech/settings/manager/SoundVolumeManager;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 112
    iget-object p0, p0, Lcom/yftech/settings/manager/SoundVolumeManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    .line 50
    iput-object p1, p0, Lcom/yftech/settings/manager/SoundVolumeManager;->mContext:Landroid/content/Context;

    .line 51
    iget-object p1, p0, Lcom/yftech/settings/manager/SoundVolumeManager;->mContext:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/yftech/settings/manager/SoundVolumeManager;->mAudioManager:Landroid/media/AudioManager;

    .line 52
    invoke-static {}, Lcom/yftech/car/audio/CarAudioManager;->getInstance()Lcom/yftech/car/audio/CarAudioManager;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/settings/manager/SoundVolumeManager;->mCarAudioCallback:Lcom/yftech/car/audio/CarAudioManager$CarAudioCallback;

    iget-object p0, p0, Lcom/yftech/settings/manager/SoundVolumeManager;->mCarAudioCallbackHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, p0}, Lcom/yftech/car/audio/CarAudioManager;->registerCarAudioCallback(Lcom/yftech/car/audio/CarAudioManager$CarAudioCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public isMute(I)Z
    .locals 3

    .line 155
    iget-object v0, p0, Lcom/yftech/settings/manager/SoundVolumeManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "SoundVolumeManager"

    const-string p1, "isMute() audioManager is null"

    .line 156
    invoke-static {p0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 161
    :cond_1
    iget-object p0, p0, Lcom/yftech/settings/manager/SoundVolumeManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->isMasterMute()Z

    move-result v1

    :goto_0
    const-string p0, "SoundVolumeManager"

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMute() streamType:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " isMute:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public removeSoundVolumeListener(Lcom/yftech/settings/manager/SoundVolumeManager$SoundVolumeListener;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/yftech/settings/manager/SoundVolumeManager;->mSoundVolumeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object p0, p0, Lcom/yftech/settings/manager/SoundVolumeManager;->mSoundVolumeListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setMute(IZ)V
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/yftech/settings/manager/SoundVolumeManager;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    const-string p0, "SoundVolumeManager"

    const-string p1, "setMute() audioManager is null"

    .line 142
    invoke-static {p0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "SoundVolumeManager"

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMute() streamType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mute:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 148
    :cond_1
    iget-object p0, p0, Lcom/yftech/settings/manager/SoundVolumeManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Landroid/media/AudioManager;->setMasterMute(ZI)V

    :goto_0
    return-void
.end method

.method public setVolume(II)V
    .locals 1

    const/4 v0, 0x0

    .line 102
    invoke-direct {p0, p1, p2, v0}, Lcom/yftech/settings/manager/SoundVolumeManager;->setVolume(III)V

    return-void
.end method

.method public slideVolume(II)V
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    .line 130
    invoke-direct {p0, p1, p2, v0}, Lcom/yftech/settings/manager/SoundVolumeManager;->setVolume(III)V

    return-void
.end method
