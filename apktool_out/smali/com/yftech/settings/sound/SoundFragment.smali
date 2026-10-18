.class public Lcom/yftech/settings/sound/SoundFragment;
.super Lcom/yftech/settings/BaseFragment;
.source "SoundFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAB_INTERACTION:Ljava/lang/String; = "interaction"

.field private static final TAB_SYSTEM:Ljava/lang/String; = "system"

.field private static final TAG:Ljava/lang/String; = "SoundFragment"


# instance fields
.field private iconDts:Landroid/widget/ImageView;

.field private lineSystem:Landroid/view/View;

.field private mShowTab:Ljava/lang/String;

.field private mSoundInteractionFragment:Lcom/yftech/settings/sound/SoundInteractionFragment;

.field private mSoundSystemFragment:Lcom/yftech/settings/sound/SoundSystemFragment;

.field private tabInteraction:Landroid/widget/RelativeLayout;

.field private tabSystem:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/yftech/settings/BaseFragment;-><init>()V

    const-string v0, "system"

    .line 35
    iput-object v0, p0, Lcom/yftech/settings/sound/SoundFragment;->mShowTab:Ljava/lang/String;

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 4

    const v0, 0x7f0801e3

    .line 54
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/yftech/settings/sound/SoundFragment;->tabSystem:Landroid/widget/RelativeLayout;

    const v0, 0x7f0801d9

    .line 55
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/yftech/settings/sound/SoundFragment;->tabInteraction:Landroid/widget/RelativeLayout;

    const v0, 0x7f0800d1

    .line 56
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/yftech/settings/sound/SoundFragment;->iconDts:Landroid/widget/ImageView;

    .line 57
    iget-object p1, p0, Lcom/yftech/settings/sound/SoundFragment;->iconDts:Landroid/widget/ImageView;

    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->getLoudspeakerNumber()Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerNumber;

    move-result-object v0

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerNumber;->TWO:Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerNumber;

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eq v0, v1, :cond_1

    .line 58
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->getLoudspeakerNumber()Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerNumber;

    move-result-object v0

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerNumber;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerNumber;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    .line 57
    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 60
    iget-object p1, p0, Lcom/yftech/settings/sound/SoundFragment;->tabSystem:Landroid/widget/RelativeLayout;

    const v0, 0x7f080131

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/settings/sound/SoundFragment;->lineSystem:Landroid/view/View;

    .line 62
    iget-object p1, p0, Lcom/yftech/settings/sound/SoundFragment;->tabInteraction:Landroid/widget/RelativeLayout;

    sget-boolean v0, Lcom/yftech/settings/utils/ConfigUtils;->isSoundInteractionConfig:Z

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 63
    iget-object p1, p0, Lcom/yftech/settings/sound/SoundFragment;->tabSystem:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object p1, p0, Lcom/yftech/settings/sound/SoundFragment;->tabInteraction:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showTabFragment(Ljava/lang/String;)V
    .locals 6

    .line 111
    iget-object v0, p0, Lcom/yftech/settings/sound/SoundFragment;->tabSystem:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 112
    iget-object v0, p0, Lcom/yftech/settings/sound/SoundFragment;->tabInteraction:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 114
    iget-object v0, p0, Lcom/yftech/settings/sound/SoundFragment;->lineSystem:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 116
    iput-object p1, p0, Lcom/yftech/settings/sound/SoundFragment;->mShowTab:Ljava/lang/String;

    const-string v0, "system"

    .line 118
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 119
    iget-object p1, p0, Lcom/yftech/settings/sound/SoundFragment;->tabSystem:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 120
    iget-object p1, p0, Lcom/yftech/settings/sound/SoundFragment;->lineSystem:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 121
    iget-object p1, p0, Lcom/yftech/settings/sound/SoundFragment;->mSoundSystemFragment:Lcom/yftech/settings/sound/SoundSystemFragment;

    if-nez p1, :cond_0

    .line 122
    new-instance p1, Lcom/yftech/settings/sound/SoundSystemFragment;

    invoke-direct {p1}, Lcom/yftech/settings/sound/SoundSystemFragment;-><init>()V

    iput-object p1, p0, Lcom/yftech/settings/sound/SoundFragment;->mSoundSystemFragment:Lcom/yftech/settings/sound/SoundSystemFragment;

    .line 124
    :cond_0
    iget-object p1, p0, Lcom/yftech/settings/sound/SoundFragment;->mSoundSystemFragment:Lcom/yftech/settings/sound/SoundSystemFragment;

    goto :goto_0

    :cond_1
    const-string v0, "interaction"

    .line 125
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 126
    iget-object p1, p0, Lcom/yftech/settings/sound/SoundFragment;->tabInteraction:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 127
    iget-object p1, p0, Lcom/yftech/settings/sound/SoundFragment;->mSoundInteractionFragment:Lcom/yftech/settings/sound/SoundInteractionFragment;

    if-nez p1, :cond_2

    .line 128
    new-instance p1, Lcom/yftech/settings/sound/SoundInteractionFragment;

    invoke-direct {p1}, Lcom/yftech/settings/sound/SoundInteractionFragment;-><init>()V

    iput-object p1, p0, Lcom/yftech/settings/sound/SoundFragment;->mSoundInteractionFragment:Lcom/yftech/settings/sound/SoundInteractionFragment;

    .line 130
    :cond_2
    iget-object p1, p0, Lcom/yftech/settings/sound/SoundFragment;->mSoundInteractionFragment:Lcom/yftech/settings/sound/SoundInteractionFragment;

    goto :goto_0

    :cond_3
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_5

    .line 133
    invoke-virtual {p0}, Lcom/yftech/settings/sound/SoundFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 134
    iget-object v4, p0, Lcom/yftech/settings/sound/SoundFragment;->mShowTab:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    if-eqz v4, :cond_4

    move v1, v3

    :cond_4
    const-string v3, "SoundFragment"

    .line 135
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showTabFragment, showTab:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/yftech/settings/sound/SoundFragment;->mShowTab:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", exist:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f080099

    iget-object p0, p0, Lcom/yftech/settings/sound/SoundFragment;->mShowTab:Ljava/lang/String;

    .line 137
    invoke-virtual {v0, v1, p1, p0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p0

    .line 138
    invoke-virtual {p0, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p0

    .line 139
    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_5
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0801d9

    if-eq p1, v0, :cond_1

    const v0, 0x7f0801e3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "system"

    .line 96
    iget-object v0, p0, Lcom/yftech/settings/sound/SoundFragment;->mShowTab:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "system"

    .line 97
    invoke-direct {p0, p1}, Lcom/yftech/settings/sound/SoundFragment;->showTabFragment(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "interaction"

    .line 101
    iget-object v0, p0, Lcom/yftech/settings/sound/SoundFragment;->mShowTab:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "interaction"

    .line 102
    invoke-direct {p0, p1}, Lcom/yftech/settings/sound/SoundFragment;->showTabFragment(Ljava/lang/String;)V

    :cond_2
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

    const p3, 0x7f0a0046

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 49
    invoke-direct {p0, p1}, Lcom/yftech/settings/sound/SoundFragment;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method public onPause()V
    .locals 1

    .line 76
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onPause()V

    const-string p0, "SoundFragment"

    const-string v0, "onPause()"

    .line 77
    invoke-static {p0, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 69
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onResume()V

    const-string v0, "SoundFragment"

    const-string v1, "onResume()"

    .line 70
    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/yftech/settings/sound/SoundFragment;->mShowTab:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/yftech/settings/sound/SoundFragment;->showTabFragment(Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 82
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onStart()V

    const-string p0, "SoundFragment"

    const-string v0, "onStart()"

    .line 83
    invoke-static {p0, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 88
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onStop()V

    const-string p0, "SoundFragment"

    const-string v0, "onStop()"

    .line 89
    invoke-static {p0, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
