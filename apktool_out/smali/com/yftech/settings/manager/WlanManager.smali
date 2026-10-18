.class public Lcom/yftech/settings/manager/WlanManager;
.super Ljava/lang/Object;
.source "WlanManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/settings/manager/WlanManager$WlanReceiver;,
        Lcom/yftech/settings/manager/WlanManager$WlanListener;
    }
.end annotation


# static fields
.field private static final OPEN_AP_DIALOG_CLICK_CANCEL:I = 0x0

.field private static final OPEN_AP_DIALOG_CLICK_OPEN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WlanManager"

.field private static sWlanManager:Lcom/yftech/settings/manager/WlanManager;


# instance fields
.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mIsConfig:Z

.field private mMainHandler:Landroid/os/Handler;

.field private mOnStartTetheringCallback:Landroid/net/ConnectivityManager$OnStartTetheringCallback;

.field private mOpenApDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWlanListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/settings/manager/WlanManager$WlanListener;",
            ">;"
        }
    .end annotation
.end field

.field private mWlanReceiver:Lcom/yftech/settings/manager/WlanManager$WlanReceiver;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/settings/manager/WlanManager;->mWlanListeners:Ljava/util/List;

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yftech/settings/manager/WlanManager;->mMainHandler:Landroid/os/Handler;

    .line 43
    new-instance v0, Lcom/yftech/settings/manager/WlanManager$1;

    invoke-direct {v0, p0}, Lcom/yftech/settings/manager/WlanManager$1;-><init>(Lcom/yftech/settings/manager/WlanManager;)V

    iput-object v0, p0, Lcom/yftech/settings/manager/WlanManager;->mOnStartTetheringCallback:Landroid/net/ConnectivityManager$OnStartTetheringCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/settings/manager/WlanManager;)Ljava/util/List;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/yftech/settings/manager/WlanManager;->mWlanListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/yftech/settings/manager/WlanManager;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/yftech/settings/manager/WlanManager;->notifyOnWifiEnabledStateChanged(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/yftech/settings/manager/WlanManager;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/yftech/settings/manager/WlanManager;->notifyOnApEnabledStateChanged(I)V

    return-void
.end method

.method static synthetic access$302(Lcom/yftech/settings/manager/WlanManager;Lcom/yftech/settings/widget/dialog/CommonDialog;)Lcom/yftech/settings/widget/dialog/CommonDialog;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/yftech/settings/manager/WlanManager;->mOpenApDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    return-object p1
.end method

.method static synthetic access$400(Lcom/yftech/settings/manager/WlanManager;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/yftech/settings/manager/WlanManager;->sendBroadcastOpenApDialogClick(I)V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/yftech/settings/manager/WlanManager;
    .locals 2

    const-class v0, Lcom/yftech/settings/manager/WlanManager;

    monitor-enter v0

    .line 57
    :try_start_0
    sget-object v1, Lcom/yftech/settings/manager/WlanManager;->sWlanManager:Lcom/yftech/settings/manager/WlanManager;

    if-nez v1, :cond_0

    .line 58
    new-instance v1, Lcom/yftech/settings/manager/WlanManager;

    invoke-direct {v1}, Lcom/yftech/settings/manager/WlanManager;-><init>()V

    sput-object v1, Lcom/yftech/settings/manager/WlanManager;->sWlanManager:Lcom/yftech/settings/manager/WlanManager;

    .line 60
    :cond_0
    sget-object v1, Lcom/yftech/settings/manager/WlanManager;->sWlanManager:Lcom/yftech/settings/manager/WlanManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 56
    monitor-exit v0

    throw v1
.end method

.method private notifyOnApEnabledStateChanged(I)V
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/yftech/settings/manager/WlanManager;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/yftech/settings/manager/WlanManager$3;

    invoke-direct {v1, p0, p1}, Lcom/yftech/settings/manager/WlanManager$3;-><init>(Lcom/yftech/settings/manager/WlanManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private notifyOnWifiEnabledStateChanged(I)V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/yftech/settings/manager/WlanManager;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/yftech/settings/manager/WlanManager$2;

    invoke-direct {v1, p0, p1}, Lcom/yftech/settings/manager/WlanManager$2;-><init>(Lcom/yftech/settings/manager/WlanManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private sendBroadcastOpenApDialogClick(I)V
    .locals 3

    const-string v0, "WlanManager"

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendBroadcastOpenApDialogClick() click:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.yftech.intent.action.ap.dialog.click"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "click"

    .line 263
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "com.yftech.transfer.service"

    .line 264
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    iget-object p0, p0, Lcom/yftech/settings/manager/WlanManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public addWlanListener(Lcom/yftech/settings/manager/WlanManager$WlanListener;)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/yftech/settings/manager/WlanManager;->mWlanListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object p0, p0, Lcom/yftech/settings/manager/WlanManager;->mWlanListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public deInit()V
    .locals 3

    const-string v0, "WlanManager"

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deInit() isConfig:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/yftech/settings/manager/WlanManager;->mIsConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/yftech/settings/manager/WlanManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/yftech/settings/manager/WlanManager;->mWlanReceiver:Lcom/yftech/settings/manager/WlanManager$WlanReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    .line 68
    iput-object p1, p0, Lcom/yftech/settings/manager/WlanManager;->mContext:Landroid/content/Context;

    .line 70
    invoke-static {}, Lcom/yftech/settings/utils/Utils;->isCarPlayCertificate()Z

    move-result p1

    iput-boolean p1, p0, Lcom/yftech/settings/manager/WlanManager;->mIsConfig:Z

    const-string p1, "WlanManager"

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init() isConfig:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/yftech/settings/manager/WlanManager;->mIsConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object p1, p0, Lcom/yftech/settings/manager/WlanManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/yftech/settings/manager/WlanManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 74
    iget-object p1, p0, Lcom/yftech/settings/manager/WlanManager;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/yftech/settings/manager/WlanManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 75
    new-instance p1, Lcom/yftech/settings/manager/WlanManager$WlanReceiver;

    invoke-direct {p1, p0}, Lcom/yftech/settings/manager/WlanManager$WlanReceiver;-><init>(Lcom/yftech/settings/manager/WlanManager;)V

    iput-object p1, p0, Lcom/yftech/settings/manager/WlanManager;->mWlanReceiver:Lcom/yftech/settings/manager/WlanManager$WlanReceiver;

    .line 76
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 77
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 78
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/yftech/settings/manager/WlanManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/yftech/settings/manager/WlanManager;->mWlanReceiver:Lcom/yftech/settings/manager/WlanManager$WlanReceiver;

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public isApEnable()Z
    .locals 3

    .line 145
    iget-object v0, p0, Lcom/yftech/settings/manager/WlanManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    const-string p0, "WlanManager"

    const-string v0, "isApEnable() WifiManager is null"

    .line 146
    invoke-static {p0, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 149
    :cond_0
    iget-object p0, p0, Lcom/yftech/settings/manager/WlanManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result p0

    const-string v0, "WlanManager"

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isApEnable() isEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public isConfig()Z
    .locals 0

    .line 178
    iget-boolean p0, p0, Lcom/yftech/settings/manager/WlanManager;->mIsConfig:Z

    return p0
.end method

.method public isWifiEnable()Z
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/yftech/settings/manager/WlanManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    const-string p0, "WlanManager"

    const-string v0, "isWifiEnable() WifiManager is null"

    .line 119
    invoke-static {p0, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 122
    :cond_0
    iget-object p0, p0, Lcom/yftech/settings/manager/WlanManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p0

    const-string v0, "WlanManager"

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isWifiEnable() isEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public removeWlanListener(Lcom/yftech/settings/manager/WlanManager$WlanListener;)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/yftech/settings/manager/WlanManager;->mWlanListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object p0, p0, Lcom/yftech/settings/manager/WlanManager;->mWlanListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setApEnable(Z)Z
    .locals 4

    .line 159
    iget-object v0, p0, Lcom/yftech/settings/manager/WlanManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "WlanManager"

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setApEnable() ConnectivityManager is null. isEnabled:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    const-string v0, "WlanManager"

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setApEnable() isEnabled:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 165
    iget-object p1, p0, Lcom/yftech/settings/manager/WlanManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object p0, p0, Lcom/yftech/settings/manager/WlanManager;->mOnStartTetheringCallback:Landroid/net/ConnectivityManager$OnStartTetheringCallback;

    new-instance v2, Landroid/os/Handler;

    .line 166
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 165
    invoke-virtual {p1, v1, v0, p0, v2}, Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;Landroid/os/Handler;)V

    goto :goto_0

    .line 168
    :cond_1
    iget-object p0, p0, Lcom/yftech/settings/manager/WlanManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v1}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    :goto_0
    return v0
.end method

.method public setWifiEnable(Z)V
    .locals 3

    .line 132
    iget-object v0, p0, Lcom/yftech/settings/manager/WlanManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    const-string p0, "WlanManager"

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWifiEnable() WifiManager is null. isEnabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 136
    :cond_0
    iget-object p0, p0, Lcom/yftech/settings/manager/WlanManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result p0

    const-string v0, "WlanManager"

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWifiEnable() isEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " result:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showOpenApDialog()V
    .locals 5

    const-string v0, "WlanManager"

    const-string v1, "showOpenApDialog()"

    .line 220
    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/yftech/settings/manager/WlanManager;->mOpenApDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/settings/manager/WlanManager;->mOpenApDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    invoke-virtual {v0}, Lcom/yftech/settings/widget/dialog/CommonDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "WlanManager"

    const-string v0, "showOpenApDialog() isShowing"

    .line 222
    invoke-static {p0, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/yftech/settings/manager/WlanManager;->mOpenApDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    if-nez v0, :cond_1

    .line 226
    new-instance v0, Lcom/yftech/settings/widget/dialog/CommonDialog;

    iget-object v1, p0, Lcom/yftech/settings/manager/WlanManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yftech/settings/widget/dialog/CommonDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yftech/settings/manager/WlanManager;->mOpenApDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/yftech/settings/manager/WlanManager;->mOpenApDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    invoke-virtual {v0}, Lcom/yftech/settings/widget/dialog/CommonDialog;->show()V

    .line 229
    iget-object v0, p0, Lcom/yftech/settings/manager/WlanManager;->mOpenApDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    new-instance v1, Lcom/yftech/settings/manager/WlanManager$4;

    invoke-direct {v1, p0}, Lcom/yftech/settings/manager/WlanManager$4;-><init>(Lcom/yftech/settings/manager/WlanManager;)V

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/dialog/CommonDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 235
    iget-object v0, p0, Lcom/yftech/settings/manager/WlanManager;->mOpenApDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    new-instance v1, Lcom/yftech/settings/manager/WlanManager$5;

    invoke-direct {v1, p0}, Lcom/yftech/settings/manager/WlanManager$5;-><init>(Lcom/yftech/settings/manager/WlanManager;)V

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/dialog/CommonDialog;->setOnBtnClickListener(Lcom/yftech/settings/widget/dialog/CommonDialog$OnBtnClickListener;)Lcom/yftech/settings/widget/dialog/CommonDialog;

    .line 256
    iget-object v0, p0, Lcom/yftech/settings/manager/WlanManager;->mOpenApDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    iget-object v1, p0, Lcom/yftech/settings/manager/WlanManager;->mContext:Landroid/content/Context;

    const v2, 0x7f0d00e8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/dialog/CommonDialog;->setContent(Ljava/lang/String;)Lcom/yftech/settings/widget/dialog/CommonDialog;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/yftech/settings/manager/WlanManager;->mContext:Landroid/content/Context;

    const v4, 0x7f0d00e4

    .line 257
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object p0, p0, Lcom/yftech/settings/manager/WlanManager;->mContext:Landroid/content/Context;

    const v3, 0x7f0d00e3

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/dialog/CommonDialog;->setButtonText([Ljava/lang/String;)Lcom/yftech/settings/widget/dialog/CommonDialog;

    return-void
.end method
