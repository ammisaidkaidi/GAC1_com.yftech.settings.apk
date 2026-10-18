.class public Lcom/yftech/settings/utils/MySoundPool;
.super Ljava/lang/Object;
.source "MySoundPool.java"


# static fields
.field private static final DEF_RANGE:F = 0.1311872f

.field private static final MAX_PLAYING_SUM:I = 0x1


# instance fields
.field public final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mInterfaceId:I

.field private mSoundPool:Landroid/media/SoundPool;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-class v0, Lcom/yftech/settings/utils/MySoundPool;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/settings/utils/MySoundPool;->TAG:Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lcom/yftech/settings/utils/MySoundPool;->mContext:Landroid/content/Context;

    .line 25
    new-instance p1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v0, 0xd

    .line 26
    invoke-virtual {p1, v0}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    const/4 v0, 0x4

    .line 27
    invoke-virtual {p1, v0}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    .line 28
    invoke-virtual {p1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p1

    .line 29
    new-instance v0, Landroid/media/SoundPool$Builder;

    invoke-direct {v0}, Landroid/media/SoundPool$Builder;-><init>()V

    const/4 v1, 0x1

    .line 30
    invoke-virtual {v0, v1}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v0

    .line 31
    invoke-virtual {v0, p1}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object p1

    .line 32
    invoke-virtual {p1}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/settings/utils/MySoundPool;->mSoundPool:Landroid/media/SoundPool;

    .line 33
    iget-object p1, p0, Lcom/yftech/settings/utils/MySoundPool;->mSoundPool:Landroid/media/SoundPool;

    iget-object v0, p0, Lcom/yftech/settings/utils/MySoundPool;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0006

    invoke-virtual {p1, v0, v2, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/yftech/settings/utils/MySoundPool;->mInterfaceId:I

    return-void
.end method


# virtual methods
.method public playInterfaceSoundEffect()V
    .locals 7

    .line 39
    iget-object v0, p0, Lcom/yftech/settings/utils/MySoundPool;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/yftech/settings/utils/MySoundPool;->mInterfaceId:I

    const v2, 0x3e0655f0

    const v3, 0x3e0655f0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    return-void
.end method
