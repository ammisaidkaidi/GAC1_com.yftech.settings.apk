.class public final enum Lcom/yftech/settings/manager/CarAssistantManager$Function;
.super Ljava/lang/Enum;
.source "CarAssistantManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/manager/CarAssistantManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Function"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/settings/manager/CarAssistantManager$Function;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/settings/manager/CarAssistantManager$Function;

.field public static final enum ADAS_WARN_TYPE_OPTION:Lcom/yftech/settings/manager/CarAssistantManager$Function;

.field public static final enum AEB_OFF_ENABLED:Lcom/yftech/settings/manager/CarAssistantManager$Function;

.field public static final enum CRUISE_ASSIST_OPTION:Lcom/yftech/settings/manager/CarAssistantManager$Function;

.field public static final enum DFC_ENABLE:Lcom/yftech/settings/manager/CarAssistantManager$Function;

.field public static final enum DSA_MODE_OPTION:Lcom/yftech/settings/manager/CarAssistantManager$Function;

.field public static final enum DSA_OFF_ENABLES:Lcom/yftech/settings/manager/CarAssistantManager$Function;

.field public static final enum FCW_OFF_ENABLED:Lcom/yftech/settings/manager/CarAssistantManager$Function;

.field public static final enum FCW_WARNING_DISTANCE_OPTION:Lcom/yftech/settings/manager/CarAssistantManager$Function;

.field public static final enum IACC_ENABLED:Lcom/yftech/settings/manager/CarAssistantManager$Function;

.field public static final enum IA_ENABLE:Lcom/yftech/settings/manager/CarAssistantManager$Function;

.field public static final enum LDW_LKA_ENABLED:Lcom/yftech/settings/manager/CarAssistantManager$Function;

.field public static final enum LKS_MODE_OPTION:Lcom/yftech/settings/manager/CarAssistantManager$Function;

.field public static final enum SPEED_WARNING_VALUE:Lcom/yftech/settings/manager/CarAssistantManager$Function;

.field public static final enum STOP_TIMEOUT_ACTION:Lcom/yftech/settings/manager/CarAssistantManager$Function;

.field public static final enum TSR_AUDIO_WARNING_ENABLED:Lcom/yftech/settings/manager/CarAssistantManager$Function;

.field public static final enum TSR_ENABLED:Lcom/yftech/settings/manager/CarAssistantManager$Function;

.field public static final enum UNKNOWN:Lcom/yftech/settings/manager/CarAssistantManager$Function;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 19
    new-instance v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/yftech/settings/manager/CarAssistantManager$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;->UNKNOWN:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    .line 20
    new-instance v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;

    const-string v1, "FCW_OFF_ENABLED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/yftech/settings/manager/CarAssistantManager$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;->FCW_OFF_ENABLED:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    .line 21
    new-instance v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;

    const-string v1, "FCW_WARNING_DISTANCE_OPTION"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/yftech/settings/manager/CarAssistantManager$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;->FCW_WARNING_DISTANCE_OPTION:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    .line 22
    new-instance v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;

    const-string v1, "LDW_LKA_ENABLED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/yftech/settings/manager/CarAssistantManager$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;->LDW_LKA_ENABLED:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    .line 23
    new-instance v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;

    const-string v1, "LKS_MODE_OPTION"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/yftech/settings/manager/CarAssistantManager$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;->LKS_MODE_OPTION:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    .line 24
    new-instance v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;

    const-string v1, "SPEED_WARNING_VALUE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/yftech/settings/manager/CarAssistantManager$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;->SPEED_WARNING_VALUE:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    .line 25
    new-instance v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;

    const-string v1, "CRUISE_ASSIST_OPTION"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/yftech/settings/manager/CarAssistantManager$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;->CRUISE_ASSIST_OPTION:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    .line 26
    new-instance v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;

    const-string v1, "ADAS_WARN_TYPE_OPTION"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/yftech/settings/manager/CarAssistantManager$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;->ADAS_WARN_TYPE_OPTION:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    .line 27
    new-instance v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;

    const-string v1, "TSR_ENABLED"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/yftech/settings/manager/CarAssistantManager$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;->TSR_ENABLED:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    .line 28
    new-instance v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;

    const-string v1, "IACC_ENABLED"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/yftech/settings/manager/CarAssistantManager$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;->IACC_ENABLED:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    .line 29
    new-instance v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;

    const-string v1, "TSR_AUDIO_WARNING_ENABLED"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/yftech/settings/manager/CarAssistantManager$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;->TSR_AUDIO_WARNING_ENABLED:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    .line 30
    new-instance v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;

    const-string v1, "AEB_OFF_ENABLED"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/yftech/settings/manager/CarAssistantManager$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;->AEB_OFF_ENABLED:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    .line 31
    new-instance v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;

    const-string v1, "STOP_TIMEOUT_ACTION"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/yftech/settings/manager/CarAssistantManager$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;->STOP_TIMEOUT_ACTION:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    .line 32
    new-instance v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;

    const-string v1, "DFC_ENABLE"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/yftech/settings/manager/CarAssistantManager$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;->DFC_ENABLE:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    .line 33
    new-instance v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;

    const-string v1, "IA_ENABLE"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lcom/yftech/settings/manager/CarAssistantManager$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;->IA_ENABLE:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    .line 35
    new-instance v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;

    const-string v1, "DSA_OFF_ENABLES"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, Lcom/yftech/settings/manager/CarAssistantManager$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;->DSA_OFF_ENABLES:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    .line 36
    new-instance v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;

    const-string v1, "DSA_MODE_OPTION"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15}, Lcom/yftech/settings/manager/CarAssistantManager$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;->DSA_MODE_OPTION:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    const/16 v0, 0x11

    .line 18
    new-array v0, v0, [Lcom/yftech/settings/manager/CarAssistantManager$Function;

    sget-object v1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->UNKNOWN:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->FCW_OFF_ENABLED:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->FCW_WARNING_DISTANCE_OPTION:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->LDW_LKA_ENABLED:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->LKS_MODE_OPTION:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->SPEED_WARNING_VALUE:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->CRUISE_ASSIST_OPTION:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    aput-object v1, v0, v8

    sget-object v1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->ADAS_WARN_TYPE_OPTION:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    aput-object v1, v0, v9

    sget-object v1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->TSR_ENABLED:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    aput-object v1, v0, v10

    sget-object v1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->IACC_ENABLED:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    aput-object v1, v0, v11

    sget-object v1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->TSR_AUDIO_WARNING_ENABLED:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    aput-object v1, v0, v12

    sget-object v1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->AEB_OFF_ENABLED:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    aput-object v1, v0, v13

    sget-object v1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->STOP_TIMEOUT_ACTION:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    aput-object v1, v0, v14

    sget-object v1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->DFC_ENABLE:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->IA_ENABLE:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->DSA_OFF_ENABLES:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->DSA_MODE_OPTION:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sput-object v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;->$VALUES:[Lcom/yftech/settings/manager/CarAssistantManager$Function;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/settings/manager/CarAssistantManager$Function;
    .locals 1

    .line 18
    const-class v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/settings/manager/CarAssistantManager$Function;

    return-object p0
.end method

.method public static values()[Lcom/yftech/settings/manager/CarAssistantManager$Function;
    .locals 1

    .line 18
    sget-object v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;->$VALUES:[Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {v0}, [Lcom/yftech/settings/manager/CarAssistantManager$Function;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/settings/manager/CarAssistantManager$Function;

    return-object v0
.end method
