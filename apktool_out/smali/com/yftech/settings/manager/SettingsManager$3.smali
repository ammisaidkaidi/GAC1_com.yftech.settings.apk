.class synthetic Lcom/yftech/settings/manager/SettingsManager$3;
.super Ljava/lang/Object;
.source "SettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/manager/SettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$yftech$settings$manager$SettingsManager$Function:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 194
    invoke-static {}, Lcom/yftech/settings/manager/SettingsManager$Function;->values()[Lcom/yftech/settings/manager/SettingsManager$Function;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/yftech/settings/manager/SettingsManager$3;->$SwitchMap$com$yftech$settings$manager$SettingsManager$Function:[I

    :try_start_0
    sget-object v0, Lcom/yftech/settings/manager/SettingsManager$3;->$SwitchMap$com$yftech$settings$manager$SettingsManager$Function:[I

    sget-object v1, Lcom/yftech/settings/manager/SettingsManager$Function;->CHECK_FACTORY_MODE_STATE_ACTION:Lcom/yftech/settings/manager/SettingsManager$Function;

    invoke-virtual {v1}, Lcom/yftech/settings/manager/SettingsManager$Function;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/yftech/settings/manager/SettingsManager$3;->$SwitchMap$com$yftech$settings$manager$SettingsManager$Function:[I

    sget-object v1, Lcom/yftech/settings/manager/SettingsManager$Function;->CLOSE_SCREEN_ACTION:Lcom/yftech/settings/manager/SettingsManager$Function;

    invoke-virtual {v1}, Lcom/yftech/settings/manager/SettingsManager$Function;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/yftech/settings/manager/SettingsManager$3;->$SwitchMap$com$yftech$settings$manager$SettingsManager$Function:[I

    sget-object v1, Lcom/yftech/settings/manager/SettingsManager$Function;->NAVI_SIGNAL_MODE_OPTION:Lcom/yftech/settings/manager/SettingsManager$Function;

    invoke-virtual {v1}, Lcom/yftech/settings/manager/SettingsManager$Function;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/yftech/settings/manager/SettingsManager$3;->$SwitchMap$com$yftech$settings$manager$SettingsManager$Function:[I

    sget-object v1, Lcom/yftech/settings/manager/SettingsManager$Function;->AC_VIEW_HOLD_TIME_OPTION:Lcom/yftech/settings/manager/SettingsManager$Function;

    invoke-virtual {v1}, Lcom/yftech/settings/manager/SettingsManager$Function;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/yftech/settings/manager/SettingsManager$3;->$SwitchMap$com$yftech$settings$manager$SettingsManager$Function:[I

    sget-object v1, Lcom/yftech/settings/manager/SettingsManager$Function;->INTELLIGENT_SCENE_SWITCH_OPTION:Lcom/yftech/settings/manager/SettingsManager$Function;

    invoke-virtual {v1}, Lcom/yftech/settings/manager/SettingsManager$Function;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/yftech/settings/manager/SettingsManager$3;->$SwitchMap$com$yftech$settings$manager$SettingsManager$Function:[I

    sget-object v1, Lcom/yftech/settings/manager/SettingsManager$Function;->LANGUAGE_SETTING_OPTION:Lcom/yftech/settings/manager/SettingsManager$Function;

    invoke-virtual {v1}, Lcom/yftech/settings/manager/SettingsManager$Function;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/yftech/settings/manager/SettingsManager$3;->$SwitchMap$com$yftech$settings$manager$SettingsManager$Function:[I

    sget-object v1, Lcom/yftech/settings/manager/SettingsManager$Function;->SCREEN_BRIGHTNESS_VALUE:Lcom/yftech/settings/manager/SettingsManager$Function;

    invoke-virtual {v1}, Lcom/yftech/settings/manager/SettingsManager$Function;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lcom/yftech/settings/manager/SettingsManager$3;->$SwitchMap$com$yftech$settings$manager$SettingsManager$Function:[I

    sget-object v1, Lcom/yftech/settings/manager/SettingsManager$Function;->SCREEN_BRIGHTNESS_MAX_GET_VALUE:Lcom/yftech/settings/manager/SettingsManager$Function;

    invoke-virtual {v1}, Lcom/yftech/settings/manager/SettingsManager$Function;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lcom/yftech/settings/manager/SettingsManager$3;->$SwitchMap$com$yftech$settings$manager$SettingsManager$Function:[I

    sget-object v1, Lcom/yftech/settings/manager/SettingsManager$Function;->VEHICLE_MANUFACTURER:Lcom/yftech/settings/manager/SettingsManager$Function;

    invoke-virtual {v1}, Lcom/yftech/settings/manager/SettingsManager$Function;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, Lcom/yftech/settings/manager/SettingsManager$3;->$SwitchMap$com$yftech$settings$manager$SettingsManager$Function:[I

    sget-object v1, Lcom/yftech/settings/manager/SettingsManager$Function;->VEHICLE_MODEL:Lcom/yftech/settings/manager/SettingsManager$Function;

    invoke-virtual {v1}, Lcom/yftech/settings/manager/SettingsManager$Function;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    return-void
.end method
