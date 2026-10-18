.class public Lcom/yftech/settings/connect/BluetoothFragment;
.super Lcom/yftech/settings/BaseFragment;
.source "BluetoothFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/yftech/settings/manager/BluetoothManager$CarBluetoothListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothFragment"


# instance fields
.field private mBluetoothScanningRunnable:Ljava/lang/Runnable;

.field private mBtIvScanLodading:Landroid/widget/ImageView;

.field private mBtLayoutList:Landroid/widget/LinearLayout;

.field private mBtLayoutPairedHeader:Landroid/widget/RelativeLayout;

.field private mBtLvPaired:Landroid/widget/ListView;

.field private mBtLvUnpaired:Landroid/widget/ListView;

.field private mBtPairedAdapter:Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;

.field private mBtSwAutoConnect:Lcom/yftech/settings/widget/Switcher;

.field private mBtSwAutoSync:Lcom/yftech/settings/widget/Switcher;

.field private mBtSwSwitch:Lcom/yftech/settings/widget/Switcher;

.field private mBtTipIvScanLodading:Landroid/widget/ImageView;

.field private mBtTvName:Landroid/widget/TextView;

.field private mBtTvTip:Landroid/widget/TextView;

.field private mBtUnpairedAdapter:Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter;

.field private mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

.field private mHandler:Landroid/os/Handler;

.field private mLayoutTip:Landroid/widget/RelativeLayout;

.field private mLoadingAnimation:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/yftech/settings/BaseFragment;-><init>()V

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mHandler:Landroid/os/Handler;

    .line 462
    new-instance v0, Lcom/yftech/settings/connect/BluetoothFragment$5;

    invoke-direct {v0, p0}, Lcom/yftech/settings/connect/BluetoothFragment$5;-><init>(Lcom/yftech/settings/connect/BluetoothFragment;)V

    iput-object v0, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mBluetoothScanningRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/settings/connect/BluetoothFragment;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/yftech/settings/connect/BluetoothFragment;->connectBluetooth(I)V

    return-void
.end method

.method static synthetic access$102(Lcom/yftech/settings/connect/BluetoothFragment;Lcom/yftech/settings/widget/dialog/CommonDialog;)Lcom/yftech/settings/widget/dialog/CommonDialog;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    return-object p1
.end method

