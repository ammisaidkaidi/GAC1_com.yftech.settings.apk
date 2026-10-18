.class Lcom/yftech/settings/manager/SoundManager$1;
.super Lcom/yftech/car/audio/CarSoundEffectManager$CarSoundEffectCallback;
.source "SoundManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/manager/SoundManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/manager/SoundManager;


# direct methods
.method constructor <init>(Lcom/yftech/settings/manager/SoundManager;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/yftech/settings/manager/SoundManager$1;->this$0:Lcom/yftech/settings/manager/SoundManager;

    invoke-direct {p0}, Lcom/yftech/car/audio/CarSoundEffectManager$CarSoundEffectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangedBalanceValue(FFFF)V
    .locals 2

    .line 173
    invoke-super {p0, p1, p2, p3, p4}, Lcom/yftech/car/audio/CarSoundEffectManager$CarSoundEffectCallback;->onChangedBalanceValue(FFFF)V

    const-string p0, "SoundManager"

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChangedBalanceValue fl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", fr:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", rl:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", rr:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onChangedBandValue([F[F)V
    .locals 4

    .line 150
    invoke-super {p0, p1, p2}, Lcom/yftech/car/audio/CarSoundEffectManager$CarSoundEffectCallback;->onChangedBandValue([F[F)V

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/16 p2, 0x8

    .line 155
    aget p2, p1, p2

    const/4 v0, 0x4

    .line 156
    aget v0, p1, v0

    const/4 v1, 0x1

    .line 157
    aget p1, p1, v1

    goto :goto_0

    :cond_0
    move p1, p2

    move v0, p1

    :goto_0
    const-string v1, "SoundManager"

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onChangedBandValue high:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", mid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", low:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Lcom/yftech/settings/manager/SoundManager$1;->this$0:Lcom/yftech/settings/manager/SoundManager;

    sget-object v2, Lcom/yftech/settings/manager/SoundManager$Function;->BAND_HIGH_VALUE:Lcom/yftech/settings/manager/SoundManager$Function;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Lcom/yftech/settings/manager/SoundManager;->notifyOnValueChanged(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 161
    iget-object p2, p0, Lcom/yftech/settings/manager/SoundManager$1;->this$0:Lcom/yftech/settings/manager/SoundManager;

    sget-object v1, Lcom/yftech/settings/manager/SoundManager$Function;->BAND_MID_VALUE:Lcom/yftech/settings/manager/SoundManager$Function;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lcom/yftech/settings/manager/SoundManager;->notifyOnValueChanged(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 162
    iget-object p0, p0, Lcom/yftech/settings/manager/SoundManager$1;->this$0:Lcom/yftech/settings/manager/SoundManager;

    sget-object p2, Lcom/yftech/settings/manager/SoundManager$Function;->BAND_LOW_VALUE:Lcom/yftech/settings/manager/SoundManager$Function;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/yftech/settings/manager/SoundManager;->notifyOnValueChanged(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public onChangedDTSEnable(Z)V
    .locals 3

    .line 109
    invoke-super {p0, p1}, Lcom/yftech/car/audio/CarSoundEffectManager$CarSoundEffectCallback;->onChangedDTSEnable(Z)V

    const-string v0, "SoundManager"

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChangedDTSEnable enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/yftech/settings/manager/SoundManager$1;->this$0:Lcom/yftech/settings/manager/SoundManager;

    sget-object v1, Lcom/yftech/settings/manager/SoundManager$Function;->DTS_ENABLE:Lcom/yftech/settings/manager/SoundManager$Function;

    invoke-virtual {v0, v1, p1}, Lcom/yftech/settings/manager/SoundManager;->notifyOnEnableChanged(Ljava/lang/Object;Z)V

    .line 112
    iget-object p1, p0, Lcom/yftech/settings/manager/SoundManager$1;->this$0:Lcom/yftech/settings/manager/SoundManager;

    invoke-static {p1}, Lcom/yftech/settings/manager/SoundManager;->access$000(Lcom/yftech/settings/manager/SoundManager;)I

    move-result p1

    .line 113
    iget-object p0, p0, Lcom/yftech/settings/manager/SoundManager$1;->this$0:Lcom/yftech/settings/manager/SoundManager;

    sget-object v0, Lcom/yftech/settings/manager/SoundManager$Function;->DTS_SOUND_POSITION_OPTION:Lcom/yftech/settings/manager/SoundManager$Function;

    invoke-virtual {p0, v0, p1}, Lcom/yftech/settings/manager/SoundManager;->notifyOnOptionChanged(Ljava/lang/Object;I)V

    return-void
.end method

.method public onChangedDTSSoundPosition(I)V
    .locals 3

    .line 193
    invoke-super {p0, p1}, Lcom/yftech/car/audio/CarSoundEffectManager$CarSoundEffectCallback;->onChangedDTSSoundPosition(I)V

    const-string v0, "SoundManager"

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChangedDTSSoundPosition position:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 196
    :goto_0
    iget-object v1, p0, Lcom/yftech/settings/manager/SoundManager$1;->this$0:Lcom/yftech/settings/manager/SoundManager;

    invoke-static {v1}, Lcom/yftech/settings/manager/SoundManager;->access$300(Lcom/yftech/settings/manager/SoundManager;)[I

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 197
    iget-object v1, p0, Lcom/yftech/settings/manager/SoundManager$1;->this$0:Lcom/yftech/settings/manager/SoundManager;

    invoke-static {v1}, Lcom/yftech/settings/manager/SoundManager;->access$300(Lcom/yftech/settings/manager/SoundManager;)[I

    move-result-object v1

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 202
    :goto_1
    iget-object p0, p0, Lcom/yftech/settings/manager/SoundManager$1;->this$0:Lcom/yftech/settings/manager/SoundManager;

    sget-object p1, Lcom/yftech/settings/manager/SoundManager$Function;->DTS_SOUND_POSITION_OPTION:Lcom/yftech/settings/manager/SoundManager$Function;

    invoke-virtual {p0, p1, v0}, Lcom/yftech/settings/manager/SoundManager;->notifyOnOptionChanged(Ljava/lang/Object;I)V

    return-void
.end method

.method public onChangedDTSType(I)V
    .locals 3

    .line 179
    invoke-super {p0, p1}, Lcom/yftech/car/audio/CarSoundEffectManager$CarSoundEffectCallback;->onChangedDTSType(I)V

    const-string v0, "SoundManager"

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChangedDTSType type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 182
    :goto_0
    iget-object v1, p0, Lcom/yftech/settings/manager/SoundManager$1;->this$0:Lcom/yftech/settings/manager/SoundManager;

    invoke-static {v1}, Lcom/yftech/settings/manager/SoundManager;->access$200(Lcom/yftech/settings/manager/SoundManager;)[I

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 183
    iget-object v1, p0, Lcom/yftech/settings/manager/SoundManager$1;->this$0:Lcom/yftech/settings/manager/SoundManager;

    invoke-static {v1}, Lcom/yftech/settings/manager/SoundManager;->access$200(Lcom/yftech/settings/manager/SoundManager;)[I

    move-result-object v1

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 188
    :goto_1
    iget-object p0, p0, Lcom/yftech/settings/manager/SoundManager$1;->this$0:Lcom/yftech/settings/manager/SoundManager;

    sget-object p1, Lcom/yftech/settings/manager/SoundManager$Function;->DTS_TYEP_OPTION:Lcom/yftech/settings/manager/SoundManager$Function;

    invoke-virtual {p0, p1, v0}, Lcom/yftech/settings/manager/SoundManager;->notifyOnOptionChanged(Ljava/lang/Object;I)V

    return-void
.end method

.method public onChangedDelayValue(FFFF)V
    .locals 2

    .line 167
    invoke-super {p0, p1, p2, p3, p4}, Lcom/yftech/car/audio/CarSoundEffectManager$CarSoundEffectCallback;->onChangedDelayValue(FFFF)V

    const-string p0, "SoundManager"

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChangedDelayValue fl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", fr:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", rl:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", rr:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onChangedEQType(I[F[F)V
    .locals 4

    .line 119
    invoke-super {p0, p1, p2, p3}, Lcom/yftech/car/audio/CarSoundEffectManager$CarSoundEffectCallback;->onChangedEQType(I[F[F)V

    const/4 p3, 0x0

    .line 121
    :goto_0
    iget-object v0, p0, Lcom/yftech/settings/manager/SoundManager$1;->this$0:Lcom/yftech/settings/manager/SoundManager;

    invoke-static {v0}, Lcom/yftech/settings/manager/SoundManager;->access$100(Lcom/yftech/settings/manager/SoundManager;)[I

    move-result-object v0

    array-length v0, v0

    if-ge p3, v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/yftech/settings/manager/SoundManager$1;->this$0:Lcom/yftech/settings/manager/SoundManager;

    invoke-static {v0}, Lcom/yftech/settings/manager/SoundManager;->access$100(Lcom/yftech/settings/manager/SoundManager;)[I

    move-result-object v0

    aget v0, v0, p3

    if-ne v0, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, -0x1

    .line 127
    :goto_1
    iget-object v0, p0, Lcom/yftech/settings/manager/SoundManager$1;->this$0:Lcom/yftech/settings/manager/SoundManager;

    sget-object v1, Lcom/yftech/settings/manager/SoundManager$Function;->EQ_TYPE_OPTION:Lcom/yftech/settings/manager/SoundManager$Function;

    invoke-virtual {v0, v1, p3}, Lcom/yftech/settings/manager/SoundManager;->notifyOnOptionChanged(Ljava/lang/Object;I)V

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    const/16 p3, 0x8

    .line 132
    aget p3, p2, p3

    const/4 v0, 0x4

    .line 133
    aget v0, p2, v0

    const/4 v1, 0x1

    .line 134
    aget p2, p2, v1

    goto :goto_2

    :cond_2
    move p2, p3

    move v0, p2

    :goto_2
    const-string v1, "SoundManager"

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onChangedEQType type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", high:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", mid:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", low:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object p1, p0, Lcom/yftech/settings/manager/SoundManager$1;->this$0:Lcom/yftech/settings/manager/SoundManager;

    sget-object v1, Lcom/yftech/settings/manager/SoundManager$Function;->BAND_HIGH_VALUE:Lcom/yftech/settings/manager/SoundManager$Function;

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {p1, v1, p3}, Lcom/yftech/settings/manager/SoundManager;->notifyOnValueChanged(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 138
    iget-object p1, p0, Lcom/yftech/settings/manager/SoundManager$1;->this$0:Lcom/yftech/settings/manager/SoundManager;

    sget-object p3, Lcom/yftech/settings/manager/SoundManager$Function;->BAND_MID_VALUE:Lcom/yftech/settings/manager/SoundManager$Function;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lcom/yftech/settings/manager/SoundManager;->notifyOnValueChanged(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 139
    iget-object p0, p0, Lcom/yftech/settings/manager/SoundManager$1;->this$0:Lcom/yftech/settings/manager/SoundManager;

    sget-object p1, Lcom/yftech/settings/manager/SoundManager$Function;->BAND_LOW_VALUE:Lcom/yftech/settings/manager/SoundManager$Function;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yftech/settings/manager/SoundManager;->notifyOnValueChanged(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public onChangedEnable(Z)V
    .locals 2

    .line 144
    invoke-super {p0, p1}, Lcom/yftech/car/audio/CarSoundEffectManager$CarSoundEffectCallback;->onChangedEnable(Z)V

    const-string p0, "SoundManager"

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChangedEnable enable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
