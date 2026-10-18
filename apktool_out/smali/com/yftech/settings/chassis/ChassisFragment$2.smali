.class synthetic Lcom/yftech/settings/chassis/ChassisFragment$2;
.super Ljava/lang/Object;
.source "ChassisFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/chassis/ChassisFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 152
    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->values()[Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/yftech/settings/chassis/ChassisFragment$2;->$SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function:[I

    :try_start_0
    sget-object v0, Lcom/yftech/settings/chassis/ChassisFragment$2;->$SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function:[I

    sget-object v1, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->REMEMBER_DRIVING_MODE_ENABLED:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v1}, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/yftech/settings/chassis/ChassisFragment$2;->$SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function:[I

    sget-object v1, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->EPS_STYLE_OPTION:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v1}, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
