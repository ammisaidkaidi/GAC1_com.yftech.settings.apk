.class public Lcom/yftech/settings/parts/CarPartsLockFragment;
.super Lcom/yftech/settings/BaseFragment;
.source "CarPartsLockFragment.java"

# interfaces
.implements Lcom/yftech/settings/widget/MultiSelectView$OnSwitchListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mCarPartsModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yftech/settings/manager/BaseManager$ModelCallback<",
            "Lcom/yftech/settings/manager/CarPartsManager$Function;",
            ">;"
        }
    .end annotation
.end field

.field private mCommonCheckboxDialog:Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;

.field private mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

.field private mSmbPepsAutoTrunkOpen:Lcom/yftech/settings/widget/MultiSelectView;

.field private mSmbRemoteUnlocking:Lcom/yftech/settings/widget/MultiSelectView;

.field private mSwActiveLock:Lcom/yftech/settings/widget/Switcher;

.field private mSwActiveUnlocking:Lcom/yftech/settings/widget/Switcher;

.field private mSwAutoUnlocking:Lcom/yftech/settings/widget/Switcher;

.field private mSwAutoWindowUpLock:Lcom/yftech/settings/widget/Switcher;

.field private mSwElectricHiddenDoorHandle:Lcom/yftech/settings/widget/Switcher;

