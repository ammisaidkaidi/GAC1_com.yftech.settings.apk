.class public Lcom/yftech/settings/connect/LinkFragment;
.super Lcom/yftech/settings/BaseFragment;
.source "LinkFragment.java"

# interfaces
.implements Lcom/yftech/settings/manager/LinkCarplayManager$LinkCarplayListener;
.implements Lcom/yftech/settings/manager/LinkHicarManager$LinkHicarListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "LinkFragment"


# instance fields
.field private mCarPlayAvailableListDialog:Lcom/yftech/settings/widget/dialog/CarPlayAvailableListDialog;

.field private mCarPlayLv:Landroid/widget/ListView;

.field private mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

.field private mHiCarLv:Landroid/widget/ListView;

.field private mLinkCarplayAdapter:Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;

.field private mLinkHicarAdapter:Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/yftech/settings/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/settings/connect/LinkFragment;)Lcom/yftech/settings/widget/dialog/CarPlayAvailableListDialog;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/yftech/settings/connect/LinkFragment;->mCarPlayAvailableListDialog:Lcom/yftech/settings/widget/dialog/CarPlayAvailableListDialog;

    return-object p0
.end method

.method static synthetic access$002(Lcom/yftech/settings/connect/LinkFragment;Lcom/yftech/settings/widget/dialog/CarPlayAvailableListDialog;)Lcom/yftech/settings/widget/dialog/CarPlayAvailableListDialog;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/yftech/settings/connect/LinkFragment;->mCarPlayAvailableListDialog:Lcom/yftech/settings/widget/dialog/CarPlayAvailableListDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/yftech/settings/connect/LinkFragment;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/yftech/settings/connect/LinkFragment;->showHicarAddDeviceDisconnectCurDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/yftech/settings/connect/LinkFragment;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/yftech/settings/connect/LinkFragment;->gotoHiCarSearchView()V

    return-void
.end method

.method static synthetic access$302(Lcom/yftech/settings/connect/LinkFragment;Lcom/yftech/settings/widget/dialog/CommonDialog;)Lcom/yftech/settings/widget/dialog/CommonDialog;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/yftech/settings/connect/LinkFragment;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    return-object p1
.end method

