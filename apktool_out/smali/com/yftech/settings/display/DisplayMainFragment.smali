.class public Lcom/yftech/settings/display/DisplayMainFragment;
.super Lcom/yftech/settings/BaseFragment;
.source "DisplayMainFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAB_CONSOLE:Ljava/lang/String; = "console"

.field private static final TAB_DASH:Ljava/lang/String; = "dash"

.field private static final TAG:Ljava/lang/String; = "DisplayMainFragment"


# instance fields
.field private lineConsole:Landroid/view/View;

.field private mDisplayConsoleFragment:Lcom/yftech/settings/display/DisplayConsoleFragment;

.field private mDisplayDashFragment:Lcom/yftech/settings/display/DisplayDashFragment;

.field private mShowTab:Ljava/lang/String;

.field private tabConsole:Landroid/widget/RelativeLayout;

.field private tabDash:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/yftech/settings/BaseFragment;-><init>()V

    const-string v0, "console"

    .line 31
    iput-object v0, p0, Lcom/yftech/settings/display/DisplayMainFragment;->mShowTab:Ljava/lang/String;

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0801d4

    .line 50
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/yftech/settings/display/DisplayMainFragment;->tabConsole:Landroid/widget/RelativeLayout;

    const v0, 0x7f0801d5

    .line 51
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/yftech/settings/display/DisplayMainFragment;->tabDash:Landroid/widget/RelativeLayout;

    .line 53
    iget-object p1, p0, Lcom/yftech/settings/display/DisplayMainFragment;->tabDash:Landroid/widget/RelativeLayout;

    sget-boolean v0, Lcom/yftech/settings/utils/ConfigUtils;->isCarDashboardConfig:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 55
    iget-object p1, p0, Lcom/yftech/settings/display/DisplayMainFragment;->tabConsole:Landroid/widget/RelativeLayout;

    const v0, 0x7f080129

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/settings/display/DisplayMainFragment;->lineConsole:Landroid/view/View;

    .line 57
    iget-object p1, p0, Lcom/yftech/settings/display/DisplayMainFragment;->tabConsole:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object p1, p0, Lcom/yftech/settings/display/DisplayMainFragment;->tabDash:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showTabFragment(Ljava/lang/String;)V
    .locals 6

    .line 105
    iget-object v0, p0, Lcom/yftech/settings/display/DisplayMainFragment;->tabConsole:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 106
    iget-object v0, p0, Lcom/yftech/settings/display/DisplayMainFragment;->tabDash:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 107
    iget-object v0, p0, Lcom/yftech/settings/display/DisplayMainFragment;->lineConsole:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 108
    iput-object p1, p0, Lcom/yftech/settings/display/DisplayMainFragment;->mShowTab:Ljava/lang/String;

    const-string v0, "console"

    .line 110
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 111
    iget-object p1, p0, Lcom/yftech/settings/display/DisplayMainFragment;->tabConsole:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 112
    iget-object p1, p0, Lcom/yftech/settings/display/DisplayMainFragment;->lineConsole:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 113
    iget-object p1, p0, Lcom/yftech/settings/display/DisplayMainFragment;->mDisplayConsoleFragment:Lcom/yftech/settings/display/DisplayConsoleFragment;

    if-nez p1, :cond_0

    .line 114
    new-instance p1, Lcom/yftech/settings/display/DisplayConsoleFragment;

    invoke-direct {p1}, Lcom/yftech/settings/display/DisplayConsoleFragment;-><init>()V

    iput-object p1, p0, Lcom/yftech/settings/display/DisplayMainFragment;->mDisplayConsoleFragment:Lcom/yftech/settings/display/DisplayConsoleFragment;

    .line 116
    :cond_0
    iget-object p1, p0, Lcom/yftech/settings/display/DisplayMainFragment;->mDisplayConsoleFragment:Lcom/yftech/settings/display/DisplayConsoleFragment;

    goto :goto_0

    :cond_1
    const-string v0, "dash"

    .line 117
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 118
    iget-object p1, p0, Lcom/yftech/settings/display/DisplayMainFragment;->tabDash:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 119
    iget-object p1, p0, Lcom/yftech/settings/display/DisplayMainFragment;->mDisplayDashFragment:Lcom/yftech/settings/display/DisplayDashFragment;

    if-nez p1, :cond_2

    .line 120
    new-instance p1, Lcom/yftech/settings/display/DisplayDashFragment;

    invoke-direct {p1}, Lcom/yftech/settings/display/DisplayDashFragment;-><init>()V

    iput-object p1, p0, Lcom/yftech/settings/display/DisplayMainFragment;->mDisplayDashFragment:Lcom/yftech/settings/display/DisplayDashFragment;

    .line 122
    :cond_2
    iget-object p1, p0, Lcom/yftech/settings/display/DisplayMainFragment;->mDisplayDashFragment:Lcom/yftech/settings/display/DisplayDashFragment;

    goto :goto_0

    :cond_3
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_5

    .line 125
    invoke-virtual {p0}, Lcom/yftech/settings/display/DisplayMainFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 126
    iget-object v4, p0, Lcom/yftech/settings/display/DisplayMainFragment;->mShowTab:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    if-eqz v4, :cond_4

    move v1, v3

    :cond_4
    const-string v3, "DisplayMainFragment"

    .line 127
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showTabFragment, showTab:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/yftech/settings/display/DisplayMainFragment;->mShowTab:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", exist:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f080099

    iget-object p0, p0, Lcom/yftech/settings/display/DisplayMainFragment;->mShowTab:Ljava/lang/String;

    .line 129
    invoke-virtual {v0, v1, p1, p0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p0

    .line 130
    invoke-virtual {p0, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p0

    .line 131
    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_5
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p1, "dash"

    .line 95
    iget-object v0, p0, Lcom/yftech/settings/display/DisplayMainFragment;->mShowTab:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "dash"

    .line 96
    invoke-direct {p0, p1}, Lcom/yftech/settings/display/DisplayMainFragment;->showTabFragment(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string p1, "console"

    .line 90
    iget-object v0, p0, Lcom/yftech/settings/display/DisplayMainFragment;->mShowTab:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "console"

    .line 91
    invoke-direct {p0, p1}, Lcom/yftech/settings/display/DisplayMainFragment;->showTabFragment(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0801d4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const p3, 0x7f0a003e

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 45
    invoke-direct {p0, p1}, Lcom/yftech/settings/display/DisplayMainFragment;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method public onPause()V
    .locals 1

    .line 70
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onPause()V

    const-string p0, "DisplayMainFragment"

    const-string v0, "onPause()"

    .line 71
    invoke-static {p0, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 63
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onResume()V

    const-string v0, "DisplayMainFragment"

    const-string v1, "onResume()"

    .line 64
    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/yftech/settings/display/DisplayMainFragment;->mShowTab:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/yftech/settings/display/DisplayMainFragment;->showTabFragment(Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 76
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onStart()V

    const-string p0, "DisplayMainFragment"

    const-string v0, "onStart()"

    .line 77
    invoke-static {p0, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 82
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onStop()V

    const-string p0, "DisplayMainFragment"

    const-string v0, "onStop()"

    .line 83
    invoke-static {p0, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
