.class public Lcom/yftech/settings/ac/AcSeatMainFragment;
.super Lcom/yftech/settings/BaseFragment;
.source "AcSeatMainFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAB_AC:Ljava/lang/String; = "ac"

.field private static final TAB_SEAT:Ljava/lang/String; = "seat"

.field private static final TAG:Ljava/lang/String; = "AcSeatMainFragment"


# instance fields
.field private lineAc:Landroid/view/View;

.field private mAcFragment:Lcom/yftech/settings/ac/AcFragment;

.field private mSeatFragment:Lcom/yftech/settings/ac/SeatFragment;

.field private mShowTab:Ljava/lang/String;

.field private tabAc:Landroid/widget/RelativeLayout;

.field private tabSeat:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/yftech/settings/BaseFragment;-><init>()V

    const-string v0, "ac"

    .line 31
    iput-object v0, p0, Lcom/yftech/settings/ac/AcSeatMainFragment;->mShowTab:Ljava/lang/String;

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 4

    const v0, 0x7f0801d0

    .line 50
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/yftech/settings/ac/AcSeatMainFragment;->tabAc:Landroid/widget/RelativeLayout;

    const v0, 0x7f0801e2

    .line 51
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/yftech/settings/ac/AcSeatMainFragment;->tabSeat:Landroid/widget/RelativeLayout;

    .line 53
    iget-object p1, p0, Lcom/yftech/settings/ac/AcSeatMainFragment;->tabAc:Landroid/widget/RelativeLayout;

    sget-boolean v0, Lcom/yftech/settings/utils/ConfigUtils;->isAcConfig:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 54
    iget-object p1, p0, Lcom/yftech/settings/ac/AcSeatMainFragment;->tabSeat:Landroid/widget/RelativeLayout;

    sget-boolean v0, Lcom/yftech/settings/utils/ConfigUtils;->isSeatConfig:Z

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 56
    iget-object p1, p0, Lcom/yftech/settings/ac/AcSeatMainFragment;->tabAc:Landroid/widget/RelativeLayout;

    const v0, 0x7f080126

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/settings/ac/AcSeatMainFragment;->lineAc:Landroid/view/View;

    const-string p1, "ac"

    const-string v0, "seat"

    .line 59
    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    .line 60
    new-array v0, v0, [Z

    sget-boolean v1, Lcom/yftech/settings/utils/ConfigUtils;->isAcConfig:Z

    aput-boolean v1, v0, v2

    sget-boolean v1, Lcom/yftech/settings/utils/ConfigUtils;->isSeatConfig:Z

    const/4 v3, 0x1

    aput-boolean v1, v0, v3

    .line 61
    :goto_1
    array-length v1, v0

    if-ge v2, v1, :cond_3

    .line 62
    aget-boolean v1, v0, v2

    if-eqz v1, :cond_2

    .line 63
    aget-object p1, p1, v2

    iput-object p1, p0, Lcom/yftech/settings/ac/AcSeatMainFragment;->mShowTab:Ljava/lang/String;

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 68
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/yftech/settings/ac/AcSeatMainFragment;->tabAc:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object p1, p0, Lcom/yftech/settings/ac/AcSeatMainFragment;->tabSeat:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object p1, p0, Lcom/yftech/settings/ac/AcSeatMainFragment;->tabAc:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 71
    iget-object p1, p0, Lcom/yftech/settings/ac/AcSeatMainFragment;->tabSeat:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private showTabFragment(Ljava/lang/String;)V
    .locals 6

    .line 118
    iget-object v0, p0, Lcom/yftech/settings/ac/AcSeatMainFragment;->tabAc:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 119
    iget-object v0, p0, Lcom/yftech/settings/ac/AcSeatMainFragment;->tabSeat:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 120
    iget-object v0, p0, Lcom/yftech/settings/ac/AcSeatMainFragment;->lineAc:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 121
    iput-object p1, p0, Lcom/yftech/settings/ac/AcSeatMainFragment;->mShowTab:Ljava/lang/String;

    const-string v0, "ac"

    .line 123
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 124
    iget-object p1, p0, Lcom/yftech/settings/ac/AcSeatMainFragment;->tabAc:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 125
    iget-object p1, p0, Lcom/yftech/settings/ac/AcSeatMainFragment;->lineAc:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 126
    iget-object p1, p0, Lcom/yftech/settings/ac/AcSeatMainFragment;->mAcFragment:Lcom/yftech/settings/ac/AcFragment;

    if-nez p1, :cond_0

    .line 127
    new-instance p1, Lcom/yftech/settings/ac/AcFragment;

    invoke-direct {p1}, Lcom/yftech/settings/ac/AcFragment;-><init>()V

    iput-object p1, p0, Lcom/yftech/settings/ac/AcSeatMainFragment;->mAcFragment:Lcom/yftech/settings/ac/AcFragment;

    .line 129
    :cond_0
    iget-object p1, p0, Lcom/yftech/settings/ac/AcSeatMainFragment;->mAcFragment:Lcom/yftech/settings/ac/AcFragment;

    goto :goto_0

    :cond_1
    const-string v0, "seat"

    .line 130
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 131
    iget-object p1, p0, Lcom/yftech/settings/ac/AcSeatMainFragment;->tabSeat:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 132
    iget-object p1, p0, Lcom/yftech/settings/ac/AcSeatMainFragment;->mSeatFragment:Lcom/yftech/settings/ac/SeatFragment;

    if-nez p1, :cond_2

    .line 133
    new-instance p1, Lcom/yftech/settings/ac/SeatFragment;

    invoke-direct {p1}, Lcom/yftech/settings/ac/SeatFragment;-><init>()V

    iput-object p1, p0, Lcom/yftech/settings/ac/AcSeatMainFragment;->mSeatFragment:Lcom/yftech/settings/ac/SeatFragment;

    .line 135
    :cond_2
    iget-object p1, p0, Lcom/yftech/settings/ac/AcSeatMainFragment;->mSeatFragment:Lcom/yftech/settings/ac/SeatFragment;

    goto :goto_0

    :cond_3
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_5

    .line 138
    invoke-virtual {p0}, Lcom/yftech/settings/ac/AcSeatMainFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 139
    iget-object v4, p0, Lcom/yftech/settings/ac/AcSeatMainFragment;->mShowTab:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    if-eqz v4, :cond_4

    move v1, v3

    :cond_4
    const-string v3, "AcSeatMainFragment"

    .line 140
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showTabFragment, showTab:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/yftech/settings/ac/AcSeatMainFragment;->mShowTab:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", exist:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f080099

    iget-object p0, p0, Lcom/yftech/settings/ac/AcSeatMainFragment;->mShowTab:Ljava/lang/String;

    .line 142
    invoke-virtual {v0, v1, p1, p0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p0

    .line 143
    invoke-virtual {p0, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p0

    .line 144
    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_5
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0801d0

    if-eq p1, v0, :cond_1

    const v0, 0x7f0801e2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "seat"

    .line 108
    iget-object v0, p0, Lcom/yftech/settings/ac/AcSeatMainFragment;->mShowTab:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "seat"

    .line 109
    invoke-direct {p0, p1}, Lcom/yftech/settings/ac/AcSeatMainFragment;->showTabFragment(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "ac"

    .line 103
    iget-object v0, p0, Lcom/yftech/settings/ac/AcSeatMainFragment;->mShowTab:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "ac"

    .line 104
    invoke-direct {p0, p1}, Lcom/yftech/settings/ac/AcSeatMainFragment;->showTabFragment(Ljava/lang/String;)V

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

    const p3, 0x7f0a002d

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 45
    invoke-direct {p0, p1}, Lcom/yftech/settings/ac/AcSeatMainFragment;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method public onPause()V
    .locals 1

    .line 83
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onPause()V

    const-string p0, "AcSeatMainFragment"

    const-string v0, "onPause()"

    .line 84
    invoke-static {p0, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 76
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onResume()V

    const-string v0, "AcSeatMainFragment"

    const-string v1, "onResume()"

    .line 77
    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/yftech/settings/ac/AcSeatMainFragment;->mShowTab:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/yftech/settings/ac/AcSeatMainFragment;->showTabFragment(Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 89
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onStart()V

    const-string p0, "AcSeatMainFragment"

    const-string v0, "onStart()"

    .line 90
    invoke-static {p0, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 95
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onStop()V

    const-string p0, "AcSeatMainFragment"

    const-string v0, "onStop()"

    .line 96
    invoke-static {p0, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
