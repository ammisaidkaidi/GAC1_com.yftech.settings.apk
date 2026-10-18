.class public Lcom/yftech/settings/voice/VoiceMainFragment;
.super Lcom/yftech/settings/BaseFragment;
.source "VoiceMainFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAB_VOICE:Ljava/lang/String; = "voice"

.field private static final TAG:Ljava/lang/String; = "VoiceMainFragment"


# instance fields
.field private mShowTab:Ljava/lang/String;

.field private mVoiceSettingsFragment:Lcom/yftech/settings/voice/VoiceSettingsFragment;

.field private tabVoice:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/yftech/settings/BaseFragment;-><init>()V

    const-string v0, "voice"

    .line 24
    iput-object v0, p0, Lcom/yftech/settings/voice/VoiceMainFragment;->mShowTab:Ljava/lang/String;

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0801e6

    .line 43
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/yftech/settings/voice/VoiceMainFragment;->tabVoice:Landroid/widget/RelativeLayout;

    .line 44
    iget-object p1, p0, Lcom/yftech/settings/voice/VoiceMainFragment;->tabVoice:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showTabFragment(Ljava/lang/String;)V
    .locals 6

    .line 86
    iget-object v0, p0, Lcom/yftech/settings/voice/VoiceMainFragment;->tabVoice:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 87
    iput-object p1, p0, Lcom/yftech/settings/voice/VoiceMainFragment;->mShowTab:Ljava/lang/String;

    const-string v0, "voice"

    .line 89
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 90
    iget-object p1, p0, Lcom/yftech/settings/voice/VoiceMainFragment;->tabVoice:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 91
    iget-object p1, p0, Lcom/yftech/settings/voice/VoiceMainFragment;->mVoiceSettingsFragment:Lcom/yftech/settings/voice/VoiceSettingsFragment;

    if-nez p1, :cond_0

    .line 92
    new-instance p1, Lcom/yftech/settings/voice/VoiceSettingsFragment;

    invoke-direct {p1}, Lcom/yftech/settings/voice/VoiceSettingsFragment;-><init>()V

    iput-object p1, p0, Lcom/yftech/settings/voice/VoiceMainFragment;->mVoiceSettingsFragment:Lcom/yftech/settings/voice/VoiceSettingsFragment;

    .line 94
    :cond_0
    iget-object p1, p0, Lcom/yftech/settings/voice/VoiceMainFragment;->mVoiceSettingsFragment:Lcom/yftech/settings/voice/VoiceSettingsFragment;

    goto :goto_0

    :cond_1
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_3

    .line 97
    invoke-virtual {p0}, Lcom/yftech/settings/voice/VoiceMainFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    .line 98
    iget-object v4, p0, Lcom/yftech/settings/voice/VoiceMainFragment;->mShowTab:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    const-string v1, "VoiceMainFragment"

    .line 99
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showTabFragment, showTab:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/yftech/settings/voice/VoiceMainFragment;->mShowTab:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", exist:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f080099

    iget-object p0, p0, Lcom/yftech/settings/voice/VoiceMainFragment;->mShowTab:Ljava/lang/String;

    .line 101
    invoke-virtual {v0, v1, p1, p0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p0

    .line 102
    invoke-virtual {p0, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p0

    .line 103
    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_3
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0801e6

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "voice"

    .line 76
    iget-object v0, p0, Lcom/yftech/settings/voice/VoiceMainFragment;->mShowTab:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "voice"

    .line 77
    invoke-direct {p0, p1}, Lcom/yftech/settings/voice/VoiceMainFragment;->showTabFragment(Ljava/lang/String;)V

    :cond_1
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

    const p3, 0x7f0a004c

    const/4 v0, 0x0

    .line 37
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 38
    invoke-direct {p0, p1}, Lcom/yftech/settings/voice/VoiceMainFragment;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method public onPause()V
    .locals 1

    .line 56
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onPause()V

    const-string p0, "VoiceMainFragment"

    const-string v0, "onPause()"

    .line 57
    invoke-static {p0, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 49
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onResume()V

    const-string v0, "VoiceMainFragment"

    const-string v1, "onResume()"

    .line 50
    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/yftech/settings/voice/VoiceMainFragment;->mShowTab:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/yftech/settings/voice/VoiceMainFragment;->showTabFragment(Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 62
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onStart()V

    const-string p0, "VoiceMainFragment"

    const-string v0, "onStart()"

    .line 63
    invoke-static {p0, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 68
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onStop()V

    const-string p0, "VoiceMainFragment"

    const-string v0, "onStop()"

    .line 69
    invoke-static {p0, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
