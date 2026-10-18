.class public Lcom/yftech/settings/system/SystemMainFragment;
.super Lcom/yftech/settings/BaseFragment;
.source "SystemMainFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final SKIP_TO_TIME_SETTING:I = 0x1

.field private static final SKIP_TO_VEHICLE_INFO:I = 0x3

.field private static final TAB_BASIC:Ljava/lang/String; = "basic"

.field private static final TAB_INFO:Ljava/lang/String; = "info"

.field private static final TAB_VEHICLE:Ljava/lang/String; = "vehicle"

.field private static final TAG:Ljava/lang/String; = "SystemMainFragment"


# instance fields
.field private lineBasic:Landroid/view/View;

.field private lineInfo:Landroid/view/View;

.field private mShowTab:Ljava/lang/String;

.field private mSystemBasicFragment:Lcom/yftech/settings/system/SystemBasicFragment;

.field private mSystemInfoFragment:Lcom/yftech/settings/system/SystemInfoFragment;

.field private mSystemVehicleInfoFragment:Lcom/yftech/settings/system/SystemVehicleInfoFragment;

.field private skipToTab:I

.field private tabBasic:Landroid/widget/RelativeLayout;

.field private tabInfo:Landroid/widget/RelativeLayout;

.field private tabVehicle:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/yftech/settings/BaseFragment;-><init>()V

    const-string v0, "basic"

    .line 37
    iput-object v0, p0, Lcom/yftech/settings/system/SystemMainFragment;->mShowTab:Ljava/lang/String;

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/yftech/settings/system/SystemMainFragment;->skipToTab:I

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0801d1

    .line 65
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/yftech/settings/system/SystemMainFragment;->tabBasic:Landroid/widget/RelativeLayout;

    const v0, 0x7f0801d8

    .line 66
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/yftech/settings/system/SystemMainFragment;->tabInfo:Landroid/widget/RelativeLayout;

    const v0, 0x7f0801e5

    .line 67
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/yftech/settings/system/SystemMainFragment;->tabVehicle:Landroid/widget/RelativeLayout;

    .line 69
    iget-object p1, p0, Lcom/yftech/settings/system/SystemMainFragment;->tabBasic:Landroid/widget/RelativeLayout;

    const v0, 0x7f080127

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/settings/system/SystemMainFragment;->lineBasic:Landroid/view/View;

    .line 70
    iget-object p1, p0, Lcom/yftech/settings/system/SystemMainFragment;->tabInfo:Landroid/widget/RelativeLayout;

    const v0, 0x7f08012c

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/settings/system/SystemMainFragment;->lineInfo:Landroid/view/View;

    .line 72
    iget-object p1, p0, Lcom/yftech/settings/system/SystemMainFragment;->tabBasic:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object p1, p0, Lcom/yftech/settings/system/SystemMainFragment;->tabInfo:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object p1, p0, Lcom/yftech/settings/system/SystemMainFragment;->tabVehicle:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showTabFragment(Ljava/lang/String;)V
    .locals 6

    .line 133
    iget-object v0, p0, Lcom/yftech/settings/system/SystemMainFragment;->tabBasic:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 134
    iget-object v0, p0, Lcom/yftech/settings/system/SystemMainFragment;->tabInfo:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 135
    iget-object v0, p0, Lcom/yftech/settings/system/SystemMainFragment;->tabVehicle:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 136
    iget-object v0, p0, Lcom/yftech/settings/system/SystemMainFragment;->lineBasic:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/yftech/settings/system/SystemMainFragment;->lineInfo:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 138
    iput-object p1, p0, Lcom/yftech/settings/system/SystemMainFragment;->mShowTab:Ljava/lang/String;

    const-string v0, "basic"

    .line 140
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    .line 141
    iget-object p1, p0, Lcom/yftech/settings/system/SystemMainFragment;->tabBasic:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 142
    iget-object p1, p0, Lcom/yftech/settings/system/SystemMainFragment;->lineBasic:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 143
    iget-object p1, p0, Lcom/yftech/settings/system/SystemMainFragment;->mSystemBasicFragment:Lcom/yftech/settings/system/SystemBasicFragment;

    if-nez p1, :cond_0

    .line 144
    new-instance p1, Lcom/yftech/settings/system/SystemBasicFragment;

    invoke-direct {p1}, Lcom/yftech/settings/system/SystemBasicFragment;-><init>()V

    iput-object p1, p0, Lcom/yftech/settings/system/SystemMainFragment;->mSystemBasicFragment:Lcom/yftech/settings/system/SystemBasicFragment;

    .line 146
    :cond_0
    iget-object p1, p0, Lcom/yftech/settings/system/SystemMainFragment;->mSystemBasicFragment:Lcom/yftech/settings/system/SystemBasicFragment;

    goto :goto_0

    :cond_1
    const-string v0, "info"

    .line 147
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 148
    iget-object p1, p0, Lcom/yftech/settings/system/SystemMainFragment;->tabInfo:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 149
    iget-object p1, p0, Lcom/yftech/settings/system/SystemMainFragment;->lineInfo:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 150
    iget-object p1, p0, Lcom/yftech/settings/system/SystemMainFragment;->mSystemInfoFragment:Lcom/yftech/settings/system/SystemInfoFragment;

    if-nez p1, :cond_2

    .line 151
    new-instance p1, Lcom/yftech/settings/system/SystemInfoFragment;

    invoke-direct {p1}, Lcom/yftech/settings/system/SystemInfoFragment;-><init>()V

    iput-object p1, p0, Lcom/yftech/settings/system/SystemMainFragment;->mSystemInfoFragment:Lcom/yftech/settings/system/SystemInfoFragment;

    .line 153
    :cond_2
    iget-object p1, p0, Lcom/yftech/settings/system/SystemMainFragment;->mSystemInfoFragment:Lcom/yftech/settings/system/SystemInfoFragment;

    goto :goto_0

    :cond_3
    const-string v0, "vehicle"

    .line 154
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 155
    iget-object p1, p0, Lcom/yftech/settings/system/SystemMainFragment;->tabVehicle:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 156
    iget-object p1, p0, Lcom/yftech/settings/system/SystemMainFragment;->mSystemVehicleInfoFragment:Lcom/yftech/settings/system/SystemVehicleInfoFragment;

    if-nez p1, :cond_4

    .line 157
    new-instance p1, Lcom/yftech/settings/system/SystemVehicleInfoFragment;

    invoke-direct {p1}, Lcom/yftech/settings/system/SystemVehicleInfoFragment;-><init>()V

    iput-object p1, p0, Lcom/yftech/settings/system/SystemMainFragment;->mSystemVehicleInfoFragment:Lcom/yftech/settings/system/SystemVehicleInfoFragment;

    .line 159
    :cond_4
    iget-object p1, p0, Lcom/yftech/settings/system/SystemMainFragment;->mSystemVehicleInfoFragment:Lcom/yftech/settings/system/SystemVehicleInfoFragment;

    goto :goto_0

    :cond_5
    move-object p1, v3

    :goto_0
    if-eqz p1, :cond_7

    .line 162
    invoke-virtual {p0}, Lcom/yftech/settings/system/SystemMainFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 163
    iget-object v2, p0, Lcom/yftech/settings/system/SystemMainFragment;->mShowTab:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_6

    move v1, v4

    :cond_6
    const-string v2, "SystemMainFragment"

    .line 164
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showTabFragment, showTab:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/yftech/settings/system/SystemMainFragment;->mShowTab:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", exist:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f080099

    iget-object p0, p0, Lcom/yftech/settings/system/SystemMainFragment;->mShowTab:Ljava/lang/String;

    .line 166
    invoke-virtual {v0, v1, p1, p0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p0

    .line 167
    invoke-virtual {p0, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p0

    .line 168
    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_7
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0801d1

    if-eq p1, v0, :cond_2

    const v0, 0x7f0801d8

    if-eq p1, v0, :cond_1

    const v0, 0x7f0801e5

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "vehicle"

    .line 124
    iget-object v0, p0, Lcom/yftech/settings/system/SystemMainFragment;->mShowTab:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "vehicle"

    .line 125
    invoke-direct {p0, p1}, Lcom/yftech/settings/system/SystemMainFragment;->showTabFragment(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "info"

    .line 119
    iget-object v0, p0, Lcom/yftech/settings/system/SystemMainFragment;->mShowTab:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "info"

    .line 120
    invoke-direct {p0, p1}, Lcom/yftech/settings/system/SystemMainFragment;->showTabFragment(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "basic"

    .line 114
    iget-object v0, p0, Lcom/yftech/settings/system/SystemMainFragment;->mShowTab:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "basic"

    .line 115
    invoke-direct {p0, p1}, Lcom/yftech/settings/system/SystemMainFragment;->showTabFragment(Ljava/lang/String;)V

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

    const p3, 0x7f0a004a

    const/4 v0, 0x0

    .line 59
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 60
    invoke-direct {p0, p1}, Lcom/yftech/settings/system/SystemMainFragment;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method public onPause()V
    .locals 1

    .line 93
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onPause()V

    const/4 v0, 0x0

    .line 94
    iput v0, p0, Lcom/yftech/settings/system/SystemMainFragment;->skipToTab:I

    const-string p0, "SystemMainFragment"

    const-string v0, "onPause()"

    .line 95
    invoke-static {p0, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 79
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onResume()V

    const-string v0, "SystemMainFragment"

    const-string v1, "onResume()"

    .line 80
    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget v0, p0, Lcom/yftech/settings/system/SystemMainFragment;->skipToTab:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "basic"

    .line 82
    invoke-direct {p0, v0}, Lcom/yftech/settings/system/SystemMainFragment;->showTabFragment(Ljava/lang/String;)V

    return-void

    .line 84
    :cond_0
    iget v0, p0, Lcom/yftech/settings/system/SystemMainFragment;->skipToTab:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const-string v0, "vehicle"

    .line 85
    invoke-direct {p0, v0}, Lcom/yftech/settings/system/SystemMainFragment;->showTabFragment(Ljava/lang/String;)V

    return-void

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/yftech/settings/system/SystemMainFragment;->mShowTab:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/yftech/settings/system/SystemMainFragment;->showTabFragment(Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 100
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onStart()V

    const-string p0, "SystemMainFragment"

    const-string v0, "onStart()"

    .line 101
    invoke-static {p0, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 106
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onStop()V

    const-string p0, "SystemMainFragment"

    const-string v0, "onStop()"

    .line 107
    invoke-static {p0, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSkipToVehicleInfoFragment()V
    .locals 1

    const/4 v0, 0x3

    .line 53
    iput v0, p0, Lcom/yftech/settings/system/SystemMainFragment;->skipToTab:I

    return-void
.end method

.method public setToTimeSettingFlag()V
    .locals 1

    const/4 v0, 0x1

    .line 49
    iput v0, p0, Lcom/yftech/settings/system/SystemMainFragment;->skipToTab:I

    return-void
.end method
