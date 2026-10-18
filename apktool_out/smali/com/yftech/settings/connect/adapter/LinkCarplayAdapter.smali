.class public Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;
.super Landroid/widget/BaseAdapter;
.source "LinkCarplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LinkCarplayAdapter"


# instance fields
.field private context:Landroid/content/Context;

.field private mCarLinkDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/phonelink/CarLinkDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

.field private mIsCertificate:Z

.field private showDetailsPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;->mCarLinkDevices:Ljava/util/List;

    const/4 v0, -0x1

    .line 37
    iput v0, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;->showDetailsPosition:I

    .line 42
    iput-object p1, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$1000(Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;Ljava/lang/String;Lcom/yftech/car/phonelink/CarLinkDevice;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;->showCarplayConnectNewDisconnectCurDialog(Ljava/lang/String;Lcom/yftech/car/phonelink/CarLinkDevice;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;->showDetailsPosition:I

    return p0
.end method

.method static synthetic access$1102(Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;I)I
    .locals 0

    .line 31
    iput p1, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;->showDetailsPosition:I

    return p1
.end method

.method static synthetic access$1200(Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;Lcom/yftech/car/phonelink/CarLinkDevice;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;->showIgnoreDialog(Lcom/yftech/car/phonelink/CarLinkDevice;)V

    return-void
.end method

.method static synthetic access$1302(Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;Lcom/yftech/settings/widget/dialog/CommonDialog;)Lcom/yftech/settings/widget/dialog/CommonDialog;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    return-object p1
.end method

.method static synthetic access$900(Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;)Ljava/util/List;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;->mCarLinkDevices:Ljava/util/List;

    return-object p0
.end method

.method private showCarplayConnectNewDisconnectCurDialog(Ljava/lang/String;Lcom/yftech/car/phonelink/CarLinkDevice;)V
    .locals 5

    const-string v0, "LinkCarplayAdapter"

    const-string v1, "showCarplayConnectNewDisconnectCurDialog()"

    .line 224
    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    new-instance v0, Lcom/yftech/settings/widget/dialog/CommonDialog;

    iget-object v1, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/yftech/settings/widget/dialog/CommonDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    .line 226
    iget-object v0, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    invoke-virtual {v0}, Lcom/yftech/settings/widget/dialog/CommonDialog;->show()V

    .line 227
    iget-object v0, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    new-instance v1, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$7;

    invoke-direct {v1, p0}, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$7;-><init>(Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;)V

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/dialog/CommonDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 233
    iget-object v0, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    new-instance v1, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$8;-><init>(Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;Ljava/lang/String;Lcom/yftech/car/phonelink/CarLinkDevice;)V

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/dialog/CommonDialog;->setOnBtnClickListener(Lcom/yftech/settings/widget/dialog/CommonDialog$OnBtnClickListener;)Lcom/yftech/settings/widget/dialog/CommonDialog;

    const-string p2, ""

    const-string v0, "carlife"

    .line 252
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    iget-object p1, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;->context:Landroid/content/Context;

    const p2, 0x7f0d00f0

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string v0, "carplay"

    .line 254
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    iget-object p1, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;->context:Landroid/content/Context;

    const p2, 0x7f0d00f1

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const-string v0, "hicar"

    .line 256
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 257
    iget-object p1, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;->context:Landroid/content/Context;

    const p2, 0x7f0d00f2

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 259
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    iget-object v0, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;->context:Landroid/content/Context;

    const v1, 0x7f0d00f3

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/yftech/settings/widget/dialog/CommonDialog;->setContent(Ljava/lang/String;)Lcom/yftech/settings/widget/dialog/CommonDialog;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/String;

    iget-object v0, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;->context:Landroid/content/Context;

    const v1, 0x7f0d00e4

    .line 260
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v4

    iget-object p0, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;->context:Landroid/content/Context;

    const v0, 0x7f0d00e3

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v2

    invoke-virtual {p1, p2}, Lcom/yftech/settings/widget/dialog/CommonDialog;->setButtonText([Ljava/lang/String;)Lcom/yftech/settings/widget/dialog/CommonDialog;

    return-void
.end method

.method private showCarplayOpenApDialog()V
    .locals 4

    const-string v0, "LinkCarplayAdapter"

    const-string v1, "showCarplayOpenApDialog()"

    .line 264
    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    new-instance v0, Lcom/yftech/settings/widget/dialog/CommonDialog;

    iget-object v1, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/yftech/settings/widget/dialog/CommonDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    .line 266
    iget-object v0, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    invoke-virtual {v0}, Lcom/yftech/settings/widget/dialog/CommonDialog;->show()V

    .line 267
    iget-object v0, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    new-instance v1, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$9;

    invoke-direct {v1, p0}, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$9;-><init>(Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;)V

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/dialog/CommonDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 273
    iget-object v0, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    new-instance v1, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$10;

    invoke-direct {v1, p0}, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$10;-><init>(Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;)V

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/dialog/CommonDialog;->setOnBtnClickListener(Lcom/yftech/settings/widget/dialog/CommonDialog$OnBtnClickListener;)Lcom/yftech/settings/widget/dialog/CommonDialog;

    .line 289
    iget-object v0, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    iget-object v1, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;->context:Landroid/content/Context;

    const v2, 0x7f0d00e8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/dialog/CommonDialog;->setContent(Ljava/lang/String;)Lcom/yftech/settings/widget/dialog/CommonDialog;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;->context:Landroid/content/Context;

    const v3, 0x7f0d00e4

    .line 290
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object p0, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;->context:Landroid/content/Context;

    const v2, 0x7f0d00e3

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/dialog/CommonDialog;->setButtonText([Ljava/lang/String;)Lcom/yftech/settings/widget/dialog/CommonDialog;

    return-void
.end method

.method private showIgnoreDialog(Lcom/yftech/car/phonelink/CarLinkDevice;)V
    .locals 5

    .line 195
    new-instance v0, Lcom/yftech/settings/widget/dialog/CommonDialog;

    iget-object v1, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/yftech/settings/widget/dialog/CommonDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    .line 196
    iget-object v0, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    invoke-virtual {v0}, Lcom/yftech/settings/widget/dialog/CommonDialog;->show()V

    .line 197
    iget-object v0, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    new-instance v1, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$5;

    invoke-direct {v1, p0}, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$5;-><init>(Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;)V

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/dialog/CommonDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 203
    iget-object v0, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    new-instance v1, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$6;

    invoke-direct {v1, p0, p1}, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$6;-><init>(Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;Lcom/yftech/car/phonelink/CarLinkDevice;)V

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/dialog/CommonDialog;->setOnBtnClickListener(Lcom/yftech/settings/widget/dialog/CommonDialog$OnBtnClickListener;)Lcom/yftech/settings/widget/dialog/CommonDialog;

    .line 219
    iget-object v0, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/yftech/car/phonelink/CarLinkDevice;->getDeviceName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/yftech/settings/utils/CommonUtils;->getLimitDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const p1, 0x7f0d00be

    invoke-virtual {v0, p1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 220
    iget-object v0, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    invoke-virtual {v0, p1}, Lcom/yftech/settings/widget/dialog/CommonDialog;->setContent(Ljava/lang/String;)Lcom/yftech/settings/widget/dialog/CommonDialog;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iget-object v2, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;->context:Landroid/content/Context;

    const v4, 0x7f0d00bc

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    iget-object p0, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;->context:Landroid/content/Context;

    const v2, 0x7f0d00bd

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lcom/yftech/settings/widget/dialog/CommonDialog;->setButtonText([Ljava/lang/String;)Lcom/yftech/settings/widget/dialog/CommonDialog;

    return-void
.end method


# virtual methods
.method public dismissDialog()V
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    invoke-virtual {v0}, Lcom/yftech/settings/widget/dialog/CommonDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    iget-object p0, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    invoke-virtual {p0}, Lcom/yftech/settings/widget/dialog/CommonDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;->mCarLinkDevices:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;->mCarLinkDevices:Ljava/util/List;

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

    const/4 p3, 0x0

    if-nez p2, :cond_1

    .line 71
    iget-object p2, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0a006a

    invoke-virtual {p2, v0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 72
    new-instance v0, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$ViewHolder;

    invoke-direct {v0, p0, p3}, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$ViewHolder;-><init>(Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$1;)V

    const v1, 0x7f080114

    .line 73
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$ViewHolder;->access$102(Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$ViewHolder;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    const v1, 0x7f080227

    .line 74
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$ViewHolder;->access$202(Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v1, 0x7f080105

    .line 75
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$ViewHolder;->access$302(Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    const v1, 0x7f08022a

    .line 76
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$ViewHolder;->access$402(Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v1, 0x7f080067

    .line 77
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$ViewHolder;->access$502(Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$ViewHolder;Landroid/widget/Button;)Landroid/widget/Button;

    const v1, 0x7f080107

    .line 78
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$ViewHolder;->access$602(Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    const v1, 0x7f080112

    .line 79
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$ViewHolder;->access$702(Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$ViewHolder;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    const v1, 0x7f080223

    .line 80
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$ViewHolder;->access$802(Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 82
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 83
    new-instance v2, Ljava/util/Locale;

    const-string v3, "ar"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    invoke-static {v0}, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$ViewHolder;->access$200(Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x800015

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 88
    :cond_0
    invoke-static {v0}, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$ViewHolder;->access$100(Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v1

    new-instance v2, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$1;

    invoke-direct {v2, p0, p1}, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$1;-><init>(Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    invoke-static {v0}, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$ViewHolder;->access$500(Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$ViewHolder;)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$2;

    invoke-direct {v2, p0, p1}, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$2;-><init>(Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    invoke-static {v0}, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$ViewHolder;->access$600(Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$3;

    invoke-direct {v2, p0, p1}, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$3;-><init>(Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    invoke-static {v0}, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$ViewHolder;->access$800(Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$4;

    invoke-direct {v2, p0, p1}, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$4;-><init>(Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 148
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$ViewHolder;

    .line 150
    :goto_0
    iget-object v1, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;->mCarLinkDevices:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/phonelink/CarLinkDevice;

    .line 151
    invoke-static {v0}, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$ViewHolder;->access$200(Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/yftech/car/phonelink/CarLinkDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/yftech/settings/utils/CommonUtils;->getLimitDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    invoke-static {v0}, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$ViewHolder;->access$300(Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f0b0107

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 153
    invoke-static {v0}, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$ViewHolder;->access$400(Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/yftech/car/phonelink/CarLinkDevice;->getConnectedStatus()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;->context:Landroid/content/Context;

    const v5, 0x7f0d00c5

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    const-string v3, ""

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    invoke-static {v0}, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$ViewHolder;->access$300(Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/yftech/car/phonelink/CarLinkDevice;->getConnectedStatus()I

    move-result v3

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-ne v3, v4, :cond_3

    move v3, v6

    goto :goto_2

    :cond_3
    move v3, v5

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 155
    invoke-static {v0}, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$ViewHolder;->access$400(Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/yftech/car/phonelink/CarLinkDevice;->getConnectedStatus()I

    move-result v3

    if-ne v3, v4, :cond_4

    move v3, v6

    goto :goto_3

    :cond_4
    move v3, v5

    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    invoke-virtual {v1}, Lcom/yftech/car/phonelink/CarLinkDevice;->getConnectedType()I

    move-result v2

    const v3, 0x7f0b012a

    const v7, 0x7f0b012b

    if-ne v2, v4, :cond_9

    .line 160
    iget-boolean v2, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;->mIsCertificate:Z

    if-eqz v2, :cond_8

    .line 161
    invoke-static {v0}, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$ViewHolder;->access$700(Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v2

    iget p0, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;->showDetailsPosition:I

    if-ne p0, p1, :cond_5

    move p0, v6

    goto :goto_4

    :cond_5
    move p0, v5

    :goto_4
    invoke-virtual {v2, p0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 162
    invoke-static {v0}, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$ViewHolder;->access$600(Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-static {v0}, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$ViewHolder;->access$700(Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_6

    move v3, v7

    :cond_6
    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 164
    invoke-static {v0}, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$ViewHolder;->access$600(Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 165
    invoke-static {v0}, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$ViewHolder;->access$500(Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$ViewHolder;)Landroid/widget/Button;

    move-result-object p0

    invoke-virtual {v1}, Lcom/yftech/car/phonelink/CarLinkDevice;->getConnectedStatus()I

    move-result p1

    if-ne p1, v4, :cond_7

    move v5, v6

    :cond_7
    invoke-virtual {p0, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_6

    .line 167
    :cond_8
    invoke-static {v0}, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$ViewHolder;->access$600(Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 168
    invoke-static {v0}, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$ViewHolder;->access$700(Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 169
    invoke-static {v0}, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$ViewHolder;->access$500(Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$ViewHolder;)Landroid/widget/Button;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_6

    .line 172
    :cond_9
    invoke-static {v0}, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$ViewHolder;->access$700(Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v2

    iget p0, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;->showDetailsPosition:I

    if-ne p0, p1, :cond_a

    move p0, v6

    goto :goto_5

    :cond_a
    move p0, v5

    :goto_5
    invoke-virtual {v2, p0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 173
    invoke-static {v0}, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$ViewHolder;->access$600(Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-static {v0}, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$ViewHolder;->access$700(Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_b

    move v3, v7

    :cond_b
    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 175
    invoke-static {v0}, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$ViewHolder;->access$600(Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 176
    invoke-static {v0}, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$ViewHolder;->access$500(Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$ViewHolder;)Landroid/widget/Button;

    move-result-object p0

    invoke-virtual {v1}, Lcom/yftech/car/phonelink/CarLinkDevice;->getConnectedStatus()I

    move-result p1

    if-ne p1, v4, :cond_c

    move v5, v6

    :cond_c
    invoke-virtual {p0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 178
    :goto_6
    invoke-static {v0}, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$ViewHolder;->access$100(Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object p0

    invoke-virtual {v1}, Lcom/yftech/car/phonelink/CarLinkDevice;->getConnectedStatus()I

    move-result p1

    if-eq p1, v4, :cond_d

    goto :goto_7

    :cond_d
    move v4, v6

    :goto_7
    invoke-virtual {p0, v4}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 179
    invoke-static {v0}, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$ViewHolder;->access$700(Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public updateAdapter(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/phonelink/CarLinkDevice;",
            ">;)V"
        }
    .end annotation

    .line 46
    invoke-static {}, Lcom/yftech/settings/utils/Utils;->isCarPlayCertificate()Z

    move-result v0

    iput-boolean v0, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;->mIsCertificate:Z

    .line 47
    iget-object v0, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;->mCarLinkDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 48
    iget-object v0, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;->mCarLinkDevices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 49
    invoke-virtual {p0}, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;->notifyDataSetChanged()V

    return-void
.end method
