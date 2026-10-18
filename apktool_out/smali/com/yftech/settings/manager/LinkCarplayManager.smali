.class public Lcom/yftech/settings/manager/LinkCarplayManager;
.super Ljava/lang/Object;
.source "LinkCarplayManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/settings/manager/LinkCarplayManager$LinkCarplayListener;
    }
.end annotation


# static fields
.field public static final CARPLAY_UUID:Ljava/lang/String; = "2D8D2466E14D451C88BC7301ABEA291A"

.field private static final TAG:Ljava/lang/String; = "LinkCarplayManager"

.field private static sLinkCarplayManager:Lcom/yftech/settings/manager/LinkCarplayManager;


# instance fields
.field private mCarPhoneLinkCallback:Lcom/yftech/car/phonelink/CarPhoneLinkManager$CarPhoneLinkCallback;

.field private mLinkCarplayListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/settings/manager/LinkCarplayManager$LinkCarplayListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/settings/manager/LinkCarplayManager;->mLinkCarplayListeners:Ljava/util/List;

    .line 29
    new-instance v0, Lcom/yftech/settings/manager/LinkCarplayManager$1;

    invoke-direct {v0, p0}, Lcom/yftech/settings/manager/LinkCarplayManager$1;-><init>(Lcom/yftech/settings/manager/LinkCarplayManager;)V

    iput-object v0, p0, Lcom/yftech/settings/manager/LinkCarplayManager;->mCarPhoneLinkCallback:Lcom/yftech/car/phonelink/CarPhoneLinkManager$CarPhoneLinkCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/settings/manager/LinkCarplayManager;)Ljava/util/List;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/yftech/settings/manager/LinkCarplayManager;->mLinkCarplayListeners:Ljava/util/List;

    return-object p0
.end method

