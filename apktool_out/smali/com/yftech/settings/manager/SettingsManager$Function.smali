.class public final enum Lcom/yftech/settings/manager/SettingsManager$Function;
.super Ljava/lang/Enum;
.source "SettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/manager/SettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Function"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/settings/manager/SettingsManager$Function;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/settings/manager/SettingsManager$Function;

.field public static final enum AC_VIEW_HOLD_TIME_OPTION:Lcom/yftech/settings/manager/SettingsManager$Function;

.field public static final enum CHECK_FACTORY_MODE_STATE_ACTION:Lcom/yftech/settings/manager/SettingsManager$Function;

.field public static final enum CLOSE_SCREEN_ACTION:Lcom/yftech/settings/manager/SettingsManager$Function;

.field public static final enum INTELLIGENT_SCENE_SWITCH_OPTION:Lcom/yftech/settings/manager/SettingsManager$Function;

.field public static final enum LANGUAGE_SETTING_OPTION:Lcom/yftech/settings/manager/SettingsManager$Function;

.field public static final enum NAVI_SIGNAL_MODE_OPTION:Lcom/yftech/settings/manager/SettingsManager$Function;

.field public static final enum SCREEN_BRIGHTNESS_MAX_GET_VALUE:Lcom/yftech/settings/manager/SettingsManager$Function;

.field public static final enum SCREEN_BRIGHTNESS_VALUE:Lcom/yftech/settings/manager/SettingsManager$Function;

.field public static final enum UNKNOWN:Lcom/yftech/settings/manager/SettingsManager$Function;

.field public static final enum VEHICLE_MANUFACTURER:Lcom/yftech/settings/manager/SettingsManager$Function;

