.class public final enum Lcom/yftech/settings/manager/SoundManager$Function;
.super Ljava/lang/Enum;
.source "SoundManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/manager/SoundManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Function"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/settings/manager/SoundManager$Function;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/settings/manager/SoundManager$Function;

.field public static final enum BAND_HIGH_INTERVAL_VALUE:Lcom/yftech/settings/manager/SoundManager$Function;

.field public static final enum BAND_HIGH_VALUE:Lcom/yftech/settings/manager/SoundManager$Function;

.field public static final enum BAND_LOW_INTERVAL_VALUE:Lcom/yftech/settings/manager/SoundManager$Function;

.field public static final enum BAND_LOW_VALUE:Lcom/yftech/settings/manager/SoundManager$Function;

.field public static final enum BAND_MID_INTERVAL_VALUE:Lcom/yftech/settings/manager/SoundManager$Function;

.field public static final enum BAND_MID_VALUE:Lcom/yftech/settings/manager/SoundManager$Function;

.field public static final enum BOOT_VOLUME_OPTION:Lcom/yftech/settings/manager/SoundManager$Function;

.field public static final enum DTS_ENABLE:Lcom/yftech/settings/manager/SoundManager$Function;

.field public static final enum DTS_SOUND_POSITION_OPTION:Lcom/yftech/settings/manager/SoundManager$Function;

.field public static final enum DTS_TYEP_OPTION:Lcom/yftech/settings/manager/SoundManager$Function;

.field public static final enum EQ_TYPE_OPTION:Lcom/yftech/settings/manager/SoundManager$Function;

.field public static final enum INTERFACE_EFFECTS_ENABLE:Lcom/yftech/settings/manager/SoundManager$Function;

.field public static final enum KEEP_MUTE_WARNING_OPTION:Lcom/yftech/settings/manager/SoundManager$Function;

.field public static final enum KEY_SOUND_OPTION:Lcom/yftech/settings/manager/SoundManager$Function;

.field public static final enum SOUND_DELAY_CANCEL_ACTION:Lcom/yftech/settings/manager/SoundManager$Function;

.field public static final enum SOUND_DELAY_START_ACTION:Lcom/yftech/settings/manager/SoundManager$Function;

.field public static final enum SOUND_DELAY_VALUE:Lcom/yftech/settings/manager/SoundManager$Function;

.field public static final enum SPEED_GAIN_ENABLE:Lcom/yftech/settings/manager/SoundManager$Function;

