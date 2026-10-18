.class public final enum Lcom/yftech/settings/manager/CarDashboardManager$Function;
.super Ljava/lang/Enum;
.source "CarDashboardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/manager/CarDashboardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Function"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/settings/manager/CarDashboardManager$Function;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/settings/manager/CarDashboardManager$Function;

.field public static final enum DASH_BACK_LIGHT_LEVEL_VALUE:Lcom/yftech/settings/manager/CarDashboardManager$Function;

.field public static final enum DASH_DISTANCE_UNIT_OPTION:Lcom/yftech/settings/manager/CarDashboardManager$Function;

.field public static final enum DASH_FUEL_ECONOMY_AND_DISTANCE_UNIT_OPTION:Lcom/yftech/settings/manager/CarDashboardManager$Function;

.field public static final enum DASH_LANGUAGE_OPTION:Lcom/yftech/settings/manager/CarDashboardManager$Function;

.field public static final enum DASH_PRESSURE_UNIT_OPTION:Lcom/yftech/settings/manager/CarDashboardManager$Function;

.field public static final enum DASH_RESET_CUMULATIVE_TRAVEL_ACTION:Lcom/yftech/settings/manager/CarDashboardManager$Function;

.field public static final enum DASH_RESTORE_FACTORY_SETTINGS_ACTION:Lcom/yftech/settings/manager/CarDashboardManager$Function;

.field public static final enum DASH_TEMPERATURE_UNIT_OPTION:Lcom/yftech/settings/manager/CarDashboardManager$Function;

.field public static final enum DASH_VOLUME_OPTION:Lcom/yftech/settings/manager/CarDashboardManager$Function;

.field public static final enum STOP_TIMEOUT_ACTION:Lcom/yftech/settings/manager/CarDashboardManager$Function;

