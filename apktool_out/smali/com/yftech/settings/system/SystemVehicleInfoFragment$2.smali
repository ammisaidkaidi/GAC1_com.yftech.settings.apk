.class synthetic Lcom/yftech/settings/system/SystemVehicleInfoFragment$2;
.super Ljava/lang/Object;
.source "SystemVehicleInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/system/SystemVehicleInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$yftech$settings$manager$SettingsManager$Function:[I

.field static final synthetic $SwitchMap$com$yftech$vehicle$internal$adapter$IHostConfig$Language:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 213
    invoke-static {}, Lcom/yftech/settings/manager/SettingsManager$Function;->values()[Lcom/yftech/settings/manager/SettingsManager$Function;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/yftech/settings/system/SystemVehicleInfoFragment$2;->$SwitchMap$com$yftech$settings$manager$SettingsManager$Function:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/yftech/settings/system/SystemVehicleInfoFragment$2;->$SwitchMap$com$yftech$settings$manager$SettingsManager$Function:[I

    sget-object v2, Lcom/yftech/settings/manager/SettingsManager$Function;->LANGUAGE_SETTING_OPTION:Lcom/yftech/settings/manager/SettingsManager$Function;

    invoke-virtual {v2}, Lcom/yftech/settings/manager/SettingsManager$Function;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :catch_0
    invoke-static {}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->values()[Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/yftech/settings/system/SystemVehicleInfoFragment$2;->$SwitchMap$com$yftech$vehicle$internal$adapter$IHostConfig$Language:[I

    :try_start_1
    sget-object v1, Lcom/yftech/settings/system/SystemVehicleInfoFragment$2;->$SwitchMap$com$yftech$vehicle$internal$adapter$IHostConfig$Language:[I

    sget-object v2, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->CHINESE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    invoke-virtual {v2}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/yftech/settings/system/SystemVehicleInfoFragment$2;->$SwitchMap$com$yftech$vehicle$internal$adapter$IHostConfig$Language:[I

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->ENGLISH:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    invoke-virtual {v1}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/yftech/settings/system/SystemVehicleInfoFragment$2;->$SwitchMap$com$yftech$vehicle$internal$adapter$IHostConfig$Language:[I

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->CHINESE_PLUSENGLISH:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    invoke-virtual {v1}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
