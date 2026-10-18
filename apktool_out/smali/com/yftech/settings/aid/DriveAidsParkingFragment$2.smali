.class synthetic Lcom/yftech/settings/aid/DriveAidsParkingFragment$2;
.super Ljava/lang/Object;
.source "DriveAidsParkingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/aid/DriveAidsParkingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$yftech$settings$manager$CarParkingManager$Function:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 145
    invoke-static {}, Lcom/yftech/settings/manager/CarParkingManager$Function;->values()[Lcom/yftech/settings/manager/CarParkingManager$Function;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/yftech/settings/aid/DriveAidsParkingFragment$2;->$SwitchMap$com$yftech$settings$manager$CarParkingManager$Function:[I

    :try_start_0
    sget-object v0, Lcom/yftech/settings/aid/DriveAidsParkingFragment$2;->$SwitchMap$com$yftech$settings$manager$CarParkingManager$Function:[I

    sget-object v1, Lcom/yftech/settings/manager/CarParkingManager$Function;->PARKING_RADAR_WARNING_TONE_ENABLED:Lcom/yftech/settings/manager/CarParkingManager$Function;

    invoke-virtual {v1}, Lcom/yftech/settings/manager/CarParkingManager$Function;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/yftech/settings/aid/DriveAidsParkingFragment$2;->$SwitchMap$com$yftech$settings$manager$CarParkingManager$Function:[I

    sget-object v1, Lcom/yftech/settings/manager/CarParkingManager$Function;->PARKING_PUSH_ENABLED:Lcom/yftech/settings/manager/CarParkingManager$Function;

    invoke-virtual {v1}, Lcom/yftech/settings/manager/CarParkingManager$Function;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/yftech/settings/aid/DriveAidsParkingFragment$2;->$SwitchMap$com$yftech$settings$manager$CarParkingManager$Function:[I

    sget-object v1, Lcom/yftech/settings/manager/CarParkingManager$Function;->PARKING_VOICE_TIP_ENABLED:Lcom/yftech/settings/manager/CarParkingManager$Function;

    invoke-virtual {v1}, Lcom/yftech/settings/manager/CarParkingManager$Function;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