.field public static final enum UNKNOWN:Lcom/yftech/settings/manager/CarDashboardManager$Function;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 16
    new-instance v0, Lcom/yftech/settings/manager/CarDashboardManager$Function;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/yftech/settings/manager/CarDashboardManager$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/settings/manager/CarDashboardManager$Function;->UNKNOWN:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    .line 17
    new-instance v0, Lcom/yftech/settings/manager/CarDashboardManager$Function;

    const-string v1, "DASH_BACK_LIGHT_LEVEL_VALUE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/yftech/settings/manager/CarDashboardManager$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/settings/manager/CarDashboardManager$Function;->DASH_BACK_LIGHT_LEVEL_VALUE:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    .line 18
    new-instance v0, Lcom/yftech/settings/manager/CarDashboardManager$Function;

    const-string v1, "DASH_LANGUAGE_OPTION"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/yftech/settings/manager/CarDashboardManager$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/settings/manager/CarDashboardManager$Function;->DASH_LANGUAGE_OPTION:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    .line 19
    new-instance v0, Lcom/yftech/settings/manager/CarDashboardManager$Function;

    const-string v1, "DASH_VOLUME_OPTION"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/yftech/settings/manager/CarDashboardManager$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/settings/manager/CarDashboardManager$Function;->DASH_VOLUME_OPTION:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    .line 20
    new-instance v0, Lcom/yftech/settings/manager/CarDashboardManager$Function;

    const-string v1, "DASH_RESET_CUMULATIVE_TRAVEL_ACTION"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/yftech/settings/manager/CarDashboardManager$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/settings/manager/CarDashboardManager$Function;->DASH_RESET_CUMULATIVE_TRAVEL_ACTION:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    .line 21
    new-instance v0, Lcom/yftech/settings/manager/CarDashboardManager$Function;

    const-string v1, "DASH_DISTANCE_UNIT_OPTION"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/yftech/settings/manager/CarDashboardManager$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/settings/manager/CarDashboardManager$Function;->DASH_DISTANCE_UNIT_OPTION:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    .line 22
    new-instance v0, Lcom/yftech/settings/manager/CarDashboardManager$Function;

    const-string v1, "DASH_FUEL_ECONOMY_AND_DISTANCE_UNIT_OPTION"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/yftech/settings/manager/CarDashboardManager$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/settings/manager/CarDashboardManager$Function;->DASH_FUEL_ECONOMY_AND_DISTANCE_UNIT_OPTION:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    .line 23
    new-instance v0, Lcom/yftech/settings/manager/CarDashboardManager$Function;

    const-string v1, "DASH_TEMPERATURE_UNIT_OPTION"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/yftech/settings/manager/CarDashboardManager$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/settings/manager/CarDashboardManager$Function;->DASH_TEMPERATURE_UNIT_OPTION:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    .line 24
    new-instance v0, Lcom/yftech/settings/manager/CarDashboardManager$Function;

    const-string v1, "DASH_PRESSURE_UNIT_OPTION"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/yftech/settings/manager/CarDashboardManager$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/settings/manager/CarDashboardManager$Function;->DASH_PRESSURE_UNIT_OPTION:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    .line 25
    new-instance v0, Lcom/yftech/settings/manager/CarDashboardManager$Function;

    const-string v1, "DASH_RESTORE_FACTORY_SETTINGS_ACTION"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/yftech/settings/manager/CarDashboardManager$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/settings/manager/CarDashboardManager$Function;->DASH_RESTORE_FACTORY_SETTINGS_ACTION:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    .line 26
    new-instance v0, Lcom/yftech/settings/manager/CarDashboardManager$Function;

    const-string v1, "STOP_TIMEOUT_ACTION"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/yftech/settings/manager/CarDashboardManager$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/settings/manager/CarDashboardManager$Function;->STOP_TIMEOUT_ACTION:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    const/16 v0, 0xb

    .line 15
    new-array v0, v0, [Lcom/yftech/settings/manager/CarDashboardManager$Function;

    sget-object v1, Lcom/yftech/settings/manager/CarDashboardManager$Function;->UNKNOWN:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/settings/manager/CarDashboardManager$Function;->DASH_BACK_LIGHT_LEVEL_VALUE:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/settings/manager/CarDashboardManager$Function;->DASH_LANGUAGE_OPTION:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/settings/manager/CarDashboardManager$Function;->DASH_VOLUME_OPTION:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/settings/manager/CarDashboardManager$Function;->DASH_RESET_CUMULATIVE_TRAVEL_ACTION:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/settings/manager/CarDashboardManager$Function;->DASH_DISTANCE_UNIT_OPTION:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yftech/settings/manager/CarDashboardManager$Function;->DASH_FUEL_ECONOMY_AND_DISTANCE_UNIT_OPTION:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    aput-object v1, v0, v8

    sget-object v1, Lcom/yftech/settings/manager/CarDashboardManager$Function;->DASH_TEMPERATURE_UNIT_OPTION:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    aput-object v1, v0, v9

    sget-object v1, Lcom/yftech/settings/manager/CarDashboardManager$Function;->DASH_PRESSURE_UNIT_OPTION:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    aput-object v1, v0, v10

    sget-object v1, Lcom/yftech/settings/manager/CarDashboardManager$Function;->DASH_RESTORE_FACTORY_SETTINGS_ACTION:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    aput-object v1, v0, v11

    sget-object v1, Lcom/yftech/settings/manager/CarDashboardManager$Function;->STOP_TIMEOUT_ACTION:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    aput-object v1, v0, v12

    sput-object v0, Lcom/yftech/settings/manager/CarDashboardManager$Function;->$VALUES:[Lcom/yftech/settings/manager/CarDashboardManager$Function;

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

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/settings/manager/CarDashboardManager$Function;
    .locals 1

    .line 15
    const-class v0, Lcom/yftech/settings/manager/CarDashboardManager$Function;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/settings/manager/CarDashboardManager$Function;

    return-object p0
.end method

.method public static values()[Lcom/yftech/settings/manager/CarDashboardManager$Function;
    .locals 1

    .line 15
    sget-object v0, Lcom/yftech/settings/manager/CarDashboardManager$Function;->$VALUES:[Lcom/yftech/settings/manager/CarDashboardManager$Function;

    invoke-virtual {v0}, [Lcom/yftech/settings/manager/CarDashboardManager$Function;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/settings/manager/CarDashboardManager$Function;

    return-object v0
.end method
