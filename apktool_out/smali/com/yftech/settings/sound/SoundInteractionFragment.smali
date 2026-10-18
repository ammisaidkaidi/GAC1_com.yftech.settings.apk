.class public Lcom/yftech/settings/sound/SoundInteractionFragment;
.super Lcom/yftech/settings/BaseFragment;
.source "SoundInteractionFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/yftech/settings/widget/MultiSelectView$OnSwitchListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "SoundInteractionFragment"


# instance fields
.field private mModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yftech/settings/manager/BaseManager$ModelCallback<",
            "Lcom/yftech/settings/manager/SoundManager$Function;",
            ">;"
        }
    .end annotation
.end field

.field private mSmbKeyVolume:Lcom/yftech/settings/widget/MultiSelectView;

.field private mSwInterfaceEffects:Lcom/yftech/settings/widget/Switcher;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/yftech/settings/BaseFragment;-><init>()V

    .line 27
    new-instance v0, Lcom/yftech/settings/sound/SoundInteractionFragment$1;

    invoke-direct {v0, p0}, Lcom/yftech/settings/sound/SoundInteractionFragment$1;-><init>(Lcom/yftech/settings/sound/SoundInteractionFragment;)V

    iput-object v0, p0, Lcom/yftech/settings/sound/SoundInteractionFragment;->mModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/settings/sound/SoundInteractionFragment;Lcom/yftech/settings/manager/SoundManager$Function;Z)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/sound/SoundInteractionFragment;->setSwitcherView(Lcom/yftech/settings/manager/SoundManager$Function;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/yftech/settings/sound/SoundInteractionFragment;Lcom/yftech/settings/manager/SoundManager$Function;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/sound/SoundInteractionFragment;->setSwitchMultiButtonView(Lcom/yftech/settings/manager/SoundManager$Function;I)V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 7

    const v0, 0x7f080195

    .line 59
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 60
    invoke-static {}, Lcom/yftech/settings/manager/SoundManager;->getInstance()Lcom/yftech/settings/manager/SoundManager;

    move-result-object v2

    sget-object v3, Lcom/yftech/settings/manager/SoundManager$Function;->KEY_SOUND_OPTION:Lcom/yftech/settings/manager/SoundManager$Function;

    invoke-virtual {v2, v3}, Lcom/yftech/settings/manager/SoundManager;->getFunctionPresent(Lcom/yftech/settings/manager/SoundManager$Function;)Z

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 61
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    const v5, 0x7f080218

    if-nez v2, :cond_1

    .line 62
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v6, 0x7f0d015b

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    const v2, 0x7f08010c

    .line 63
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yftech/settings/widget/MultiSelectView;

    iput-object v1, p0, Lcom/yftech/settings/sound/SoundInteractionFragment;->mSmbKeyVolume:Lcom/yftech/settings/widget/MultiSelectView;

    .line 64
    iget-object v1, p0, Lcom/yftech/settings/sound/SoundInteractionFragment;->mSmbKeyVolume:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yftech/settings/widget/MultiSelectView;->setTag(Ljava/lang/Object;)V

    .line 65
    iget-object v0, p0, Lcom/yftech/settings/sound/SoundInteractionFragment;->mSmbKeyVolume:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-virtual {p0}, Lcom/yftech/settings/sound/SoundInteractionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020025

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/MultiSelectView;->setText([Ljava/lang/String;)Lcom/yftech/settings/widget/MultiSelectView;

    .line 66
    iget-object v0, p0, Lcom/yftech/settings/sound/SoundInteractionFragment;->mSmbKeyVolume:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/widget/MultiSelectView;->setOnSwitchListener(Lcom/yftech/settings/widget/MultiSelectView$OnSwitchListener;)Lcom/yftech/settings/widget/MultiSelectView;

    :cond_1
    const v0, 0x7f080194

    .line 70
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 71
    invoke-static {}, Lcom/yftech/settings/manager/SoundManager;->getInstance()Lcom/yftech/settings/manager/SoundManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/SoundManager$Function;->INTERFACE_EFFECTS_ENABLE:Lcom/yftech/settings/manager/SoundManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/SoundManager;->getFunctionPresent(Lcom/yftech/settings/manager/SoundManager$Function;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v3, v4

    :cond_2
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 72
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 73
    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0d0159

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f0801ff

    .line 74
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0d015a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f0801bb

    .line 75
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/yftech/settings/widget/Switcher;

    iput-object p1, p0, Lcom/yftech/settings/sound/SoundInteractionFragment;->mSwInterfaceEffects:Lcom/yftech/settings/widget/Switcher;

    .line 76
    iget-object p1, p0, Lcom/yftech/settings/sound/SoundInteractionFragment;->mSwInterfaceEffects:Lcom/yftech/settings/widget/Switcher;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yftech/settings/widget/Switcher;->setTag(Ljava/lang/Object;)V

    .line 77
    iget-object p1, p0, Lcom/yftech/settings/sound/SoundInteractionFragment;->mSwInterfaceEffects:Lcom/yftech/settings/widget/Switcher;

    invoke-virtual {p1, p0}, Lcom/yftech/settings/widget/Switcher;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_3
    return-void
.end method

.method private initViewData()V
    .locals 3

    .line 95
    sget-object v0, Lcom/yftech/settings/manager/SoundManager$Function;->KEY_SOUND_OPTION:Lcom/yftech/settings/manager/SoundManager$Function;

    invoke-static {}, Lcom/yftech/settings/manager/SoundManager;->getInstance()Lcom/yftech/settings/manager/SoundManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/SoundManager$Function;->KEY_SOUND_OPTION:Lcom/yftech/settings/manager/SoundManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/SoundManager;->getOption(Lcom/yftech/settings/manager/SoundManager$Function;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/sound/SoundInteractionFragment;->setSwitchMultiButtonView(Lcom/yftech/settings/manager/SoundManager$Function;I)V

    .line 96
    sget-object v0, Lcom/yftech/settings/manager/SoundManager$Function;->INTERFACE_EFFECTS_ENABLE:Lcom/yftech/settings/manager/SoundManager$Function;

    invoke-static {}, Lcom/yftech/settings/manager/SoundManager;->getInstance()Lcom/yftech/settings/manager/SoundManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/SoundManager$Function;->INTERFACE_EFFECTS_ENABLE:Lcom/yftech/settings/manager/SoundManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/SoundManager;->getEnabled(Lcom/yftech/settings/manager/SoundManager$Function;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/sound/SoundInteractionFragment;->setSwitcherView(Lcom/yftech/settings/manager/SoundManager$Function;Z)V

    return-void
.end method

.method private setSwitchMultiButtonView(Lcom/yftech/settings/manager/SoundManager$Function;I)V
    .locals 1

    .line 154
    sget-object v0, Lcom/yftech/settings/sound/SoundInteractionFragment$2;->$SwitchMap$com$yftech$settings$manager$SoundManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/SoundManager$Function;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 156
    :cond_0
    iget-object p0, p0, Lcom/yftech/settings/sound/SoundInteractionFragment;->mSmbKeyVolume:Lcom/yftech/settings/widget/MultiSelectView;

    :goto_0
    if-eqz p0, :cond_2

    .line 162
    invoke-virtual {p0}, Lcom/yftech/settings/widget/MultiSelectView;->getTabNum()I

    move-result p1

    if-ne p1, p2, :cond_1

    return-void

    .line 165
    :cond_1
    invoke-virtual {p0, p2}, Lcom/yftech/settings/widget/MultiSelectView;->setSelectedTab(I)Lcom/yftech/settings/widget/MultiSelectView;

    :cond_2
    return-void
.end method

.method private setSwitcherView(Lcom/yftech/settings/manager/SoundManager$Function;Z)V
    .locals 1

    .line 137
    sget-object v0, Lcom/yftech/settings/sound/SoundInteractionFragment$2;->$SwitchMap$com$yftech$settings$manager$SoundManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/SoundManager$Function;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 139
    :cond_0
    iget-object p0, p0, Lcom/yftech/settings/sound/SoundInteractionFragment;->mSwInterfaceEffects:Lcom/yftech/settings/widget/Switcher;

    :goto_0
    if-eqz p0, :cond_2

    .line 145
    invoke-virtual {p0}, Lcom/yftech/settings/widget/Switcher;->isChecked()Z

    move-result p1

    if-ne p1, p2, :cond_1

    return-void

    .line 148
    :cond_1
    invoke-virtual {p0, p2}, Lcom/yftech/settings/widget/Switcher;->setChecked(Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 101
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isPressed()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 104
    :cond_0
    sget-object p0, Lcom/yftech/settings/manager/SoundManager$Function;->UNKNOWN:Lcom/yftech/settings/manager/SoundManager$Function;

    .line 105
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v0, 0x7f080194

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 107
    :cond_1
    sget-object p0, Lcom/yftech/settings/manager/SoundManager$Function;->INTERFACE_EFFECTS_ENABLE:Lcom/yftech/settings/manager/SoundManager$Function;

    .line 112
    :goto_0
    sget-object p1, Lcom/yftech/settings/manager/SoundManager$Function;->UNKNOWN:Lcom/yftech/settings/manager/SoundManager$Function;

    if-eq p0, p1, :cond_2

    .line 113
    invoke-static {}, Lcom/yftech/settings/manager/SoundManager;->getInstance()Lcom/yftech/settings/manager/SoundManager;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/yftech/settings/manager/SoundManager;->setEnabled(Lcom/yftech/settings/manager/SoundManager$Function;Z)Z

    :cond_2
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

    const p3, 0x7f0a0045

    const/4 v0, 0x0

    .line 52
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 53
    invoke-direct {p0, p1}, Lcom/yftech/settings/sound/SoundInteractionFragment;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method public onPause()V
    .locals 1

    .line 90
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onPause()V

    .line 91
    invoke-static {}, Lcom/yftech/settings/manager/SoundManager;->getInstance()Lcom/yftech/settings/manager/SoundManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/settings/sound/SoundInteractionFragment;->mModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/manager/SoundManager;->unregisterModelCallback(Lcom/yftech/settings/manager/BaseManager$ModelCallback;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 83
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onResume()V

    .line 84
    invoke-direct {p0}, Lcom/yftech/settings/sound/SoundInteractionFragment;->initViewData()V

    .line 85
    invoke-static {}, Lcom/yftech/settings/manager/SoundManager;->getInstance()Lcom/yftech/settings/manager/SoundManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/settings/sound/SoundInteractionFragment;->mModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/manager/SoundManager;->registerModelCallback(Lcom/yftech/settings/manager/BaseManager$ModelCallback;)V

    return-void
.end method

.method public onSwitch(Lcom/yftech/settings/widget/MultiSelectView;ILjava/lang/String;Z)V
    .locals 0

    if-nez p4, :cond_0

    return-void

    .line 122
    :cond_0
    sget-object p0, Lcom/yftech/settings/manager/SoundManager$Function;->UNKNOWN:Lcom/yftech/settings/manager/SoundManager$Function;

    .line 123
    invoke-virtual {p1}, Lcom/yftech/settings/widget/MultiSelectView;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const p3, 0x7f080195

    if-eq p1, p3, :cond_1

    goto :goto_0

    .line 125
    :cond_1
    sget-object p0, Lcom/yftech/settings/manager/SoundManager$Function;->KEY_SOUND_OPTION:Lcom/yftech/settings/manager/SoundManager$Function;

    .line 130
    :goto_0
    sget-object p1, Lcom/yftech/settings/manager/SoundManager$Function;->UNKNOWN:Lcom/yftech/settings/manager/SoundManager$Function;

    if-eq p0, p1, :cond_2

    .line 131
    invoke-static {}, Lcom/yftech/settings/manager/SoundManager;->getInstance()Lcom/yftech/settings/manager/SoundManager;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/yftech/settings/manager/SoundManager;->setOption(Lcom/yftech/settings/manager/SoundManager$Function;I)Z

    :cond_2
    return-void
.end method
