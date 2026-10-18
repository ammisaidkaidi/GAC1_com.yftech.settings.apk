.class synthetic Lcom/yftech/settings/ac/SeatFragment$2;
.super Ljava/lang/Object;
.source "SeatFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/ac/SeatFragment;
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

    .line 107
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager$Function;->values()[Lcom/yftech/settings/manager/CarPartsManager$Function;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/yftech/settings/ac/SeatFragment$2;->$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I

    :try_start_0
    sget-object v0, Lcom/yftech/settings/ac/SeatFragment$2;->$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I

    sget-object v1, Lcom/yftech/settings/manager/CarPartsManager$Function;->SEAT_DRIVER_CONVENIENT_ACCESS_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v1}, Lcom/yftech/settings/manager/CarPartsManager$Function;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
