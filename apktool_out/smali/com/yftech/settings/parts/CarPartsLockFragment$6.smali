.class synthetic Lcom/yftech/settings/parts/CarPartsLockFragment$6;
.super Ljava/lang/Object;
.source "CarPartsLockFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/parts/CarPartsLockFragment;
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

    .line 291
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager$Function;->values()[Lcom/yftech/settings/manager/CarPartsManager$Function;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/yftech/settings/parts/CarPartsLockFragment$6;->$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I

    :try_start_0
    sget-object v0, Lcom/yftech/settings/parts/CarPartsLockFragment$6;->$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I

    sget-object v1, Lcom/yftech/settings/manager/CarPartsManager$Function;->AUTO_UNLOCK_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v1}, Lcom/yftech/settings/manager/CarPartsManager$Function;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/yftech/settings/parts/CarPartsLockFragment$6;->$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I

    sget-object v1, Lcom/yftech/settings/manager/CarPartsManager$Function;->PEPS_WALK_AWAY_LOCK_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v1}, Lcom/yftech/settings/manager/CarPartsManager$Function;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/yftech/settings/parts/CarPartsLockFragment$6;->$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I

    sget-object v1, Lcom/yftech/settings/manager/CarPartsManager$Function;->PEPS_UNLOCK_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v1}, Lcom/yftech/settings/manager/CarPartsManager$Function;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/yftech/settings/parts/CarPartsLockFragment$6;->$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I

    sget-object v1, Lcom/yftech/settings/manager/CarPartsManager$Function;->SPEED_AUTO_LOCK_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v1}, Lcom/yftech/settings/manager/CarPartsManager$Function;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/yftech/settings/parts/CarPartsLockFragment$6;->$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I

    sget-object v1, Lcom/yftech/settings/manager/CarPartsManager$Function;->SUNROOF_WINDOW_AUTO_CLOSE_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v1}, Lcom/yftech/settings/manager/CarPartsManager$Function;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/yftech/settings/parts/CarPartsLockFragment$6;->$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I

    sget-object v1, Lcom/yftech/settings/manager/CarPartsManager$Function;->ELECTRIC_HIDDEN_DOOR_HANDLE_ENABLE:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v1}, Lcom/yftech/settings/manager/CarPartsManager$Function;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/yftech/settings/parts/CarPartsLockFragment$6;->$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I

    sget-object v1, Lcom/yftech/settings/manager/CarPartsManager$Function;->REMOTE_UNLOCK_MODE_OPTION:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v1}, Lcom/yftech/settings/manager/CarPartsManager$Function;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lcom/yftech/settings/parts/CarPartsLockFragment$6;->$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I

    sget-object v1, Lcom/yftech/settings/manager/CarPartsManager$Function;->PEPS_AUTO_TRUNK_OPEN_OPTION:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v1}, Lcom/yftech/settings/manager/CarPartsManager$Function;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    return-void
.end method
