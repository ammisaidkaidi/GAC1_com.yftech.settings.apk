.class public Lcom/yftech/settings/manager/BluetoothManager;
.super Ljava/lang/Object;
.source "BluetoothManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/settings/manager/BluetoothManager$LoadDataHandlerCallback;,
        Lcom/yftech/settings/manager/BluetoothManager$CarBluetoothListener;
    }
.end annotation


# static fields
.field public static final BLUETOOTH_PAIR_MAX:I = 0x9

.field private static final LOAD_DATA_DEVICE_ITEM_STATE:I = 0x2

.field private static final LOAD_DATA_PAIRED_DEVICES:I = 0x0

.field private static final LOAD_DATA_UNPAIRED_DEVICES:I = 0x1

.field private static final TAG:Ljava/lang/String; = "YF_BT_BluetoothManager"

.field private static final UPDATE_PAIRED_DEVICES:I = 0x0

.field private static final UPDATE_UNPAIRED_DEVICES:I = 0x1

.field private static sBluetoothManager:Lcom/yftech/settings/manager/BluetoothManager;


# instance fields
.field private mBondState:I

.field private final mBtHandler:Landroid/os/Handler;

.field private mCarBluetoothContactsCallback:Lcom/yftech/car/bluetooth/callback/CarBluetoothContactsCallback;

.field private mCarBluetoothListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/settings/manager/BluetoothManager$CarBluetoothListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCarBluetoothMusicCallback:Lcom/yftech/car/bluetooth/callback/CarBluetoothMusicCallback;

.field private mCarBluetoothPhoneCallback:Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;

.field private mCarBluetoothSettingsCallback:Lcom/yftech/car/bluetooth/callback/CarBluetoothSettingsCallback;

.field private mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

.field private mContext:Landroid/content/Context;

.field private mDeviceItemStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/yftech/settings/connect/model/BtDeviceItemState;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIgnoreBtDevice:Lcom/yftech/settings/connect/model/BtDevice;

.field private mMainHandler:Landroid/os/Handler;

.field private mPariedBtDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/settings/connect/model/BtDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 55
    iput v0, p0, Lcom/yftech/settings/manager/BluetoothManager;->mBondState:I

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yftech/settings/manager/BluetoothManager;->mBtHandler:Landroid/os/Handler;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/settings/manager/BluetoothManager;->mCarBluetoothListeners:Ljava/util/List;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/settings/manager/BluetoothManager;->mPariedBtDevices:Ljava/util/List;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yftech/settings/manager/BluetoothManager;->mDeviceItemStateMap:Ljava/util/Map;

    .line 76
    new-instance v0, Lcom/yftech/settings/manager/BluetoothManager$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/yftech/settings/manager/BluetoothManager$1;-><init>(Lcom/yftech/settings/manager/BluetoothManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yftech/settings/manager/BluetoothManager;->mMainHandler:Landroid/os/Handler;

    .line 96
    new-instance v0, Lcom/yftech/settings/manager/BluetoothManager$2;

    invoke-direct {v0, p0}, Lcom/yftech/settings/manager/BluetoothManager$2;-><init>(Lcom/yftech/settings/manager/BluetoothManager;)V

    iput-object v0, p0, Lcom/yftech/settings/manager/BluetoothManager;->mCarBluetoothPhoneCallback:Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;

    .line 105
    new-instance v0, Lcom/yftech/settings/manager/BluetoothManager$3;

    invoke-direct {v0, p0}, Lcom/yftech/settings/manager/BluetoothManager$3;-><init>(Lcom/yftech/settings/manager/BluetoothManager;)V

    iput-object v0, p0, Lcom/yftech/settings/manager/BluetoothManager;->mCarBluetoothMusicCallback:Lcom/yftech/car/bluetooth/callback/CarBluetoothMusicCallback;

    .line 119
    new-instance v0, Lcom/yftech/settings/manager/BluetoothManager$4;

    invoke-direct {v0, p0}, Lcom/yftech/settings/manager/BluetoothManager$4;-><init>(Lcom/yftech/settings/manager/BluetoothManager;)V

    iput-object v0, p0, Lcom/yftech/settings/manager/BluetoothManager;->mCarBluetoothSettingsCallback:Lcom/yftech/car/bluetooth/callback/CarBluetoothSettingsCallback;

    .line 210
    new-instance v0, Lcom/yftech/settings/manager/BluetoothManager$5;

    invoke-direct {v0, p0}, Lcom/yftech/settings/manager/BluetoothManager$5;-><init>(Lcom/yftech/settings/manager/BluetoothManager;)V

    iput-object v0, p0, Lcom/yftech/settings/manager/BluetoothManager;->mCarBluetoothContactsCallback:Lcom/yftech/car/bluetooth/callback/CarBluetoothContactsCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/settings/manager/BluetoothManager;)Ljava/util/List;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/yftech/settings/manager/BluetoothManager;->mCarBluetoothListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/yftech/settings/manager/BluetoothManager;ILandroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/yftech/settings/manager/BluetoothManager;->updateState(ILandroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/yftech/settings/manager/BluetoothManager;)Landroid/os/Handler;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/yftech/settings/manager/BluetoothManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$302(Lcom/yftech/settings/manager/BluetoothManager;I)I
    .locals 0

    .line 40
    iput p1, p0, Lcom/yftech/settings/manager/BluetoothManager;->mBondState:I

    return p1