.method private connectBluetooth(I)V
    .locals 5

    .line 415
    invoke-direct {p0}, Lcom/yftech/settings/connect/BluetoothFragment;->stopBluetoothScanning()V

    .line 417
    iget-object v0, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mBtUnpairedAdapter:Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter;

    const/16 v1, 0x1000

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mBtUnpairedAdapter:Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter;

    invoke-virtual {v0, p1}, Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 419
    invoke-static {}, Lcom/yftech/settings/manager/BluetoothManager;->getInstance()Lcom/yftech/settings/manager/BluetoothManager;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/yftech/settings/manager/BluetoothManager;->connect(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 422
    :cond_0
    invoke-static {}, Lcom/yftech/settings/manager/BluetoothManager;->getInstance()Lcom/yftech/settings/manager/BluetoothManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/settings/manager/BluetoothManager;->getPariedDevices()Ljava/util/List;

    move-result-object p1

    .line 423
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const-string v2, "BluetoothFragment"

    .line 424
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pariedBtDevicesSize:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x9

    const/4 v3, 0x0

    if-lt v0, v2, :cond_1

    .line 427
    invoke-static {}, Lcom/yftech/settings/manager/BluetoothManager;->getInstance()Lcom/yftech/settings/manager/BluetoothManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/yftech/settings/manager/BluetoothManager;->isSupportCarplay(Lcom/yftech/settings/connect/model/BtDevice;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 428
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/settings/connect/model/BtDevice;

    .line 429
    invoke-direct {p0, p1, v3}, Lcom/yftech/settings/connect/BluetoothFragment;->showCarplayBluetoothPairMaxRemovePairedDialog(Lcom/yftech/settings/connect/model/BtDevice;Lcom/yftech/settings/connect/model/BtDevice;)V

    goto :goto_0

    .line 431
    :cond_1
    invoke-static {}, Lcom/yftech/settings/manager/BluetoothManager;->getInstance()Lcom/yftech/settings/manager/BluetoothManager;

    move-result-object p0

    invoke-virtual {p0, v3, v1}, Lcom/yftech/settings/manager/BluetoothManager;->connect(Lcom/yftech/settings/connect/model/BtDevice;I)Z

    :goto_0
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 7

    const v0, 0x7f080054

    .line 87
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f080218

    .line 88
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yftech/settings/connect/BluetoothFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0d008a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0801fd

    .line 89
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mBtTvName:Landroid/widget/TextView;

    const v0, 0x7f080051

    .line 92
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 93
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yftech/settings/connect/BluetoothFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0d008c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f0801bb

    .line 94
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/yftech/settings/widget/Switcher;

    iput-object v2, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mBtSwSwitch:Lcom/yftech/settings/widget/Switcher;

    .line 95
    iget-object v2, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mBtSwSwitch:Lcom/yftech/settings/widget/Switcher;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/yftech/settings/widget/Switcher;->setTag(Ljava/lang/Object;)V

    .line 96
    iget-object v0, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mBtSwSwitch:Lcom/yftech/settings/widget/Switcher;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/widget/Switcher;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f08004f

    .line 99
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 100
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yftech/settings/connect/BluetoothFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0d0087

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/yftech/settings/widget/Switcher;

    iput-object v4, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mBtSwAutoConnect:Lcom/yftech/settings/widget/Switcher;

    .line 102
    iget-object v4, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mBtSwAutoConnect:Lcom/yftech/settings/widget/Switcher;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/yftech/settings/widget/Switcher;->setTag(Ljava/lang/Object;)V

    .line 103
    iget-object v0, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mBtSwAutoConnect:Lcom/yftech/settings/widget/Switcher;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/widget/Switcher;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 105
    invoke-static {}, Lcom/yftech/settings/utils/Utils;->isCarPlayCertificate()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    .line 106
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 108
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    const v0, 0x7f080050

    .line 111
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 112
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yftech/settings/connect/BluetoothFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0d0088

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yftech/settings/widget/Switcher;

    iput-object v1, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mBtSwAutoSync:Lcom/yftech/settings/widget/Switcher;

    .line 114
    iget-object v1, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mBtSwAutoSync:Lcom/yftech/settings/widget/Switcher;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yftech/settings/widget/Switcher;->setTag(Ljava/lang/Object;)V

    .line 115
    iget-object v0, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mBtSwAutoSync:Lcom/yftech/settings/widget/Switcher;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/widget/Switcher;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f080056

    .line 118
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mBtTvTip:Landroid/widget/TextView;

    const v0, 0x7f08011d

    .line 119
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mLayoutTip:Landroid/widget/RelativeLayout;

    const v0, 0x7f08004b

    .line 122
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mBtLayoutList:Landroid/widget/LinearLayout;

    const v0, 0x7f08004c

    .line 124
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mBtLayoutPairedHeader:Landroid/widget/RelativeLayout;

    const v0, 0x7f08004e

    .line 126
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mBtLvPaired:Landroid/widget/ListView;

    const v0, 0x7f08004d

    .line 129
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mBtLvUnpaired:Landroid/widget/ListView;

    .line 130
    iget-object v0, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mBtLvUnpaired:Landroid/widget/ListView;

    new-instance v1, Lcom/yftech/settings/connect/BluetoothFragment$1;

    invoke-direct {v1, p0}, Lcom/yftech/settings/connect/BluetoothFragment$1;-><init>(Lcom/yftech/settings/connect/BluetoothFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f080048

    .line 138
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mBtIvScanLodading:Landroid/widget/ImageView;

    .line 139
    invoke-virtual {p0}, Lcom/yftech/settings/connect/BluetoothFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01000c

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mLoadingAnimation:Landroid/view/animation/Animation;

    .line 140
    iget-object v0, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mLoadingAnimation:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const v0, 0x7f080052

    .line 142
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mBtTipIvScanLodading:Landroid/widget/ImageView;

    return-void
.end method

.method private initViewDate()V
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mBtTvName:Landroid/widget/TextView;

    invoke-static {}, Lcom/yftech/settings/manager/BluetoothManager;->getInstance()Lcom/yftech/settings/manager/BluetoothManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/settings/manager/BluetoothManager;->getBluetoothName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    invoke-static {}, Lcom/yftech/settings/manager/BluetoothManager;->getInstance()Lcom/yftech/settings/manager/BluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/settings/manager/BluetoothManager;->getEnableState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/yftech/settings/connect/BluetoothFragment;->updateBtSwitchView(I)V

    .line 185
    iget-object v0, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mBtSwAutoConnect:Lcom/yftech/settings/widget/Switcher;

    invoke-static {}, Lcom/yftech/settings/manager/BluetoothManager;->getInstance()Lcom/yftech/settings/manager/BluetoothManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/settings/manager/BluetoothManager;->isAutoConnectEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/Switcher;->setChecked(Z)V

    .line 186
    iget-object v0, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mBtSwAutoSync:Lcom/yftech/settings/widget/Switcher;

    invoke-static {}, Lcom/yftech/settings/manager/BluetoothManager;->getInstance()Lcom/yftech/settings/manager/BluetoothManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/settings/manager/BluetoothManager;->isAutoDownloadContactsEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/Switcher;->setChecked(Z)V

    .line 187
    invoke-static {}, Lcom/yftech/settings/manager/BluetoothManager;->getInstance()Lcom/yftech/settings/manager/BluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/settings/manager/BluetoothManager;->getEnableState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 188
    invoke-direct {p0, v0}, Lcom/yftech/settings/connect/BluetoothFragment;->updatePairedListView(Z)V

    .line 189
    invoke-direct {p0}, Lcom/yftech/settings/connect/BluetoothFragment;->updateUnpairedListView()V

    .line 191
    :cond_0
    invoke-static {}, Lcom/yftech/settings/manager/BluetoothManager;->getInstance()Lcom/yftech/settings/manager/BluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/settings/manager/BluetoothManager;->isScanning()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/yftech/settings/connect/BluetoothFragment;->updateScanLoadingAnimation(Z)V

    return-void
.end method

.method private showCarplayBluetoothPairMaxRemovePairedDialog(Lcom/yftech/settings/connect/model/BtDevice;Lcom/yftech/settings/connect/model/BtDevice;)V
    .locals 6

    const-string v0, "BluetoothFragment"

    const-string v1, "showCarplayBluetoothPairMaxRemovePairedDialog()"

    .line 381
    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    new-instance v0, Lcom/yftech/settings/widget/dialog/CommonDialog;

    invoke-virtual {p0}, Lcom/yftech/settings/connect/BluetoothFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yftech/settings/widget/dialog/CommonDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    .line 383
    iget-object v0, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    invoke-virtual {v0}, Lcom/yftech/settings/widget/dialog/CommonDialog;->show()V

    .line 384
    iget-object v0, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    new-instance v1, Lcom/yftech/settings/connect/BluetoothFragment$3;

    invoke-direct {v1, p0}, Lcom/yftech/settings/connect/BluetoothFragment$3;-><init>(Lcom/yftech/settings/connect/BluetoothFragment;)V

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/dialog/CommonDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 390
    iget-object v0, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    new-instance v1, Lcom/yftech/settings/connect/BluetoothFragment$4;

    invoke-direct {v1, p0, p2}, Lcom/yftech/settings/connect/BluetoothFragment$4;-><init>(Lcom/yftech/settings/connect/BluetoothFragment;Lcom/yftech/settings/connect/model/BtDevice;)V

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/dialog/CommonDialog;->setOnBtnClickListener(Lcom/yftech/settings/widget/dialog/CommonDialog$OnBtnClickListener;)Lcom/yftech/settings/widget/dialog/CommonDialog;

    if-eqz p1, :cond_0

    .line 406
    invoke-virtual {p1}, Lcom/yftech/settings/connect/model/BtDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/yftech/settings/utils/CommonUtils;->getLimitDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    if-eqz p2, :cond_1

    .line 407
    invoke-virtual {p2}, Lcom/yftech/settings/connect/model/BtDevice;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/yftech/settings/utils/CommonUtils;->getLimitDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_1
    const-string p2, ""

    .line 408
    :goto_1
    iget-object v0, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    invoke-virtual {p0}, Lcom/yftech/settings/connect/BluetoothFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d00e7

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 p1, 0x1

    aput-object p2, v4, p1

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/yftech/settings/widget/dialog/CommonDialog;->setContent(Ljava/lang/String;)Lcom/yftech/settings/widget/dialog/CommonDialog;

    move-result-object p2

    new-array v0, v3, [Ljava/lang/String;

    .line 409
    invoke-virtual {p0}, Lcom/yftech/settings/connect/BluetoothFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d00e5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 410
    invoke-virtual {p0}, Lcom/yftech/settings/connect/BluetoothFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f0d00e6

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, p1

    .line 409
    invoke-virtual {p2, v0}, Lcom/yftech/settings/widget/dialog/CommonDialog;->setButtonText([Ljava/lang/String;)Lcom/yftech/settings/widget/dialog/CommonDialog;

    return-void
.end method

.method private startBluetoothScanning(I)V
    .locals 3

    const-string v0, "BluetoothFragment"

    .line 451
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startBluetoothScanning() delay:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    iget-object v0, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mBluetoothScanningRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 453
    iget-object v0, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mBluetoothScanningRunnable:Ljava/lang/Runnable;

    int-to-long v1, p1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private stopBluetoothScanning()V
    .locals 2

    const-string v0, "BluetoothFragment"

    const-string v1, "stopBluetoothScanning()"

    .line 457
    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    iget-object v0, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mBluetoothScanningRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 459
    invoke-static {}, Lcom/yftech/settings/manager/BluetoothManager;->getInstance()Lcom/yftech/settings/manager/BluetoothManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/settings/manager/BluetoothManager;->stopScanning()Z

    return-void
.end method

.method private updateBtSwitchView(I)V
    .locals 3

    const-string v0, "BluetoothFragment"

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateBtSwitchView() state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 210
    :pswitch_0
    iget-object v0, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mBtSwSwitch:Lcom/yftech/settings/widget/Switcher;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/Switcher;->setChecked(Z)V

    .line 211
    iget-object v0, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mBtSwSwitch:Lcom/yftech/settings/widget/Switcher;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/Switcher;->setEnabled(Z)V

    goto :goto_0

    .line 198
    :pswitch_1
    iget-object v2, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mBtSwSwitch:Lcom/yftech/settings/widget/Switcher;

    invoke-virtual {v2, v0}, Lcom/yftech/settings/widget/Switcher;->setChecked(Z)V

    .line 199
    iget-object v2, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mBtSwSwitch:Lcom/yftech/settings/widget/Switcher;

    invoke-virtual {v2, v0}, Lcom/yftech/settings/widget/Switcher;->setEnabled(Z)V

    goto :goto_0

    .line 202
    :pswitch_2
    iget-object v2, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mBtSwSwitch:Lcom/yftech/settings/widget/Switcher;

    invoke-virtual {v2, v0}, Lcom/yftech/settings/widget/Switcher;->setChecked(Z)V

    .line 203
    iget-object v0, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mBtSwSwitch:Lcom/yftech/settings/widget/Switcher;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/Switcher;->setEnabled(Z)V

    goto :goto_0

    .line 206
    :pswitch_3
    iget-object v2, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mBtSwSwitch:Lcom/yftech/settings/widget/Switcher;

    invoke-virtual {v2, v1}, Lcom/yftech/settings/widget/Switcher;->setChecked(Z)V

    .line 207
    iget-object v2, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mBtSwSwitch:Lcom/yftech/settings/widget/Switcher;

    invoke-virtual {v2, v0}, Lcom/yftech/settings/widget/Switcher;->setEnabled(Z)V

    :goto_0
    const/16 v0, 0xc

    const/16 v2, 0x8

    if-ne p1, v0, :cond_2

    .line 217
    invoke-static {}, Lcom/yftech/settings/manager/BluetoothManager;->getInstance()Lcom/yftech/settings/manager/BluetoothManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/settings/manager/BluetoothManager;->getPariedDevices()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 218
    invoke-static {}, Lcom/yftech/settings/manager/BluetoothManager;->getInstance()Lcom/yftech/settings/manager/BluetoothManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/settings/manager/BluetoothManager;->getUnpariedDevices()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 222
    :cond_0
    iget-object p1, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mBtLayoutList:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 223
    iget-object p1, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mBtTvTip:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yftech/settings/connect/BluetoothFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0d0092

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object p0, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mLayoutTip:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_2

    .line 219
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mBtLayoutList:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 220
    iget-object p0, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mLayoutTip:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_2

    .line 227
    :cond_2
    iget-object p1, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mBtLayoutList:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 228
    iget-object p1, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mBtTvTip:Landroid/widget/TextView;

    const v0, 0x7f0d0093

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 229
    iget-object p0, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mLayoutTip:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updatePairedListView(Z)V
    .locals 4

    .line 238
    invoke-static {}, Lcom/yftech/settings/manager/BluetoothManager;->getInstance()Lcom/yftech/settings/manager/BluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/settings/manager/BluetoothManager;->getEnableState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const-string p0, "BluetoothFragment"

    const-string p1, "updatePairedListView() enableState is not STATE_ON"

    .line 240
    invoke-static {p0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 243
    :cond_0
    invoke-static {}, Lcom/yftech/settings/manager/BluetoothManager;->getInstance()Lcom/yftech/settings/manager/BluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/settings/manager/BluetoothManager;->getPariedDevices()Ljava/util/List;

    move-result-object v0

    const-string v1, "BluetoothFragment"

    .line 244
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPariedDevices():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x8

    if-eqz v0, :cond_2

    .line 245
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 247
    iget-object v2, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mLayoutTip:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 248
    iget-object v1, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mBtLayoutList:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 249
    iget-object v1, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mBtLayoutPairedHeader:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 250
    iget-object v1, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mBtLvPaired:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 251
    iget-object v1, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mBtPairedAdapter:Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;

    if-nez v1, :cond_1

    .line 252
    new-instance v1, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;

    invoke-virtual {p0}, Lcom/yftech/settings/connect/BluetoothFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mBtPairedAdapter:Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;

    .line 254
    :cond_1
    iget-object v1, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mBtLvPaired:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mBtPairedAdapter:Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 255
    iget-object p0, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mBtPairedAdapter:Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;

    invoke-virtual {p0, v0, p1}, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;->updateAdapter(Ljava/util/List;Z)V

    goto :goto_0

    .line 257
    :cond_2
    iget-object p1, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mBtLayoutPairedHeader:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 258
    iget-object p0, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mBtLvPaired:Landroid/widget/ListView;

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateScanLoadingAnimation(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 293
    iget-object p1, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mBtIvScanLodading:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mLoadingAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 294
    iget-object p1, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mBtIvScanLodading:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 295
    iget-object p1, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mBtTipIvScanLodading:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mLoadingAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 296
    iget-object p0, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mBtTipIvScanLodading:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 298
    :cond_0
    iget-object p1, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mBtIvScanLodading:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 299
    iget-object p1, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mBtIvScanLodading:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 300
    iget-object p1, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mBtTipIvScanLodading:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 301
    iget-object p0, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mBtTipIvScanLodading:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateUnpairedListView()V
    .locals 4

    .line 263
    invoke-static {}, Lcom/yftech/settings/manager/BluetoothManager;->getInstance()Lcom/yftech/settings/manager/BluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/settings/manager/BluetoothManager;->getEnableState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const-string p0, "BluetoothFragment"

    const-string v0, "updateUnpairedListView() enableState is not STATE_ON"

    .line 265
    invoke-static {p0, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 268
    :cond_0
    invoke-static {}, Lcom/yftech/settings/manager/BluetoothManager;->getInstance()Lcom/yftech/settings/manager/BluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/settings/manager/BluetoothManager;->getUnpariedDevices()Ljava/util/List;

    move-result-object v0

    const-string v1, "BluetoothFragment"

    .line 269
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUnpariedDevices():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x8

    if-eqz v0, :cond_2

    .line 270
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 272
    iget-object v2, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mLayoutTip:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 273
    iget-object v1, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mBtLayoutList:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 274
    iget-object v1, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mBtLvUnpaired:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 275
    iget-object v1, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mBtUnpairedAdapter:Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter;

    if-nez v1, :cond_1

    .line 276
    new-instance v1, Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter;

    invoke-virtual {p0}, Lcom/yftech/settings/connect/BluetoothFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mBtUnpairedAdapter:Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter;

    .line 277
    iget-object v1, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mBtUnpairedAdapter:Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter;

    new-instance v2, Lcom/yftech/settings/connect/BluetoothFragment$2;

    invoke-direct {v2, p0}, Lcom/yftech/settings/connect/BluetoothFragment$2;-><init>(Lcom/yftech/settings/connect/BluetoothFragment;)V

    invoke-virtual {v1, v2}, Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter;->setOnClickConnectListener(Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter$OnClickConnectListener;)V

    .line 284
    :cond_1
    iget-object v1, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mBtLvUnpaired:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mBtUnpairedAdapter:Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 285
    iget-object p0, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mBtUnpairedAdapter:Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter;

    invoke-virtual {p0, v0}, Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter;->updateAdapter(Ljava/util/List;)V

    goto :goto_0

    .line 287
    :cond_2
    iget-object p0, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mBtLvUnpaired:Landroid/widget/ListView;

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected dismissAllDialog()V
    .locals 1

    .line 437
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->dismissAllDialog()V

    .line 438
    iget-object v0, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    invoke-virtual {v0}, Lcom/yftech/settings/widget/dialog/CommonDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    invoke-virtual {v0}, Lcom/yftech/settings/widget/dialog/CommonDialog;->dismiss()V

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mBtPairedAdapter:Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;

    if-eqz v0, :cond_1

    .line 442
    iget-object v0, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mBtPairedAdapter:Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;

    invoke-virtual {v0}, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;->dismissDialog()V

    .line 444
    :cond_1
    iget-object v0, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mBtPairedAdapter:Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;

    if-eqz v0, :cond_2

    .line 445
    iget-object p0, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mBtPairedAdapter:Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;

    invoke-virtual {p0}, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;->dismissDialog()V

    .line 447
    :cond_2
    invoke-static {}, Lcom/yftech/settings/manager/BluetoothManager;->getInstance()Lcom/yftech/settings/manager/BluetoothManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/settings/manager/BluetoothManager;->dismissDialog()V

    return-void
.end method

.method public onBluetoothAutoConnectStateChanged(Z)V
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mBtSwAutoConnect:Lcom/yftech/settings/widget/Switcher;

    invoke-virtual {v0}, Lcom/yftech/settings/widget/Switcher;->isChecked()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 376
    iget-object p0, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mBtSwAutoConnect:Lcom/yftech/settings/widget/Switcher;

    invoke-virtual {p0, p1}, Lcom/yftech/settings/widget/Switcher;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public onBluetoothAutoDownloadContactsStateChanged(Z)V
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mBtSwAutoSync:Lcom/yftech/settings/widget/Switcher;

    invoke-virtual {v0}, Lcom/yftech/settings/widget/Switcher;->isChecked()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 369
    iget-object p0, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mBtSwAutoSync:Lcom/yftech/settings/widget/Switcher;

    invoke-virtual {p0, p1}, Lcom/yftech/settings/widget/Switcher;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public onBluetoothPairedListChanged()V
    .locals 1

    const/4 v0, 0x0

    .line 341
    invoke-direct {p0, v0}, Lcom/yftech/settings/connect/BluetoothFragment;->updatePairedListView(Z)V

    return-void
.end method

.method public onBluetoothScanningStateChanged(Z)V
    .locals 3

    .line 351
    invoke-direct {p0, p1}, Lcom/yftech/settings/connect/BluetoothFragment;->updateScanLoadingAnimation(Z)V

    if-nez p1, :cond_0

    .line 353
    invoke-static {}, Lcom/yftech/settings/manager/BluetoothManager;->getInstance()Lcom/yftech/settings/manager/BluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/settings/manager/BluetoothManager;->getPariedDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 354
    invoke-static {}, Lcom/yftech/settings/manager/BluetoothManager;->getInstance()Lcom/yftech/settings/manager/BluetoothManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/settings/manager/BluetoothManager;->getUnpariedDevices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    if-gtz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mBtLayoutList:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 357
    iget-object v0, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mBtTvTip:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yftech/settings/connect/BluetoothFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0092

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    iget-object v0, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mLayoutTip:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    if-nez p1, :cond_1

    const/16 p1, 0xbb8

    .line 362
    invoke-direct {p0, p1}, Lcom/yftech/settings/connect/BluetoothFragment;->startBluetoothScanning(I)V

    :cond_1
    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 1

    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    const/16 v0, 0x3e8

    .line 332
    invoke-direct {p0, v0}, Lcom/yftech/settings/connect/BluetoothFragment;->startBluetoothScanning(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 334
    invoke-direct {p0}, Lcom/yftech/settings/connect/BluetoothFragment;->stopBluetoothScanning()V

    .line 336
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/yftech/settings/connect/BluetoothFragment;->updateBtSwitchView(I)V

    return-void
.end method

.method public onBluetoothUnpairedListChanged()V
    .locals 0

    .line 346
    invoke-direct {p0}, Lcom/yftech/settings/connect/BluetoothFragment;->updateUnpairedListView()V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .line 307
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isPressed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 310
    :cond_0
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 312
    :pswitch_0
    invoke-static {}, Lcom/yftech/settings/manager/BluetoothManager;->getInstance()Lcom/yftech/settings/manager/BluetoothManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/yftech/settings/manager/BluetoothManager;->setEnabled(Z)Z

    move-result p1

    const-string v0, "BluetoothFragment"

    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckedChanged() bt_sw_device isChecked:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " ret:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    .line 315
    iget-object p0, p0, Lcom/yftech/settings/connect/BluetoothFragment;->mBtSwSwitch:Lcom/yftech/settings/widget/Switcher;

    xor-int/lit8 p1, p2, 0x1

    invoke-virtual {p0, p1}, Lcom/yftech/settings/widget/Switcher;->setChecked(Z)V

    goto :goto_0

    .line 322
    :pswitch_1
    invoke-static {}, Lcom/yftech/settings/manager/BluetoothManager;->getInstance()Lcom/yftech/settings/manager/BluetoothManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/yftech/settings/manager/BluetoothManager;->setAutoDownloadContactsEnable(Z)Z

    goto :goto_0

    .line 319
    :pswitch_2
    invoke-static {}, Lcom/yftech/settings/manager/BluetoothManager;->getInstance()Lcom/yftech/settings/manager/BluetoothManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/yftech/settings/manager/BluetoothManager;->setAutoConnectEnable(Z)Z

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f08004f
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const p3, 0x7f0a0038

    const/4 v0, 0x0

    .line 80
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 81
    invoke-direct {p0, p1}, Lcom/yftech/settings/connect/BluetoothFragment;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method public onPause()V
    .locals 2

    .line 159
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onPause()V

    const-string v0, "BluetoothFragment"

    const-string v1, "onPause()"

    .line 160
    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-direct {p0}, Lcom/yftech/settings/connect/BluetoothFragment;->stopBluetoothScanning()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 149
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onResume()V

    const-string v0, "BluetoothFragment"

    const-string v1, "onResume()"

    .line 150
    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-direct {p0}, Lcom/yftech/settings/connect/BluetoothFragment;->initViewDate()V

    .line 152
    invoke-static {}, Lcom/yftech/settings/manager/BluetoothManager;->getInstance()Lcom/yftech/settings/manager/BluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/settings/manager/BluetoothManager;->getEnableState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 153
    invoke-direct {p0, v0}, Lcom/yftech/settings/connect/BluetoothFragment;->startBluetoothScanning(I)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 166
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onStart()V

    const-string v0, "BluetoothFragment"

    const-string v1, "onStart()"

    .line 167
    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-static {}, Lcom/yftech/settings/manager/BluetoothManager;->getInstance()Lcom/yftech/settings/manager/BluetoothManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yftech/settings/manager/BluetoothManager;->addCarBluetoothListener(Lcom/yftech/settings/manager/BluetoothManager$CarBluetoothListener;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 176
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onStop()V

    const-string v0, "BluetoothFragment"

    const-string v1, "onStop()"

    .line 177
    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-static {}, Lcom/yftech/settings/manager/BluetoothManager;->getInstance()Lcom/yftech/settings/manager/BluetoothManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yftech/settings/manager/BluetoothManager;->removeCarBluetoothListener(Lcom/yftech/settings/manager/BluetoothManager$CarBluetoothListener;)V

    return-void
.end method
