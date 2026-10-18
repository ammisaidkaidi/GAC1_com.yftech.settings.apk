.class public Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter;
.super Landroid/widget/BaseAdapter;
.source "BluetoothUnPairedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter$ViewHolder;,
        Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter$OnClickConnectListener;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private mBluetoothDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCertificate:Z

.field private mOnClickConnectListener:Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter$OnClickConnectListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter;->mBluetoothDevices:Ljava/util/List;

    .line 35
    iput-object p1, p0, Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$500(Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter;)Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter$OnClickConnectListener;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter;->mOnClickConnectListener:Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter$OnClickConnectListener;

    return-object p0
.end method

.method private isDeviceSupportCarPlay(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    .line 110
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 112
    array-length v0, p1

    move v1, p0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 113
    invoke-virtual {v2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "2D8D2466-E14D-451C-88BC-7301ABEA291A"

    .line 114
    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return p0
.end method


# virtual methods
.method public getCount()I
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter;->mBluetoothDevices:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter;->mBluetoothDevices:Ljava/util/List;

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
    .locals 3

    if-nez p2, :cond_0

    .line 68
    iget-object p2, p0, Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0a001f

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 69
    new-instance p3, Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter$ViewHolder;

    invoke-direct {p3, p0, v0}, Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter$ViewHolder;-><init>(Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter;Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter$1;)V

    const v0, 0x7f08020c

    .line 70
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p3, v0}, Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter$ViewHolder;->access$102(Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v0, 0x7f080213

    .line 71
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p3, v0}, Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter$ViewHolder;->access$202(Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v0, 0x7f080057

    .line 72
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p3, v0}, Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter$ViewHolder;->access$302(Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v0, 0x7f0800ec

    .line 73
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p3, v0}, Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter$ViewHolder;->access$402(Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 74
    invoke-static {p3}, Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter$ViewHolder;->access$300(Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter$1;-><init>(Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter$ViewHolder;

    .line 86
    :goto_0
    iget-object v0, p0, Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter;->mBluetoothDevices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 87
    invoke-static {p3}, Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter$ViewHolder;->access$100(Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 88
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v1}, Lcom/yftech/settings/utils/CommonUtils;->getLimitDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 87
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    invoke-static {p3}, Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter$ViewHolder;->access$200(Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter;->context:Landroid/content/Context;

    const v2, 0x7f0d008f

    .line 90
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_2
    const-string v1, ""

    .line 89
    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-boolean v0, p0, Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter;->mIsCertificate:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_4

    .line 92
    invoke-direct {p0, p1}, Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter;->isDeviceSupportCarPlay(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    .line 93
    invoke-static {p3}, Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter$ViewHolder;->access$400(Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p0, :cond_3

    const/4 v1, 0x0

    :cond_3
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 95
    :cond_4
    invoke-static {p3}, Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter$ViewHolder;->access$400(Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_4
    return-object p2
.end method

.method public setOnClickConnectListener(Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter$OnClickConnectListener;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter;->mOnClickConnectListener:Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter$OnClickConnectListener;

    return-void
.end method

.method public updateAdapter(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;)V"
        }
    .end annotation

    .line 39
    invoke-static {}, Lcom/yftech/settings/utils/Utils;->isCarPlayCertificate()Z

    move-result v0

    iput-boolean v0, p0, Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter;->mIsCertificate:Z

    .line 40
    iget-object v0, p0, Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter;->mBluetoothDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 41
    iget-object v0, p0, Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter;->mBluetoothDevices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 42
    invoke-virtual {p0}, Lcom/yftech/settings/connect/adapter/BluetoothUnPairedAdapter;->notifyDataSetChanged()V

    return-void
.end method
