.class public Lcom/yftech/settings/connect/ConnectMainFragment;
.super Lcom/yftech/settings/BaseFragment;
.source "ConnectMainFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final SKIP_TO_BT:I = 0x1

.field private static final SKIP_TO_LINK:I = 0x2

.field private static final TAB_BLUETOOTH:Ljava/lang/String; = "bluetooth"

.field private static final TAB_HOTSPOT:Ljava/lang/String; = "hotspot"

.field private static final TAB_LINK:Ljava/lang/String; = "link"

.field private static final TAG:Ljava/lang/String; = "ConnectMainFragment"


# instance fields
.field private lineBt:Landroid/view/View;

.field private mBluetoothFragment:Lcom/yftech/settings/connect/BluetoothFragment;

.field private mHotspotFragment:Lcom/yftech/settings/connect/HotspotFragment;

.field private mLinkFragment:Lcom/yftech/settings/connect/LinkFragment;

.field private mShowTab:Ljava/lang/String;

.field private skipToTab:I

.field private tabBluetooth:Landroid/widget/RelativeLayout;

.field private tabHotspot:Landroid/widget/RelativeLayout;

.field private tabLink:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lcom/yftech/settings/BaseFragment;-><init>()V

    const-string v0, "bluetooth"

    .line 38
    iput-object v0, p0, Lcom/yftech/settings/connect/ConnectMainFragment;->mShowTab:Ljava/lang/String;

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/yftech/settings/connect/ConnectMainFragment;->skipToTab:I

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0801d2

    .line 66
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/yftech/settings/connect/ConnectMainFragment;->tabBluetooth:Landroid/widget/RelativeLayout;

    const v0, 0x7f0801db

    .line 67
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/yftech/settings/connect/ConnectMainFragment;->tabLink:Landroid/widget/RelativeLayout;

    const v0, 0x7f0801d7

    .line 68
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/yftech/settings/connect/ConnectMainFragment;->tabHotspot:Landroid/widget/RelativeLayout;

    .line 70
    iget-object p1, p0, Lcom/yftech/settings/connect/ConnectMainFragment;->tabLink:Landroid/widget/RelativeLayout;

    sget-boolean v0, Lcom/yftech/settings/utils/ConfigUtils;->isLinkConfig:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 71
    iget-object p1, p0, Lcom/yftech/settings/connect/ConnectMainFragment;->tabBluetooth:Landroid/widget/RelativeLayout;

    const v0, 0x7f080128

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/settings/connect/ConnectMainFragment;->lineBt:Landroid/view/View;

    .line 72
    iget-object p1, p0, Lcom/yftech/settings/connect/ConnectMainFragment;->tabBluetooth:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object p1, p0, Lcom/yftech/settings/connect/ConnectMainFragment;->tabHotspot:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object p1, p0, Lcom/yftech/settings/connect/ConnectMainFragment;->tabLink:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showTabFragment(Ljava/lang/String;)V
    .locals 6

    .line 136
    iget-object v0, p0, Lcom/yftech/settings/connect/ConnectMainFragment;->tabBluetooth:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 137
    iget-object v0, p0, Lcom/yftech/settings/connect/ConnectMainFragment;->tabLink:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 138
    iget-object v0, p0, Lcom/yftech/settings/connect/ConnectMainFragment;->tabHotspot:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 140
    iget-object v0, p0, Lcom/yftech/settings/connect/ConnectMainFragment;->lineBt:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 142
    iput-object p1, p0, Lcom/yftech/settings/connect/ConnectMainFragment;->mShowTab:Ljava/lang/String;

    const-string v0, "bluetooth"

    .line 144
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 145
    iget-object p1, p0, Lcom/yftech/settings/connect/ConnectMainFragment;->tabBluetooth:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 146
    iget-object p1, p0, Lcom/yftech/settings/connect/ConnectMainFragment;->lineBt:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 147
    iget-object p1, p0, Lcom/yftech/settings/connect/ConnectMainFragment;->mBluetoothFragment:Lcom/yftech/settings/connect/BluetoothFragment;

    if-nez p1, :cond_0

    .line 148
    new-instance p1, Lcom/yftech/settings/connect/BluetoothFragment;

    invoke-direct {p1}, Lcom/yftech/settings/connect/BluetoothFragment;-><init>()V

    iput-object p1, p0, Lcom/yftech/settings/connect/ConnectMainFragment;->mBluetoothFragment:Lcom/yftech/settings/connect/BluetoothFragment;

    .line 150
    :cond_0
    iget-object p1, p0, Lcom/yftech/settings/connect/ConnectMainFragment;->mBluetoothFragment:Lcom/yftech/settings/connect/BluetoothFragment;

    goto :goto_0

    :cond_1
    const-string v0, "link"

    .line 151
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 152
    iget-object p1, p0, Lcom/yftech/settings/connect/ConnectMainFragment;->tabLink:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 153
    iget-object p1, p0, Lcom/yftech/settings/connect/ConnectMainFragment;->mLinkFragment:Lcom/yftech/settings/connect/LinkFragment;

    if-nez p1, :cond_2

    .line 154
    new-instance p1, Lcom/yftech/settings/connect/LinkFragment;

    invoke-direct {p1}, Lcom/yftech/settings/connect/LinkFragment;-><init>()V

    iput-object p1, p0, Lcom/yftech/settings/connect/ConnectMainFragment;->mLinkFragment:Lcom/yftech/settings/connect/LinkFragment;

    .line 156
    :cond_2
    iget-object p1, p0, Lcom/yftech/settings/connect/ConnectMainFragment;->mLinkFragment:Lcom/yftech/settings/connect/LinkFragment;

    goto :goto_0

    :cond_3
    const-string v0, "hotspot"

    .line 157
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 158
    iget-object p1, p0, Lcom/yftech/settings/connect/ConnectMainFragment;->tabHotspot:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 159
    iget-object p1, p0, Lcom/yftech/settings/connect/ConnectMainFragment;->mHotspotFragment:Lcom/yftech/settings/connect/HotspotFragment;

    if-nez p1, :cond_4

    .line 160
    new-instance p1, Lcom/yftech/settings/connect/HotspotFragment;

    invoke-direct {p1}, Lcom/yftech/settings/connect/HotspotFragment;-><init>()V

    iput-object p1, p0, Lcom/yftech/settings/connect/ConnectMainFragment;->mHotspotFragment:Lcom/yftech/settings/connect/HotspotFragment;

    .line 162
    :cond_4
    iget-object p1, p0, Lcom/yftech/settings/connect/ConnectMainFragment;->mHotspotFragment:Lcom/yftech/settings/connect/HotspotFragment;

    goto :goto_0

    :cond_5
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_7

    .line 165
    invoke-virtual {p0}, Lcom/yftech/settings/connect/ConnectMainFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 166
    iget-object v4, p0, Lcom/yftech/settings/connect/ConnectMainFragment;->mShowTab:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    if-eqz v4, :cond_6

    move v1, v3

    :cond_6
    const-string v3, "ConnectMainFragment"

    .line 167
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showTabFragment, showTab:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/yftech/settings/connect/ConnectMainFragment;->mShowTab:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", exist:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f080099

    iget-object p0, p0, Lcom/yftech/settings/connect/ConnectMainFragment;->mShowTab:Ljava/lang/String;

    .line 169
    invoke-virtual {v0, v1, p1, p0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p0

    .line 170
    invoke-virtual {p0, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p0

    .line 171
    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_7
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 115
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0801d2

    if-eq p1, v0, :cond_2

    const v0, 0x7f0801d7

    if-eq p1, v0, :cond_1

    const v0, 0x7f0801db

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "link"

    .line 122
    iget-object v0, p0, Lcom/yftech/settings/connect/ConnectMainFragment;->mShowTab:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "link"

    .line 123
    invoke-direct {p0, p1}, Lcom/yftech/settings/connect/ConnectMainFragment;->showTabFragment(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "hotspot"

    .line 127
    iget-object v0, p0, Lcom/yftech/settings/connect/ConnectMainFragment;->mShowTab:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "hotspot"

    .line 128
    invoke-direct {p0, p1}, Lcom/yftech/settings/connect/ConnectMainFragment;->showTabFragment(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "bluetooth"

    .line 117
    iget-object v0, p0, Lcom/yftech/settings/connect/ConnectMainFragment;->mShowTab:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "bluetooth"

    .line 118
    invoke-direct {p0, p1}, Lcom/yftech/settings/connect/ConnectMainFragment;->showTabFragment(Ljava/lang/String;)V

    :cond_3
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

    const p3, 0x7f0a003b

    const/4 v0, 0x0

    .line 60
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 61
    invoke-direct {p0, p1}, Lcom/yftech/settings/connect/ConnectMainFragment;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method public onPause()V
    .locals 1

    .line 96
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onPause()V

    const/4 v0, 0x0

    .line 97
    iput v0, p0, Lcom/yftech/settings/connect/ConnectMainFragment;->skipToTab:I

    const-string p0, "ConnectMainFragment"

    const-string v0, "onPause()"

    .line 98
    invoke-static {p0, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 79
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onResume()V

    const-string v0, "ConnectMainFragment"

    const-string v1, "onResume()"

    .line 80
    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/yftech/settings/connect/ConnectMainFragment;->tabHotspot:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/yftech/settings/utils/Utils;->isCarPlayCertificate()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 82
    invoke-static {}, Lcom/yftech/settings/utils/Utils;->isCarPlayCertificate()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yftech/settings/connect/ConnectMainFragment;->mShowTab:Ljava/lang/String;

    const-string v1, "hotspot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "bluetooth"

    .line 83
    iput-object v0, p0, Lcom/yftech/settings/connect/ConnectMainFragment;->mShowTab:Ljava/lang/String;

    .line 85
    :cond_1
    iget v0, p0, Lcom/yftech/settings/connect/ConnectMainFragment;->skipToTab:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const-string v0, "bluetooth"

    .line 86
    invoke-direct {p0, v0}, Lcom/yftech/settings/connect/ConnectMainFragment;->showTabFragment(Ljava/lang/String;)V

    goto :goto_1

    .line 87
    :cond_2
    iget v0, p0, Lcom/yftech/settings/connect/ConnectMainFragment;->skipToTab:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    const-string v0, "link"

    .line 88
    invoke-direct {p0, v0}, Lcom/yftech/settings/connect/ConnectMainFragment;->showTabFragment(Ljava/lang/String;)V

    goto :goto_1

    .line 90
    :cond_3
    iget-object v0, p0, Lcom/yftech/settings/connect/ConnectMainFragment;->mShowTab:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/yftech/settings/connect/ConnectMainFragment;->showTabFragment(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 103
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onStart()V

    const-string p0, "ConnectMainFragment"

    const-string v0, "onStart()"

    .line 104
    invoke-static {p0, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 109
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onStop()V

    const-string p0, "ConnectMainFragment"

    const-string v0, "onStop()"

    .line 110
    invoke-static {p0, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSkipToBt()V
    .locals 1

    const/4 v0, 0x1

    .line 50
    iput v0, p0, Lcom/yftech/settings/connect/ConnectMainFragment;->skipToTab:I

    return-void
.end method

.method public setSkipToLink()V
    .locals 1

    const/4 v0, 0x2

    .line 54
    iput v0, p0, Lcom/yftech/settings/connect/ConnectMainFragment;->skipToTab:I

    return-void
.end method
