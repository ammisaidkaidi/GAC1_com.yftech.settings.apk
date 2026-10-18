.class synthetic Lcom/yftech/settings/manager/CarDriveModeManager$3;
.super Ljava/lang/Object;
.source "CarDriveModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/manager/CarDriveModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function:[I

.field static final synthetic $SwitchMap$com$yftech$vehicle$internal$adapter$IBaseApi$EnableState:[I

.field static final synthetic $SwitchMap$com$yftech$vehicle$internal$adapter$ICarDrive$DriveMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 470
    invoke-static {}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->values()[Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/yftech/settings/manager/CarDriveModeManager$3;->$SwitchMap$com$yftech$vehicle$internal$adapter$ICarDrive$DriveMode:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/yftech/settings/manager/CarDriveModeManager$3;->$SwitchMap$com$yftech$vehicle$internal$adapter$ICarDrive$DriveMode:[I

    sget-object v2, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->ECO_PRO_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    invoke-virtual {v2}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lcom/yftech/settings/manager/CarDriveModeManager$3;->$SwitchMap$com$yftech$vehicle$internal$adapter$ICarDrive$DriveMode:[I

    sget-object v3, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->COMFORT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    invoke-virtual {v3}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/yftech/settings/manager/CarDriveModeManager$3;->$SwitchMap$com$yftech$vehicle$internal$adapter$ICarDrive$DriveMode:[I

    sget-object v4, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->SPORT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    invoke-virtual {v4}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 260
    :catch_2
    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->values()[Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/yftech/settings/manager/CarDriveModeManager$3;->$SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function:[I

    :try_start_3
    sget-object v3, Lcom/yftech/settings/manager/CarDriveModeManager$3;->$SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function:[I

    sget-object v4, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->RESET_ACTION:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v4}, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v3, Lcom/yftech/settings/manager/CarDriveModeManager$3;->$SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function:[I

    sget-object v4, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->STOP_TIMEOUT_ACTION:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v4}, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v3, Lcom/yftech/settings/manager/CarDriveModeManager$3;->$SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function:[I

    sget-object v4, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->TRACK_DIALOG_SHOW_ACTION:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v4}, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v2, Lcom/yftech/settings/manager/CarDriveModeManager$3;->$SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function:[I

    sget-object v3, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->REMEMBER_DRIVING_MODE_ENABLED:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v3}, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->ordinal()I

    move-result v3

    const/4 v4, 0x4

    aput v4, v2, v3
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v2, Lcom/yftech/settings/manager/CarDriveModeManager$3;->$SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function:[I

    sget-object v3, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->EMS_ENGINE_WAVE_ENABLE:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v3}, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->ordinal()I

    move-result v3

    const/4 v4, 0x5

    aput v4, v2, v3
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v2, Lcom/yftech/settings/manager/CarDriveModeManager$3;->$SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function:[I

    sget-object v3, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->EPS_STYLE_ENABLE_STATE:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v3}, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->ordinal()I

    move-result v3

    const/4 v4, 0x6

    aput v4, v2, v3
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v2, Lcom/yftech/settings/manager/CarDriveModeManager$3;->$SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function:[I

    sget-object v3, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->EPS_STYLE_OPTION:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v3}, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->ordinal()I

    move-result v3

    const/4 v4, 0x7

    aput v4, v2, v3
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v2, Lcom/yftech/settings/manager/CarDriveModeManager$3;->$SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function:[I

    sget-object v3, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->SUSPENSION_MODE_OPTION:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v3}, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->ordinal()I

    move-result v3

    const/16 v4, 0x8

    aput v4, v2, v3
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v2, Lcom/yftech/settings/manager/CarDriveModeManager$3;->$SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function:[I

    sget-object v3, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->SHADOW_DRIVER_OPTION:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v3}, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->ordinal()I

    move-result v3

    const/16 v4, 0x9

    aput v4, v2, v3
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v2, Lcom/yftech/settings/manager/CarDriveModeManager$3;->$SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function:[I

    sget-object v3, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->ENERGY_RECOVERY_LEVEL_OPTION:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v3}, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->ordinal()I

    move-result v3

    const/16 v4, 0xa

    aput v4, v2, v3
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v2, Lcom/yftech/settings/manager/CarDriveModeManager$3;->$SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function:[I

    sget-object v3, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->TCU_DRIVE_MODE_OPTION:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v3}, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->ordinal()I

    move-result v3

    const/16 v4, 0xb

    aput v4, v2, v3
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v2, Lcom/yftech/settings/manager/CarDriveModeManager$3;->$SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function:[I

    sget-object v3, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->DRIVE_SYSTEM_MODE_OPTION:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v3}, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->ordinal()I

    move-result v3

    const/16 v4, 0xc

    aput v4, v2, v3
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v2, Lcom/yftech/settings/manager/CarDriveModeManager$3;->$SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function:[I

    sget-object v3, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->ESP_STYLE_OPTION:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v3}, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->ordinal()I

    move-result v3

    const/16 v4, 0xd

    aput v4, v2, v3
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v2, Lcom/yftech/settings/manager/CarDriveModeManager$3;->$SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function:[I

    sget-object v3, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->THROTTLE_SENSITIVITY_VALUE:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v3}, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->ordinal()I

    move-result v3

    const/16 v4, 0xe

    aput v4, v2, v3
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v2, Lcom/yftech/settings/manager/CarDriveModeManager$3;->$SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function:[I

    sget-object v3, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->DRIVE_MODE_VALUE:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v3}, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->ordinal()I

    move-result v3

    const/16 v4, 0xf

    aput v4, v2, v3
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    .line 146
    :catch_11
    invoke-static {}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->values()[Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/yftech/settings/manager/CarDriveModeManager$3;->$SwitchMap$com$yftech$vehicle$internal$adapter$IBaseApi$EnableState:[I

    :try_start_12
    sget-object v2, Lcom/yftech/settings/manager/CarDriveModeManager$3;->$SwitchMap$com$yftech$vehicle$internal$adapter$IBaseApi$EnableState:[I

    sget-object v3, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->ENABLED:Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    invoke-virtual {v3}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v0, Lcom/yftech/settings/manager/CarDriveModeManager$3;->$SwitchMap$com$yftech$vehicle$internal$adapter$IBaseApi$EnableState:[I

    sget-object v2, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->DISABLED:Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    invoke-virtual {v2}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    return-void
.end method