.method private gotoHiCarSearchView()V
    .locals 1

    const-string p0, "LinkFragment"

    const-string v0, "gotoHiCarSearchView()"

    .line 203
    invoke-static {p0, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-static {}, Lcom/yftech/settings/manager/LinkHicarManager;->getInstance()Lcom/yftech/settings/manager/LinkHicarManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/settings/manager/LinkHicarManager;->requestNewConnect()V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 5

    const v0, 0x7f08007f

    .line 57
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/yftech/settings/connect/LinkFragment;->mCarPlayLv:Landroid/widget/ListView;

    const v0, 0x7f08007c

    .line 58
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {}, Lcom/yftech/settings/manager/LinkCarplayManager;->getInstance()Lcom/yftech/settings/manager/LinkCarplayManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yftech/settings/manager/LinkCarplayManager;->isSupportWirelessCarplay()Z

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 59
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/yftech/settings/connect/LinkFragment$1;

    invoke-direct {v1, p0}, Lcom/yftech/settings/connect/LinkFragment$1;-><init>(Lcom/yftech/settings/connect/LinkFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800cb

    .line 82
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/yftech/settings/connect/LinkFragment;->mHiCarLv:Landroid/widget/ListView;

    const v0, 0x7f0800c8

    .line 83
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/yftech/settings/connect/LinkFragment$2;

    invoke-direct {v1, p0}, Lcom/yftech/settings/connect/LinkFragment$2;-><init>(Lcom/yftech/settings/connect/LinkFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    invoke-static {}, Lcom/yftech/settings/manager/LinkCarplayManager;->getInstance()Lcom/yftech/settings/manager/LinkCarplayManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/settings/manager/LinkCarplayManager;->isCarplayPresent()Z

    move-result p0

    const v0, 0x7f08007d

    .line 100
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p0, :cond_1

    move v1, v4

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 102
    invoke-static {}, Lcom/yftech/settings/manager/LinkHicarManager;->getInstance()Lcom/yftech/settings/manager/LinkHicarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/settings/manager/LinkHicarManager;->isHicarPresent()Z

    move-result v0

    const v1, 0x7f0800c9

    .line 103
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz v0, :cond_2

    move v3, v4

    :cond_2
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    const-string p1, "LinkFragment"

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initView() isCarplayPresent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " isHicarPresent:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initViewDate()V
    .locals 0

    .line 140
    invoke-direct {p0}, Lcom/yftech/settings/connect/LinkFragment;->updateCarPlayList()V

    .line 141
    invoke-direct {p0}, Lcom/yftech/settings/connect/LinkFragment;->updateHiCarList()V

    return-void
.end method

.method private showHicarAddDeviceDisconnectCurDialog(Ljava/lang/String;)V
    .locals 6

    const-string v0, "LinkFragment"

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showHicarAddDeviceDisconnectCurDialog() linkType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    new-instance v0, Lcom/yftech/settings/widget/dialog/CommonDialog;

    invoke-virtual {p0}, Lcom/yftech/settings/connect/LinkFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yftech/settings/widget/dialog/CommonDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yftech/settings/connect/LinkFragment;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    .line 219
    iget-object v0, p0, Lcom/yftech/settings/connect/LinkFragment;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    invoke-virtual {v0}, Lcom/yftech/settings/widget/dialog/CommonDialog;->show()V

    .line 220
    iget-object v0, p0, Lcom/yftech/settings/connect/LinkFragment;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    new-instance v1, Lcom/yftech/settings/connect/LinkFragment$5;

    invoke-direct {v1, p0}, Lcom/yftech/settings/connect/LinkFragment$5;-><init>(Lcom/yftech/settings/connect/LinkFragment;)V

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/dialog/CommonDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 226
    iget-object v0, p0, Lcom/yftech/settings/connect/LinkFragment;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    new-instance v1, Lcom/yftech/settings/connect/LinkFragment$6;

    invoke-direct {v1, p0, p1}, Lcom/yftech/settings/connect/LinkFragment$6;-><init>(Lcom/yftech/settings/connect/LinkFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/dialog/CommonDialog;->setOnBtnClickListener(Lcom/yftech/settings/widget/dialog/CommonDialog$OnBtnClickListener;)Lcom/yftech/settings/widget/dialog/CommonDialog;

    const-string v0, ""

    const-string v1, "carlife"

    .line 245
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    invoke-virtual {p0}, Lcom/yftech/settings/connect/LinkFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0d00f0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v1, "carplay"

    .line 247
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 248
    invoke-virtual {p0}, Lcom/yftech/settings/connect/LinkFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0d00f1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v1, "hicar"

    .line 249
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 250
    invoke-virtual {p0}, Lcom/yftech/settings/connect/LinkFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0d00f2

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 252
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/yftech/settings/connect/LinkFragment;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    invoke-virtual {p0}, Lcom/yftech/settings/connect/LinkFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d00f3

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yftech/settings/widget/dialog/CommonDialog;->setContent(Ljava/lang/String;)Lcom/yftech/settings/widget/dialog/CommonDialog;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 253
    invoke-virtual {p0}, Lcom/yftech/settings/connect/LinkFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d00e4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-virtual {p0}, Lcom/yftech/settings/connect/LinkFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f0d00e3

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v3

    invoke-virtual {p1, v0}, Lcom/yftech/settings/widget/dialog/CommonDialog;->setButtonText([Ljava/lang/String;)Lcom/yftech/settings/widget/dialog/CommonDialog;

    return-void
.end method

.method private showHicarAddDeviceDisconnectCurHicarDialog()V
    .locals 4

    const-string v0, "LinkFragment"

    const-string v1, "showHicarAddDeviceDisconnectCurHicarDialog()"

    .line 171
    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    new-instance v0, Lcom/yftech/settings/widget/dialog/CommonDialog;

    invoke-virtual {p0}, Lcom/yftech/settings/connect/LinkFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yftech/settings/widget/dialog/CommonDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yftech/settings/connect/LinkFragment;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    .line 173
    iget-object v0, p0, Lcom/yftech/settings/connect/LinkFragment;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    invoke-virtual {v0}, Lcom/yftech/settings/widget/dialog/CommonDialog;->show()V

    .line 174
    iget-object v0, p0, Lcom/yftech/settings/connect/LinkFragment;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    new-instance v1, Lcom/yftech/settings/connect/LinkFragment$3;

    invoke-direct {v1, p0}, Lcom/yftech/settings/connect/LinkFragment$3;-><init>(Lcom/yftech/settings/connect/LinkFragment;)V

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/dialog/CommonDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 180
    iget-object v0, p0, Lcom/yftech/settings/connect/LinkFragment;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    new-instance v1, Lcom/yftech/settings/connect/LinkFragment$4;

    invoke-direct {v1, p0}, Lcom/yftech/settings/connect/LinkFragment$4;-><init>(Lcom/yftech/settings/connect/LinkFragment;)V

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/dialog/CommonDialog;->setOnBtnClickListener(Lcom/yftech/settings/widget/dialog/CommonDialog$OnBtnClickListener;)Lcom/yftech/settings/widget/dialog/CommonDialog;

    .line 197
    iget-object v0, p0, Lcom/yftech/settings/connect/LinkFragment;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    invoke-virtual {p0}, Lcom/yftech/settings/connect/LinkFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d00f6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/dialog/CommonDialog;->setContent(Ljava/lang/String;)Lcom/yftech/settings/widget/dialog/CommonDialog;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 198
    invoke-virtual {p0}, Lcom/yftech/settings/connect/LinkFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d00e4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 199
    invoke-virtual {p0}, Lcom/yftech/settings/connect/LinkFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const v2, 0x7f0d00e3

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v1, v2

    .line 198
    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/dialog/CommonDialog;->setButtonText([Ljava/lang/String;)Lcom/yftech/settings/widget/dialog/CommonDialog;

    return-void
.end method

.method private updateCarPlayList()V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/yftech/settings/connect/LinkFragment;->mLinkCarplayAdapter:Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;

    if-nez v0, :cond_0

    .line 156
    new-instance v0, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;

    invoke-virtual {p0}, Lcom/yftech/settings/connect/LinkFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yftech/settings/connect/LinkFragment;->mLinkCarplayAdapter:Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/yftech/settings/connect/LinkFragment;->mCarPlayLv:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yftech/settings/connect/LinkFragment;->mLinkCarplayAdapter:Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 159
    iget-object p0, p0, Lcom/yftech/settings/connect/LinkFragment;->mLinkCarplayAdapter:Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;

    invoke-static {}, Lcom/yftech/settings/manager/LinkCarplayManager;->getInstance()Lcom/yftech/settings/manager/LinkCarplayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/settings/manager/LinkCarplayManager;->getCarLinkDeviceList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;->updateAdapter(Ljava/util/List;)V

    return-void
.end method

.method private updateHiCarList()V
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/yftech/settings/connect/LinkFragment;->mLinkHicarAdapter:Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;

    if-nez v0, :cond_0

    .line 164
    new-instance v0, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;

    invoke-virtual {p0}, Lcom/yftech/settings/connect/LinkFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yftech/settings/connect/LinkFragment;->mLinkHicarAdapter:Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/yftech/settings/connect/LinkFragment;->mHiCarLv:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yftech/settings/connect/LinkFragment;->mLinkHicarAdapter:Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 167
    iget-object p0, p0, Lcom/yftech/settings/connect/LinkFragment;->mLinkHicarAdapter:Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;

    invoke-static {}, Lcom/yftech/settings/manager/LinkHicarManager;->getInstance()Lcom/yftech/settings/manager/LinkHicarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/settings/manager/LinkHicarManager;->getCarLinkDeviceList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;->updateAdapter(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected dismissAllDialog()V
    .locals 1

    .line 258
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->dismissAllDialog()V

    .line 259
    iget-object v0, p0, Lcom/yftech/settings/connect/LinkFragment;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/settings/connect/LinkFragment;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    invoke-virtual {v0}, Lcom/yftech/settings/widget/dialog/CommonDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/yftech/settings/connect/LinkFragment;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    invoke-virtual {v0}, Lcom/yftech/settings/widget/dialog/CommonDialog;->dismiss()V

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/yftech/settings/connect/LinkFragment;->mLinkCarplayAdapter:Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;

    if-eqz v0, :cond_1

    .line 263
    iget-object v0, p0, Lcom/yftech/settings/connect/LinkFragment;->mLinkCarplayAdapter:Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;

    invoke-virtual {v0}, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;->dismissDialog()V

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/yftech/settings/connect/LinkFragment;->mLinkHicarAdapter:Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;

    if-eqz v0, :cond_2

    .line 266
    iget-object p0, p0, Lcom/yftech/settings/connect/LinkFragment;->mLinkHicarAdapter:Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;

    invoke-virtual {p0}, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;->dismissDialog()V

    :cond_2
    return-void
.end method

.method public onCarPlayListChanged()V
    .locals 0

    .line 146
    invoke-direct {p0}, Lcom/yftech/settings/connect/LinkFragment;->updateCarPlayList()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const p3, 0x7f0a003a

    const/4 v0, 0x0

    .line 51
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 52
    invoke-direct {p0, p1}, Lcom/yftech/settings/connect/LinkFragment;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method public onHiCarListChanged()V
    .locals 0

    .line 151
    invoke-direct {p0}, Lcom/yftech/settings/connect/LinkFragment;->updateHiCarList()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 116
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onPause()V

    const-string p0, "LinkFragment"

    const-string v0, "onPause()"

    .line 117
    invoke-static {p0, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 110
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onResume()V

    const-string p0, "LinkFragment"

    const-string v0, "onResume()"

    .line 111
    invoke-static {p0, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 122
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onStart()V

    const-string v0, "LinkFragment"

    const-string v1, "onStart()"

    .line 123
    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-static {}, Lcom/yftech/settings/manager/LinkCarplayManager;->getInstance()Lcom/yftech/settings/manager/LinkCarplayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/settings/manager/LinkCarplayManager;->startDiscover()V

    .line 125
    invoke-direct {p0}, Lcom/yftech/settings/connect/LinkFragment;->initViewDate()V

    .line 126
    invoke-static {}, Lcom/yftech/settings/manager/LinkCarplayManager;->getInstance()Lcom/yftech/settings/manager/LinkCarplayManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yftech/settings/manager/LinkCarplayManager;->addLinkCarplayListener(Lcom/yftech/settings/manager/LinkCarplayManager$LinkCarplayListener;)V

    .line 127
    invoke-static {}, Lcom/yftech/settings/manager/LinkHicarManager;->getInstance()Lcom/yftech/settings/manager/LinkHicarManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yftech/settings/manager/LinkHicarManager;->addLinkHicarListener(Lcom/yftech/settings/manager/LinkHicarManager$LinkHicarListener;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 132
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onStop()V

    const-string v0, "LinkFragment"

    const-string v1, "onStop()"

    .line 133
    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-static {}, Lcom/yftech/settings/manager/LinkCarplayManager;->getInstance()Lcom/yftech/settings/manager/LinkCarplayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/settings/manager/LinkCarplayManager;->stopDiscover()V

    .line 135
    invoke-static {}, Lcom/yftech/settings/manager/LinkCarplayManager;->getInstance()Lcom/yftech/settings/manager/LinkCarplayManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yftech/settings/manager/LinkCarplayManager;->removeLinkCarplayListener(Lcom/yftech/settings/manager/LinkCarplayManager$LinkCarplayListener;)V

    .line 136
    invoke-static {}, Lcom/yftech/settings/manager/LinkHicarManager;->getInstance()Lcom/yftech/settings/manager/LinkHicarManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yftech/settings/manager/LinkHicarManager;->removeLinkHicarListener(Lcom/yftech/settings/manager/LinkHicarManager$LinkHicarListener;)V

    return-void
.end method