.end method

.method static synthetic access$400(Lcom/yftech/settings/manager/BluetoothManager;)Lcom/yftech/settings/connect/model/BtDevice;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/yftech/settings/manager/BluetoothManager;->mIgnoreBtDevice:Lcom/yftech/settings/connect/model/BtDevice;

    return-object p0
.end method

.method static synthetic access$402(Lcom/yftech/settings/manager/BluetoothManager;Lcom/yftech/settings/connect/model/BtDevice;)Lcom/yftech/settings/connect/model/BtDevice;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/yftech/settings/manager/BluetoothManager;->mIgnoreBtDevice:Lcom/yftech/settings/connect/model/BtDevice;

    return-object p1
.end method

.method static synthetic access$602(Lcom/yftech/settings/manager/BluetoothManager;Lcom/yftech/settings/widget/dialog/CommonDialog;)Lcom/yftech/settings/widget/dialog/CommonDialog;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/yftech/settings/manager/BluetoothManager;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    return-object p1
.end method

.method static synthetic access$700(Lcom/yftech/settings/manager/BluetoothManager;Ljava/util/List;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/yftech/settings/manager/BluetoothManager;->updatePairedDevices(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$800(Lcom/yftech/settings/manager/BluetoothManager;)Landroid/os/Handler;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/yftech/settings/manager/BluetoothManager;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$900(Lcom/yftech/settings/manager/BluetoothManager;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/yftech/settings/manager/BluetoothManager;->loadDeviceItemState()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/yftech/settings/manager/BluetoothManager;
    .locals 2

    const-class v0, Lcom/yftech/settings/manager/BluetoothManager;

    monitor-enter v0

    .line 224
    :try_start_0
    sget-object v1, Lcom/yftech/settings/manager/BluetoothManager;->sBluetoothManager:Lcom/yftech/settings/manager/BluetoothManager;

    if-nez v1, :cond_0

    .line 225
    new-instance v1, Lcom/yftech/settings/manager/BluetoothManager;

    invoke-direct {v1}, Lcom/yftech/settings/manager/BluetoothManager;-><init>()V

    sput-object v1, Lcom/yftech/settings/manager/BluetoothManager;->sBluetoothManager:Lcom/yftech/settings/manager/BluetoothManager;

    .line 227
    :cond_0
    sget-object v1, Lcom/yftech/settings/manager/BluetoothManager;->sBluetoothManager:Lcom/yftech/settings/manager/BluetoothManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 223
    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized loadDeviceItemState()V
    .locals 6

    monitor-enter p0

    .line 483
    :try_start_0
    iget-object v0, p0, Lcom/yftech/settings/manager/BluetoothManager;->mDeviceItemStateMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 484
    iget-object v0, p0, Lcom/yftech/settings/manager/BluetoothManager;->mContext:Landroid/content/Context;

    const-string v1, "carSettings_bt_items"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 485
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    const-string v1, "YF_BT_BluetoothManager"

    .line 486
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadDeviceItemState() size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 488
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 489
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 490
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 491
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "YF_BT_BluetoothManager"

    .line 492
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadDeviceItemState() key:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v3, "device_"

    const-string v4, ""

    .line 494
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 495
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 496
    new-instance v1, Lcom/yftech/settings/connect/model/BtDeviceItemState;

    invoke-direct {v1}, Lcom/yftech/settings/connect/model/BtDeviceItemState;-><init>()V

    .line 497
    invoke-virtual {v1, v2}, Lcom/yftech/settings/connect/model/BtDeviceItemState;->setAddress(Ljava/lang/String;)V

    const-string v4, "detail"

    .line 498
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/yftech/settings/connect/model/BtDeviceItemState;->setDetail(Z)V

    const-string v4, "hfp"

    .line 499
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/yftech/settings/connect/model/BtDeviceItemState;->setHfp(Z)V

    const-string v4, "avrcp"

    .line 500
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/yftech/settings/connect/model/BtDeviceItemState;->setAvrcp(Z)V

    .line 501
    iget-object v3, p0, Lcom/yftech/settings/manager/BluetoothManager;->mDeviceItemStateMap:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 503
    :try_start_2
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 506
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 482
    monitor-exit p0

    throw v0
.end method

.method private showConnectBluetoothDisconnectLinkDialog(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 4

    const-string v0, "YF_BT_BluetoothManager"

    .line 554
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showConnectBluetoothDisconnectLinkDialog() linkType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " profile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    new-instance v0, Lcom/yftech/settings/widget/dialog/CommonDialog;

    iget-object v1, p0, Lcom/yftech/settings/manager/BluetoothManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/yftech/settings/widget/dialog/CommonDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yftech/settings/manager/BluetoothManager;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    .line 556
    iget-object v0, p0, Lcom/yftech/settings/manager/BluetoothManager;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    invoke-virtual {v0}, Lcom/yftech/settings/widget/dialog/CommonDialog;->show()V

    .line 557
    iget-object v0, p0, Lcom/yftech/settings/manager/BluetoothManager;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    new-instance v1, Lcom/yftech/settings/manager/BluetoothManager$6;

    invoke-direct {v1, p0}, Lcom/yftech/settings/manager/BluetoothManager$6;-><init>(Lcom/yftech/settings/manager/BluetoothManager;)V

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/dialog/CommonDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 563
    iget-object v0, p0, Lcom/yftech/settings/manager/BluetoothManager;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    new-instance v1, Lcom/yftech/settings/manager/BluetoothManager$7;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/yftech/settings/manager/BluetoothManager$7;-><init>(Lcom/yftech/settings/manager/BluetoothManager;Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;I)V

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/dialog/CommonDialog;->setOnBtnClickListener(Lcom/yftech/settings/widget/dialog/CommonDialog$OnBtnClickListener;)Lcom/yftech/settings/widget/dialog/CommonDialog;

    const-string p2, ""

    const-string p3, "carlife"

    .line 583
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 584
    iget-object p1, p0, Lcom/yftech/settings/manager/BluetoothManager;->mContext:Landroid/content/Context;

    const p2, 0x7f0d00f0

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p3, "carplay"

    .line 585
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 586
    iget-object p1, p0, Lcom/yftech/settings/manager/BluetoothManager;->mContext:Landroid/content/Context;

    const p2, 0x7f0d00f1

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const-string p3, "hicar"

    .line 587
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 588
    iget-object p1, p0, Lcom/yftech/settings/manager/BluetoothManager;->mContext:Landroid/content/Context;

    const p2, 0x7f0d00f2

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 590
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/yftech/settings/manager/BluetoothManager;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    iget-object p3, p0, Lcom/yftech/settings/manager/BluetoothManager;->mContext:Landroid/content/Context;

    const v0, 0x7f0d00f3

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {p3, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/yftech/settings/widget/dialog/CommonDialog;->setContent(Ljava/lang/String;)Lcom/yftech/settings/widget/dialog/CommonDialog;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/String;

    iget-object p3, p0, Lcom/yftech/settings/manager/BluetoothManager;->mContext:Landroid/content/Context;

    const v0, 0x7f0d00e4

    .line 591
    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v3

    iget-object p0, p0, Lcom/yftech/settings/manager/BluetoothManager;->mContext:Landroid/content/Context;

    const p3, 0x7f0d00e3

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v1

    invoke-virtual {p1, p2}, Lcom/yftech/settings/widget/dialog/CommonDialog;->setButtonText([Ljava/lang/String;)Lcom/yftech/settings/widget/dialog/CommonDialog;

    return-void
.end method

.method private declared-synchronized updatePairedDevices(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 375
    :try_start_0
    iget-object v0, p0, Lcom/yftech/settings/manager/BluetoothManager;->mPariedBtDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_3

    .line 376
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 377
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_3

    .line 378
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    const-string v3, "YF_BT_BluetoothManager"

    .line 379
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatePairedDevices() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    new-instance v3, Lcom/yftech/settings/connect/model/BtDevice;

    invoke-direct {v3}, Lcom/yftech/settings/connect/model/BtDevice;-><init>()V

    .line 381
    invoke-virtual {v3, v2}, Lcom/yftech/settings/connect/model/BtDevice;->setDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 382
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v4

    const/16 v5, 0xb

    invoke-virtual {v4, v2, v5}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getDeviceConnectState(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/yftech/settings/connect/model/BtDevice;->setAvrcpState(I)V

    .line 383
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v4

    const/16 v5, 0x10

    invoke-virtual {v4, v2, v5}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getDeviceConnectState(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/yftech/settings/connect/model/BtDevice;->setHfpState(I)V

    const-string v4, "YF_BT_BluetoothManager"

    .line 384
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updatePairedDevices() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " Hfp:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/yftech/settings/connect/model/BtDevice;->getHfpState()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " Avrcp:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/yftech/settings/connect/model/BtDevice;->getAvrcpState()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object v4, p0, Lcom/yftech/settings/manager/BluetoothManager;->mDeviceItemStateMap:Ljava/util/Map;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yftech/settings/connect/model/BtDeviceItemState;

    if-nez v4, :cond_0

    .line 387
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 388
    new-instance v5, Lcom/yftech/settings/connect/model/BtDeviceItemState;

    invoke-direct {v5}, Lcom/yftech/settings/connect/model/BtDeviceItemState;-><init>()V

    .line 389
    invoke-virtual {v5, v4}, Lcom/yftech/settings/connect/model/BtDeviceItemState;->setAddress(Ljava/lang/String;)V

    .line 390
    invoke-virtual {v5, v1}, Lcom/yftech/settings/connect/model/BtDeviceItemState;->setDetail(Z)V

    .line 391
    invoke-virtual {v5, v1}, Lcom/yftech/settings/connect/model/BtDeviceItemState;->setHfp(Z)V

    .line 392
    invoke-virtual {v5, v1}, Lcom/yftech/settings/connect/model/BtDeviceItemState;->setAvrcp(Z)V

    .line 393
    invoke-virtual {p0, v4, v5}, Lcom/yftech/settings/manager/BluetoothManager;->updateDeviceItemState(Ljava/lang/String;Lcom/yftech/settings/connect/model/BtDeviceItemState;)V

    move-object v4, v5

    .line 395
    :cond_0
    invoke-virtual {v3, v4}, Lcom/yftech/settings/connect/model/BtDevice;->setDeviceItemState(Lcom/yftech/settings/connect/model/BtDeviceItemState;)V

    .line 396
    invoke-virtual {v3}, Lcom/yftech/settings/connect/model/BtDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v3, "YF_BT_BluetoothManager"

    .line 397
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatePairedDevices, but device name is null, ignore:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 400
    :cond_1
    invoke-virtual {v3}, Lcom/yftech/settings/connect/model/BtDevice;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 401
    iget-object v2, p0, Lcom/yftech/settings/manager/BluetoothManager;->mPariedBtDevices:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v2, v4, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 403
    :cond_2
    iget-object v2, p0, Lcom/yftech/settings/manager/BluetoothManager;->mPariedBtDevices:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :cond_3
    const-string p1, "YF_BT_BluetoothManager"

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePairedDevices() size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/settings/manager/BluetoothManager;->mPariedBtDevices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 374
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized updateState(ILandroid/bluetooth/BluetoothDevice;I)V
    .locals 6

    monitor-enter p0

    if-nez p2, :cond_0

    :try_start_0
    const-string p1, "YF_BT_BluetoothManager"

    const-string p2, "updateState() bluetoothDevice is null"

    .line 428
    invoke-static {p1, p2}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 435
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/yftech/settings/manager/BluetoothManager;->mPariedBtDevices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 436
    iget-object v2, p0, Lcom/yftech/settings/manager/BluetoothManager;->mPariedBtDevices:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/settings/connect/model/BtDevice;

    .line 437
    invoke-virtual {v2}, Lcom/yftech/settings/connect/model/BtDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 p2, 0x10

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne p1, p2, :cond_1

    .line 439
    invoke-virtual {v2, p3}, Lcom/yftech/settings/connect/model/BtDevice;->setHfpState(I)V

    const-string p1, "YF_BT_BluetoothManager"

    .line 440
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateState() HEADSET_CLIENT "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/yftech/settings/connect/model/BtDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " state:"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-ne p3, v3, :cond_2

    .line 447
    invoke-virtual {v2}, Lcom/yftech/settings/connect/model/BtDevice;->getDeviceItemState()Lcom/yftech/settings/connect/model/BtDeviceItemState;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 449
    invoke-virtual {p1, v4}, Lcom/yftech/settings/connect/model/BtDeviceItemState;->setHfp(Z)V

    .line 450
    invoke-static {}, Lcom/yftech/settings/manager/BluetoothManager;->getInstance()Lcom/yftech/settings/manager/BluetoothManager;

    move-result-object p2

    invoke-virtual {v2}, Lcom/yftech/settings/connect/model/BtDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p3

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lcom/yftech/settings/manager/BluetoothManager;->updateDeviceItemState(Ljava/lang/String;Lcom/yftech/settings/connect/model/BtDeviceItemState;)V

    goto :goto_1

    :cond_1
    const/16 p2, 0xb

    if-ne p1, p2, :cond_2

    .line 454
    invoke-virtual {v2, p3}, Lcom/yftech/settings/connect/model/BtDevice;->setAvrcpState(I)V

    const-string p1, "YF_BT_BluetoothManager"

    .line 455
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateState() A2DP_SINK "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/yftech/settings/connect/model/BtDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " state:"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-ne p3, v3, :cond_2

    .line 462
    invoke-virtual {v2}, Lcom/yftech/settings/connect/model/BtDevice;->getDeviceItemState()Lcom/yftech/settings/connect/model/BtDeviceItemState;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 464
    invoke-virtual {p1, v4}, Lcom/yftech/settings/connect/model/BtDeviceItemState;->setAvrcp(Z)V

    .line 465
    invoke-static {}, Lcom/yftech/settings/manager/BluetoothManager;->getInstance()Lcom/yftech/settings/manager/BluetoothManager;

    move-result-object p2

    invoke-virtual {v2}, Lcom/yftech/settings/connect/model/BtDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p3

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lcom/yftech/settings/manager/BluetoothManager;->updateDeviceItemState(Ljava/lang/String;Lcom/yftech/settings/connect/model/BtDeviceItemState;)V

    .line 469
    :cond_2
    :goto_1
    invoke-virtual {v2}, Lcom/yftech/settings/connect/model/BtDevice;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz v1, :cond_3

    .line 470
    iget-object p1, p0, Lcom/yftech/settings/manager/BluetoothManager;->mPariedBtDevices:Ljava/util/List;

    invoke-static {p1, v1, v0}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 472
    :cond_3
    iget-object p1, p0, Lcom/yftech/settings/manager/BluetoothManager;->mCarBluetoothListeners:Ljava/util/List;

    monitor-enter p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 473
    :try_start_2
    iget-object p2, p0, Lcom/yftech/settings/manager/BluetoothManager;->mCarBluetoothListeners:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/yftech/settings/manager/BluetoothManager$CarBluetoothListener;

    .line 474
    invoke-interface {p3}, Lcom/yftech/settings/manager/BluetoothManager$CarBluetoothListener;->onBluetoothPairedListChanged()V

    goto :goto_2

    .line 476
    :cond_4
    monitor-exit p1

    goto :goto_3

    :catchall_1
    move-exception p2

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 480
    :cond_6
    :goto_3
    monitor-exit p0

    return-void

    .line 426
    :goto_4
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public addCarBluetoothListener(Lcom/yftech/settings/manager/BluetoothManager$CarBluetoothListener;)V
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/yftech/settings/manager/BluetoothManager;->mCarBluetoothListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    iget-object p0, p0, Lcom/yftech/settings/manager/BluetoothManager;->mCarBluetoothListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 4

    .line 317
    invoke-static {}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->getInstance()Lcom/yftech/car/phonelink/CarPhoneLinkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->getConnectedLinkStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "YF_BT_BluetoothManager"

    .line 318
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connect() connectedLinkStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "carplay"

    .line 320
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/yftech/settings/utils/Utils;->isCarPlayCertificate()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "hicar"

    .line 321
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 322
    :cond_1
    invoke-direct {p0, v0, p1, p2}, Lcom/yftech/settings/manager/BluetoothManager;->showConnectBluetoothDisconnectLinkDialog(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;I)V

    const/4 p0, 0x1

    return p0

    .line 325
    :cond_2
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->requestConnect(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p0

    const-string v0, "YF_BT_BluetoothManager"

    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", profile:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", result:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public connect(Lcom/yftech/settings/connect/model/BtDevice;I)Z
    .locals 0

    if-nez p1, :cond_0

    const-string p0, "YF_BT_BluetoothManager"

    const-string p1, "connect() device is null"

    .line 310
    invoke-static {p0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 313
    :cond_0
    invoke-virtual {p1}, Lcom/yftech/settings/connect/model/BtDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/yftech/settings/manager/BluetoothManager;->connect(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p0

    return p0
.end method

.method public deInit()V
    .locals 2

    const-string v0, "YF_BT_BluetoothManager"

    const-string v1, "deInit()"

    .line 248
    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/settings/manager/BluetoothManager;->mCarBluetoothPhoneCallback:Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->unregisterBluetoothPhoneCallback(Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;)V

    .line 250
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/settings/manager/BluetoothManager;->mCarBluetoothMusicCallback:Lcom/yftech/car/bluetooth/callback/CarBluetoothMusicCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->unregisterBluetoothMusicCallback(Lcom/yftech/car/bluetooth/callback/CarBluetoothMusicCallback;)V

    .line 251
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/settings/manager/BluetoothManager;->mCarBluetoothSettingsCallback:Lcom/yftech/car/bluetooth/callback/CarBluetoothSettingsCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->unregisterBluetoothSettingsCallback(Lcom/yftech/car/bluetooth/callback/CarBluetoothSettingsCallback;)V

    .line 252
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/settings/manager/BluetoothManager;->mCarBluetoothContactsCallback:Lcom/yftech/car/bluetooth/callback/CarBluetoothContactsCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->unregisterBluetoothContactsCallback(Lcom/yftech/car/bluetooth/callback/CarBluetoothContactsCallback;)V

    .line 253
    iget-object p0, p0, Lcom/yftech/settings/manager/BluetoothManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method

.method public disconnect(Lcom/yftech/settings/connect/model/BtDevice;I)Z
    .locals 3

    if-nez p1, :cond_0

    const-string p0, "YF_BT_BluetoothManager"

    const-string p1, "disconnect() device is null"

    .line 333
    invoke-static {p0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 336
    :cond_0
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p0

    invoke-virtual {p1}, Lcom/yftech/settings/connect/model/BtDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->requestDisconnected(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p0

    const-string v0, "YF_BT_BluetoothManager"

    .line 337
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnect() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yftech/settings/connect/model/BtDevice;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", profile:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", result:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public dismissDialog()V
    .locals 1

    .line 617
    iget-object v0, p0, Lcom/yftech/settings/manager/BluetoothManager;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/settings/manager/BluetoothManager;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    invoke-virtual {v0}, Lcom/yftech/settings/widget/dialog/CommonDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 618
    iget-object p0, p0, Lcom/yftech/settings/manager/BluetoothManager;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    invoke-virtual {p0}, Lcom/yftech/settings/widget/dialog/CommonDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public getBluetoothName()Ljava/lang/String;
    .locals 0

    .line 277
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getBluetoothName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getConnectedDevice()Lcom/yftech/settings/connect/model/BtDevice;
    .locals 2

    .line 545
    iget-object p0, p0, Lcom/yftech/settings/manager/BluetoothManager;->mPariedBtDevices:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/settings/connect/model/BtDevice;

    .line 546
    invoke-virtual {v0}, Lcom/yftech/settings/connect/model/BtDevice;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getEnableState()I
    .locals 0

    .line 289
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getEnableState()I

    move-result p0

    return p0
.end method

.method public getPariedDevices()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yftech/settings/connect/model/BtDevice;",
            ">;"
        }
    .end annotation

    .line 269
    iget-object p0, p0, Lcom/yftech/settings/manager/BluetoothManager;->mPariedBtDevices:Ljava/util/List;

    return-object p0
.end method

.method public declared-synchronized getUnpariedDevices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 273
    :try_start_0
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getUnpairedDevices()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public ignore(Lcom/yftech/settings/connect/model/BtDevice;)Z
    .locals 3

    .line 342
    iput-object p1, p0, Lcom/yftech/settings/manager/BluetoothManager;->mIgnoreBtDevice:Lcom/yftech/settings/connect/model/BtDevice;

    if-nez p1, :cond_0

    const-string p0, "YF_BT_BluetoothManager"

    const-string p1, "ignore() device is null"

    .line 344
    invoke-static {p0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 347
    :cond_0
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p0

    invoke-virtual {p1}, Lcom/yftech/settings/connect/model/BtDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->deletePairedDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    const-string v0, "YF_BT_BluetoothManager"

    .line 348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignore() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yftech/settings/connect/model/BtDevice;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    invoke-static {}, Lcom/yftech/settings/manager/LinkHicarManager;->getInstance()Lcom/yftech/settings/manager/LinkHicarManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yftech/settings/connect/model/BtDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/yftech/settings/manager/LinkHicarManager;->removeHicarWhenRemoveBluetooth(Ljava/lang/String;)V

    return p0
.end method

.method public init(Landroid/content/Context;)V
    .locals 3

    const-string v0, "YF_BT_BluetoothManager"

    const-string v1, "init()"

    .line 231
    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iput-object p1, p0, Lcom/yftech/settings/manager/BluetoothManager;->mContext:Landroid/content/Context;

    .line 233
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "LoadBluetoothDataThread"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yftech/settings/manager/BluetoothManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 234
    iget-object p1, p0, Lcom/yftech/settings/manager/BluetoothManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 235
    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/yftech/settings/manager/BluetoothManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/yftech/settings/manager/BluetoothManager$LoadDataHandlerCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/yftech/settings/manager/BluetoothManager$LoadDataHandlerCallback;-><init>(Lcom/yftech/settings/manager/BluetoothManager;Lcom/yftech/settings/manager/BluetoothManager$1;)V

    invoke-direct {p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/yftech/settings/manager/BluetoothManager;->mHandler:Landroid/os/Handler;

    .line 237
    iget-object p1, p0, Lcom/yftech/settings/manager/BluetoothManager;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 238
    iget-object p1, p0, Lcom/yftech/settings/manager/BluetoothManager;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 239
    iget-object p1, p0, Lcom/yftech/settings/manager/BluetoothManager;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 241
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/settings/manager/BluetoothManager;->mCarBluetoothPhoneCallback:Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;

    iget-object v1, p0, Lcom/yftech/settings/manager/BluetoothManager;->mBtHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->registerBluetoothPhoneCallback(Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;Landroid/os/Handler;)V

    .line 242
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/settings/manager/BluetoothManager;->mCarBluetoothMusicCallback:Lcom/yftech/car/bluetooth/callback/CarBluetoothMusicCallback;

    iget-object v1, p0, Lcom/yftech/settings/manager/BluetoothManager;->mBtHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->registerBluetoothMusicCallback(Lcom/yftech/car/bluetooth/callback/CarBluetoothMusicCallback;Landroid/os/Handler;)V

    .line 243
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/settings/manager/BluetoothManager;->mCarBluetoothSettingsCallback:Lcom/yftech/car/bluetooth/callback/CarBluetoothSettingsCallback;

    iget-object v1, p0, Lcom/yftech/settings/manager/BluetoothManager;->mBtHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->registerBluetoothSettingsCallback(Lcom/yftech/car/bluetooth/callback/CarBluetoothSettingsCallback;Landroid/os/Handler;)V

    .line 244
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/settings/manager/BluetoothManager;->mCarBluetoothContactsCallback:Lcom/yftech/car/bluetooth/callback/CarBluetoothContactsCallback;

    iget-object p0, p0, Lcom/yftech/settings/manager/BluetoothManager;->mBtHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, p0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->registerBluetoothContactsCallback(Lcom/yftech/car/bluetooth/callback/CarBluetoothContactsCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public isAutoConnectEnable()Z
    .locals 0

    .line 281
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->isAutoConnectEnable()Z

    move-result p0

    return p0
.end method

.method public isAutoDownloadContactsEnable()Z
    .locals 0

    .line 285
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->isAutoDownloadContactsEnable()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->isAutoDownloadCallLogEnable()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isScanning()Z
    .locals 0

    .line 293
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->isScanning()Z

    move-result p0

    return p0
.end method

.method public isSupportCarplay(Lcom/yftech/settings/connect/model/BtDevice;)Z
    .locals 6

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    .line 597
    :try_start_0
    invoke-virtual {p1}, Lcom/yftech/settings/connect/model/BtDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 598
    invoke-virtual {p1}, Lcom/yftech/settings/connect/model/BtDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    const-string v0, "YF_BT_BluetoothManager"

    .line 599
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bluetoothDevice:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object p1

    array-length v0, p1

    move v1, p0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 601
    invoke-virtual {v2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "YF_BT_BluetoothManager"

    .line 602
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uuid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "2D8D2466E14D451C88BC7301ABEA291A"

    .line 603
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 610
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    const-string p1, "YF_BT_BluetoothManager"

    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSupportCarplay:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public removeCarBluetoothListener(Lcom/yftech/settings/manager/BluetoothManager$CarBluetoothListener;)V
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/yftech/settings/manager/BluetoothManager;->mCarBluetoothListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    iget-object p0, p0, Lcom/yftech/settings/manager/BluetoothManager;->mCarBluetoothListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeDeviceItemState(Ljava/lang/String;)V
    .locals 3

    const-string v0, "YF_BT_BluetoothManager"

    .line 531
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeDeviceItemState() address:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    iget-object v0, p0, Lcom/yftech/settings/manager/BluetoothManager;->mDeviceItemStateMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/settings/manager/BluetoothManager;->mDeviceItemStateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/yftech/settings/manager/BluetoothManager;->mDeviceItemStateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    :cond_0
    iget-object p0, p0, Lcom/yftech/settings/manager/BluetoothManager;->mContext:Landroid/content/Context;

    const-string v0, "carSettings_bt_items"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 536
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 537
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "device_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 538
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 539
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "device_"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 540
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    return-void
.end method

.method public setAutoConnectEnable(Z)Z
    .locals 3

    .line 361
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->setAutoConnectEnable(Z)Z

    move-result p0

    const-string v0, "YF_BT_BluetoothManager"

    .line 362
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAutoConnectEnable() enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", result:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public setAutoDownloadContactsEnable(Z)Z
    .locals 4

    .line 367
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->setAutoDownloadContactsEnable(Z)Z

    move-result p0

    .line 368
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->setAutoDownloadCallLogEnable(Z)Z

    move-result v0

    const-string v1, "YF_BT_BluetoothManager"

    .line 369
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAutoDownloadContactsEnable() enable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", autoDownloadContactsResult:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", autoDownloadCallLogResult:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public setEnabled(Z)Z
    .locals 3

    .line 355
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->setEnabled(Z)Z

    move-result p0

    const-string v0, "YF_BT_BluetoothManager"

    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnabled() enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", result:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public startScanning()Z
    .locals 3

    .line 297
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->startScanning(Z)Z

    move-result p0

    const-string v0, "YF_BT_BluetoothManager"

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startScanning() result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public stopScanning()Z
    .locals 3

    .line 303
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->stopScanning()Z

    move-result p0

    const-string v0, "YF_BT_BluetoothManager"

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopScanning() result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public updateDeviceItemState(Ljava/lang/String;Lcom/yftech/settings/connect/model/BtDeviceItemState;)V
    .locals 3

    .line 509
    iget-object v0, p0, Lcom/yftech/settings/manager/BluetoothManager;->mDeviceItemStateMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/yftech/settings/manager/BluetoothManager;->mDeviceItemStateMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    :cond_0
    iget-object p0, p0, Lcom/yftech/settings/manager/BluetoothManager;->mContext:Landroid/content/Context;

    const-string v0, "carSettings_bt_items"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 513
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 514
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "address"

    .line 516
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "detail"

    .line 517
    invoke-virtual {p2}, Lcom/yftech/settings/connect/model/BtDeviceItemState;->isDetail()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "hfp"

    .line 518
    invoke-virtual {p2}, Lcom/yftech/settings/connect/model/BtDeviceItemState;->isHfp()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "avrcp"

    .line 519
    invoke-virtual {p2}, Lcom/yftech/settings/connect/model/BtDeviceItemState;->isAvrcp()Z

    move-result p2

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 521
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 523
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "device_"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 524
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "YF_BT_BluetoothManager"

    .line 525
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDeviceItemState() key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 527
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
