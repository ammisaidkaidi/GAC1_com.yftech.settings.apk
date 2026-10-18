.class public Lcom/yftech/settings/SettingsApp;
.super Landroid/app/Application;
.source "SettingsApp.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SettingsApp"

.field private static mSelf:Lcom/yftech/settings/SettingsApp;


# instance fields
.field public mActivityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/settings/SettingsApp;->mActivityList:Ljava/util/List;

    return-void
.end method

.method public static getInstance()Lcom/yftech/settings/SettingsApp;
    .locals 1

    .line 137
    sget-object v0, Lcom/yftech/settings/SettingsApp;->mSelf:Lcom/yftech/settings/SettingsApp;

    return-object v0
.end method


# virtual methods
.method public addActivity(Landroid/app/Activity;)V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/yftech/settings/SettingsApp;->mActivityList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    iget-object p0, p0, Lcom/yftech/settings/SettingsApp;->mActivityList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public clearActivityList()V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/yftech/settings/SettingsApp;->mActivityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 151
    iget-object v1, p0, Lcom/yftech/settings/SettingsApp;->mActivityList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 152
    :cond_0
    iget-object p0, p0, Lcom/yftech/settings/SettingsApp;->mActivityList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 44
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 45
    sput-object p0, Lcom/yftech/settings/SettingsApp;->mSelf:Lcom/yftech/settings/SettingsApp;

    const-string v0, "SettingsApp"

    const-string v1, "settings app start"

    .line 46
    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-static {}, Lcom/yftech/settings/utils/ConfigUtils;->getInstance()Lcom/yftech/settings/utils/ConfigUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/settings/utils/ConfigUtils;->init()V

    .line 48
    invoke-static {p0}, Lcom/facebook/drawee/backends/pipeline/Fresco;->initialize(Landroid/content/Context;)V

    .line 49
    invoke-static {}, Lcom/yftech/settings/manager/BluetoothManager;->getInstance()Lcom/yftech/settings/manager/BluetoothManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yftech/settings/manager/BluetoothManager;->init(Landroid/content/Context;)V

    .line 50
    invoke-static {}, Lcom/yftech/settings/manager/CarAssistantManager;->getInstance()Lcom/yftech/settings/manager/CarAssistantManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yftech/settings/manager/CarAssistantManager;->init(Landroid/content/Context;)V

    .line 51
    invoke-static {}, Lcom/yftech/settings/manager/CarDashboardManager;->getInstance()Lcom/yftech/settings/manager/CarDashboardManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yftech/settings/manager/CarDashboardManager;->init(Landroid/content/Context;)V

    .line 52
    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yftech/settings/manager/CarDriveModeManager;->init(Landroid/content/Context;)V

    .line 53
    invoke-static {}, Lcom/yftech/settings/manager/CarParkingManager;->getInstance()Lcom/yftech/settings/manager/CarParkingManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yftech/settings/manager/CarParkingManager;->init(Landroid/content/Context;)V

    .line 54
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yftech/settings/manager/CarPartsManager;->init(Landroid/content/Context;)V

    .line 55
    invoke-static {}, Lcom/yftech/settings/manager/LinkCarplayManager;->getInstance()Lcom/yftech/settings/manager/LinkCarplayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/settings/manager/LinkCarplayManager;->init()V

    .line 56
    invoke-static {}, Lcom/yftech/settings/manager/LinkHicarManager;->getInstance()Lcom/yftech/settings/manager/LinkHicarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/settings/manager/LinkHicarManager;->init()V

    .line 57
    invoke-static {}, Lcom/yftech/settings/manager/SettingsManager;->getInstance()Lcom/yftech/settings/manager/SettingsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yftech/settings/manager/SettingsManager;->init(Landroid/content/Context;)V

    .line 58
    invoke-static {}, Lcom/yftech/settings/manager/SoundManager;->getInstance()Lcom/yftech/settings/manager/SoundManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yftech/settings/manager/SoundManager;->init(Landroid/content/Context;)V

    .line 59
    invoke-static {}, Lcom/yftech/settings/manager/SoundVolumeManager;->getInstance()Lcom/yftech/settings/manager/SoundVolumeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yftech/settings/manager/SoundVolumeManager;->init(Landroid/content/Context;)V

    .line 60
    invoke-static {}, Lcom/yftech/settings/manager/VoiceSettingsManager;->getInstance()Lcom/yftech/settings/manager/VoiceSettingsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yftech/settings/manager/VoiceSettingsManager;->init(Landroid/content/Context;)V

    .line 61
    invoke-static {}, Lcom/yftech/settings/manager/WlanManager;->getInstance()Lcom/yftech/settings/manager/WlanManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yftech/settings/manager/WlanManager;->init(Landroid/content/Context;)V

    .line 67
    new-instance v0, Lcom/yftech/settings/SettingsApp$1;

    invoke-direct {v0, p0}, Lcom/yftech/settings/SettingsApp$1;-><init>(Lcom/yftech/settings/SettingsApp;)V

    invoke-virtual {p0, v0}, Lcom/yftech/settings/SettingsApp;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 111
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    const-string p0, "SettingsApp"

    const-string v0, "onLowMemory"

    .line 112
    invoke-static {p0, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTerminate()V
    .locals 1

    .line 117
    invoke-static {}, Lcom/yftech/settings/manager/BluetoothManager;->getInstance()Lcom/yftech/settings/manager/BluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/settings/manager/BluetoothManager;->deInit()V

    .line 118
    invoke-static {}, Lcom/yftech/settings/manager/CarAssistantManager;->getInstance()Lcom/yftech/settings/manager/CarAssistantManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/settings/manager/CarAssistantManager;->deInit()V

    .line 119
    invoke-static {}, Lcom/yftech/settings/manager/CarDashboardManager;->getInstance()Lcom/yftech/settings/manager/CarDashboardManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/settings/manager/CarDashboardManager;->deInit()V

    .line 120
    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/settings/manager/CarDriveModeManager;->deInit()V

    .line 121
    invoke-static {}, Lcom/yftech/settings/manager/CarParkingManager;->getInstance()Lcom/yftech/settings/manager/CarParkingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/settings/manager/CarParkingManager;->deInit()V

    .line 122
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/settings/manager/CarPartsManager;->deInit()V

    .line 123
    invoke-static {}, Lcom/yftech/settings/manager/LinkCarplayManager;->getInstance()Lcom/yftech/settings/manager/LinkCarplayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/settings/manager/LinkCarplayManager;->deInit()V

    .line 124
    invoke-static {}, Lcom/yftech/settings/manager/LinkHicarManager;->getInstance()Lcom/yftech/settings/manager/LinkHicarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/settings/manager/LinkHicarManager;->deInit()V

    .line 125
    invoke-static {}, Lcom/yftech/settings/manager/SettingsManager;->getInstance()Lcom/yftech/settings/manager/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/settings/manager/SettingsManager;->deInit()V

    .line 126
    invoke-static {}, Lcom/yftech/settings/manager/SoundManager;->getInstance()Lcom/yftech/settings/manager/SoundManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/settings/manager/SoundManager;->deInit()V

    .line 127
    invoke-static {}, Lcom/yftech/settings/manager/SoundVolumeManager;->getInstance()Lcom/yftech/settings/manager/SoundVolumeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/settings/manager/SoundVolumeManager;->deInit()V

    .line 128
    invoke-static {}, Lcom/yftech/settings/manager/VoiceSettingsManager;->getInstance()Lcom/yftech/settings/manager/VoiceSettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/settings/manager/VoiceSettingsManager;->deInit()V

    .line 129
    invoke-static {}, Lcom/yftech/settings/manager/WlanManager;->getInstance()Lcom/yftech/settings/manager/WlanManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/settings/manager/WlanManager;->deInit()V

    .line 130
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    return-void
.end method

.method public removeActivity(Landroid/app/Activity;)V
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/yftech/settings/SettingsApp;->mActivityList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
