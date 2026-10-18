.class public Lcom/yftech/settings/connect/HotspotFragment;
.super Lcom/yftech/settings/BaseFragment;
.source "HotspotFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private swHotspot:Landroid/widget/Switch;

.field private wlanListener:Lcom/yftech/settings/manager/WlanManager$WlanListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/yftech/settings/BaseFragment;-><init>()V

    .line 32
    new-instance v0, Lcom/yftech/settings/connect/HotspotFragment$1;

    invoke-direct {v0, p0}, Lcom/yftech/settings/connect/HotspotFragment$1;-><init>(Lcom/yftech/settings/connect/HotspotFragment;)V

    iput-object v0, p0, Lcom/yftech/settings/connect/HotspotFragment;->wlanListener:Lcom/yftech/settings/manager/WlanManager$WlanListener;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/settings/connect/HotspotFragment;)Landroid/widget/Switch;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/yftech/settings/connect/HotspotFragment;->swHotspot:Landroid/widget/Switch;

    return-object p0
.end method

.method private initView(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f0801b9

    .line 57
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const v1, 0x7f080218

    .line 58
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "\u70ed\u70b9"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0801bb

    .line 59
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/yftech/settings/connect/HotspotFragment;->swHotspot:Landroid/widget/Switch;

    .line 60
    iget-object p1, p0, Lcom/yftech/settings/connect/HotspotFragment;->swHotspot:Landroid/widget/Switch;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setTag(Ljava/lang/Object;)V

    .line 61
    iget-object p1, p0, Lcom/yftech/settings/connect/HotspotFragment;->swHotspot:Landroid/widget/Switch;

    invoke-virtual {p1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 79
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isPressed()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 82
    :cond_0
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const p1, 0x7f0801b9

    if-eq p0, p1, :cond_1

    goto :goto_0

    .line 84
    :cond_1
    invoke-static {}, Lcom/yftech/settings/manager/WlanManager;->getInstance()Lcom/yftech/settings/manager/WlanManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/yftech/settings/manager/WlanManager;->setApEnable(Z)Z

    :goto_0
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

    const p3, 0x7f0a0039

    const/4 v0, 0x0

    .line 51
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 52
    invoke-direct {p0, p1}, Lcom/yftech/settings/connect/HotspotFragment;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method public onPause()V
    .locals 0

    .line 73
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 66
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onResume()V

    .line 68
    iget-object p0, p0, Lcom/yftech/settings/connect/HotspotFragment;->swHotspot:Landroid/widget/Switch;

    invoke-static {}, Lcom/yftech/settings/manager/WlanManager;->getInstance()Lcom/yftech/settings/manager/WlanManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/settings/manager/WlanManager;->isApEnable()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method
