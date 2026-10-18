.class synthetic Lcom/yftech/settings/ac/AcFragment$2;
.super Ljava/lang/Object;
.source "AcFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/ac/AcFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 191
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager$Function;->values()[Lcom/yftech/settings/manager/CarPartsManager$Function;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/yftech/settings/ac/AcFragment$2;->$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I

    :try_start_0
    sget-object v0, Lcom/yftech/settings/ac/AcFragment$2;->$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I

    sget-object v1, Lcom/yftech/settings/manager/CarPartsManager$Function;->AC_AIR_CIRCULATION_MODE_OF_AUTO_MODE_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v1}, Lcom/yftech/settings/manager/CarPartsManager$Function;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/yftech/settings/ac/AcFragment$2;->$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I

    sget-object v1, Lcom/yftech/settings/manager/CarPartsManager$Function;->AC_AUTO_DRYING_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v1}, Lcom/yftech/settings/manager/CarPartsManager$Function;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/yftech/settings/ac/AcFragment$2;->$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I

    sget-object v1, Lcom/yftech/settings/manager/CarPartsManager$Function;->AC_AIR_UNLOCK_VENTILATION_ENABLE:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v1}, Lcom/yftech/settings/manager/CarPartsManager$Function;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/yftech/settings/ac/AcFragment$2;->$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I

    sget-object v1, Lcom/yftech/settings/manager/CarPartsManager$Function;->AC_FAN_SPEED_OF_AUTO_MODE_OPTION:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v1}, Lcom/yftech/settings/manager/CarPartsManager$Function;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
