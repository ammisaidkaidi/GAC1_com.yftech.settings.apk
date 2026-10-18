.class public final enum Lcom/yftech/settings/manager/VoiceSettingsManager$Function;
.super Ljava/lang/Enum;
.source "VoiceSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/manager/VoiceSettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Function"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/settings/manager/VoiceSettingsManager$Function;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/settings/manager/VoiceSettingsManager$Function;

.field public static final enum CUSTOM_WAKE_UP_WORD_VALUE:Lcom/yftech/settings/manager/VoiceSettingsManager$Function;

.field public static final enum FREE_WAKE_UP_DURATION_OPTION:Lcom/yftech/settings/manager/VoiceSettingsManager$Function;

.field public static final enum FREE_WAKE_UP_SETTING_ENABLE:Lcom/yftech/settings/manager/VoiceSettingsManager$Function;

.field public static final enum RECOGNITION_ENGINE_OPTION:Lcom/yftech/settings/manager/VoiceSettingsManager$Function;

.field public static final enum SPEAK_SETTING_OPTION:Lcom/yftech/settings/manager/VoiceSettingsManager$Function;

.field public static final enum UNKNOWN:Lcom/yftech/settings/manager/VoiceSettingsManager$Function;

.field public static final enum WAKE_UP_ENABLE:Lcom/yftech/settings/manager/VoiceSettingsManager$Function;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 10
    new-instance v0, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;->UNKNOWN:Lcom/yftech/settings/manager/VoiceSettingsManager$Function;

    .line 11
    new-instance v0, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;

    const-string v1, "WAKE_UP_ENABLE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;->WAKE_UP_ENABLE:Lcom/yftech/settings/manager/VoiceSettingsManager$Function;

    .line 12
    new-instance v0, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;

    const-string v1, "CUSTOM_WAKE_UP_WORD_VALUE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;->CUSTOM_WAKE_UP_WORD_VALUE:Lcom/yftech/settings/manager/VoiceSettingsManager$Function;

    .line 13
    new-instance v0, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;

    const-string v1, "FREE_WAKE_UP_DURATION_OPTION"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;->FREE_WAKE_UP_DURATION_OPTION:Lcom/yftech/settings/manager/VoiceSettingsManager$Function;

    .line 14
    new-instance v0, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;

    const-string v1, "FREE_WAKE_UP_SETTING_ENABLE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;->FREE_WAKE_UP_SETTING_ENABLE:Lcom/yftech/settings/manager/VoiceSettingsManager$Function;

    .line 15
    new-instance v0, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;

    const-string v1, "RECOGNITION_ENGINE_OPTION"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;->RECOGNITION_ENGINE_OPTION:Lcom/yftech/settings/manager/VoiceSettingsManager$Function;

    .line 16
    new-instance v0, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;

    const-string v1, "SPEAK_SETTING_OPTION"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;->SPEAK_SETTING_OPTION:Lcom/yftech/settings/manager/VoiceSettingsManager$Function;

    const/4 v0, 0x7

    .line 9
    new-array v0, v0, [Lcom/yftech/settings/manager/VoiceSettingsManager$Function;

    sget-object v1, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;->UNKNOWN:Lcom/yftech/settings/manager/VoiceSettingsManager$Function;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;->WAKE_UP_ENABLE:Lcom/yftech/settings/manager/VoiceSettingsManager$Function;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;->CUSTOM_WAKE_UP_WORD_VALUE:Lcom/yftech/settings/manager/VoiceSettingsManager$Function;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;->FREE_WAKE_UP_DURATION_OPTION:Lcom/yftech/settings/manager/VoiceSettingsManager$Function;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;->FREE_WAKE_UP_SETTING_ENABLE:Lcom/yftech/settings/manager/VoiceSettingsManager$Function;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;->RECOGNITION_ENGINE_OPTION:Lcom/yftech/settings/manager/VoiceSettingsManager$Function;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;->SPEAK_SETTING_OPTION:Lcom/yftech/settings/manager/VoiceSettingsManager$Function;

    aput-object v1, v0, v8

    sput-object v0, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;->$VALUES:[Lcom/yftech/settings/manager/VoiceSettingsManager$Function;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/settings/manager/VoiceSettingsManager$Function;
    .locals 1

    .line 9
    const-class v0, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;

    return-object p0
.end method

.method public static values()[Lcom/yftech/settings/manager/VoiceSettingsManager$Function;
    .locals 1

    .line 9
    sget-object v0, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;->$VALUES:[Lcom/yftech/settings/manager/VoiceSettingsManager$Function;

    invoke-virtual {v0}, [Lcom/yftech/settings/manager/VoiceSettingsManager$Function;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/settings/manager/VoiceSettingsManager$Function;

    return-object v0
.end method