.field public static final enum UNKNOWN:Lcom/yftech/settings/manager/SoundManager$Function;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 24
    new-instance v0, Lcom/yftech/settings/manager/SoundManager$Function;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/yftech/settings/manager/SoundManager$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/settings/manager/SoundManager$Function;->UNKNOWN:Lcom/yftech/settings/manager/SoundManager$Function;

    .line 25
    new-instance v0, Lcom/yftech/settings/manager/SoundManager$Function;

    const-string v1, "DTS_ENABLE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/yftech/settings/manager/SoundManager$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/settings/manager/SoundManager$Function;->DTS_ENABLE:Lcom/yftech/settings/manager/SoundManager$Function;

    .line 26
    new-instance v0, Lcom/yftech/settings/manager/SoundManager$Function;

    const-string v1, "DTS_TYEP_OPTION"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/yftech/settings/manager/SoundManager$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/settings/manager/SoundManager$Function;->DTS_TYEP_OPTION:Lcom/yftech/settings/manager/SoundManager$Function;

    .line 27
    new-instance v0, Lcom/yftech/settings/manager/SoundManager$Function;

    const-string v1, "DTS_SOUND_POSITION_OPTION"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/yftech/settings/manager/SoundManager$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/settings/manager/SoundManager$Function;->DTS_SOUND_POSITION_OPTION:Lcom/yftech/settings/manager/SoundManager$Function;

    .line 28
    new-instance v0, Lcom/yftech/settings/manager/SoundManager$Function;

    const-string v1, "EQ_TYPE_OPTION"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/yftech/settings/manager/SoundManager$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/settings/manager/SoundManager$Function;->EQ_TYPE_OPTION:Lcom/yftech/settings/manager/SoundManager$Function;

    .line 29
    new-instance v0, Lcom/yftech/settings/manager/SoundManager$Function;

    const-string v1, "BAND_HIGH_VALUE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/yftech/settings/manager/SoundManager$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/settings/manager/SoundManager$Function;->BAND_HIGH_VALUE:Lcom/yftech/settings/manager/SoundManager$Function;

    .line 30
    new-instance v0, Lcom/yftech/settings/manager/SoundManager$Function;

    const-string v1, "BAND_MID_VALUE"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/yftech/settings/manager/SoundManager$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/settings/manager/SoundManager$Function;->BAND_MID_VALUE:Lcom/yftech/settings/manager/SoundManager$Function;

    .line 31
    new-instance v0, Lcom/yftech/settings/manager/SoundManager$Function;

    const-string v1, "BAND_LOW_VALUE"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/yftech/settings/manager/SoundManager$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/settings/manager/SoundManager$Function;->BAND_LOW_VALUE:Lcom/yftech/settings/manager/SoundManager$Function;

    .line 32
    new-instance v0, Lcom/yftech/settings/manager/SoundManager$Function;

    const-string v1, "SOUND_DELAY_VALUE"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/yftech/settings/manager/SoundManager$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/settings/manager/SoundManager$Function;->SOUND_DELAY_VALUE:Lcom/yftech/settings/manager/SoundManager$Function;

    .line 33
    new-instance v0, Lcom/yftech/settings/manager/SoundManager$Function;

    const-string v1, "SPEED_GAIN_ENABLE"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/yftech/settings/manager/SoundManager$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/settings/manager/SoundManager$Function;->SPEED_GAIN_ENABLE:Lcom/yftech/settings/manager/SoundManager$Function;

    .line 34
    new-instance v0, Lcom/yftech/settings/manager/SoundManager$Function;

    const-string v1, "BOOT_VOLUME_OPTION"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/yftech/settings/manager/SoundManager$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/settings/manager/SoundManager$Function;->BOOT_VOLUME_OPTION:Lcom/yftech/settings/manager/SoundManager$Function;

    .line 35
    new-instance v0, Lcom/yftech/settings/manager/SoundManager$Function;

    const-string v1, "KEEP_MUTE_WARNING_OPTION"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/yftech/settings/manager/SoundManager$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/settings/manager/SoundManager$Function;->KEEP_MUTE_WARNING_OPTION:Lcom/yftech/settings/manager/SoundManager$Function;

    .line 36
    new-instance v0, Lcom/yftech/settings/manager/SoundManager$Function;

    const-string v1, "KEY_SOUND_OPTION"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/yftech/settings/manager/SoundManager$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/settings/manager/SoundManager$Function;->KEY_SOUND_OPTION:Lcom/yftech/settings/manager/SoundManager$Function;

    .line 37
    new-instance v0, Lcom/yftech/settings/manager/SoundManager$Function;

    const-string v1, "INTERFACE_EFFECTS_ENABLE"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/yftech/settings/manager/SoundManager$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/settings/manager/SoundManager$Function;->INTERFACE_EFFECTS_ENABLE:Lcom/yftech/settings/manager/SoundManager$Function;

    .line 38
    new-instance v0, Lcom/yftech/settings/manager/SoundManager$Function;

    const-string v1, "BAND_HIGH_INTERVAL_VALUE"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lcom/yftech/settings/manager/SoundManager$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/settings/manager/SoundManager$Function;->BAND_HIGH_INTERVAL_VALUE:Lcom/yftech/settings/manager/SoundManager$Function;

    .line 39
    new-instance v0, Lcom/yftech/settings/manager/SoundManager$Function;

    const-string v1, "BAND_MID_INTERVAL_VALUE"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, Lcom/yftech/settings/manager/SoundManager$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/settings/manager/SoundManager$Function;->BAND_MID_INTERVAL_VALUE:Lcom/yftech/settings/manager/SoundManager$Function;

    .line 40
    new-instance v0, Lcom/yftech/settings/manager/SoundManager$Function;

    const-string v1, "BAND_LOW_INTERVAL_VALUE"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15}, Lcom/yftech/settings/manager/SoundManager$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/settings/manager/SoundManager$Function;->BAND_LOW_INTERVAL_VALUE:Lcom/yftech/settings/manager/SoundManager$Function;

    .line 41
    new-instance v0, Lcom/yftech/settings/manager/SoundManager$Function;

    const-string v1, "SOUND_DELAY_START_ACTION"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15}, Lcom/yftech/settings/manager/SoundManager$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/settings/manager/SoundManager$Function;->SOUND_DELAY_START_ACTION:Lcom/yftech/settings/manager/SoundManager$Function;

    .line 42
    new-instance v0, Lcom/yftech/settings/manager/SoundManager$Function;

    const-string v1, "SOUND_DELAY_CANCEL_ACTION"

    const/16 v15, 0x12

    invoke-direct {v0, v1, v15}, Lcom/yftech/settings/manager/SoundManager$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/settings/manager/SoundManager$Function;->SOUND_DELAY_CANCEL_ACTION:Lcom/yftech/settings/manager/SoundManager$Function;

    const/16 v0, 0x13

    .line 23
    new-array v0, v0, [Lcom/yftech/settings/manager/SoundManager$Function;

    sget-object v1, Lcom/yftech/settings/manager/SoundManager$Function;->UNKNOWN:Lcom/yftech/settings/manager/SoundManager$Function;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/settings/manager/SoundManager$Function;->DTS_ENABLE:Lcom/yftech/settings/manager/SoundManager$Function;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/settings/manager/SoundManager$Function;->DTS_TYEP_OPTION:Lcom/yftech/settings/manager/SoundManager$Function;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/settings/manager/SoundManager$Function;->DTS_SOUND_POSITION_OPTION:Lcom/yftech/settings/manager/SoundManager$Function;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/settings/manager/SoundManager$Function;->EQ_TYPE_OPTION:Lcom/yftech/settings/manager/SoundManager$Function;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/settings/manager/SoundManager$Function;->BAND_HIGH_VALUE:Lcom/yftech/settings/manager/SoundManager$Function;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yftech/settings/manager/SoundManager$Function;->BAND_MID_VALUE:Lcom/yftech/settings/manager/SoundManager$Function;

    aput-object v1, v0, v8

    sget-object v1, Lcom/yftech/settings/manager/SoundManager$Function;->BAND_LOW_VALUE:Lcom/yftech/settings/manager/SoundManager$Function;

    aput-object v1, v0, v9

    sget-object v1, Lcom/yftech/settings/manager/SoundManager$Function;->SOUND_DELAY_VALUE:Lcom/yftech/settings/manager/SoundManager$Function;

    aput-object v1, v0, v10

    sget-object v1, Lcom/yftech/settings/manager/SoundManager$Function;->SPEED_GAIN_ENABLE:Lcom/yftech/settings/manager/SoundManager$Function;

    aput-object v1, v0, v11

    sget-object v1, Lcom/yftech/settings/manager/SoundManager$Function;->BOOT_VOLUME_OPTION:Lcom/yftech/settings/manager/SoundManager$Function;

    aput-object v1, v0, v12

    sget-object v1, Lcom/yftech/settings/manager/SoundManager$Function;->KEEP_MUTE_WARNING_OPTION:Lcom/yftech/settings/manager/SoundManager$Function;

    aput-object v1, v0, v13

    sget-object v1, Lcom/yftech/settings/manager/SoundManager$Function;->KEY_SOUND_OPTION:Lcom/yftech/settings/manager/SoundManager$Function;

    aput-object v1, v0, v14

    sget-object v1, Lcom/yftech/settings/manager/SoundManager$Function;->INTERFACE_EFFECTS_ENABLE:Lcom/yftech/settings/manager/SoundManager$Function;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/settings/manager/SoundManager$Function;->BAND_HIGH_INTERVAL_VALUE:Lcom/yftech/settings/manager/SoundManager$Function;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/settings/manager/SoundManager$Function;->BAND_MID_INTERVAL_VALUE:Lcom/yftech/settings/manager/SoundManager$Function;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/settings/manager/SoundManager$Function;->BAND_LOW_INTERVAL_VALUE:Lcom/yftech/settings/manager/SoundManager$Function;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/settings/manager/SoundManager$Function;->SOUND_DELAY_START_ACTION:Lcom/yftech/settings/manager/SoundManager$Function;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/settings/manager/SoundManager$Function;->SOUND_DELAY_CANCEL_ACTION:Lcom/yftech/settings/manager/SoundManager$Function;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sput-object v0, Lcom/yftech/settings/manager/SoundManager$Function;->$VALUES:[Lcom/yftech/settings/manager/SoundManager$Function;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/settings/manager/SoundManager$Function;
    .locals 1

    .line 23
    const-class v0, Lcom/yftech/settings/manager/SoundManager$Function;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/settings/manager/SoundManager$Function;

    return-object p0
.end method

.method public static values()[Lcom/yftech/settings/manager/SoundManager$Function;
    .locals 1

    .line 23
    sget-object v0, Lcom/yftech/settings/manager/SoundManager$Function;->$VALUES:[Lcom/yftech/settings/manager/SoundManager$Function;

    invoke-virtual {v0}, [Lcom/yftech/settings/manager/SoundManager$Function;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/settings/manager/SoundManager$Function;

    return-object v0
.end method
