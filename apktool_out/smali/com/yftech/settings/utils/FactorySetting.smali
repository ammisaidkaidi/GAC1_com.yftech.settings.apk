.class public Lcom/yftech/settings/utils/FactorySetting;
.super Ljava/lang/Object;
.source "FactorySetting.java"


# static fields
.field private static COMMAND_FILE:Ljava/io/File; = null

.field private static final EARLIEST_SUPPORTED_TIME:J = 0x14aa1133c00L

.field private static LOG_FILE:Ljava/io/File; = null

.field private static RECOVERY_DIR:Ljava/io/File; = null

.field private static final TAG:Ljava/lang/String; = "FactorySetting"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 21
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/cache/recovery"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yftech/settings/utils/FactorySetting;->RECOVERY_DIR:Ljava/io/File;

    .line 22
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/yftech/settings/utils/FactorySetting;->RECOVERY_DIR:Ljava/io/File;

    const-string v2, "command"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/yftech/settings/utils/FactorySetting;->COMMAND_FILE:Ljava/io/File;

    .line 23
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/yftech/settings/utils/FactorySetting;->RECOVERY_DIR:Ljava/io/File;

    const-string v2, "log"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/yftech/settings/utils/FactorySetting;->LOG_FILE:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private clearOsData(Landroid/content/Context;)V
    .locals 5

    const-string v0, "FactorySetting"

    const-string v1, "clearOsData() resetTime"

    .line 48
    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide v0, 0x14aa1133c00L

    .line 49
    invoke-static {v0, v1}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "--locale="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n--wipe_data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    sget-object v1, Lcom/yftech/settings/utils/FactorySetting;->RECOVERY_DIR:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 54
    sget-object v1, Lcom/yftech/settings/utils/FactorySetting;->COMMAND_FILE:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 55
    sget-object v1, Lcom/yftech/settings/utils/FactorySetting;->LOG_FILE:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 57
    invoke-direct {p0}, Lcom/yftech/settings/utils/FactorySetting;->deleteSystemFile()V

    const/4 v1, 0x0

    .line 61
    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    sget-object v3, Lcom/yftech/settings/utils/FactorySetting;->COMMAND_FILE:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 62
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    .line 63
    invoke-virtual {v2, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const-string v1, "FactorySetting"

    .line 65
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearOsData:  args=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yftech/settings/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-object v1, v2

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v2, v1

    goto :goto_2

    :catch_1
    :goto_0
    :try_start_3
    const-string v0, "FactorySetting"

    const-string v2, "Can\'t write command file"

    .line 67
    invoke-static {v0, v2}, Lcom/yftech/settings/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_0

    .line 71
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    const-string v0, "FactorySetting"

    const-string v1, "Can\'t close command"

    .line 74
    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_0
    :goto_1
    new-instance v0, Lcom/yftech/settings/utils/FactorySetting$1;

    const-string v1, "Reboot"

    invoke-direct {v0, p0, v1, p1}, Lcom/yftech/settings/utils/FactorySetting$1;-><init>(Lcom/yftech/settings/utils/FactorySetting;Ljava/lang/String;Landroid/content/Context;)V

    .line 89
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :goto_2
    if-eqz v2, :cond_1

    .line 71
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    const-string p1, "FactorySetting"

    const-string v0, "Can\'t close command"

    .line 74
    invoke-static {p1, v0}, Lcom/yftech/settings/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_1
    :goto_3
    throw p0
.end method

.method private deleteSystemFile()V
    .locals 4

    const-string p0, "/sdcard/atclog"

    .line 93
    invoke-static {p0}, Lcom/yftech/settings/utils/DeleteUtil;->delete(Ljava/lang/String;)Z

    move-result p0

    const-string v0, "/storage/emulated/0/wallpaper"

    .line 94
    invoke-static {v0}, Lcom/yftech/settings/utils/DeleteUtil;->delete(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "FactorySetting"

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteSystemFile atclog result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " wallpaper:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public factoryReset(Landroid/content/Context;)V
    .locals 4

    .line 39
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarMiscManager;->get()Lcom/yftech/vehicle/sdk/CarMiscManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarMiscManager;->setFactoryModeReSetFactorySettingNotify()Z

    move-result v0

    const-string v1, "FactorySetting"

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFactoryModReSetFactorySettingNotify() result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-direct {p0, p1}, Lcom/yftech/settings/utils/FactorySetting;->clearOsData(Landroid/content/Context;)V

    return-void
.end method
