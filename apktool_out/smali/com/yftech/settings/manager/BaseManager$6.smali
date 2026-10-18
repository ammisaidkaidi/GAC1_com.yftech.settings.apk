.class synthetic Lcom/yftech/settings/manager/BaseManager$6;
.super Ljava/lang/Object;
.source "BaseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/manager/BaseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$yftech$vehicle$internal$adapter$IBaseApi$EnableState:[I

.field static final synthetic $SwitchMap$com$yftech$vehicle$internal$adapter$IBaseApi$EnableStateOp:[I

.field static final synthetic $SwitchMap$com$yftech$vehicle$internal$adapter$IBaseApi$SwitchState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 173
    invoke-static {}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableStateOp;->values()[Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableStateOp;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/yftech/settings/manager/BaseManager$6;->$SwitchMap$com$yftech$vehicle$internal$adapter$IBaseApi$EnableStateOp:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/yftech/settings/manager/BaseManager$6;->$SwitchMap$com$yftech$vehicle$internal$adapter$IBaseApi$EnableStateOp:[I

    sget-object v2, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableStateOp;->ENABLED:Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableStateOp;

    invoke-virtual {v2}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableStateOp;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lcom/yftech/settings/manager/BaseManager$6;->$SwitchMap$com$yftech$vehicle$internal$adapter$IBaseApi$EnableStateOp:[I

    sget-object v3, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableStateOp;->DISABLED:Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableStateOp;

    invoke-virtual {v3}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableStateOp;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 162
    :catch_1
    invoke-static {}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchState;->values()[Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchState;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/yftech/settings/manager/BaseManager$6;->$SwitchMap$com$yftech$vehicle$internal$adapter$IBaseApi$SwitchState:[I

    :try_start_2
    sget-object v2, Lcom/yftech/settings/manager/BaseManager$6;->$SwitchMap$com$yftech$vehicle$internal$adapter$IBaseApi$SwitchState:[I

    sget-object v3, Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchState;->TURN_ON:Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchState;

    invoke-virtual {v3}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchState;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v2, Lcom/yftech/settings/manager/BaseManager$6;->$SwitchMap$com$yftech$vehicle$internal$adapter$IBaseApi$SwitchState:[I

    sget-object v3, Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchState;->TURN_OFF:Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchState;

    invoke-virtual {v3}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchState;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 151
    :catch_3
    invoke-static {}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->values()[Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/yftech/settings/manager/BaseManager$6;->$SwitchMap$com$yftech$vehicle$internal$adapter$IBaseApi$EnableState:[I

    :try_start_4
    sget-object v2, Lcom/yftech/settings/manager/BaseManager$6;->$SwitchMap$com$yftech$vehicle$internal$adapter$IBaseApi$EnableState:[I

    sget-object v3, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->ENABLED:Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    invoke-virtual {v3}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/yftech/settings/manager/BaseManager$6;->$SwitchMap$com$yftech$vehicle$internal$adapter$IBaseApi$EnableState:[I

    sget-object v2, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->DISABLED:Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    invoke-virtual {v2}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method
