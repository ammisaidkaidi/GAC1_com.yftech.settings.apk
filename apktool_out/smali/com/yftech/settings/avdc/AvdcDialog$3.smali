.class synthetic Lcom/yftech/settings/avdc/AvdcDialog$3;
.super Ljava/lang/Object;
.source "AvdcDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/avdc/AvdcDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function:[I

.field static final synthetic $SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 309
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager$Function;->values()[Lcom/yftech/settings/manager/CarPartsManager$Function;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/yftech/settings/avdc/AvdcDialog$3;->$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/yftech/settings/avdc/AvdcDialog$3;->$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I

    sget-object v2, Lcom/yftech/settings/manager/CarPartsManager$Function;->AC_COMFORT_CURVE_MODE_OPTION:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v2}, Lcom/yftech/settings/manager/CarPartsManager$Function;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :catch_0
    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->values()[Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/yftech/settings/avdc/AvdcDialog$3;->$SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function:[I

    :try_start_1
    sget-object v1, Lcom/yftech/settings/avdc/AvdcDialog$3;->$SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function:[I

    sget-object v2, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->EPS_STYLE_OPTION:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v2}, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/yftech/settings/avdc/AvdcDialog$3;->$SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function:[I

    sget-object v1, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->SUSPENSION_MODE_OPTION:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v1}, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/yftech/settings/avdc/AvdcDialog$3;->$SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function:[I

    sget-object v1, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->SHADOW_DRIVER_OPTION:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v1}, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/yftech/settings/avdc/AvdcDialog$3;->$SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function:[I

    sget-object v1, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->EMS_ENGINE_WAVE_ENABLE:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v1}, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/yftech/settings/avdc/AvdcDialog$3;->$SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function:[I

    sget-object v1, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->ENERGY_RECOVERY_LEVEL_OPTION:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v1}, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/yftech/settings/avdc/AvdcDialog$3;->$SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function:[I

    sget-object v1, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->DRIVE_MODE_VALUE:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v1}, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    return-void
.end method