.field private mSwSpeedLock:Lcom/yftech/settings/widget/Switcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/yftech/settings/BaseFragment;-><init>()V

    .line 39
    new-instance v0, Lcom/yftech/settings/parts/CarPartsLockFragment$1;

    invoke-direct {v0, p0}, Lcom/yftech/settings/parts/CarPartsLockFragment$1;-><init>(Lcom/yftech/settings/parts/CarPartsLockFragment;)V

    iput-object v0, p0, Lcom/yftech/settings/parts/CarPartsLockFragment;->mCarPartsModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/settings/parts/CarPartsLockFragment;Lcom/yftech/settings/manager/CarPartsManager$Function;Z)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/parts/CarPartsLockFragment;->setSwitcherView(Lcom/yftech/settings/manager/CarPartsManager$Function;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/yftech/settings/parts/CarPartsLockFragment;Lcom/yftech/settings/manager/CarPartsManager$Function;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/parts/CarPartsLockFragment;->setSwitchMultiButtonView(Lcom/yftech/settings/manager/CarPartsManager$Function;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/yftech/settings/parts/CarPartsLockFragment;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/yftech/settings/parts/CarPartsLockFragment;->initViewData()V

    return-void
.end method

.method static synthetic access$302(Lcom/yftech/settings/parts/CarPartsLockFragment;Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;)Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/yftech/settings/parts/CarPartsLockFragment;->mCommonCheckboxDialog:Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;

    return-object p1
.end method

.method static synthetic access$402(Lcom/yftech/settings/parts/CarPartsLockFragment;Lcom/yftech/settings/widget/dialog/CommonDialog;)Lcom/yftech/settings/widget/dialog/CommonDialog;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/yftech/settings/parts/CarPartsLockFragment;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    return-object p1
.end method

.method static synthetic access$500(Lcom/yftech/settings/parts/CarPartsLockFragment;)Lcom/yftech/settings/widget/MultiSelectView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/yftech/settings/parts/CarPartsLockFragment;->mSmbPepsAutoTrunkOpen:Lcom/yftech/settings/widget/MultiSelectView;

    return-object p0
.end method

.method private initView(Landroid/view/View;)V
    .locals 10

    const v0, 0x7f08007a

    .line 92
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 93
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v2

    sget-object v3, Lcom/yftech/settings/manager/CarPartsManager$Function;->REMOTE_UNLOCK_MODE_OPTION:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v2, v3}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

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

    .line 95
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    const v5, 0x7f080158

    const v6, 0x7f0801ff

    const v7, 0x7f080218

    if-nez v2, :cond_1

    .line 96
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v8, 0x7f0d00b4

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(I)V

    .line 97
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v8, 0x7f0d00b5

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(I)V

    .line 98
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yftech/settings/widget/MultiSelectView;

    iput-object v1, p0, Lcom/yftech/settings/parts/CarPartsLockFragment;->mSmbRemoteUnlocking:Lcom/yftech/settings/widget/MultiSelectView;

    .line 99
    iget-object v1, p0, Lcom/yftech/settings/parts/CarPartsLockFragment;->mSmbRemoteUnlocking:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yftech/settings/widget/MultiSelectView;->setTag(Ljava/lang/Object;)V

    .line 100
    iget-object v0, p0, Lcom/yftech/settings/parts/CarPartsLockFragment;->mSmbRemoteUnlocking:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-virtual {p0}, Lcom/yftech/settings/parts/CarPartsLockFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/MultiSelectView;->setText([Ljava/lang/String;)Lcom/yftech/settings/widget/MultiSelectView;

    .line 101
    iget-object v0, p0, Lcom/yftech/settings/parts/CarPartsLockFragment;->mSmbRemoteUnlocking:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/widget/MultiSelectView;->setOnSwitchListener(Lcom/yftech/settings/widget/MultiSelectView$OnSwitchListener;)Lcom/yftech/settings/widget/MultiSelectView;

    .line 102
    iget-object v0, p0, Lcom/yftech/settings/parts/CarPartsLockFragment;->mSmbRemoteUnlocking:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/widget/MultiSelectView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    const v0, 0x7f080076

    .line 106
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 107
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v2

    sget-object v8, Lcom/yftech/settings/manager/CarPartsManager$Function;->AUTO_UNLOCK_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v2, v8}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 109
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    const v8, 0x7f0801bb

    if-nez v2, :cond_3

    .line 110
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v9, 0x7f0d00a6

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(I)V

    .line 111
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v9, 0x7f0d00a7

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(I)V

    .line 112
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yftech/settings/widget/Switcher;

    iput-object v1, p0, Lcom/yftech/settings/parts/CarPartsLockFragment;->mSwAutoUnlocking:Lcom/yftech/settings/widget/Switcher;

    .line 113
    iget-object v1, p0, Lcom/yftech/settings/parts/CarPartsLockFragment;->mSwAutoUnlocking:Lcom/yftech/settings/widget/Switcher;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yftech/settings/widget/Switcher;->setTag(Ljava/lang/Object;)V

    .line 114
    iget-object v0, p0, Lcom/yftech/settings/parts/CarPartsLockFragment;->mSwAutoUnlocking:Lcom/yftech/settings/widget/Switcher;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/widget/Switcher;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 115
    iget-object v0, p0, Lcom/yftech/settings/parts/CarPartsLockFragment;->mSwAutoUnlocking:Lcom/yftech/settings/widget/Switcher;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/widget/Switcher;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_3
    const v0, 0x7f080074

    .line 119
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 120
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v2

    sget-object v9, Lcom/yftech/settings/manager/CarPartsManager$Function;->PEPS_WALK_AWAY_LOCK_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v2, v9}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v4

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 122
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_5

    .line 123
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v9, 0x7f0d00a2

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(I)V

    .line 124
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v9, 0x7f0d00a3

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(I)V

    .line 125
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yftech/settings/widget/Switcher;

    iput-object v1, p0, Lcom/yftech/settings/parts/CarPartsLockFragment;->mSwActiveLock:Lcom/yftech/settings/widget/Switcher;

    .line 126
    iget-object v1, p0, Lcom/yftech/settings/parts/CarPartsLockFragment;->mSwActiveLock:Lcom/yftech/settings/widget/Switcher;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yftech/settings/widget/Switcher;->setTag(Ljava/lang/Object;)V

    .line 127
    iget-object v0, p0, Lcom/yftech/settings/parts/CarPartsLockFragment;->mSwActiveLock:Lcom/yftech/settings/widget/Switcher;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/widget/Switcher;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 128
    iget-object v0, p0, Lcom/yftech/settings/parts/CarPartsLockFragment;->mSwActiveLock:Lcom/yftech/settings/widget/Switcher;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/widget/Switcher;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_5
    const v0, 0x7f080075

    .line 132
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 133
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v2

    sget-object v9, Lcom/yftech/settings/manager/CarPartsManager$Function;->PEPS_UNLOCK_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v2, v9}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v4

    goto :goto_3

    :cond_6
    move v2, v3

    :goto_3
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 135
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_7

    .line 136
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v9, 0x7f0d00a4

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(I)V

    .line 137
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v9, 0x7f0d00a5

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(I)V

    .line 138
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yftech/settings/widget/Switcher;

    iput-object v1, p0, Lcom/yftech/settings/parts/CarPartsLockFragment;->mSwActiveUnlocking:Lcom/yftech/settings/widget/Switcher;

    .line 139
    iget-object v1, p0, Lcom/yftech/settings/parts/CarPartsLockFragment;->mSwActiveUnlocking:Lcom/yftech/settings/widget/Switcher;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yftech/settings/widget/Switcher;->setTag(Ljava/lang/Object;)V

    .line 140
    iget-object v0, p0, Lcom/yftech/settings/parts/CarPartsLockFragment;->mSwActiveUnlocking:Lcom/yftech/settings/widget/Switcher;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/widget/Switcher;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 141
    iget-object v0, p0, Lcom/yftech/settings/parts/CarPartsLockFragment;->mSwActiveUnlocking:Lcom/yftech/settings/widget/Switcher;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/widget/Switcher;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_7
    const v0, 0x7f08007b

    .line 145
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 146
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v2

    sget-object v9, Lcom/yftech/settings/manager/CarPartsManager$Function;->SPEED_AUTO_LOCK_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v2, v9}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v4

    goto :goto_4

    :cond_8
    move v2, v3

    :goto_4
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 148
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_9

    .line 149
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v9, 0x7f0d00b7

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(I)V

    .line 150
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v9, 0x7f0d00b8

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(I)V

    .line 151
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yftech/settings/widget/Switcher;

    iput-object v1, p0, Lcom/yftech/settings/parts/CarPartsLockFragment;->mSwSpeedLock:Lcom/yftech/settings/widget/Switcher;

    .line 152
    iget-object v1, p0, Lcom/yftech/settings/parts/CarPartsLockFragment;->mSwSpeedLock:Lcom/yftech/settings/widget/Switcher;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yftech/settings/widget/Switcher;->setTag(Ljava/lang/Object;)V

    .line 153
    iget-object v0, p0, Lcom/yftech/settings/parts/CarPartsLockFragment;->mSwSpeedLock:Lcom/yftech/settings/widget/Switcher;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/widget/Switcher;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 154
    iget-object v0, p0, Lcom/yftech/settings/parts/CarPartsLockFragment;->mSwSpeedLock:Lcom/yftech/settings/widget/Switcher;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/widget/Switcher;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_9
    const v0, 0x7f080079

    .line 158
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 159
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v2

    sget-object v9, Lcom/yftech/settings/manager/CarPartsManager$Function;->PEPS_AUTO_TRUNK_OPEN_OPTION:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v2, v9}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v2

    if-eqz v2, :cond_a

    move v2, v4

    goto :goto_5

    :cond_a
    move v2, v3

    :goto_5
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 162
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_b

    .line 163
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v9, 0x7f0d00ab

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(I)V

    .line 164
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v9, 0x7f0d00ac

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(I)V

    .line 165
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yftech/settings/widget/MultiSelectView;

    iput-object v1, p0, Lcom/yftech/settings/parts/CarPartsLockFragment;->mSmbPepsAutoTrunkOpen:Lcom/yftech/settings/widget/MultiSelectView;

    .line 166
    iget-object v1, p0, Lcom/yftech/settings/parts/CarPartsLockFragment;->mSmbPepsAutoTrunkOpen:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yftech/settings/widget/MultiSelectView;->setTag(Ljava/lang/Object;)V

    .line 167
    iget-object v0, p0, Lcom/yftech/settings/parts/CarPartsLockFragment;->mSmbPepsAutoTrunkOpen:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-virtual {p0}, Lcom/yftech/settings/parts/CarPartsLockFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/MultiSelectView;->setText([Ljava/lang/String;)Lcom/yftech/settings/widget/MultiSelectView;

    .line 168
    iget-object v0, p0, Lcom/yftech/settings/parts/CarPartsLockFragment;->mSmbPepsAutoTrunkOpen:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/widget/MultiSelectView;->setOnSwitchListener(Lcom/yftech/settings/widget/MultiSelectView$OnSwitchListener;)Lcom/yftech/settings/widget/MultiSelectView;

    .line 169
    iget-object v0, p0, Lcom/yftech/settings/parts/CarPartsLockFragment;->mSmbPepsAutoTrunkOpen:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/widget/MultiSelectView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_b
    const v0, 0x7f080077

    .line 173
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 174
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v2

    sget-object v5, Lcom/yftech/settings/manager/CarPartsManager$Function;->SUNROOF_WINDOW_AUTO_CLOSE_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v2, v5}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v2

    if-eqz v2, :cond_c

    move v2, v4

    goto :goto_6

    :cond_c
    move v2, v3

    :goto_6
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 176
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_d

    .line 177
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v5, 0x7f0d00a9

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 178
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v5, 0x7f0d00aa

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 179
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yftech/settings/widget/Switcher;

    iput-object v1, p0, Lcom/yftech/settings/parts/CarPartsLockFragment;->mSwAutoWindowUpLock:Lcom/yftech/settings/widget/Switcher;

    .line 180
    iget-object v1, p0, Lcom/yftech/settings/parts/CarPartsLockFragment;->mSwAutoWindowUpLock:Lcom/yftech/settings/widget/Switcher;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yftech/settings/widget/Switcher;->setTag(Ljava/lang/Object;)V

    .line 181
    iget-object v0, p0, Lcom/yftech/settings/parts/CarPartsLockFragment;->mSwAutoWindowUpLock:Lcom/yftech/settings/widget/Switcher;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/widget/Switcher;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 182
    iget-object v0, p0, Lcom/yftech/settings/parts/CarPartsLockFragment;->mSwAutoWindowUpLock:Lcom/yftech/settings/widget/Switcher;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/widget/Switcher;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_d
    const v0, 0x7f080078

    .line 186
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 187
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/CarPartsManager$Function;->ELECTRIC_HIDDEN_DOOR_HANDLE_ENABLE:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v1

    if-eqz v1, :cond_e

    move v3, v4

    :cond_e
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 189
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_f

    .line 190
    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0d00ad

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 191
    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0d00ae

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 192
    invoke-virtual {p1, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/yftech/settings/widget/Switcher;

    iput-object p1, p0, Lcom/yftech/settings/parts/CarPartsLockFragment;->mSwElectricHiddenDoorHandle:Lcom/yftech/settings/widget/Switcher;

    .line 193
    iget-object p1, p0, Lcom/yftech/settings/parts/CarPartsLockFragment;->mSwElectricHiddenDoorHandle:Lcom/yftech/settings/widget/Switcher;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yftech/settings/widget/Switcher;->setTag(Ljava/lang/Object;)V

    .line 194
    iget-object p1, p0, Lcom/yftech/settings/parts/CarPartsLockFragment;->mSwElectricHiddenDoorHandle:Lcom/yftech/settings/widget/Switcher;

    invoke-virtual {p1, p0}, Lcom/yftech/settings/widget/Switcher;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 195
    iget-object p1, p0, Lcom/yftech/settings/parts/CarPartsLockFragment;->mSwElectricHiddenDoorHandle:Lcom/yftech/settings/widget/Switcher;

    invoke-virtual {p1, p0}, Lcom/yftech/settings/widget/Switcher;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_f
    return-void
.end method

.method private initViewData()V
    .locals 3

    .line 200
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/CarPartsManager$Function;->REMOTE_UNLOCK_MODE_OPTION:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->REMOTE_UNLOCK_MODE_OPTION:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/CarPartsManager$Function;->REMOTE_UNLOCK_MODE_OPTION:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/CarPartsManager;->getOption(Lcom/yftech/settings/manager/CarPartsManager$Function;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/parts/CarPartsLockFragment;->setSwitchMultiButtonView(Lcom/yftech/settings/manager/CarPartsManager$Function;I)V

    .line 203
    :cond_0
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/CarPartsManager$Function;->PEPS_AUTO_TRUNK_OPEN_OPTION:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->PEPS_AUTO_TRUNK_OPEN_OPTION:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/CarPartsManager$Function;->PEPS_AUTO_TRUNK_OPEN_OPTION:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/CarPartsManager;->getOption(Lcom/yftech/settings/manager/CarPartsManager$Function;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/parts/CarPartsLockFragment;->setSwitchMultiButtonView(Lcom/yftech/settings/manager/CarPartsManager$Function;I)V

    .line 206
    :cond_1
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/CarPartsManager$Function;->AUTO_UNLOCK_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 207
    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->AUTO_UNLOCK_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/CarPartsManager$Function;->AUTO_UNLOCK_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/CarPartsManager;->getEnabled(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/parts/CarPartsLockFragment;->setSwitcherView(Lcom/yftech/settings/manager/CarPartsManager$Function;Z)V

    .line 209
    :cond_2
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/CarPartsManager$Function;->PEPS_WALK_AWAY_LOCK_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 210
    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->PEPS_WALK_AWAY_LOCK_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/CarPartsManager$Function;->PEPS_WALK_AWAY_LOCK_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/CarPartsManager;->getEnabled(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/parts/CarPartsLockFragment;->setSwitcherView(Lcom/yftech/settings/manager/CarPartsManager$Function;Z)V

    .line 212
    :cond_3
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/CarPartsManager$Function;->PEPS_UNLOCK_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 213
    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->PEPS_UNLOCK_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/CarPartsManager$Function;->PEPS_UNLOCK_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/CarPartsManager;->getEnabled(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/parts/CarPartsLockFragment;->setSwitcherView(Lcom/yftech/settings/manager/CarPartsManager$Function;Z)V

    .line 215
    :cond_4
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/CarPartsManager$Function;->SPEED_AUTO_LOCK_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 216
    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->SPEED_AUTO_LOCK_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/CarPartsManager$Function;->SPEED_AUTO_LOCK_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/CarPartsManager;->getEnabled(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/parts/CarPartsLockFragment;->setSwitcherView(Lcom/yftech/settings/manager/CarPartsManager$Function;Z)V

    .line 218
    :cond_5
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/CarPartsManager$Function;->SUNROOF_WINDOW_AUTO_CLOSE_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 219
    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->SUNROOF_WINDOW_AUTO_CLOSE_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/CarPartsManager$Function;->SUNROOF_WINDOW_AUTO_CLOSE_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/CarPartsManager;->getEnabled(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/parts/CarPartsLockFragment;->setSwitcherView(Lcom/yftech/settings/manager/CarPartsManager$Function;Z)V

    .line 221
    :cond_6
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/CarPartsManager$Function;->ELECTRIC_HIDDEN_DOOR_HANDLE_ENABLE:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 222
    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->ELECTRIC_HIDDEN_DOOR_HANDLE_ENABLE:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/CarPartsManager$Function;->ELECTRIC_HIDDEN_DOOR_HANDLE_ENABLE:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/CarPartsManager;->getEnabled(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/parts/CarPartsLockFragment;->setSwitcherView(Lcom/yftech/settings/manager/CarPartsManager$Function;Z)V

    :cond_7
    return-void
.end method

.method private setSwitchMultiButtonView(Lcom/yftech/settings/manager/CarPartsManager$Function;I)V
    .locals 1

    .line 323
    sget-object v0, Lcom/yftech/settings/parts/CarPartsLockFragment$6;->$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/CarPartsManager$Function;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    .line 328
    :pswitch_0
    iget-object p0, p0, Lcom/yftech/settings/parts/CarPartsLockFragment;->mSmbPepsAutoTrunkOpen:Lcom/yftech/settings/widget/MultiSelectView;

    goto :goto_0

    .line 325
    :pswitch_1
    iget-object p0, p0, Lcom/yftech/settings/parts/CarPartsLockFragment;->mSmbRemoteUnlocking:Lcom/yftech/settings/widget/MultiSelectView;

    :goto_0
    if-eqz p0, :cond_1

    .line 334
    invoke-virtual {p0}, Lcom/yftech/settings/widget/MultiSelectView;->getTabNum()I

    move-result p1

    if-ne p1, p2, :cond_0

    return-void

    .line 337
    :cond_0
    invoke-virtual {p0, p2}, Lcom/yftech/settings/widget/MultiSelectView;->setSelectedTab(I)Lcom/yftech/settings/widget/MultiSelectView;

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setSwitcherView(Lcom/yftech/settings/manager/CarPartsManager$Function;Z)V
    .locals 1

    .line 291
    sget-object v0, Lcom/yftech/settings/parts/CarPartsLockFragment$6;->$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/CarPartsManager$Function;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    .line 308
    :pswitch_0
    iget-object p0, p0, Lcom/yftech/settings/parts/CarPartsLockFragment;->mSwElectricHiddenDoorHandle:Lcom/yftech/settings/widget/Switcher;

    goto :goto_0

    .line 305
    :pswitch_1
    iget-object p0, p0, Lcom/yftech/settings/parts/CarPartsLockFragment;->mSwAutoWindowUpLock:Lcom/yftech/settings/widget/Switcher;

    goto :goto_0

    .line 302
    :pswitch_2
    iget-object p0, p0, Lcom/yftech/settings/parts/CarPartsLockFragment;->mSwSpeedLock:Lcom/yftech/settings/widget/Switcher;

    goto :goto_0

    .line 299
    :pswitch_3
    iget-object p0, p0, Lcom/yftech/settings/parts/CarPartsLockFragment;->mSwActiveUnlocking:Lcom/yftech/settings/widget/Switcher;

    goto :goto_0

    .line 296
    :pswitch_4
    iget-object p0, p0, Lcom/yftech/settings/parts/CarPartsLockFragment;->mSwActiveLock:Lcom/yftech/settings/widget/Switcher;

    goto :goto_0

    .line 293
    :pswitch_5
    iget-object p0, p0, Lcom/yftech/settings/parts/CarPartsLockFragment;->mSwAutoUnlocking:Lcom/yftech/settings/widget/Switcher;

    :goto_0
    if-eqz p0, :cond_1

    .line 314
    invoke-virtual {p0}, Lcom/yftech/settings/widget/Switcher;->isChecked()Z

    move-result p1

    if-ne p1, p2, :cond_0

    return-void

    .line 317
    :cond_0
    invoke-virtual {p0, p2}, Lcom/yftech/settings/widget/Switcher;->setChecked(Z)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showConfirmDialog(I)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 371
    :cond_0
    new-instance v0, Lcom/yftech/settings/widget/dialog/CommonDialog;

    invoke-virtual {p0}, Lcom/yftech/settings/parts/CarPartsLockFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yftech/settings/widget/dialog/CommonDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yftech/settings/parts/CarPartsLockFragment;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    .line 372
    iget-object v0, p0, Lcom/yftech/settings/parts/CarPartsLockFragment;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/dialog/CommonDialog;->setDimAmount(F)V

    .line 373
    iget-object v0, p0, Lcom/yftech/settings/parts/CarPartsLockFragment;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    invoke-virtual {v0}, Lcom/yftech/settings/widget/dialog/CommonDialog;->show()V

    .line 374
    iget-object v0, p0, Lcom/yftech/settings/parts/CarPartsLockFragment;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/dialog/CommonDialog;->setContentGravity(I)V

    .line 375
    iget-object v0, p0, Lcom/yftech/settings/parts/CarPartsLockFragment;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    new-instance v1, Lcom/yftech/settings/parts/CarPartsLockFragment$4;

    invoke-direct {v1, p0}, Lcom/yftech/settings/parts/CarPartsLockFragment$4;-><init>(Lcom/yftech/settings/parts/CarPartsLockFragment;)V

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/dialog/CommonDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 381
    iget-object v0, p0, Lcom/yftech/settings/parts/CarPartsLockFragment;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    const v1, 0x7f0d00ff

    invoke-virtual {p0, v1}, Lcom/yftech/settings/parts/CarPartsLockFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/dialog/CommonDialog;->setTitle(Ljava/lang/String;)Lcom/yftech/settings/widget/dialog/CommonDialog;

    .line 382
    iget-object v0, p0, Lcom/yftech/settings/parts/CarPartsLockFragment;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    const v1, 0x7f0d00b1

    invoke-virtual {p0, v1}, Lcom/yftech/settings/parts/CarPartsLockFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/dialog/CommonDialog;->setContent(Ljava/lang/String;)Lcom/yftech/settings/widget/dialog/CommonDialog;

    .line 383
    iget-object v0, p0, Lcom/yftech/settings/parts/CarPartsLockFragment;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const v3, 0x7f0d00cf

    invoke-virtual {p0, v3}, Lcom/yftech/settings/parts/CarPartsLockFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const v3, 0x7f0d005b

    invoke-virtual {p0, v3}, Lcom/yftech/settings/parts/CarPartsLockFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/dialog/CommonDialog;->setButtonText([Ljava/lang/String;)Lcom/yftech/settings/widget/dialog/CommonDialog;

    .line 384
    iget-object v0, p0, Lcom/yftech/settings/parts/CarPartsLockFragment;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    new-instance v1, Lcom/yftech/settings/parts/CarPartsLockFragment$5;

    invoke-direct {v1, p0, p1}, Lcom/yftech/settings/parts/CarPartsLockFragment$5;-><init>(Lcom/yftech/settings/parts/CarPartsLockFragment;I)V

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/dialog/CommonDialog;->setOnBtnClickListener(Lcom/yftech/settings/widget/dialog/CommonDialog$OnBtnClickListener;)Lcom/yftech/settings/widget/dialog/CommonDialog;

    return-void
.end method

.method private showOpenSpeedLockDialog()V
    .locals 5

    .line 342
    new-instance v0, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;

    invoke-virtual {p0}, Lcom/yftech/settings/parts/CarPartsLockFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yftech/settings/parts/CarPartsLockFragment;->mCommonCheckboxDialog:Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;

    .line 343
    iget-object v0, p0, Lcom/yftech/settings/parts/CarPartsLockFragment;->mCommonCheckboxDialog:Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;

    invoke-virtual {v0}, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;->show()V

    .line 344
    iget-object v0, p0, Lcom/yftech/settings/parts/CarPartsLockFragment;->mCommonCheckboxDialog:Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;

    new-instance v1, Lcom/yftech/settings/parts/CarPartsLockFragment$2;

    invoke-direct {v1, p0}, Lcom/yftech/settings/parts/CarPartsLockFragment$2;-><init>(Lcom/yftech/settings/parts/CarPartsLockFragment;)V

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 350
    iget-object v0, p0, Lcom/yftech/settings/parts/CarPartsLockFragment;->mCommonCheckboxDialog:Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;

    const v1, 0x7f0d00ff

    invoke-virtual {p0, v1}, Lcom/yftech/settings/parts/CarPartsLockFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;->setTitle(Ljava/lang/String;)Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;

    move-result-object v0

    const v1, 0x7f0d00fe

    .line 351
    invoke-virtual {p0, v1}, Lcom/yftech/settings/parts/CarPartsLockFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;->setContent(Ljava/lang/String;)Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const v2, 0x7f0d00fc

    .line 352
    invoke-virtual {p0, v2}, Lcom/yftech/settings/parts/CarPartsLockFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f0d00fb

    invoke-virtual {p0, v2}, Lcom/yftech/settings/parts/CarPartsLockFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;->setButtonText([Ljava/lang/String;)Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;

    move-result-object v0

    const v1, 0x7f0d00fd

    .line 353
    invoke-virtual {p0, v1}, Lcom/yftech/settings/parts/CarPartsLockFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;->setCheckBox(Ljava/lang/String;Z)Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;

    move-result-object v0

    new-instance v1, Lcom/yftech/settings/parts/CarPartsLockFragment$3;

    invoke-direct {v1, p0}, Lcom/yftech/settings/parts/CarPartsLockFragment$3;-><init>(Lcom/yftech/settings/parts/CarPartsLockFragment;)V

    .line 354
    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;->setOnBtnClickListener(Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog$OnBtnClickListener;)Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;

    return-void
.end method


# virtual methods
.method protected dismissAllDialog()V
    .locals 1

    .line 408
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->dismissAllDialog()V

    .line 409
    iget-object v0, p0, Lcom/yftech/settings/parts/CarPartsLockFragment;->mCommonCheckboxDialog:Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/settings/parts/CarPartsLockFragment;->mCommonCheckboxDialog:Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;

    invoke-virtual {v0}, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/yftech/settings/parts/CarPartsLockFragment;->mCommonCheckboxDialog:Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;

    invoke-virtual {v0}, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;->dismiss()V

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/yftech/settings/parts/CarPartsLockFragment;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yftech/settings/parts/CarPartsLockFragment;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    invoke-virtual {v0}, Lcom/yftech/settings/widget/dialog/CommonDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 413
    iget-object p0, p0, Lcom/yftech/settings/parts/CarPartsLockFragment;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    invoke-virtual {p0}, Lcom/yftech/settings/widget/dialog/CommonDialog;->dismiss()V

    :cond_1
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 228
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isPressed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 231
    :cond_0
    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->UNKNOWN:Lcom/yftech/settings/manager/CarPartsManager$Function;

    .line 232
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v1, 0x7f08007b

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 253
    :pswitch_0
    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->ELECTRIC_HIDDEN_DOOR_HANDLE_ENABLE:Lcom/yftech/settings/manager/CarPartsManager$Function;

    goto :goto_0

    .line 240
    :pswitch_1
    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->SUNROOF_WINDOW_AUTO_CLOSE_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    goto :goto_0

    .line 234
    :pswitch_2
    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->AUTO_UNLOCK_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    goto :goto_0

    .line 243
    :pswitch_3
    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->PEPS_UNLOCK_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    goto :goto_0

    .line 237
    :pswitch_4
    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->PEPS_WALK_AWAY_LOCK_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 247
    invoke-direct {p0}, Lcom/yftech/settings/parts/CarPartsLockFragment;->showOpenSpeedLockDialog()V

    goto :goto_0

    .line 249
    :cond_2
    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->SPEED_AUTO_LOCK_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    .line 258
    :goto_0
    sget-object p0, Lcom/yftech/settings/manager/CarPartsManager$Function;->UNKNOWN:Lcom/yftech/settings/manager/CarPartsManager$Function;

    if-eq v0, p0, :cond_3

    .line 259
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object p0

    invoke-virtual {p0, v0, p2}, Lcom/yftech/settings/manager/CarPartsManager;->setEnabled(Lcom/yftech/settings/manager/CarPartsManager$Function;Z)Z

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f080074
        :pswitch_4
        :pswitch_3
        :pswitch_2
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

    const p3, 0x7f0a0040

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 72
    invoke-direct {p0, p1}, Lcom/yftech/settings/parts/CarPartsLockFragment;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method public onPause()V
    .locals 1

    .line 85
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onPause()V

    .line 86
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/settings/parts/CarPartsLockFragment;->mCarPartsModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/manager/CarPartsManager;->unregisterModelCallback(Lcom/yftech/settings/manager/BaseManager$ModelCallback;)V

    .line 87
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->STOP_TIMEOUT_ACTION:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {p0, v0}, Lcom/yftech/settings/manager/CarPartsManager;->setAction(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 78
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onResume()V

    .line 79
    invoke-direct {p0}, Lcom/yftech/settings/parts/CarPartsLockFragment;->initViewData()V

    .line 80
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/settings/parts/CarPartsLockFragment;->mCarPartsModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/manager/CarPartsManager;->registerModelCallback(Lcom/yftech/settings/manager/BaseManager$ModelCallback;)V

    return-void
.end method

.method public onSwitch(Lcom/yftech/settings/widget/MultiSelectView;ILjava/lang/String;Z)V
    .locals 0

    if-nez p4, :cond_0

    return-void

    .line 268
    :cond_0
    sget-object p3, Lcom/yftech/settings/manager/CarPartsManager$Function;->UNKNOWN:Lcom/yftech/settings/manager/CarPartsManager$Function;

    .line 269
    invoke-virtual {p1}, Lcom/yftech/settings/widget/MultiSelectView;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 271
    :pswitch_0
    sget-object p3, Lcom/yftech/settings/manager/CarPartsManager$Function;->REMOTE_UNLOCK_MODE_OPTION:Lcom/yftech/settings/manager/CarPartsManager$Function;

    goto :goto_0

    :pswitch_1
    if-eqz p2, :cond_1

    .line 275
    invoke-direct {p0, p2}, Lcom/yftech/settings/parts/CarPartsLockFragment;->showConfirmDialog(I)V

    goto :goto_0

    .line 277
    :cond_1
    sget-object p3, Lcom/yftech/settings/manager/CarPartsManager$Function;->PEPS_AUTO_TRUNK_OPEN_OPTION:Lcom/yftech/settings/manager/CarPartsManager$Function;

    .line 278
    iget-object p0, p0, Lcom/yftech/settings/parts/CarPartsLockFragment;->mSmbPepsAutoTrunkOpen:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-virtual {p0}, Lcom/yftech/settings/widget/MultiSelectView;->hide()V

    .line 284
    :goto_0
    sget-object p0, Lcom/yftech/settings/manager/CarPartsManager$Function;->UNKNOWN:Lcom/yftech/settings/manager/CarPartsManager$Function;

    if-eq p3, p0, :cond_2

    .line 285
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object p0

    invoke-virtual {p0, p3, p2}, Lcom/yftech/settings/manager/CarPartsManager;->setOption(Lcom/yftech/settings/manager/CarPartsManager$Function;I)Z

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f080079
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
