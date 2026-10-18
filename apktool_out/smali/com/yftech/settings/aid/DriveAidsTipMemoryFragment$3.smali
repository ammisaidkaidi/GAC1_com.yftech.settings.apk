.class synthetic Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment$3;
.super Ljava/lang/Object;
.source "DriveAidsTipMemoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$yftech$settings$manager$CarAssistantManager$Function:[I

.field static final synthetic $SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 207
    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->values()[Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment$3;->$SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment$3;->$SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function:[I

    sget-object v2, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->REMEMBER_DRIVING_MODE_ENABLED:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v2}, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :catch_0
    invoke-static {}, Lcom/yftech/settings/manager/CarAssistantManager$Function;->values()[Lcom/yftech/settings/manager/CarAssistantManager$Function;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment$3;->$SwitchMap$com$yftech$settings$manager$CarAssistantManager$Function:[I

    :try_start_1
    sget-object v1, Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment$3;->$SwitchMap$com$yftech$settings$manager$CarAssistantManager$Function:[I

    sget-object v2, Lcom/yftech/settings/manager/CarAssistantManager$Function;->SPEED_WARNING_VALUE:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {v2}, Lcom/yftech/settings/manager/CarAssistantManager$Function;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
