.class Lcom/yftech/settings/manager/SoundVolumeManager$1;
.super Lcom/yftech/car/audio/CarAudioManager$CarAudioCallback;
.source "SoundVolumeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/manager/SoundVolumeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/manager/SoundVolumeManager;


# direct methods
.method constructor <init>(Lcom/yftech/settings/manager/SoundVolumeManager;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/yftech/settings/manager/SoundVolumeManager$1;->this$0:Lcom/yftech/settings/manager/SoundVolumeManager;

    invoke-direct {p0}, Lcom/yftech/car/audio/CarAudioManager$CarAudioCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangedVolume(IIIZI)V
    .locals 8

    .line 62
    invoke-super/range {p0 .. p5}, Lcom/yftech/car/audio/CarAudioManager$CarAudioCallback;->onChangedVolume(IIIZI)V

    const-string v0, "SoundVolumeManager"

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChangedVolume streamType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", curValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", tolValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mute:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", flag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 69
    :goto_0
    iget-object v1, p0, Lcom/yftech/settings/manager/SoundVolumeManager$1;->this$0:Lcom/yftech/settings/manager/SoundVolumeManager;

    invoke-static {v1}, Lcom/yftech/settings/manager/SoundVolumeManager;->access$000(Lcom/yftech/settings/manager/SoundVolumeManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 70
    iget-object v1, p0, Lcom/yftech/settings/manager/SoundVolumeManager$1;->this$0:Lcom/yftech/settings/manager/SoundVolumeManager;

    invoke-static {v1}, Lcom/yftech/settings/manager/SoundVolumeManager;->access$000(Lcom/yftech/settings/manager/SoundVolumeManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/yftech/settings/manager/SoundVolumeManager$SoundVolumeListener;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/yftech/settings/manager/SoundVolumeManager$SoundVolumeListener;->onChangedVolume(IIIZI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
