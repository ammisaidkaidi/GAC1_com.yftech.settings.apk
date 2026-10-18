.class public Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;
.super Landroid/widget/BaseAdapter;
.source "BluetoothPairedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "YF_BT_BluetoothPairedAdapter"


# instance fields
.field private btDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/settings/connect/model/BtDevice;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private firstIntoPage:Z

.field private flag:Z

.field private mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

.field private mIsCertificate:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;->btDevices:Ljava/util/List;

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;->flag:Z

    .line 55
    iput-object p1, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$1100(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;)Ljava/util/List;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;->btDevices:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;->firstIntoPage:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;->setFlagToTrue()V

    return-void
.end method

.method static synthetic access$1400(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;Lcom/yftech/settings/connect/model/BtDevice;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;->showIgnoreDialog(Lcom/yftech/settings/connect/model/BtDevice;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;Lcom/yftech/settings/connect/model/BtDevice;IZ)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;->switchProfile(Lcom/yftech/settings/connect/model/BtDevice;IZ)V

    return-void
.end method

.method static synthetic access$1600(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;->mIsCertificate:Z

    return p0
.end method

.method static synthetic access$1700(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;->isCarPlayConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;Lcom/yftech/settings/connect/model/BtDevice;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;->showConnectModeDialog(Lcom/yftech/settings/connect/model/BtDevice;)V

    return-void
.end method

.method static synthetic access$1902(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;Lcom/yftech/settings/widget/dialog/CommonDialog;)Lcom/yftech/settings/widget/dialog/CommonDialog;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;Landroid/bluetooth/BluetoothDevice;)Lcom/yftech/car/phonelink/CarLinkDevice;
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;->getCarLinkDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/yftech/car/phonelink/CarLinkDevice;

    move-result-object p0

    return-object p0
.end method

.method private getCarLinkDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/yftech/car/phonelink/CarLinkDevice;
    .locals 4

    const/4 p0, 0x0

    if-nez p1, :cond_0

    const-string p1, "YF_BT_BluetoothPairedAdapter"

    const-string v0, "getCarLinkDevice() bluetoothDevice is null"

    .line 463
    invoke-static {p1, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 467
    :cond_0
    invoke-static {}, Lcom/yftech/settings/manager/LinkCarplayManager;->getInstance()Lcom/yftech/settings/manager/LinkCarplayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/settings/manager/LinkCarplayManager;->getCarLinkDeviceList()Ljava/util/List;

    move-result-object v0

    .line 468
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/phonelink/CarLinkDevice;

    .line 469
    invoke-virtual {v1}, Lcom/yftech/car/phonelink/CarLinkDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object p0, v1

    :cond_2
    return-object p0
.end method

.method private isCarPlayConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 391
    :cond_0
    invoke-static {}, Lcom/yftech/settings/manager/LinkCarplayManager;->getInstance()Lcom/yftech/settings/manager/LinkCarplayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/settings/manager/LinkCarplayManager;->getCarLinkDeviceList()Ljava/util/List;

    move-result-object v0

    .line 392
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/phonelink/CarLinkDevice;

    .line 393
    invoke-virtual {v1}, Lcom/yftech/car/phonelink/CarLinkDevice;->getConnectedStatus()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 394
    invoke-virtual {v1}, Lcom/yftech/car/phonelink/CarLinkDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v3

    :cond_2
    return p0
.end method

.method private isDeviceSupportCarPlay(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    const/4 p0, 0x0

    if-nez p1, :cond_0

    const-string p1, "YF_BT_BluetoothPairedAdapter"

    const-string v0, "isDeviceSupportCarPlay device is null"

    .line 367
    invoke-static {p1, v0}, Lcom/yftech/settings/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 369
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "YF_BT_BluetoothPairedAdapter"

    .line 371
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDeviceSupportCarPlay  device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " UUID is null!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yftech/settings/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v1, "YF_BT_BluetoothPairedAdapter"

    .line 373
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDeviceSupportCarPlay  device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " addr "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " uuid("

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, v0

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/yftech/settings/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    array-length p1, v0

    move v1, p0

    :goto_0
    if-ge v1, p1, :cond_3

    aget-object v2, v0, v1

    .line 375
    invoke-virtual {v2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "2D8D2466-E14D-451C-88BC-7301ABEA291A"

    .line 376
    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    const-string p0, "YF_BT_BluetoothPairedAdapter"

    const-string p1, "isDeviceSupportCarPlay  supported CarPlay!"

    .line 377
    invoke-static {p0, p1}, Lcom/yftech/settings/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return p0
.end method

.method private setFlagToTrue()V
    .locals 1

    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;->flag:Z

    return-void
.end method

.method private showConnectModeDialog(Lcom/yftech/settings/connect/model/BtDevice;)V
    .locals 5

    const-string v0, "YF_BT_BluetoothPairedAdapter"

    .line 402
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showConnectModeDialog() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yftech/settings/connect/model/BtDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    new-instance v0, Lcom/yftech/settings/widget/dialog/CommonDialog;

    iget-object v1, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/yftech/settings/widget/dialog/CommonDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    .line 404
    iget-object v0, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    invoke-virtual {v0}, Lcom/yftech/settings/widget/dialog/CommonDialog;->show()V

    .line 405
    iget-object v0, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    new-instance v1, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$9;

    invoke-direct {v1, p0}, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$9;-><init>(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;)V

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/dialog/CommonDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 411
    iget-object v0, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    new-instance v1, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$10;

    invoke-direct {v1, p0, p1}, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$10;-><init>(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;Lcom/yftech/settings/connect/model/BtDevice;)V

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/dialog/CommonDialog;->setOnBtnClickListener(Lcom/yftech/settings/widget/dialog/CommonDialog$OnBtnClickListener;)Lcom/yftech/settings/widget/dialog/CommonDialog;

    .line 457
    iget-object v0, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    iget-object v1, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;->context:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/yftech/settings/connect/model/BtDevice;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const p1, 0x7f0d00ef

    invoke-virtual {v1, p1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/yftech/settings/widget/dialog/CommonDialog;->setContent(Ljava/lang/String;)Lcom/yftech/settings/widget/dialog/CommonDialog;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;->context:Landroid/content/Context;

    const v3, 0x7f0d00ed

    .line 458
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    iget-object p0, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;->context:Landroid/content/Context;

    const v1, 0x7f0d00ee

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v2

    invoke-virtual {p1, v0}, Lcom/yftech/settings/widget/dialog/CommonDialog;->setButtonText([Ljava/lang/String;)Lcom/yftech/settings/widget/dialog/CommonDialog;

    return-void
.end method

.method private showIgnoreDialog(Lcom/yftech/settings/connect/model/BtDevice;)V
    .locals 5

    .line 327
    new-instance v0, Lcom/yftech/settings/widget/dialog/CommonDialog;

    iget-object v1, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/yftech/settings/widget/dialog/CommonDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    .line 328
    iget-object v0, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    invoke-virtual {v0}, Lcom/yftech/settings/widget/dialog/CommonDialog;->show()V

    .line 329
    iget-object v0, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    new-instance v1, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$7;

    invoke-direct {v1, p0}, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$7;-><init>(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;)V

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/dialog/CommonDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 335
    iget-object v0, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    new-instance v1, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$8;

    invoke-direct {v1, p0, p1}, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$8;-><init>(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;Lcom/yftech/settings/connect/model/BtDevice;)V

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/dialog/CommonDialog;->setOnBtnClickListener(Lcom/yftech/settings/widget/dialog/CommonDialog$OnBtnClickListener;)Lcom/yftech/settings/widget/dialog/CommonDialog;

    .line 354
    iget-object v0, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/yftech/settings/connect/model/BtDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/yftech/settings/utils/CommonUtils;->getLimitDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const p1, 0x7f0d011d

    invoke-virtual {v0, p1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 355
    iget-object v0, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    invoke-virtual {v0, p1}, Lcom/yftech/settings/widget/dialog/CommonDialog;->setContent(Ljava/lang/String;)Lcom/yftech/settings/widget/dialog/CommonDialog;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iget-object v2, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;->context:Landroid/content/Context;

    const v4, 0x7f0d00e4

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    iget-object p0, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;->context:Landroid/content/Context;

    const v2, 0x7f0d00e3

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lcom/yftech/settings/widget/dialog/CommonDialog;->setButtonText([Ljava/lang/String;)Lcom/yftech/settings/widget/dialog/CommonDialog;

    return-void
.end method

.method private switchProfile(Lcom/yftech/settings/connect/model/BtDevice;IZ)V
    .locals 2

    const-string p0, "YF_BT_BluetoothPairedAdapter"

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchProfile() profile:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isChecked:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yftech/settings/connect/model/BtDevice;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-virtual {p1}, Lcom/yftech/settings/connect/model/BtDevice;->getDeviceItemState()Lcom/yftech/settings/connect/model/BtDeviceItemState;

    move-result-object p0

    if-eqz p0, :cond_2

    const/16 v0, 0x10

    if-ne p2, v0, :cond_0

    .line 301
    invoke-virtual {p0, p3}, Lcom/yftech/settings/connect/model/BtDeviceItemState;->setHfp(Z)V

    goto :goto_0

    :cond_0
    const/16 v0, 0xb

    if-ne p2, v0, :cond_1

    .line 303
    invoke-virtual {p0, p3}, Lcom/yftech/settings/connect/model/BtDeviceItemState;->setAvrcp(Z)V

    .line 305
    :cond_1
    :goto_0
    invoke-static {}, Lcom/yftech/settings/manager/BluetoothManager;->getInstance()Lcom/yftech/settings/manager/BluetoothManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yftech/settings/connect/model/BtDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/yftech/settings/manager/BluetoothManager;->updateDeviceItemState(Ljava/lang/String;Lcom/yftech/settings/connect/model/BtDeviceItemState;)V

    :cond_2
    if-eqz p3, :cond_3

    .line 313
    invoke-static {}, Lcom/yftech/settings/manager/BluetoothManager;->getInstance()Lcom/yftech/settings/manager/BluetoothManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/settings/manager/BluetoothManager;->getConnectedDevice()Lcom/yftech/settings/connect/model/BtDevice;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 314
    invoke-virtual {p1}, Lcom/yftech/settings/connect/model/BtDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p3

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0}, Lcom/yftech/settings/connect/model/BtDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "YF_BT_BluetoothPairedAdapter"

    const-string p3, "switchProfile() connect"

    .line 315
    invoke-static {p0, p3}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-static {}, Lcom/yftech/settings/manager/BluetoothManager;->getInstance()Lcom/yftech/settings/manager/BluetoothManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/yftech/settings/manager/BluetoothManager;->connect(Lcom/yftech/settings/connect/model/BtDevice;I)Z

    goto :goto_1

    .line 319
    :cond_3
    invoke-virtual {p1}, Lcom/yftech/settings/connect/model/BtDevice;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 320
    invoke-static {}, Lcom/yftech/settings/manager/BluetoothManager;->getInstance()Lcom/yftech/settings/manager/BluetoothManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/yftech/settings/manager/BluetoothManager;->disconnect(Lcom/yftech/settings/connect/model/BtDevice;I)Z

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public dismissDialog()V
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    invoke-virtual {v0}, Lcom/yftech/settings/widget/dialog/CommonDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    iget-object p0, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    invoke-virtual {p0}, Lcom/yftech/settings/widget/dialog/CommonDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;->btDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x9

    if-le v0, v1, :cond_0

    return v1

    .line 79
    :cond_0
    iget-object p0, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;->btDevices:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;->btDevices:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    if-nez p2, :cond_0

    .line 96
    iget-object p2, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0a001e

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 97
    new-instance p3, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;

    invoke-direct {p3, p0, v0}, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;-><init>(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$1;)V

    const v0, 0x7f080116

    .line 98
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-static {p3, v0}, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;->access$102(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    const v0, 0x7f08020c

    .line 99
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p3, v0}, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;->access$202(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v0, 0x7f080200

    .line 100
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p3, v0}, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;->access$302(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v0, 0x7f080213

    .line 101
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p3, v0}, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;->access$402(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v0, 0x7f08013a

    .line 102
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {p3, v0}, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;->access$502(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    const v0, 0x7f0801b8

    .line 103
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yftech/settings/widget/Switcher;

    invoke-static {p3, v0}, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;->access$602(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;Lcom/yftech/settings/widget/Switcher;)Lcom/yftech/settings/widget/Switcher;

    const v0, 0x7f0801b7

    .line 104
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yftech/settings/widget/Switcher;

    invoke-static {p3, v0}, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;->access$702(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;Lcom/yftech/settings/widget/Switcher;)Lcom/yftech/settings/widget/Switcher;

    const v0, 0x7f080201

    .line 105
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p3, v0}, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;->access$802(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v0, 0x7f080206

    .line 106
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p3, v0}, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;->access$902(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v0, 0x7f0800ec

    .line 107
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p3, v0}, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;->access$1002(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 108
    invoke-static {p3}, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;->access$300(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$1;-><init>(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    invoke-static {p3}, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;->access$800(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$2;

    invoke-direct {v1, p0, p1}, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$2;-><init>(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    invoke-static {p3}, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;->access$900(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$3;

    invoke-direct {v1, p0, p1}, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$3;-><init>(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    invoke-static {p3}, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;->access$600(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;)Lcom/yftech/settings/widget/Switcher;

    move-result-object v0

    new-instance v1, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$4;

    invoke-direct {v1, p0, p1}, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$4;-><init>(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;I)V

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/Switcher;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 147
    invoke-static {p3}, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;->access$700(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;)Lcom/yftech/settings/widget/Switcher;

    move-result-object v0

    new-instance v1, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$5;

    invoke-direct {v1, p0, p1}, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$5;-><init>(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;I)V

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/Switcher;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 156
    invoke-static {p3}, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;->access$100(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$6;

    invoke-direct {v1, p0, p1, p3}, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$6;-><init>(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;ILcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 192
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;

    .line 195
    :goto_0
    iget-object v0, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;->btDevices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/settings/connect/model/BtDevice;

    .line 196
    invoke-static {p3}, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;->access$200(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yftech/settings/connect/model/BtDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yftech/settings/utils/CommonUtils;->getLimitDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    invoke-static {p3}, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;->access$400(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yftech/settings/connect/model/BtDevice;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;->context:Landroid/content/Context;

    const v2, 0x7f0d008e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 198
    :cond_1
    invoke-virtual {p1}, Lcom/yftech/settings/connect/model/BtDevice;->isConnecting()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;->context:Landroid/content/Context;

    const v2, 0x7f0d008f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v1, ""

    .line 197
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    invoke-static {p3}, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;->access$800(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yftech/settings/connect/model/BtDevice;->isConnected()Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 202
    invoke-virtual {p1}, Lcom/yftech/settings/connect/model/BtDevice;->isConnected()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;->flag:Z

    if-eqz v0, :cond_4

    .line 203
    invoke-virtual {p1}, Lcom/yftech/settings/connect/model/BtDevice;->getDeviceItemState()Lcom/yftech/settings/connect/model/BtDeviceItemState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/settings/connect/model/BtDeviceItemState;->isHfp()Z

    move-result v0

    .line 204
    invoke-virtual {p1}, Lcom/yftech/settings/connect/model/BtDevice;->getDeviceItemState()Lcom/yftech/settings/connect/model/BtDeviceItemState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yftech/settings/connect/model/BtDeviceItemState;->isAvrcp()Z

    move-result v4

    goto/16 :goto_5

    .line 209
    :cond_4
    invoke-virtual {p1}, Lcom/yftech/settings/connect/model/BtDevice;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/yftech/settings/connect/model/BtDevice;->getHfpState()I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    goto :goto_3

    :cond_5
    move v0, v3

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Lcom/yftech/settings/connect/model/BtDevice;->getDeviceItemState()Lcom/yftech/settings/connect/model/BtDeviceItemState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/settings/connect/model/BtDeviceItemState;->isHfp()Z

    move-result v0

    :goto_3
    const-string v4, "YF_BT_BluetoothPairedAdapter"

    .line 220
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "btName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yftech/settings/connect/model/BtDevice;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " isCheckPhone:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "  -->  isConnected:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {p1}, Lcom/yftech/settings/connect/model/BtDevice;->isConnected()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " btDevice.getHfpState():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {p1}, Lcom/yftech/settings/connect/model/BtDevice;->getHfpState()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " btDevice.getDeviceItemState().isHfp():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {p1}, Lcom/yftech/settings/connect/model/BtDevice;->getDeviceItemState()Lcom/yftech/settings/connect/model/BtDeviceItemState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/yftech/settings/connect/model/BtDeviceItemState;->isHfp()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 220
    invoke-static {v4, v5}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-virtual {p1}, Lcom/yftech/settings/connect/model/BtDevice;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {p1}, Lcom/yftech/settings/connect/model/BtDevice;->getAvrcpState()I

    move-result v4

    if-eqz v4, :cond_7

    move v4, v1

    goto :goto_4

    :cond_7
    move v4, v3

    goto :goto_4

    :cond_8
    invoke-virtual {p1}, Lcom/yftech/settings/connect/model/BtDevice;->getDeviceItemState()Lcom/yftech/settings/connect/model/BtDeviceItemState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yftech/settings/connect/model/BtDeviceItemState;->isAvrcp()Z

    move-result v4

    :goto_4
    const-string v5, "YF_BT_BluetoothPairedAdapter"

    .line 240
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "btName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yftech/settings/connect/model/BtDevice;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " isCheckMedia:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "  -->  isConnected:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {p1}, Lcom/yftech/settings/connect/model/BtDevice;->isConnected()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " btDevice.getAvrcpState():"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {p1}, Lcom/yftech/settings/connect/model/BtDevice;->getAvrcpState()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " btDevice.getDeviceItemState().isAvrcp():"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {p1}, Lcom/yftech/settings/connect/model/BtDevice;->getDeviceItemState()Lcom/yftech/settings/connect/model/BtDeviceItemState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/yftech/settings/connect/model/BtDeviceItemState;->isAvrcp()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 240
    invoke-static {v5, v6}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :goto_5
    invoke-virtual {p1}, Lcom/yftech/settings/connect/model/BtDevice;->isConnected()Z

    move-result v5

    if-nez v5, :cond_9

    .line 247
    iput-boolean v3, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;->flag:Z

    .line 249
    :cond_9
    invoke-static {p3}, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;->access$600(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;)Lcom/yftech/settings/widget/Switcher;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/yftech/settings/widget/Switcher;->setChecked(Z)V

    .line 250
    invoke-static {p3}, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;->access$700(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;)Lcom/yftech/settings/widget/Switcher;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/yftech/settings/widget/Switcher;->setChecked(Z)V

    .line 251
    iget-boolean v0, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;->firstIntoPage:Z

    const v4, 0x7f0d0082

    const v5, 0x7f070085

    const v6, 0x7f0b010c

    if-eqz v0, :cond_d

    .line 252
    invoke-virtual {p1}, Lcom/yftech/settings/connect/model/BtDevice;->isConnected()Z

    move-result v0

    .line 253
    invoke-static {p3}, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;->access$300(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v0, :cond_a

    move v5, v6

    :cond_a
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 254
    invoke-static {p3}, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;->access$300(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v0, :cond_b

    const-string v4, ""

    goto :goto_6

    :cond_b
    iget-object v5, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;->context:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_6
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    invoke-static {p3}, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;->access$500(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v1

    if-eqz v0, :cond_c

    move v4, v3

    goto :goto_7

    :cond_c
    move v4, v2

    :goto_7
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 256
    invoke-virtual {p1}, Lcom/yftech/settings/connect/model/BtDevice;->getDeviceItemState()Lcom/yftech/settings/connect/model/BtDeviceItemState;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 258
    invoke-virtual {v1, v0}, Lcom/yftech/settings/connect/model/BtDeviceItemState;->setDetail(Z)V

    .line 259
    invoke-static {}, Lcom/yftech/settings/manager/BluetoothManager;->getInstance()Lcom/yftech/settings/manager/BluetoothManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yftech/settings/connect/model/BtDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v1}, Lcom/yftech/settings/manager/BluetoothManager;->updateDeviceItemState(Ljava/lang/String;Lcom/yftech/settings/connect/model/BtDeviceItemState;)V

    goto :goto_b

    .line 262
    :cond_d
    invoke-virtual {p1}, Lcom/yftech/settings/connect/model/BtDevice;->getDeviceItemState()Lcom/yftech/settings/connect/model/BtDeviceItemState;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 263
    invoke-virtual {v0}, Lcom/yftech/settings/connect/model/BtDeviceItemState;->isDetail()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_8

    :cond_e
    move v1, v3

    .line 264
    :goto_8
    invoke-static {p3}, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;->access$300(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v1, :cond_f

    move v5, v6

    :cond_f
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 265
    invoke-static {p3}, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;->access$300(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v1, :cond_10

    const-string v4, ""

    goto :goto_9

    :cond_10
    iget-object v5, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;->context:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_9
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    invoke-static {p3}, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;->access$500(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v1, :cond_11

    move v1, v3

    goto :goto_a

    :cond_11
    move v1, v2

    :goto_a
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 268
    :cond_12
    :goto_b
    iget-boolean v0, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;->mIsCertificate:Z

    if-eqz v0, :cond_15

    .line 269
    invoke-virtual {p1}, Lcom/yftech/settings/connect/model/BtDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;->isDeviceSupportCarPlay(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    .line 270
    invoke-static {p3}, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;->access$1000(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v0, :cond_13

    move v2, v3

    :cond_13
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v0, :cond_16

    .line 272
    invoke-virtual {p1}, Lcom/yftech/settings/connect/model/BtDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;->isCarPlayConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    .line 273
    invoke-static {p3}, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;->access$1000(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p0, :cond_14

    const p0, 0x7f0b012d

    goto :goto_c

    :cond_14
    const p0, 0x7f0b012c

    :goto_c
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_d

    .line 277
    :cond_15
    invoke-static {p3}, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;->access$1000(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_16
    :goto_d
    return-object p2
.end method

.method public updateAdapter(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/settings/connect/model/BtDevice;",
            ">;Z)V"
        }
    .end annotation

    .line 59
    invoke-static {}, Lcom/yftech/settings/utils/Utils;->isCarPlayCertificate()Z

    move-result v0

    iput-boolean v0, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;->mIsCertificate:Z

    .line 60
    iget-object v0, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;->btDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 61
    iget-object v0, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;->btDevices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 62
    iput-boolean p2, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;->firstIntoPage:Z

    .line 63
    invoke-virtual {p0}, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;->notifyDataSetChanged()V

    return-void
.end method
