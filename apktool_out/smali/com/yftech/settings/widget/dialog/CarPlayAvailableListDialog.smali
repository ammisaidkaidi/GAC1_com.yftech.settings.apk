.class public Lcom/yftech/settings/widget/dialog/CarPlayAvailableListDialog;
.super Landroid/app/Dialog;
.source "CarPlayAvailableListDialog.java"

# interfaces
.implements Lcom/yftech/settings/manager/LinkCarplayManager$LinkCarplayListener;


# instance fields
.field private mCarplayLvAvailable:Landroid/widget/ListView;

.field private mCarplayTvAvailableEmpty:Landroid/widget/TextView;

.field private mLinkCarplayAvailableAdapter:Lcom/yftech/settings/connect/adapter/LinkCarplayAvailableAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/settings/widget/dialog/CarPlayAvailableListDialog;)Lcom/yftech/settings/connect/adapter/LinkCarplayAvailableAdapter;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/yftech/settings/widget/dialog/CarPlayAvailableListDialog;->mLinkCarplayAvailableAdapter:Lcom/yftech/settings/connect/adapter/LinkCarplayAvailableAdapter;

    return-object p0
.end method

.method private updateList()V
    .locals 4

    .line 97
    iget-object v0, p0, Lcom/yftech/settings/widget/dialog/CarPlayAvailableListDialog;->mLinkCarplayAvailableAdapter:Lcom/yftech/settings/connect/adapter/LinkCarplayAvailableAdapter;

    if-eqz v0, :cond_2

    .line 98
    invoke-static {}, Lcom/yftech/settings/manager/LinkCarplayManager;->getInstance()Lcom/yftech/settings/manager/LinkCarplayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/settings/manager/LinkCarplayManager;->getAvailableCarLinkDeviceList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    .line 99
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    iget-object v3, p0, Lcom/yftech/settings/widget/dialog/CarPlayAvailableListDialog;->mCarplayTvAvailableEmpty:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    iget-object v2, p0, Lcom/yftech/settings/widget/dialog/CarPlayAvailableListDialog;->mCarplayLvAvailable:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 105
    iget-object p0, p0, Lcom/yftech/settings/widget/dialog/CarPlayAvailableListDialog;->mLinkCarplayAvailableAdapter:Lcom/yftech/settings/connect/adapter/LinkCarplayAvailableAdapter;

    invoke-virtual {p0, v0}, Lcom/yftech/settings/connect/adapter/LinkCarplayAvailableAdapter;->updateAdapter(Ljava/util/List;)V

    goto :goto_1

    .line 100
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/yftech/settings/widget/dialog/CarPlayAvailableListDialog;->mCarplayLvAvailable:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 101
    iget-object p0, p0, Lcom/yftech/settings/widget/dialog/CarPlayAvailableListDialog;->mCarplayTvAvailableEmpty:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public onCarPlayListChanged()V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/yftech/settings/widget/dialog/CarPlayAvailableListDialog;->updateList()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 38
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 39
    invoke-virtual {p0, p1}, Lcom/yftech/settings/widget/dialog/CarPlayAvailableListDialog;->requestWindowFeature(I)Z

    .line 40
    invoke-virtual {p0}, Lcom/yftech/settings/widget/dialog/CarPlayAvailableListDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a0022

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 41
    invoke-virtual {p0, v0}, Lcom/yftech/settings/widget/dialog/CarPlayAvailableListDialog;->setContentView(Landroid/view/View;)V

    .line 43
    invoke-virtual {p0}, Lcom/yftech/settings/widget/dialog/CarPlayAvailableListDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x106000d

    .line 45
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    const/16 v1, 0x808

    .line 46
    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 47
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x802

    .line 48
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, 0x800015

    .line 50
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 51
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v2, 0x1cc

    .line 52
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v2, 0x276

    .line 53
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 54
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    const v0, 0x7f080080

    .line 57
    invoke-virtual {p0, v0}, Lcom/yftech/settings/widget/dialog/CarPlayAvailableListDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/yftech/settings/widget/dialog/CarPlayAvailableListDialog;->mCarplayLvAvailable:Landroid/widget/ListView;

    const v0, 0x7f080081

    .line 58
    invoke-virtual {p0, v0}, Lcom/yftech/settings/widget/dialog/CarPlayAvailableListDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/settings/widget/dialog/CarPlayAvailableListDialog;->mCarplayTvAvailableEmpty:Landroid/widget/TextView;

    .line 59
    iget-object v0, p0, Lcom/yftech/settings/widget/dialog/CarPlayAvailableListDialog;->mLinkCarplayAvailableAdapter:Lcom/yftech/settings/connect/adapter/LinkCarplayAvailableAdapter;

    if-nez v0, :cond_1

    .line 60
    new-instance v0, Lcom/yftech/settings/connect/adapter/LinkCarplayAvailableAdapter;

    invoke-virtual {p0}, Lcom/yftech/settings/widget/dialog/CarPlayAvailableListDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yftech/settings/connect/adapter/LinkCarplayAvailableAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yftech/settings/widget/dialog/CarPlayAvailableListDialog;->mLinkCarplayAvailableAdapter:Lcom/yftech/settings/connect/adapter/LinkCarplayAvailableAdapter;

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/yftech/settings/widget/dialog/CarPlayAvailableListDialog;->mCarplayLvAvailable:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yftech/settings/widget/dialog/CarPlayAvailableListDialog;->mLinkCarplayAvailableAdapter:Lcom/yftech/settings/connect/adapter/LinkCarplayAvailableAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 63
    invoke-direct {p0}, Lcom/yftech/settings/widget/dialog/CarPlayAvailableListDialog;->updateList()V

    .line 65
    invoke-virtual {p0, p1}, Lcom/yftech/settings/widget/dialog/CarPlayAvailableListDialog;->setCanceledOnTouchOutside(Z)V

    .line 66
    invoke-virtual {p0, p1}, Lcom/yftech/settings/widget/dialog/CarPlayAvailableListDialog;->setCancelable(Z)V

    .line 68
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/CarPlayAvailableListDialog;->mCarplayLvAvailable:Landroid/widget/ListView;

    new-instance v0, Lcom/yftech/settings/widget/dialog/CarPlayAvailableListDialog$1;

    invoke-direct {v0, p0}, Lcom/yftech/settings/widget/dialog/CarPlayAvailableListDialog$1;-><init>(Lcom/yftech/settings/widget/dialog/CarPlayAvailableListDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 78
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 79
    invoke-static {}, Lcom/yftech/settings/manager/LinkCarplayManager;->getInstance()Lcom/yftech/settings/manager/LinkCarplayManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yftech/settings/manager/LinkCarplayManager;->addLinkCarplayListener(Lcom/yftech/settings/manager/LinkCarplayManager$LinkCarplayListener;)V

    .line 80
    invoke-static {}, Lcom/autochips/carplay/CarplayManager;->getDefaultManager()Lcom/autochips/carplay/CarplayManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/autochips/carplay/CarplayManager;->startDiscover()I

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 85
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 86
    invoke-static {}, Lcom/yftech/settings/manager/LinkCarplayManager;->getInstance()Lcom/yftech/settings/manager/LinkCarplayManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yftech/settings/manager/LinkCarplayManager;->removeLinkCarplayListener(Lcom/yftech/settings/manager/LinkCarplayManager$LinkCarplayListener;)V

    .line 87
    invoke-static {}, Lcom/autochips/carplay/CarplayManager;->getDefaultManager()Lcom/autochips/carplay/CarplayManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/autochips/carplay/CarplayManager;->stopDiscover()I

    return-void
.end method
