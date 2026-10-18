.class synthetic Lcom/yftech/settings/aid/DriveAidsAssistanceFragment$2;
.super Ljava/lang/Object;
.source "DriveAidsAssistanceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/aid/DriveAidsAssistanceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$yftech$settings$manager$CarAssistantManager$Function:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 178
    invoke-static {}, Lcom/yftech/settings/manager/CarAssistantManager$Function;->values()[Lcom/yftech/settings/manager/CarAssistantManager$Function;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/yftech/settings/aid/DriveAidsAssistanceFragment$2;->$SwitchMap$com$yftech$settings$manager$CarAssistantManager$Function:[I

    :try_start_0
    sget-object v0, Lcom/yftech/settings/aid/DriveAidsAssistanceFragment$2;->$SwitchMap$com$yftech$settings$manager$CarAssistantManager$Function:[I

    sget-object v1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->DFC_ENABLE:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {v1}, Lcom/yftech/settings/manager/CarAssistantManager$Function;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/yftech/settings/aid/DriveAidsAssistanceFragment$2;->$SwitchMap$com$yftech$settings$manager$CarAssistantManager$Function:[I

    sget-object v1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->IA_ENABLE:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {v1}, Lcom/yftech/settings/manager/CarAssistantManager$Function;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/yftech/settings/aid/DriveAidsAssistanceFragment$2;->$SwitchMap$com$yftech$settings$manager$CarAssistantManager$Function:[I

    sget-object v1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->CRUISE_ASSIST_OPTION:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {v1}, Lcom/yftech/settings/manager/CarAssistantManager$Function;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
