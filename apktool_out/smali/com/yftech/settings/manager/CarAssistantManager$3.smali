.class synthetic Lcom/yftech/settings/manager/CarAssistantManager$3;
.super Ljava/lang/Object;
.source "CarAssistantManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/manager/CarAssistantManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$yftech$settings$manager$CarAssistantManager$Function:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 276
    invoke-static {}, Lcom/yftech/settings/manager/CarAssistantManager$Function;->values()[Lcom/yftech/settings/manager/CarAssistantManager$Function;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/yftech/settings/manager/CarAssistantManager$3;->$SwitchMap$com$yftech$settings$manager$CarAssistantManager$Function:[I

    :try_start_0
    sget-object v0, Lcom/yftech/settings/manager/CarAssistantManager$3;->$SwitchMap$com$yftech$settings$manager$CarAssistantManager$Function:[I

    sget-object v1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->STOP_TIMEOUT_ACTION:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {v1}, Lcom/yftech/settings/manager/CarAssistantManager$Function;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/yftech/settings/manager/CarAssistantManager$3;->$SwitchMap$com$yftech$settings$manager$CarAssistantManager$Function:[I

    sget-object v1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->FCW_OFF_ENABLED:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {v1}, Lcom/yftech/settings/manager/CarAssistantManager$Function;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/yftech/settings/manager/CarAssistantManager$3;->$SwitchMap$com$yftech$settings$manager$CarAssistantManager$Function:[I

    sget-object v1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->LDW_LKA_ENABLED:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {v1}, Lcom/yftech/settings/manager/CarAssistantManager$Function;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/yftech/settings/manager/CarAssistantManager$3;->$SwitchMap$com$yftech$settings$manager$CarAssistantManager$Function:[I

    sget-object v1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->TSR_ENABLED:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {v1}, Lcom/yftech/settings/manager/CarAssistantManager$Function;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/yftech/settings/manager/CarAssistantManager$3;->$SwitchMap$com$yftech$settings$manager$CarAssistantManager$Function:[I

    sget-object v1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->IACC_ENABLED:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {v1}, Lcom/yftech/settings/manager/CarAssistantManager$Function;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/yftech/settings/manager/CarAssistantManager$3;->$SwitchMap$com$yftech$settings$manager$CarAssistantManager$Function:[I

    sget-object v1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->TSR_AUDIO_WARNING_ENABLED:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {v1}, Lcom/yftech/settings/manager/CarAssistantManager$Function;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/yftech/settings/manager/CarAssistantManager$3;->$SwitchMap$com$yftech$settings$manager$CarAssistantManager$Function:[I

    sget-object v1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->AEB_OFF_ENABLED:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {v1}, Lcom/yftech/settings/manager/CarAssistantManager$Function;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lcom/yftech/settings/manager/CarAssistantManager$3;->$SwitchMap$com$yftech$settings$manager$CarAssistantManager$Function:[I

    sget-object v1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->DSA_OFF_ENABLES:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {v1}, Lcom/yftech/settings/manager/CarAssistantManager$Function;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lcom/yftech/settings/manager/CarAssistantManager$3;->$SwitchMap$com$yftech$settings$manager$CarAssistantManager$Function:[I

    sget-object v1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->DFC_ENABLE:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {v1}, Lcom/yftech/settings/manager/CarAssistantManager$Function;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, Lcom/yftech/settings/manager/CarAssistantManager$3;->$SwitchMap$com$yftech$settings$manager$CarAssistantManager$Function:[I

    sget-object v1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->IA_ENABLE:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {v1}, Lcom/yftech/settings/manager/CarAssistantManager$Function;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v0, Lcom/yftech/settings/manager/CarAssistantManager$3;->$SwitchMap$com$yftech$settings$manager$CarAssistantManager$Function:[I

    sget-object v1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->FCW_WARNING_DISTANCE_OPTION:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {v1}, Lcom/yftech/settings/manager/CarAssistantManager$Function;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v0, Lcom/yftech/settings/manager/CarAssistantManager$3;->$SwitchMap$com$yftech$settings$manager$CarAssistantManager$Function:[I

    sget-object v1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->LKS_MODE_OPTION:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {v1}, Lcom/yftech/settings/manager/CarAssistantManager$Function;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v0, Lcom/yftech/settings/manager/CarAssistantManager$3;->$SwitchMap$com$yftech$settings$manager$CarAssistantManager$Function:[I

    sget-object v1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->CRUISE_ASSIST_OPTION:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {v1}, Lcom/yftech/settings/manager/CarAssistantManager$Function;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v0, Lcom/yftech/settings/manager/CarAssistantManager$3;->$SwitchMap$com$yftech$settings$manager$CarAssistantManager$Function:[I

    sget-object v1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->ADAS_WARN_TYPE_OPTION:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {v1}, Lcom/yftech/settings/manager/CarAssistantManager$Function;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v0, Lcom/yftech/settings/manager/CarAssistantManager$3;->$SwitchMap$com$yftech$settings$manager$CarAssistantManager$Function:[I

    sget-object v1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->DSA_MODE_OPTION:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {v1}, Lcom/yftech/settings/manager/CarAssistantManager$Function;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v0, Lcom/yftech/settings/manager/CarAssistantManager$3;->$SwitchMap$com$yftech$settings$manager$CarAssistantManager$Function:[I

    sget-object v1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->SPEED_WARNING_VALUE:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {v1}, Lcom/yftech/settings/manager/CarAssistantManager$Function;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    return-void
.end method
