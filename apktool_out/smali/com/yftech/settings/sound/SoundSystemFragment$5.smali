.class synthetic Lcom/yftech/settings/sound/SoundSystemFragment$5;
.super Ljava/lang/Object;
.source "SoundSystemFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/sound/SoundSystemFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I

.field static final synthetic $SwitchMap$com$yftech$settings$manager$SoundManager$Function:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 834
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager$Function;->values()[Lcom/yftech/settings/manager/CarPartsManager$Function;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/yftech/settings/sound/SoundSystemFragment$5;->$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/yftech/settings/sound/SoundSystemFragment$5;->$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I

    sget-object v2, Lcom/yftech/settings/manager/CarPartsManager$Function;->LOCK_UNLOCK_SOUND_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v2}, Lcom/yftech/settings/manager/CarPartsManager$Function;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 565
    :catch_0
    invoke-static {}, Lcom/yftech/settings/manager/SoundManager$Function;->values()[Lcom/yftech/settings/manager/SoundManager$Function;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/yftech/settings/sound/SoundSystemFragment$5;->$SwitchMap$com$yftech$settings$manager$SoundManager$Function:[I

    :try_start_1
    sget-object v1, Lcom/yftech/settings/sound/SoundSystemFragment$5;->$SwitchMap$com$yftech$settings$manager$SoundManager$Function:[I

    sget-object v2, Lcom/yftech/settings/manager/SoundManager$Function;->BAND_HIGH_VALUE:Lcom/yftech/settings/manager/SoundManager$Function;

    invoke-virtual {v2}, Lcom/yftech/settings/manager/SoundManager$Function;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/yftech/settings/sound/SoundSystemFragment$5;->$SwitchMap$com$yftech$settings$manager$SoundManager$Function:[I

    sget-object v1, Lcom/yftech/settings/manager/SoundManager$Function;->BAND_MID_VALUE:Lcom/yftech/settings/manager/SoundManager$Function;

    invoke-virtual {v1}, Lcom/yftech/settings/manager/SoundManager$Function;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/yftech/settings/sound/SoundSystemFragment$5;->$SwitchMap$com$yftech$settings$manager$SoundManager$Function:[I

    sget-object v1, Lcom/yftech/settings/manager/SoundManager$Function;->BAND_LOW_VALUE:Lcom/yftech/settings/manager/SoundManager$Function;

    invoke-virtual {v1}, Lcom/yftech/settings/manager/SoundManager$Function;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/yftech/settings/sound/SoundSystemFragment$5;->$SwitchMap$com$yftech$settings$manager$SoundManager$Function:[I

    sget-object v1, Lcom/yftech/settings/manager/SoundManager$Function;->SPEED_GAIN_ENABLE:Lcom/yftech/settings/manager/SoundManager$Function;

    invoke-virtual {v1}, Lcom/yftech/settings/manager/SoundManager$Function;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/yftech/settings/sound/SoundSystemFragment$5;->$SwitchMap$com$yftech$settings$manager$SoundManager$Function:[I

    sget-object v1, Lcom/yftech/settings/manager/SoundManager$Function;->DTS_TYEP_OPTION:Lcom/yftech/settings/manager/SoundManager$Function;

    invoke-virtual {v1}, Lcom/yftech/settings/manager/SoundManager$Function;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/yftech/settings/sound/SoundSystemFragment$5;->$SwitchMap$com$yftech$settings$manager$SoundManager$Function:[I

    sget-object v1, Lcom/yftech/settings/manager/SoundManager$Function;->DTS_SOUND_POSITION_OPTION:Lcom/yftech/settings/manager/SoundManager$Function;

    invoke-virtual {v1}, Lcom/yftech/settings/manager/SoundManager$Function;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lcom/yftech/settings/sound/SoundSystemFragment$5;->$SwitchMap$com$yftech$settings$manager$SoundManager$Function:[I

    sget-object v1, Lcom/yftech/settings/manager/SoundManager$Function;->EQ_TYPE_OPTION:Lcom/yftech/settings/manager/SoundManager$Function;

    invoke-virtual {v1}, Lcom/yftech/settings/manager/SoundManager$Function;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lcom/yftech/settings/sound/SoundSystemFragment$5;->$SwitchMap$com$yftech$settings$manager$SoundManager$Function:[I

    sget-object v1, Lcom/yftech/settings/manager/SoundManager$Function;->BOOT_VOLUME_OPTION:Lcom/yftech/settings/manager/SoundManager$Function;

    invoke-virtual {v1}, Lcom/yftech/settings/manager/SoundManager$Function;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, Lcom/yftech/settings/sound/SoundSystemFragment$5;->$SwitchMap$com$yftech$settings$manager$SoundManager$Function:[I

    sget-object v1, Lcom/yftech/settings/manager/SoundManager$Function;->KEEP_MUTE_WARNING_OPTION:Lcom/yftech/settings/manager/SoundManager$Function;

    invoke-virtual {v1}, Lcom/yftech/settings/manager/SoundManager$Function;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v0, Lcom/yftech/settings/sound/SoundSystemFragment$5;->$SwitchMap$com$yftech$settings$manager$SoundManager$Function:[I

    sget-object v1, Lcom/yftech/settings/manager/SoundManager$Function;->SOUND_DELAY_VALUE:Lcom/yftech/settings/manager/SoundManager$Function;

    invoke-virtual {v1}, Lcom/yftech/settings/manager/SoundManager$Function;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    return-void
.end method