.method public static declared-synchronized getInstance()Lcom/yftech/settings/manager/LinkCarplayManager;
    .locals 2

    const-class v0, Lcom/yftech/settings/manager/LinkCarplayManager;

    monitor-enter v0

    .line 52
    :try_start_0
    sget-object v1, Lcom/yftech/settings/manager/LinkCarplayManager;->sLinkCarplayManager:Lcom/yftech/settings/manager/LinkCarplayManager;

    if-nez v1, :cond_0

    .line 53
    new-instance v1, Lcom/yftech/settings/manager/LinkCarplayManager;

    invoke-direct {v1}, Lcom/yftech/settings/manager/LinkCarplayManager;-><init>()V

    sput-object v1, Lcom/yftech/settings/manager/LinkCarplayManager;->sLinkCarplayManager:Lcom/yftech/settings/manager/LinkCarplayManager;

    .line 55
    :cond_0
    sget-object v1, Lcom/yftech/settings/manager/LinkCarplayManager;->sLinkCarplayManager:Lcom/yftech/settings/manager/LinkCarplayManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 51
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public addLinkCarplayListener(Lcom/yftech/settings/manager/LinkCarplayManager$LinkCarplayListener;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/yftech/settings/manager/LinkCarplayManager;->mLinkCarplayListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    iget-object p0, p0, Lcom/yftech/settings/manager/LinkCarplayManager;->mLinkCarplayListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public connect(Lcom/yftech/car/phonelink/CarLinkDevice;)V
    .locals 2

    const-string p0, "LinkCarplayManager"

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connect() carLinkDevice:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yftech/car/phonelink/CarLinkDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-static {}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->getInstance()Lcom/yftech/car/phonelink/CarPhoneLinkManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->connectCarLinkDevice(Lcom/yftech/car/phonelink/CarLinkDevice;)V

    return-void
.end method

.method public deInit()V
    .locals 2

    const-string v0, "LinkCarplayManager"

    const-string v1, "deInit()"

    .line 64
    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->getInstance()Lcom/yftech/car/phonelink/CarPhoneLinkManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/settings/manager/LinkCarplayManager;->mCarPhoneLinkCallback:Lcom/yftech/car/phonelink/CarPhoneLinkManager$CarPhoneLinkCallback;

    invoke-virtual {v0, p0}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->unregisterCarPhoneLinkCallback(Lcom/yftech/car/phonelink/CarPhoneLinkManager$CarPhoneLinkCallback;)V

    return-void
.end method

.method public disconnect(Lcom/yftech/car/phonelink/CarLinkDevice;)V
    .locals 2

    const-string p0, "LinkCarplayManager"

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disconnect() carLinkDevice:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yftech/car/phonelink/CarLinkDevice;->getDeviceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-static {}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->getInstance()Lcom/yftech/car/phonelink/CarPhoneLinkManager;

    move-result-object p0

    const-string p1, "carplay"

    invoke-virtual {p0, p1}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->disConnect(Ljava/lang/String;)V

    return-void
.end method

.method public forget(Lcom/yftech/car/phonelink/CarLinkDevice;)V
    .locals 2

    const-string p0, "LinkCarplayManager"

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "forget() carLinkDevice:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yftech/car/phonelink/CarLinkDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-static {}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->getInstance()Lcom/yftech/car/phonelink/CarPhoneLinkManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->forgetCarLinkDevice(Lcom/yftech/car/phonelink/CarLinkDevice;)V

    return-void
.end method

.method public getAvailableCarLinkDeviceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yftech/car/phonelink/CarLinkDevice;",
            ">;"
        }
    .end annotation

    .line 124
    invoke-static {}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->getInstance()Lcom/yftech/car/phonelink/CarPhoneLinkManager;

    move-result-object p0

    const-string v0, "carplay"

    invoke-virtual {p0, v0}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->getAvailableCarLinkDeviceList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getCarLinkDeviceList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yftech/car/phonelink/CarLinkDevice;",
            ">;"
        }
    .end annotation

    .line 81
    invoke-static {}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->getInstance()Lcom/yftech/car/phonelink/CarPhoneLinkManager;

    move-result-object p0

    const-string v0, "carplay"

    invoke-virtual {p0, v0}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->getCarLinkDeviceList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    const-string v0, "LinkCarplayManager"

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCarLinkDeviceList() size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/phonelink/CarLinkDevice;

    const-string v2, "LinkCarplayManager"

    .line 84
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCarLinkDeviceList() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/yftech/car/phonelink/CarLinkDevice;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public init()V
    .locals 3

    const-string v0, "LinkCarplayManager"

    const-string v1, "init()"

    .line 59
    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-static {}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->getInstance()Lcom/yftech/car/phonelink/CarPhoneLinkManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/settings/manager/LinkCarplayManager;->mCarPhoneLinkCallback:Lcom/yftech/car/phonelink/CarPhoneLinkManager$CarPhoneLinkCallback;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p0, v1}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->registerCarPhoneLinkCallback(Lcom/yftech/car/phonelink/CarPhoneLinkManager$CarPhoneLinkCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public isCarplayPresent()Z
    .locals 0

    .line 128
    invoke-static {}, Lcom/yftech/vehicle/sdk/HostConfig;->isCarplayPresent()Z

    move-result p0

    return p0
.end method

.method public isSupportWirelessCarplay()Z
    .locals 1

    const-string p0, "persist.carplay.support.wireless"

    const/4 v0, 0x1

    .line 121
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeLinkCarplayListener(Lcom/yftech/settings/manager/LinkCarplayManager$LinkCarplayListener;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/yftech/settings/manager/LinkCarplayManager;->mLinkCarplayListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object p0, p0, Lcom/yftech/settings/manager/LinkCarplayManager;->mLinkCarplayListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public startDiscover()V
    .locals 3

    .line 105
    invoke-static {}, Lcom/autochips/carplay/CarplayManager;->getDefaultManager()Lcom/autochips/carplay/CarplayManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/autochips/carplay/CarplayManager;->startDiscover()I

    move-result p0

    const-string v0, "LinkCarplayManager"

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDiscover() ret:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public stopDiscover()V
    .locals 3

    .line 113
    invoke-static {}, Lcom/autochips/carplay/CarplayManager;->getDefaultManager()Lcom/autochips/carplay/CarplayManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/autochips/carplay/CarplayManager;->stopDiscover()I

    move-result p0

    const-string v0, "LinkCarplayManager"

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopDiscover() ret:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
