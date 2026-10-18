.class synthetic Lcom/yftech/settings/voice/VoiceSettingsFragment$2;
.super Ljava/lang/Object;
.source "VoiceSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/voice/VoiceSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$yftech$settings$manager$VoiceSettingsManager$Function:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 210
    invoke-static {}, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;->values()[Lcom/yftech/settings/manager/VoiceSettingsManager$Function;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/yftech/settings/voice/VoiceSettingsFragment$2;->$SwitchMap$com$yftech$settings$manager$VoiceSettingsManager$Function:[I

    :try_start_0
    sget-object v0, Lcom/yftech/settings/voice/VoiceSettingsFragment$2;->$SwitchMap$com$yftech$settings$manager$VoiceSettingsManager$Function:[I

    sget-object v1, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;->FREE_WAKE_UP_DURATION_OPTION:Lcom/yftech/settings/manager/VoiceSettingsManager$Function;

    invoke-virtual {v1}, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/yftech/settings/voice/VoiceSettingsFragment$2;->$SwitchMap$com$yftech$settings$manager$VoiceSettingsManager$Function:[I

    sget-object v1, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;->RECOGNITION_ENGINE_OPTION:Lcom/yftech/settings/manager/VoiceSettingsManager$Function;

    invoke-virtual {v1}, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/yftech/settings/voice/VoiceSettingsFragment$2;->$SwitchMap$com$yftech$settings$manager$VoiceSettingsManager$Function:[I

    sget-object v1, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;->SPEAK_SETTING_OPTION:Lcom/yftech/settings/manager/VoiceSettingsManager$Function;

    invoke-virtual {v1}, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/yftech/settings/voice/VoiceSettingsFragment$2;->$SwitchMap$com$yftech$settings$manager$VoiceSettingsManager$Function:[I

    sget-object v1, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;->WAKE_UP_ENABLE:Lcom/yftech/settings/manager/VoiceSettingsManager$Function;

    invoke-virtual {v1}, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/yftech/settings/voice/VoiceSettingsFragment$2;->$SwitchMap$com$yftech$settings$manager$VoiceSettingsManager$Function:[I

    sget-object v1, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;->FREE_WAKE_UP_SETTING_ENABLE:Lcom/yftech/settings/manager/VoiceSettingsManager$Function;

    invoke-virtual {v1}, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/yftech/settings/voice/VoiceSettingsFragment$2;->$SwitchMap$com$yftech$settings$manager$VoiceSettingsManager$Function:[I

    sget-object v1, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;->CUSTOM_WAKE_UP_WORD_VALUE:Lcom/yftech/settings/manager/VoiceSettingsManager$Function;

    invoke-virtual {v1}, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method
