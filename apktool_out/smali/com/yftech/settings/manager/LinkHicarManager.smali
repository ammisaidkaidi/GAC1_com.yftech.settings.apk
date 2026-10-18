.class public Lcom/yftech/settings/manager/LinkHicarManager;
.super Ljava/lang/Object;
.source "LinkHicarManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/settings/manager/LinkHicarManager$LinkHicarListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LinkHicarManager"

.field private static sLinkHicarManager:Lcom/yftech/settings/manager/LinkHicarManager;


# instance fields
.field private mCarPhoneLinkCallback:Lcom/yftech/car/phonelink/CarPhoneLinkManager$CarPhoneLinkCallback;

.field private final mLinkHicarListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/settings/manager/LinkHicarManager$LinkHicarListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/settings/manager/LinkHicarManager;->mLinkHicarListeners:Ljava/util/List;

    .line 26
    new-instance v0, Lcom/yftech/settings/manager/LinkHicarManager$1;

    invoke-direct {v0, p0}, Lcom/yftech/settings/manager/LinkHicarManager$1;-><init>(Lcom/yftech/settings/manager/LinkHicarManager;)V

    iput-object v0, p0, Lcom/yftech/settings/manager/LinkHicarManager;->mCarPhoneLinkCallback:Lcom/yftech/car/phonelink/CarPhoneLinkManager$CarPhoneLinkCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/settings/manager/LinkHicarManager;)Ljava/util/List;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/yftech/settings/manager/LinkHicarManager;->mLinkHicarListeners:Ljava/util/List;

    return-object p0
.end method

.method public static declared-synchronized getInstance()Lcom/yftech/settings/manager/LinkHicarManager;
    .locals 2

    const-class v0, Lcom/yftech/settings/manager/LinkHicarManager;

    monitor-enter v0

    .line 47
    :try_start_0
    sget-object v1, Lcom/yftech/settings/manager/LinkHicarManager;->sLinkHicarManager:Lcom/yftech/settings/manager/LinkHicarManager;

    if-nez v1, :cond_0

    .line 48
    new-instance v1, Lcom/yftech/settings/manager/LinkHicarManager;

    invoke-direct {v1}, Lcom/yftech/settings/manager/LinkHicarManager;-><init>()V

    sput-object v1, Lcom/yftech/settings/manager/LinkHicarManager;->sLinkHicarManager:Lcom/yftech/settings/manager/LinkHicarManager;

    .line 50
    :cond_0
    sget-object v1, Lcom/yftech/settings/manager/LinkHicarManager;->sLinkHicarManager:Lcom/yftech/settings/manager/LinkHicarManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 46
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public addLinkHicarListener(Lcom/yftech/settings/manager/LinkHicarManager$LinkHicarListener;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/yftech/settings/manager/LinkHicarManager;->mLinkHicarListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    iget-object p0, p0, Lcom/yftech/settings/manager/LinkHicarManager;->mLinkHicarListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public connect(Lcom/yftech/car/phonelink/CarLinkDevice;)V
    .locals 2

    const-string p0, "LinkHicarManager"

    .line 85
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

    .line 86
    invoke-static {}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->getInstance()Lcom/yftech/car/phonelink/CarPhoneLinkManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->connectCarLinkDevice(Lcom/yftech/car/phonelink/CarLinkDevice;)V

    return-void
.end method

.method public deInit()V
    .locals 2

    const-string v0, "LinkHicarManager"

    const-string v1, "deInit()"

    .line 59
    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-static {}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->getInstance()Lcom/yftech/car/phonelink/CarPhoneLinkManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/settings/manager/LinkHicarManager;->mCarPhoneLinkCallback:Lcom/yftech/car/phonelink/CarPhoneLinkManager$CarPhoneLinkCallback;

    invoke-virtual {v0, p0}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->unregisterCarPhoneLinkCallback(Lcom/yftech/car/phonelink/CarPhoneLinkManager$CarPhoneLinkCallback;)V

    return-void
.end method

.method public disconnect(Lcom/yftech/car/phonelink/CarLinkDevice;)V
    .locals 2

    const-string p0, "LinkHicarManager"

    .line 90
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

    .line 91
    invoke-static {}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->getInstance()Lcom/yftech/car/phonelink/CarPhoneLinkManager;

    move-result-object p0

    const-string p1, "hicar"

    invoke-virtual {p0, p1}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->disConnect(Ljava/lang/String;)V

    return-void
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

    .line 76
    invoke-static {}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->getInstance()Lcom/yftech/car/phonelink/CarPhoneLinkManager;

    move-result-object p0

    const-string v0, "hicar"

    invoke-virtual {p0, v0}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->getCarLinkDeviceList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    const-string v0, "LinkHicarManager"

    .line 77
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

    .line 78
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/phonelink/CarLinkDevice;

    const-string v2, "LinkHicarManager"

    .line 79
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

.method public ignore(Lcom/yftech/car/phonelink/CarLinkDevice;)V
    .locals 2

    const-string p0, "LinkHicarManager"

    .line 95
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

    .line 96
    invoke-static {}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->getInstance()Lcom/yftech/car/phonelink/CarPhoneLinkManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->forgetCarLinkDevice(Lcom/yftech/car/phonelink/CarLinkDevice;)V

    return-void
.end method

.method public init()V
    .locals 3

    const-string v0, "LinkHicarManager"

    const-string v1, "init()"

    .line 54
    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-static {}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->getInstance()Lcom/yftech/car/phonelink/CarPhoneLinkManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/settings/manager/LinkHicarManager;->mCarPhoneLinkCallback:Lcom/yftech/car/phonelink/CarPhoneLinkManager$CarPhoneLinkCallback;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p0, v1}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->registerCarPhoneLinkCallback(Lcom/yftech/car/phonelink/CarPhoneLinkManager$CarPhoneLinkCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public isConnected()Z
    .locals 1

    const-string p0, "hicar"

    .line 100
    invoke-static {}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->getInstance()Lcom/yftech/car/phonelink/CarPhoneLinkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->getConnectedLinkStatus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isHicarPresent()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public removeHicarWhenRemoveBluetooth(Ljava/lang/String;)V
    .locals 3

    .line 110
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "LinkHicarManager"

    const-string p1, "removeHicarWhenRemoveBluetooth() address is empty"

    .line 111
    invoke-static {p0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "LinkHicarManager"

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeHicarWhenRemoveBluetooth() address:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/yftech/settings/manager/LinkHicarManager;->getCarLinkDeviceList()Ljava/util/List;

    move-result-object v0

    .line 116
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/phonelink/CarLinkDevice;

    .line 117
    invoke-virtual {v1}, Lcom/yftech/car/phonelink/CarLinkDevice;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 118
    invoke-virtual {p0, v1}, Lcom/yftech/settings/manager/LinkHicarManager;->ignore(Lcom/yftech/car/phonelink/CarLinkDevice;)V

    :cond_2
    return-void
.end method

.method public removeLinkHicarListener(Lcom/yftech/settings/manager/LinkHicarManager$LinkHicarListener;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/yftech/settings/manager/LinkHicarManager;->mLinkHicarListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object p0, p0, Lcom/yftech/settings/manager/LinkHicarManager;->mLinkHicarListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public requestNewConnect()V
    .locals 3

    .line 125
    invoke-static {}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->getInstance()Lcom/yftech/car/phonelink/CarPhoneLinkManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->requestNewConnect()Z

    move-result p0

    const-string v0, "LinkHicarManager"

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestNewConnect() result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
