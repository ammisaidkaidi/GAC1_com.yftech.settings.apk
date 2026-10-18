.class public final enum Lcom/yftech/settings/manager/CarParkingManager$Function;
.super Ljava/lang/Enum;
.source "CarParkingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/manager/CarParkingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Function"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/settings/manager/CarParkingManager$Function;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/settings/manager/CarParkingManager$Function;

.field public static final enum PARKING_BACK_TRACKING_AID_ENABLED:Lcom/yftech/settings/manager/CarParkingManager$Function;

.field public static final enum PARKING_BACK_TRACKING_AID_TIP_ENABLED:Lcom/yftech/settings/manager/CarParkingManager$Function;

.field public static final enum PARKING_PUSH_ENABLED:Lcom/yftech/settings/manager/CarParkingManager$Function;

.field public static final enum PARKING_RADAR_WARNING_TONE_ENABLED:Lcom/yftech/settings/manager/CarParkingManager$Function;

.field public static final enum PARKING_VOICE_TIP_ENABLED:Lcom/yftech/settings/manager/CarParkingManager$Function;

.field public static final enum STOP_TIMEOUT_ACTION:Lcom/yftech/settings/manager/CarParkingManager$Function;

.field public static final enum UNKNOWN:Lcom/yftech/settings/manager/CarParkingManager$Function;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 16
    new-instance v0, Lcom/yftech/settings/manager/CarParkingManager$Function;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/yftech/settings/manager/CarParkingManager$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/settings/manager/CarParkingManager$Function;->UNKNOWN:Lcom/yftech/settings/manager/CarParkingManager$Function;

    .line 17
    new-instance v0, Lcom/yftech/settings/manager/CarParkingManager$Function;

    const-string v1, "PARKING_RADAR_WARNING_TONE_ENABLED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/yftech/settings/manager/CarParkingManager$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/settings/manager/CarParkingManager$Function;->PARKING_RADAR_WARNING_TONE_ENABLED:Lcom/yftech/settings/manager/CarParkingManager$Function;

    .line 18
    new-instance v0, Lcom/yftech/settings/manager/CarParkingManager$Function;

    const-string v1, "PARKING_BACK_TRACKING_AID_TIP_ENABLED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/yftech/settings/manager/CarParkingManager$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/settings/manager/CarParkingManager$Function;->PARKING_BACK_TRACKING_AID_TIP_ENABLED:Lcom/yftech/settings/manager/CarParkingManager$Function;

    .line 19
    new-instance v0, Lcom/yftech/settings/manager/CarParkingManager$Function;

    const-string v1, "PARKING_BACK_TRACKING_AID_ENABLED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/yftech/settings/manager/CarParkingManager$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/settings/manager/CarParkingManager$Function;->PARKING_BACK_TRACKING_AID_ENABLED:Lcom/yftech/settings/manager/CarParkingManager$Function;

    .line 20
    new-instance v0, Lcom/yftech/settings/manager/CarParkingManager$Function;

    const-string v1, "PARKING_PUSH_ENABLED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/yftech/settings/manager/CarParkingManager$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/settings/manager/CarParkingManager$Function;->PARKING_PUSH_ENABLED:Lcom/yftech/settings/manager/CarParkingManager$Function;

    .line 21
    new-instance v0, Lcom/yftech/settings/manager/CarParkingManager$Function;

    const-string v1, "PARKING_VOICE_TIP_ENABLED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/yftech/settings/manager/CarParkingManager$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/settings/manager/CarParkingManager$Function;->PARKING_VOICE_TIP_ENABLED:Lcom/yftech/settings/manager/CarParkingManager$Function;

    .line 22
    new-instance v0, Lcom/yftech/settings/manager/CarParkingManager$Function;

    const-string v1, "STOP_TIMEOUT_ACTION"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/yftech/settings/manager/CarParkingManager$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/settings/manager/CarParkingManager$Function;->STOP_TIMEOUT_ACTION:Lcom/yftech/settings/manager/CarParkingManager$Function;

    const/4 v0, 0x7

    .line 15
    new-array v0, v0, [Lcom/yftech/settings/manager/CarParkingManager$Function;

    sget-object v1, Lcom/yftech/settings/manager/CarParkingManager$Function;->UNKNOWN:Lcom/yftech/settings/manager/CarParkingManager$Function;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/settings/manager/CarParkingManager$Function;->PARKING_RADAR_WARNING_TONE_ENABLED:Lcom/yftech/settings/manager/CarParkingManager$Function;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/settings/manager/CarParkingManager$Function;->PARKING_BACK_TRACKING_AID_TIP_ENABLED:Lcom/yftech/settings/manager/CarParkingManager$Function;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/settings/manager/CarParkingManager$Function;->PARKING_BACK_TRACKING_AID_ENABLED:Lcom/yftech/settings/manager/CarParkingManager$Function;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/settings/manager/CarParkingManager$Function;->PARKING_PUSH_ENABLED:Lcom/yftech/settings/manager/CarParkingManager$Function;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/settings/manager/CarParkingManager$Function;->PARKING_VOICE_TIP_ENABLED:Lcom/yftech/settings/manager/CarParkingManager$Function;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yftech/settings/manager/CarParkingManager$Function;->STOP_TIMEOUT_ACTION:Lcom/yftech/settings/manager/CarParkingManager$Function;

    aput-object v1, v0, v8

    sput-object v0, Lcom/yftech/settings/manager/CarParkingManager$Function;->$VALUES:[Lcom/yftech/settings/manager/CarParkingManager$Function;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/settings/manager/CarParkingManager$Function;
    .locals 1

    .line 15
    const-class v0, Lcom/yftech/settings/manager/CarParkingManager$Function;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/settings/manager/CarParkingManager$Function;

    return-object p0
.end method

.method public static values()[Lcom/yftech/settings/manager/CarParkingManager$Function;
    .locals 1

    .line 15
    sget-object v0, Lcom/yftech/settings/manager/CarParkingManager$Function;->$VALUES:[Lcom/yftech/settings/manager/CarParkingManager$Function;

    invoke-virtual {v0}, [Lcom/yftech/settings/manager/CarParkingManager$Function;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/settings/manager/CarParkingManager$Function;

    return-object v0
.end method
