.class public Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;
.super Landroid/widget/BaseAdapter;
.source "LinkHicarAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LinkHicarAdapter"


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

.field private showDetailsPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;->mCarLinkDevices:Ljava/util/List;

    const/4 v0, -0x1

    .line 32
    iput v0, p0, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;->showDetailsPosition:I

    .line 36
    iput-object p1, p0, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;Ljava/lang/String;Lcom/yftech/car/phonelink/CarLinkDevice;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;->showHiCarConnectNewDisconnectCurDialog(Ljava/lang/String;Lcom/yftech/car/phonelink/CarLinkDevice;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;->showDetailsPosition:I

    return p0
.end method

.method static synthetic access$1202(Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;I)I
    .locals 0

    .line 26
    iput p1, p0, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;->showDetailsPosition:I

    return p1
.end method

.method static synthetic access$1300(Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;Lcom/yftech/car/phonelink/CarLinkDevice;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;->showIgnoreDialog(Lcom/yftech/car/phonelink/CarLinkDevice;)V

    return-void
.end method

.method static synthetic access$1402(Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;Lcom/yftech/settings/widget/dialog/CommonDialog;)Lcom/yftech/settings/widget/dialog/CommonDialog;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    return-object p1
.end method

.method static synthetic access$900(Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;->mCarLinkDevices:Ljava/util/List;

    return-object p0
.end method

.method private showHiCarConnectNewDisconnectCurDialog(Ljava/lang/String;Lcom/yftech/car/phonelink/CarLinkDevice;)V
    .locals 5

    .line 187
    sget-object v0, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;->TAG:Ljava/lang/String;

    const-string v1, "showHiCarConnectNewDisconnectCurDialog()"

    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    new-instance v0, Lcom/yftech/settings/widget/dialog/CommonDialog;

    iget-object v1, p0, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/yftech/settings/widget/dialog/CommonDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    .line 189
    iget-object v0, p0, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    invoke-virtual {v0}, Lcom/yftech/settings/widget/dialog/CommonDialog;->show()V

    .line 190
    iget-object v0, p0, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    new-instance v1, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$7;

    invoke-direct {v1, p0}, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$7;-><init>(Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;)V

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/dialog/CommonDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 196
    iget-object v0, p0, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    new-instance v1, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$8;-><init>(Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;Ljava/lang/String;Lcom/yftech/car/phonelink/CarLinkDevice;)V

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/dialog/CommonDialog;->setOnBtnClickListener(Lcom/yftech/settings/widget/dialog/CommonDialog$OnBtnClickListener;)Lcom/yftech/settings/widget/dialog/CommonDialog;

    const-string p2, ""

    const-string v0, "carlife"

    .line 215
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    iget-object p1, p0, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;->context:Landroid/content/Context;

    const p2, 0x7f0d00f0

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string v0, "carplay"

    .line 217
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    iget-object p1, p0, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;->context:Landroid/content/Context;

    const p2, 0x7f0d00f1

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const-string v0, "hicar"

    .line 219
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 220
    iget-object p1, p0, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;->context:Landroid/content/Context;

    const p2, 0x7f0d00f2

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 222
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    iget-object v0, p0, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;->context:Landroid/content/Context;

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

    iget-object v0, p0, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;->context:Landroid/content/Context;

    const v1, 0x7f0d00e4

    .line 223
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v4

    iget-object p0, p0, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;->context:Landroid/content/Context;

    const v0, 0x7f0d00e3

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v2

    invoke-virtual {p1, p2}, Lcom/yftech/settings/widget/dialog/CommonDialog;->setButtonText([Ljava/lang/String;)Lcom/yftech/settings/widget/dialog/CommonDialog;

    return-void
.end method

.method private showIgnoreDialog(Lcom/yftech/car/phonelink/CarLinkDevice;)V
    .locals 5

    .line 152
    new-instance v0, Lcom/yftech/settings/widget/dialog/CommonDialog;

    iget-object v1, p0, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/yftech/settings/widget/dialog/CommonDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    .line 153
    iget-object v0, p0, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    invoke-virtual {v0}, Lcom/yftech/settings/widget/dialog/CommonDialog;->show()V

    .line 154
    iget-object v0, p0, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    new-instance v1, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$5;

    invoke-direct {v1, p0}, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$5;-><init>(Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;)V

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/dialog/CommonDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 160
    iget-object v0, p0, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    new-instance v1, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$6;

    invoke-direct {v1, p0, p1}, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$6;-><init>(Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;Lcom/yftech/car/phonelink/CarLinkDevice;)V

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/dialog/CommonDialog;->setOnBtnClickListener(Lcom/yftech/settings/widget/dialog/CommonDialog$OnBtnClickListener;)Lcom/yftech/settings/widget/dialog/CommonDialog;

    .line 176
    iget-object v0, p0, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;->context:Landroid/content/Context;

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

    const p1, 0x7f0d011d

    invoke-virtual {v0, p1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 177
    iget-object v0, p0, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    invoke-virtual {v0, p1}, Lcom/yftech/settings/widget/dialog/CommonDialog;->setContent(Ljava/lang/String;)Lcom/yftech/settings/widget/dialog/CommonDialog;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iget-object v2, p0, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;->context:Landroid/content/Context;

    const v4, 0x7f0d00e4

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    iget-object p0, p0, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;->context:Landroid/content/Context;

    const v2, 0x7f0d00e3

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lcom/yftech/settings/widget/dialog/CommonDialog;->setButtonText([Ljava/lang/String;)Lcom/yftech/settings/widget/dialog/CommonDialog;

    return-void
.end method


# virtual methods
.method public dismissDialog()V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    invoke-virtual {v0}, Lcom/yftech/settings/widget/dialog/CommonDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object p0, p0, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    invoke-virtual {p0}, Lcom/yftech/settings/widget/dialog/CommonDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;->mCarLinkDevices:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;->mCarLinkDevices:Ljava/util/List;

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
    .locals 7

    const/4 p3, 0x0

    if-nez p2, :cond_0

    .line 64
    iget-object p2, p0, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0a006a

    invoke-virtual {p2, v0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 65
    new-instance v0, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$ViewHolder;

    invoke-direct {v0, p0, p3}, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$ViewHolder;-><init>(Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$1;)V

    const v1, 0x7f080114

    .line 66
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$ViewHolder;->access$102(Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$ViewHolder;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    const v1, 0x7f080227

    .line 67
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$ViewHolder;->access$202(Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v1, 0x7f080105

    .line 68
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$ViewHolder;->access$302(Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    const v1, 0x7f08022a

    .line 69
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$ViewHolder;->access$402(Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v1, 0x7f080067

    .line 70
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$ViewHolder;->access$502(Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$ViewHolder;Landroid/widget/Button;)Landroid/widget/Button;

    const v1, 0x7f080107

    .line 71
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$ViewHolder;->access$602(Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    const v1, 0x7f080112

    .line 72
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$ViewHolder;->access$702(Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$ViewHolder;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    const v1, 0x7f080223

    .line 73
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$ViewHolder;->access$802(Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 74
    invoke-static {v0}, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$ViewHolder;->access$100(Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v1

    new-instance v2, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$1;

    invoke-direct {v2, p0, p1}, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$1;-><init>(Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    invoke-static {v0}, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$ViewHolder;->access$500(Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$ViewHolder;)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$2;

    invoke-direct {v2, p0, p1}, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$2;-><init>(Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    invoke-static {v0}, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$ViewHolder;->access$600(Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$3;

    invoke-direct {v2, p0, p1}, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$3;-><init>(Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    invoke-static {v0}, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$ViewHolder;->access$800(Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$4;

    invoke-direct {v2, p0, p1}, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$4;-><init>(Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$ViewHolder;

    .line 119
    :goto_0
    iget-object v1, p0, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;->mCarLinkDevices:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/phonelink/CarLinkDevice;

    .line 120
    invoke-static {v0}, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$ViewHolder;->access$200(Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/yftech/car/phonelink/CarLinkDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/yftech/settings/utils/CommonUtils;->getLimitDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    invoke-static {v0}, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$ViewHolder;->access$300(Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f0b012e

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 122
    invoke-static {v0}, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$ViewHolder;->access$400(Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/yftech/car/phonelink/CarLinkDevice;->getConnectedStatus()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;->context:Landroid/content/Context;

    const v5, 0x7f0d00c5

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    const-string v3, ""

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    invoke-static {v0}, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$ViewHolder;->access$300(Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/yftech/car/phonelink/CarLinkDevice;->getConnectedStatus()I

    move-result v3

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-ne v3, v4, :cond_2

    move v3, v6

    goto :goto_2

    :cond_2
    move v3, v5

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 124
    invoke-static {v0}, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$ViewHolder;->access$400(Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/yftech/car/phonelink/CarLinkDevice;->getConnectedStatus()I

    move-result v3

    if-ne v3, v4, :cond_3

    move v3, v6

    goto :goto_3

    :cond_3
    move v3, v5

    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    invoke-static {v0}, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$ViewHolder;->access$500(Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$ViewHolder;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1}, Lcom/yftech/car/phonelink/CarLinkDevice;->getConnectedStatus()I

    move-result v3

    if-ne v3, v4, :cond_4

    move v3, v6

    goto :goto_4

    :cond_4
    move v3, v5

    :goto_4
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 126
    invoke-virtual {v1}, Lcom/yftech/car/phonelink/CarLinkDevice;->getConnectedType()I

    move-result v2

    if-ne v2, v4, :cond_5

    .line 127
    invoke-static {v0}, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$ViewHolder;->access$600(Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 128
    invoke-static {v0}, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$ViewHolder;->access$700(Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_6

    .line 130
    :cond_5
    invoke-static {v0}, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$ViewHolder;->access$700(Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v2

    iget p0, p0, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;->showDetailsPosition:I

    if-ne p0, p1, :cond_6

    move v5, v6

    :cond_6
    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 131
    invoke-static {v0}, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$ViewHolder;->access$600(Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-static {v0}, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$ViewHolder;->access$700(Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_7

    const p1, 0x7f0b012b

    goto :goto_5

    :cond_7
    const p1, 0x7f0b0129

    :goto_5
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 133
    invoke-static {v0}, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$ViewHolder;->access$600(Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 135
    :goto_6
    invoke-static {v0}, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$ViewHolder;->access$700(Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    invoke-static {v0}, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$ViewHolder;->access$100(Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object p0

    invoke-virtual {v1}, Lcom/yftech/car/phonelink/CarLinkDevice;->getConnectedStatus()I

    move-result p1

    if-eq p1, v4, :cond_8

    goto :goto_7

    :cond_8
    move v4, v6

    :goto_7
    invoke-virtual {p0, v4}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

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

    .line 40
    iget-object v0, p0, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;->mCarLinkDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 41
    iget-object v0, p0, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;->mCarLinkDevices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 42
    invoke-virtual {p0}, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;->notifyDataSetChanged()V

    return-void
.end method
