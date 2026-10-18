.class public Lcom/yftech/settings/connect/adapter/LinkCarplayAvailableAdapter;
.super Landroid/widget/BaseAdapter;
.source "LinkCarplayAvailableAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/settings/connect/adapter/LinkCarplayAvailableAdapter$ViewHolder;
    }
.end annotation


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


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAvailableAdapter;->mCarLinkDevices:Ljava/util/List;

    .line 23
    iput-object p1, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAvailableAdapter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAvailableAdapter;->mCarLinkDevices:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItem(I)Lcom/yftech/car/phonelink/CarLinkDevice;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAvailableAdapter;->mCarLinkDevices:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yftech/car/phonelink/CarLinkDevice;

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/yftech/settings/connect/adapter/LinkCarplayAvailableAdapter;->getItem(I)Lcom/yftech/car/phonelink/CarLinkDevice;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    .line 51
    iget-object p2, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAvailableAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0a0069

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 52
    new-instance p3, Lcom/yftech/settings/connect/adapter/LinkCarplayAvailableAdapter$ViewHolder;

    invoke-direct {p3, p0, v0}, Lcom/yftech/settings/connect/adapter/LinkCarplayAvailableAdapter$ViewHolder;-><init>(Lcom/yftech/settings/connect/adapter/LinkCarplayAvailableAdapter;Lcom/yftech/settings/connect/adapter/LinkCarplayAvailableAdapter$1;)V

    const v0, 0x7f08020c

    .line 53
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p3, v0}, Lcom/yftech/settings/connect/adapter/LinkCarplayAvailableAdapter$ViewHolder;->access$102(Lcom/yftech/settings/connect/adapter/LinkCarplayAvailableAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v0, 0x7f080213

    .line 54
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p3, v0}, Lcom/yftech/settings/connect/adapter/LinkCarplayAvailableAdapter$ViewHolder;->access$202(Lcom/yftech/settings/connect/adapter/LinkCarplayAvailableAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 55
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/yftech/settings/connect/adapter/LinkCarplayAvailableAdapter$ViewHolder;

    .line 59
    :goto_0
    iget-object p0, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAvailableAdapter;->mCarLinkDevices:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yftech/car/phonelink/CarLinkDevice;

    .line 60
    invoke-static {p3}, Lcom/yftech/settings/connect/adapter/LinkCarplayAvailableAdapter$ViewHolder;->access$100(Lcom/yftech/settings/connect/adapter/LinkCarplayAvailableAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p0}, Lcom/yftech/car/phonelink/CarLinkDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/yftech/car/phonelink/CarLinkDevice;->getDeviceName()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/yftech/car/phonelink/CarLinkDevice;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    invoke-static {p3}, Lcom/yftech/settings/connect/adapter/LinkCarplayAvailableAdapter$ViewHolder;->access$200(Lcom/yftech/settings/connect/adapter/LinkCarplayAvailableAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p0

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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

    .line 27
    iget-object v0, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAvailableAdapter;->mCarLinkDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 28
    iget-object v0, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAvailableAdapter;->mCarLinkDevices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 29
    invoke-virtual {p0}, Lcom/yftech/settings/connect/adapter/LinkCarplayAvailableAdapter;->notifyDataSetChanged()V

    return-void
.end method
