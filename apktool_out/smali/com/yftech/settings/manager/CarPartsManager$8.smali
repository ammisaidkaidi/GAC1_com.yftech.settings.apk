.class synthetic Lcom/yftech/settings/manager/CarPartsManager$8;
.super Ljava/lang/Object;
.source "CarPartsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/manager/CarPartsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I

.field static final synthetic $SwitchMap$com$yftech$vehicle$internal$adapter$ICarConfig$CameraNumber:[I

.field static final synthetic $SwitchMap$com$yftech$vehicle$internal$adapter$ICarSettings$OSRMRAngleCmd:[I

.field static final synthetic $SwitchMap$com$yftech$vehicle$internal$adapter$ICarSettings$WCMCtlResult:[I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1366
    invoke-static {}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;->values()[Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/yftech/settings/manager/CarPartsManager$8;->$SwitchMap$com$yftech$vehicle$internal$adapter$ICarSettings$WCMCtlResult:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/yftech/settings/manager/CarPartsManager$8;->$SwitchMap$com$yftech$vehicle$internal$adapter$ICarSettings$WCMCtlResult:[I

    sget-object v2, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;->ENABLED:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;

    invoke-virtual {v2}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lcom/yftech/settings/manager/CarPartsManager$8;->$SwitchMap$com$yftech$vehicle$internal$adapter$ICarSettings$WCMCtlResult:[I

    sget-object v3, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;->DISABLED_BY_PEPS:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;

    invoke-virtual {v3}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/yftech/settings/manager/CarPartsManager$8;->$SwitchMap$com$yftech$vehicle$internal$adapter$ICarSettings$WCMCtlResult:[I

    sget-object v4, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;->SHUTDOWN_BY_SWITCH_CAN:Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;

    invoke-virtual {v4}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 1356
    :catch_2
    invoke-static {}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;->values()[Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/yftech/settings/manager/CarPartsManager$8;->$SwitchMap$com$yftech$vehicle$internal$adapter$ICarSettings$OSRMRAngleCmd:[I

    :try_start_3
    sget-object v3, Lcom/yftech/settings/manager/CarPartsManager$8;->$SwitchMap$com$yftech$vehicle$internal$adapter$ICarSettings$OSRMRAngleCmd:[I

    sget-object v4, Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;->BOTH_MIRROR_DIP:Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;

    invoke-virtual {v4}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v3, Lcom/yftech/settings/manager/CarPartsManager$8;->$SwitchMap$com$yftech$vehicle$internal$adapter$ICarSettings$OSRMRAngleCmd:[I

    sget-object v4, Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;

    invoke-virtual {v4}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    .line 543
    :catch_4
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager$Function;->values()[Lcom/yftech/settings/manager/CarPartsManager$Function;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/yftech/settings/manager/CarPartsManager$8;->$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I

    :try_start_5
    sget-object v3, Lcom/yftech/settings/manager/CarPartsManager$8;->$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I

    sget-object v4, Lcom/yftech/settings/manager/CarPartsManager$Function;->FRONT_WIPER_SERVICE_POSITION_ACTION:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v4}, Lcom/yftech/settings/manager/CarPartsManager$Function;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v3, Lcom/yftech/settings/manager/CarPartsManager$8;->$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I

    sget-object v4, Lcom/yftech/settings/manager/CarPartsManager$Function;->STOP_TIMEOUT_ACTION:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v4}, Lcom/yftech/settings/manager/CarPartsManager$Function;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v3, Lcom/yftech/settings/manager/CarPartsManager$8;->$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I

    sget-object v4, Lcom/yftech/settings/manager/CarPartsManager$Function;->IHBC_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v4}, Lcom/yftech/settings/manager/CarPartsManager$Function;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    const/4 v3, 0x4

    :try_start_8
    sget-object v4, Lcom/yftech/settings/manager/CarPartsManager$8;->$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I

    sget-object v5, Lcom/yftech/settings/manager/CarPartsManager$Function;->AUTO_UNLOCK_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v5}, Lcom/yftech/settings/manager/CarPartsManager$Function;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    const/4 v4, 0x5

    :try_start_9
    sget-object v5, Lcom/yftech/settings/manager/CarPartsManager$8;->$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I

    sget-object v6, Lcom/yftech/settings/manager/CarPartsManager$Function;->PEPS_WALK_AWAY_LOCK_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v6}, Lcom/yftech/settings/manager/CarPartsManager$Function;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    const/4 v5, 0x6

    :try_start_a
    sget-object v6, Lcom/yftech/settings/manager/CarPartsManager$8;->$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I

    sget-object v7, Lcom/yftech/settings/manager/CarPartsManager$Function;->PEPS_UNLOCK_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v7}, Lcom/yftech/settings/manager/CarPartsManager$Function;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    const/4 v6, 0x7

    :try_start_b
    sget-object v7, Lcom/yftech/settings/manager/CarPartsManager$8;->$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I

    sget-object v8, Lcom/yftech/settings/manager/CarPartsManager$Function;->SPEED_AUTO_LOCK_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v8}, Lcom/yftech/settings/manager/CarPartsManager$Function;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    const/16 v7, 0x8

    :try_start_c
    sget-object v8, Lcom/yftech/settings/manager/CarPartsManager$8;->$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I

    sget-object v9, Lcom/yftech/settings/manager/CarPartsManager$Function;->ETC_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v9}, Lcom/yftech/settings/manager/CarPartsManager$Function;->ordinal()I

    move-result v9

    aput v7, v8, v9
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v8, Lcom/yftech/settings/manager/CarPartsManager$8;->$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I

    sget-object v9, Lcom/yftech/settings/manager/CarPartsManager$Function;->SUNROOF_WINDOW_AUTO_CLOSE_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v9}, Lcom/yftech/settings/manager/CarPartsManager$Function;->ordinal()I

    move-result v9

    const/16 v10, 0x9

    aput v10, v8, v9
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v8, Lcom/yftech/settings/manager/CarPartsManager$8;->$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I

    sget-object v9, Lcom/yftech/settings/manager/CarPartsManager$Function;->OSRM_AUTO_FOLD_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v9}, Lcom/yftech/settings/manager/CarPartsManager$Function;->ordinal()I

    move-result v9

    const/16 v10, 0xa

    aput v10, v8, v9
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v8, Lcom/yftech/settings/manager/CarPartsManager$8;->$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I

    sget-object v9, Lcom/yftech/settings/manager/CarPartsManager$Function;->AC_AIR_CIRCULATION_MODE_OF_AUTO_MODE_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v9}, Lcom/yftech/settings/manager/CarPartsManager$Function;->ordinal()I

    move-result v9

    const/16 v10, 0xb

    aput v10, v8, v9
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v8, Lcom/yftech/settings/manager/CarPartsManager$8;->$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I

    sget-object v9, Lcom/yftech/settings/manager/CarPartsManager$Function;->HEAD_LIGHT_DELAY_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v9}, Lcom/yftech/settings/manager/CarPartsManager$Function;->ordinal()I

    move-result v9

    const/16 v10, 0xc

    aput v10, v8, v9
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v8, Lcom/yftech/settings/manager/CarPartsManager$8;->$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I

    sget-object v9, Lcom/yftech/settings/manager/CarPartsManager$Function;->AUTO_WINDOW_UP_IN_RAIN_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v9}, Lcom/yftech/settings/manager/CarPartsManager$Function;->ordinal()I

    move-result v9

    const/16 v10, 0xd

    aput v10, v8, v9
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v8, Lcom/yftech/settings/manager/CarPartsManager$8;->$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I

    sget-object v9, Lcom/yftech/settings/manager/CarPartsManager$Function;->AUTO_WIPER_MODE_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v9}, Lcom/yftech/settings/manager/CarPartsManager$Function;->ordinal()I

    move-result v9

    const/16 v10, 0xe

    aput v10, v8, v9
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v8, Lcom/yftech/settings/manager/CarPartsManager$8;->$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I

    sget-object v9, Lcom/yftech/settings/manager/CarPartsManager$Function;->SECOND_ROW_COLD_PERMISSION_LEFT_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v9}, Lcom/yftech/settings/manager/CarPartsManager$Function;->ordinal()I

    move-result v9

    const/16 v10, 0xf

    aput v10, v8, v9
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v8, Lcom/yftech/settings/manager/CarPartsManager$8;->$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I

    sget-object v9, Lcom/yftech/settings/manager/CarPartsManager$Function;->SECOND_ROW_COLD_PERMISSION_RIGHT_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v9}, Lcom/yftech/settings/manager/CarPartsManager$Function;->ordinal()I

    move-result v9

    const/16 v10, 0x10

    aput v10, v8, v9
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v8, Lcom/yftech/settings/manager/CarPartsManager$8;->$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I

    sget-object v9, Lcom/yftech/settings/manager/CarPartsManager$Function;->KEY_REMINDER_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v9}, Lcom/yftech/settings/manager/CarPartsManager$Function;->ordinal()I

    move-result v9

    const/16 v10, 0x11

    aput v10, v8, v9
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v8, Lcom/yftech/settings/manager/CarPartsManager$8;->$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I

    sget-object v9, Lcom/yftech/settings/manager/CarPartsManager$Function;->SEAT_DRIVER_CONVENIENT_ACCESS_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v9}, Lcom/yftech/settings/manager/CarPartsManager$Function;->ordinal()I

    move-result v9

    const/16 v10, 0x12

    aput v10, v8, v9
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v8, Lcom/yftech/settings/manager/CarPartsManager$8;->$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I

    sget-object v9, Lcom/yftech/settings/manager/CarPartsManager$Function;->AC_AUTO_DRYING_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v9}, Lcom/yftech/settings/manager/CarPartsManager$Function;->ordinal()I

    move-result v9

    const/16 v10, 0x13

    aput v10, v8, v9
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    :try_start_18
    sget-object v8, Lcom/yftech/settings/manager/CarPartsManager$8;->$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I

    sget-object v9, Lcom/yftech/settings/manager/CarPartsManager$Function;->WIRELESS_CHARGING_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v9}, Lcom/yftech/settings/manager/CarPartsManager$Function;->ordinal()I

    move-result v9

    const/16 v10, 0x14

    aput v10, v8, v9
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    :try_start_19
    sget-object v8, Lcom/yftech/settings/manager/CarPartsManager$8;->$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I

    sget-object v9, Lcom/yftech/settings/manager/CarPartsManager$Function;->CONVENIENT_CAR_SEARCH_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v9}, Lcom/yftech/settings/manager/CarPartsManager$Function;->ordinal()I

    move-result v9

    const/16 v10, 0x15

    aput v10, v8, v9
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    :try_start_1a
    sget-object v8, Lcom/yftech/settings/manager/CarPartsManager$8;->$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I

    sget-object v9, Lcom/yftech/settings/manager/CarPartsManager$Function;->OSRM_TURN_DOWN_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v9}, Lcom/yftech/settings/manager/CarPartsManager$Function;->ordinal()I

    move-result v9

    const/16 v10, 0x16

    aput v10, v8, v9
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    :try_start_1b
    sget-object v8, Lcom/yftech/settings/manager/CarPartsManager$8;->$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I

    sget-object v9, Lcom/yftech/settings/manager/CarPartsManager$Function;->LOCK_UNLOCK_SOUND_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v9}, Lcom/yftech/settings/manager/CarPartsManager$Function;->ordinal()I

    move-result v9

    const/16 v10, 0x17

    aput v10, v8, v9
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    :catch_1b
    :try_start_1c
    sget-object v8, Lcom/yftech/settings/manager/CarPartsManager$8;->$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I

    sget-object v9, Lcom/yftech/settings/manager/CarPartsManager$Function;->AVAS_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v9}, Lcom/yftech/settings/manager/CarPartsManager$Function;->ordinal()I

    move-result v9

    const/16 v10, 0x18

    aput v10, v8, v9
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    :catch_1c
    :try_start_1d
    sget-object v8, Lcom/yftech/settings/manager/CarPartsManager$8;->$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I

    sget-object v9, Lcom/yftech/settings/manager/CarPartsManager$Function;->AC_AIR_UNLOCK_VENTILATION_ENABLE:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v9}, Lcom/yftech/settings/manager/CarPartsManager$Function;->ordinal()I

    move-result v9

    const/16 v10, 0x19

    aput v10, v8, v9
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1e
    sget-object v8, Lcom/yftech/settings/manager/CarPartsManager$8;->$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I

    sget-object v9, Lcom/yftech/settings/manager/CarPartsManager$Function;->ELECTRIC_HIDDEN_DOOR_HANDLE_ENABLE:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v9}, Lcom/yftech/settings/manager/CarPartsManager$Function;->ordinal()I

    move-result v9

    const/16 v10, 0x1a

    aput v10, v8, v9
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    :catch_1e
    :try_start_1f
    sget-object v8, Lcom/yftech/settings/manager/CarPartsManager$8;->$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I

    sget-object v9, Lcom/yftech/settings/manager/CarPartsManager$Function;->OSRM_TURN_DOWN_VALUE:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v9}, Lcom/yftech/settings/manager/CarPartsManager$Function;->ordinal()I

    move-result v9

    const/16 v10, 0x1b

    aput v10, v8, v9
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_20
    sget-object v8, Lcom/yftech/settings/manager/CarPartsManager$8;->$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I

    sget-object v9, Lcom/yftech/settings/manager/CarPartsManager$Function;->REMOTE_UNLOCK_MODE_OPTION:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v9}, Lcom/yftech/settings/manager/CarPartsManager$Function;->ordinal()I

    move-result v9

    const/16 v10, 0x1c

    aput v10, v8, v9
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    :catch_20
    :try_start_21
    sget-object v8, Lcom/yftech/settings/manager/CarPartsManager$8;->$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I

    sget-object v9, Lcom/yftech/settings/manager/CarPartsManager$Function;->AC_FAN_SPEED_OF_AUTO_MODE_OPTION:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v9}, Lcom/yftech/settings/manager/CarPartsManager$Function;->ordinal()I

    move-result v9

    const/16 v10, 0x1d

    aput v10, v8, v9
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_21

    :catch_21
    :try_start_22
    sget-object v8, Lcom/yftech/settings/manager/CarPartsManager$8;->$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I

    sget-object v9, Lcom/yftech/settings/manager/CarPartsManager$Function;->AC_COMFORT_CURVE_MODE_OPTION:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v9}, Lcom/yftech/settings/manager/CarPartsManager$Function;->ordinal()I

    move-result v9

    const/16 v10, 0x1e

    aput v10, v8, v9
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_22

    :catch_22
    :try_start_23
    sget-object v8, Lcom/yftech/settings/manager/CarPartsManager$8;->$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I

    sget-object v9, Lcom/yftech/settings/manager/CarPartsManager$Function;->PEPS_AUTO_TRUNK_OPEN_OPTION:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v9}, Lcom/yftech/settings/manager/CarPartsManager$Function;->ordinal()I

    move-result v9

    const/16 v10, 0x1f

    aput v10, v8, v9
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_23

    :catch_23
    :try_start_24
    sget-object v8, Lcom/yftech/settings/manager/CarPartsManager$8;->$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I

    sget-object v9, Lcom/yftech/settings/manager/CarPartsManager$Function;->PSD_DOOR_SPEED_OPTION:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v9}, Lcom/yftech/settings/manager/CarPartsManager$Function;->ordinal()I

    move-result v9

    const/16 v10, 0x20

    aput v10, v8, v9
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_24

    :catch_24
    :try_start_25
    sget-object v8, Lcom/yftech/settings/manager/CarPartsManager$8;->$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I

    sget-object v9, Lcom/yftech/settings/manager/CarPartsManager$Function;->PSD_DOOR_MODE_OPTION:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v9}, Lcom/yftech/settings/manager/CarPartsManager$Function;->ordinal()I

    move-result v9

    const/16 v10, 0x21

    aput v10, v8, v9
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_25

    :catch_25
    :try_start_26
    sget-object v8, Lcom/yftech/settings/manager/CarPartsManager$8;->$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I

    sget-object v9, Lcom/yftech/settings/manager/CarPartsManager$Function;->PARKING_AID_VOLUME_OPTION:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v9}, Lcom/yftech/settings/manager/CarPartsManager$Function;->ordinal()I

    move-result v9

    const/16 v10, 0x22

    aput v10, v8, v9
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_26

    :catch_26
    :try_start_27
    sget-object v8, Lcom/yftech/settings/manager/CarPartsManager$8;->$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I

    sget-object v9, Lcom/yftech/settings/manager/CarPartsManager$Function;->STEERING_WHEEL_ASTERISK_KEY:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v9}, Lcom/yftech/settings/manager/CarPartsManager$Function;->ordinal()I

    move-result v9

    const/16 v10, 0x23

    aput v10, v8, v9
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_27

    .line 494
    :catch_27
    invoke-static {}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;->values()[Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;

    move-result-object v8

    array-length v8, v8

    new-array v8, v8, [I

    sput-object v8, Lcom/yftech/settings/manager/CarPartsManager$8;->$SwitchMap$com$yftech$vehicle$internal$adapter$ICarConfig$CameraNumber:[I

    :try_start_28
    sget-object v8, Lcom/yftech/settings/manager/CarPartsManager$8;->$SwitchMap$com$yftech$vehicle$internal$adapter$ICarConfig$CameraNumber:[I

    sget-object v9, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;->SVM_PLUSFAPA:Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;

    invoke-virtual {v9}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;->ordinal()I

    move-result v9

    aput v0, v8, v9
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_28

    :catch_28
    :try_start_29
    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$8;->$SwitchMap$com$yftech$vehicle$internal$adapter$ICarConfig$CameraNumber:[I

    sget-object v8, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;->SVM:Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;

    invoke-virtual {v8}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;->ordinal()I

    move-result v8

    aput v1, v0, v8
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_29

    :catch_29
    :try_start_2a
    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$8;->$SwitchMap$com$yftech$vehicle$internal$adapter$ICarConfig$CameraNumber:[I

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;->SVM_PLUSAPA:Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;

    invoke-virtual {v1}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_2a

    :catch_2a
    :try_start_2b
    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$8;->$SwitchMap$com$yftech$vehicle$internal$adapter$ICarConfig$CameraNumber:[I

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;->SVM_PLUSAVP:Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;

    invoke-virtual {v1}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_2b

    :catch_2b
    :try_start_2c
    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$8;->$SwitchMap$com$yftech$vehicle$internal$adapter$ICarConfig$CameraNumber:[I

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;->EXTERNAL_AVM:Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;

    invoke-virtual {v1}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_2c

    :catch_2c
    :try_start_2d
    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$8;->$SwitchMap$com$yftech$vehicle$internal$adapter$ICarConfig$CameraNumber:[I

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;

    invoke-virtual {v1}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_2d

    :catch_2d
    :try_start_2e
    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$8;->$SwitchMap$com$yftech$vehicle$internal$adapter$ICarConfig$CameraNumber:[I

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;->NONE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;

    invoke-virtual {v1}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;->ordinal()I

    move-result v1

    aput v6, v0, v1
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_2e} :catch_2e

    :catch_2e
    :try_start_2f
    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$8;->$SwitchMap$com$yftech$vehicle$internal$adapter$ICarConfig$CameraNumber:[I

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;->RVC:Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;

    invoke-virtual {v1}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;->ordinal()I

    move-result v1

    aput v7, v0, v1
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_2f} :catch_2f

    :catch_2f
    return-void
.end method