.field public static final enum VEHICLE_MODEL:Lcom/yftech/settings/manager/SettingsManager$Function;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 40
    new-instance v0, Lcom/yftech/settings/manager/SettingsManager$Function;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/yftech/settings/manager/SettingsManager$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/settings/manager/SettingsManager$Function;->UNKNOWN:Lcom/yftech/settings/manager/SettingsManager$Function;

    .line 41
    new-instance v0, Lcom/yftech/settings/manager/SettingsManager$Function;

    const-string v1, "SCREEN_BRIGHTNESS_VALUE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/yftech/settings/manager/SettingsManager$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/settings/manager/SettingsManager$Function;->SCREEN_BRIGHTNESS_VALUE:Lcom/yftech/settings/manager/SettingsManager$Function;

    .line 42
    new-instance v0, Lcom/yftech/settings/manager/SettingsManager$Function;

    const-string v1, "AC_VIEW_HOLD_TIME_OPTION"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/yftech/settings/manager/SettingsManager$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/settings/manager/SettingsManager$Function;->AC_VIEW_HOLD_TIME_OPTION:Lcom/yftech/settings/manager/SettingsManager$Function;

    .line 43
    new-instance v0, Lcom/yftech/settings/manager/SettingsManager$Function;

    const-string v1, "CLOSE_SCREEN_ACTION"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/yftech/settings/manager/SettingsManager$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/settings/manager/SettingsManager$Function;->CLOSE_SCREEN_ACTION:Lcom/yftech/settings/manager/SettingsManager$Function;

    .line 44
    new-instance v0, Lcom/yftech/settings/manager/SettingsManager$Function;

    const-string v1, "INTELLIGENT_SCENE_SWITCH_OPTION"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/yftech/settings/manager/SettingsManager$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/settings/manager/SettingsManager$Function;->INTELLIGENT_SCENE_SWITCH_OPTION:Lcom/yftech/settings/manager/SettingsManager$Function;

    .line 45
    new-instance v0, Lcom/yftech/settings/manager/SettingsManager$Function;

    const-string v1, "SCREEN_BRIGHTNESS_MAX_GET_VALUE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/yftech/settings/manager/SettingsManager$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/settings/manager/SettingsManager$Function;->SCREEN_BRIGHTNESS_MAX_GET_VALUE:Lcom/yftech/settings/manager/SettingsManager$Function;

    .line 46
    new-instance v0, Lcom/yftech/settings/manager/SettingsManager$Function;

    const-string v1, "NAVI_SIGNAL_MODE_OPTION"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/yftech/settings/manager/SettingsManager$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/settings/manager/SettingsManager$Function;->NAVI_SIGNAL_MODE_OPTION:Lcom/yftech/settings/manager/SettingsManager$Function;

    .line 47
    new-instance v0, Lcom/yftech/settings/manager/SettingsManager$Function;

    const-string v1, "CHECK_FACTORY_MODE_STATE_ACTION"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/yftech/settings/manager/SettingsManager$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/settings/manager/SettingsManager$Function;->CHECK_FACTORY_MODE_STATE_ACTION:Lcom/yftech/settings/manager/SettingsManager$Function;

    .line 48
    new-instance v0, Lcom/yftech/settings/manager/SettingsManager$Function;

    const-string v1, "VEHICLE_MANUFACTURER"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/yftech/settings/manager/SettingsManager$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/settings/manager/SettingsManager$Function;->VEHICLE_MANUFACTURER:Lcom/yftech/settings/manager/SettingsManager$Function;

    .line 49
    new-instance v0, Lcom/yftech/settings/manager/SettingsManager$Function;

    const-string v1, "VEHICLE_MODEL"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/yftech/settings/manager/SettingsManager$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/settings/manager/SettingsManager$Function;->VEHICLE_MODEL:Lcom/yftech/settings/manager/SettingsManager$Function;

    .line 50
    new-instance v0, Lcom/yftech/settings/manager/SettingsManager$Function;

    const-string v1, "LANGUAGE_SETTING_OPTION"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/yftech/settings/manager/SettingsManager$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/settings/manager/SettingsManager$Function;->LANGUAGE_SETTING_OPTION:Lcom/yftech/settings/manager/SettingsManager$Function;

    const/16 v0, 0xb

    .line 39
    new-array v0, v0, [Lcom/yftech/settings/manager/SettingsManager$Function;

    sget-object v1, Lcom/yftech/settings/manager/SettingsManager$Function;->UNKNOWN:Lcom/yftech/settings/manager/SettingsManager$Function;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/settings/manager/SettingsManager$Function;->SCREEN_BRIGHTNESS_VALUE:Lcom/yftech/settings/manager/SettingsManager$Function;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/settings/manager/SettingsManager$Function;->AC_VIEW_HOLD_TIME_OPTION:Lcom/yftech/settings/manager/SettingsManager$Function;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/settings/manager/SettingsManager$Function;->CLOSE_SCREEN_ACTION:Lcom/yftech/settings/manager/SettingsManager$Function;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/settings/manager/SettingsManager$Function;->INTELLIGENT_SCENE_SWITCH_OPTION:Lcom/yftech/settings/manager/SettingsManager$Function;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/settings/manager/SettingsManager$Function;->SCREEN_BRIGHTNESS_MAX_GET_VALUE:Lcom/yftech/settings/manager/SettingsManager$Function;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yftech/settings/manager/SettingsManager$Function;->NAVI_SIGNAL_MODE_OPTION:Lcom/yftech/settings/manager/SettingsManager$Function;

    aput-object v1, v0, v8

    sget-object v1, Lcom/yftech/settings/manager/SettingsManager$Function;->CHECK_FACTORY_MODE_STATE_ACTION:Lcom/yftech/settings/manager/SettingsManager$Function;

    aput-object v1, v0, v9

    sget-object v1, Lcom/yftech/settings/manager/SettingsManager$Function;->VEHICLE_MANUFACTURER:Lcom/yftech/settings/manager/SettingsManager$Function;

    aput-object v1, v0, v10

    sget-object v1, Lcom/yftech/settings/manager/SettingsManager$Function;->VEHICLE_MODEL:Lcom/yftech/settings/manager/SettingsManager$Function;

    aput-object v1, v0, v11

    sget-object v1, Lcom/yftech/settings/manager/SettingsManager$Function;->LANGUAGE_SETTING_OPTION:Lcom/yftech/settings/manager/SettingsManager$Function;

    aput-object v1, v0, v12

    sput-object v0, Lcom/yftech/settings/manager/SettingsManager$Function;->$VALUES:[Lcom/yftech/settings/manager/SettingsManager$Function;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/settings/manager/SettingsManager$Function;
    .locals 1

    .line 39
    const-class v0, Lcom/yftech/settings/manager/SettingsManager$Function;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/settings/manager/SettingsManager$Function;

    return-object p0
.end method

.method public static values()[Lcom/yftech/settings/manager/SettingsManager$Function;
    .locals 1

    .line 39
    sget-object v0, Lcom/yftech/settings/manager/SettingsManager$Function;->$VALUES:[Lcom/yftech/settings/manager/SettingsManager$Function;

    invoke-virtual {v0}, [Lcom/yftech/settings/manager/SettingsManager$Function;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/settings/manager/SettingsManager$Function;

    return-object v0
.end method
