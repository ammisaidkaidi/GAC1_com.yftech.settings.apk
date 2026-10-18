.class public Lcom/yftech/settings/chassis/ChassisFragment;
.super Lcom/yftech/settings/BaseFragment;
.source "ChassisFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/yftech/settings/widget/MultiSelectView$OnSwitchListener;


# instance fields
.field private mCarDriveModeModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yftech/settings/manager/BaseManager$ModelCallback<",
            "Lcom/yftech/settings/manager/CarDriveModeManager$Function;",
            ">;"
        }
    .end annotation
.end field

.field private mSmbSteeringSteeringHand:Lcom/yftech/settings/widget/MultiSelectView;

.field private mSwRememberDrivingMode:Lcom/yftech/settings/widget/Switcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/yftech/settings/BaseFragment;-><init>()V

    .line 24
    new-instance v0, Lcom/yftech/settings/chassis/ChassisFragment$1;

    invoke-direct {v0, p0}, Lcom/yftech/settings/chassis/ChassisFragment$1;-><init>(Lcom/yftech/settings/chassis/ChassisFragment;)V

    iput-object v0, p0, Lcom/yftech/settings/chassis/ChassisFragment;->mCarDriveModeModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/settings/chassis/ChassisFragment;Lcom/yftech/settings/manager/CarDriveModeManager$Function;Z)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/chassis/ChassisFragment;->setSwitcherView(Lcom/yftech/settings/manager/CarDriveModeManager$Function;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/yftech/settings/chassis/ChassisFragment;Lcom/yftech/settings/manager/CarDriveModeManager$Function;I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/chassis/ChassisFragment;->setSwitchMultiButtonView(Lcom/yftech/settings/manager/CarDriveModeManager$Function;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/yftech/settings/chassis/ChassisFragment;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/yftech/settings/chassis/ChassisFragment;->initViewData()V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 8

    const v0, 0x7f08008b

    .line 78
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 79
    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v2

    sget-object v3, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->REMEMBER_DRIVING_MODE_ENABLED:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v2, v3}, Lcom/yftech/settings/manager/CarDriveModeManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)Z

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

    .line 81
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    const v5, 0x7f0801ff

    const v6, 0x7f080218

    if-nez v2, :cond_1

    .line 82
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v7, 0x7f0d00c1

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(I)V

    .line 83
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v7, 0x7f0d00c2

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(I)V

    const v2, 0x7f0801bb

    .line 84
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yftech/settings/widget/Switcher;

    iput-object v1, p0, Lcom/yftech/settings/chassis/ChassisFragment;->mSwRememberDrivingMode:Lcom/yftech/settings/widget/Switcher;

    .line 85
    iget-object v1, p0, Lcom/yftech/settings/chassis/ChassisFragment;->mSwRememberDrivingMode:Lcom/yftech/settings/widget/Switcher;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yftech/settings/widget/Switcher;->setTag(Ljava/lang/Object;)V

    .line 86
    iget-object v0, p0, Lcom/yftech/settings/chassis/ChassisFragment;->mSwRememberDrivingMode:Lcom/yftech/settings/widget/Switcher;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/widget/Switcher;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 87
    iget-object v0, p0, Lcom/yftech/settings/chassis/ChassisFragment;->mSwRememberDrivingMode:Lcom/yftech/settings/widget/Switcher;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/widget/Switcher;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    const v0, 0x7f08008c

    .line 91
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 92
    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->EPS_STYLE_OPTION:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/CarDriveModeManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v3, v4

    :cond_2
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 94
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 95
    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0d0073

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 96
    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0d0074

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f080158

    .line 97
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yftech/settings/widget/MultiSelectView;

    iput-object v1, p0, Lcom/yftech/settings/chassis/ChassisFragment;->mSmbSteeringSteeringHand:Lcom/yftech/settings/widget/MultiSelectView;

    .line 98
    iget-object v1, p0, Lcom/yftech/settings/chassis/ChassisFragment;->mSmbSteeringSteeringHand:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yftech/settings/widget/MultiSelectView;->setTag(Ljava/lang/Object;)V

    .line 99
    iget-object v0, p0, Lcom/yftech/settings/chassis/ChassisFragment;->mSmbSteeringSteeringHand:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-virtual {p0}, Lcom/yftech/settings/chassis/ChassisFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/MultiSelectView;->setText([Ljava/lang/String;)Lcom/yftech/settings/widget/MultiSelectView;

    .line 100
    iget-object v0, p0, Lcom/yftech/settings/chassis/ChassisFragment;->mSmbSteeringSteeringHand:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/widget/MultiSelectView;->setOnSwitchListener(Lcom/yftech/settings/widget/MultiSelectView$OnSwitchListener;)Lcom/yftech/settings/widget/MultiSelectView;

    .line 101
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method private initViewData()V
    .locals 3

    .line 106
    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->REMEMBER_DRIVING_MODE_ENABLED:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarDriveModeManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    sget-object v0, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->REMEMBER_DRIVING_MODE_ENABLED:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->REMEMBER_DRIVING_MODE_ENABLED:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/CarDriveModeManager;->getEnabled(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/chassis/ChassisFragment;->setSwitcherView(Lcom/yftech/settings/manager/CarDriveModeManager$Function;Z)V

    .line 109
    :cond_0
    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->EPS_STYLE_OPTION:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarDriveModeManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    sget-object v0, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->EPS_STYLE_OPTION:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->EPS_STYLE_OPTION:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/CarDriveModeManager;->getOption(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/chassis/ChassisFragment;->setSwitchMultiButtonView(Lcom/yftech/settings/manager/CarDriveModeManager$Function;I)V

    :cond_1
    return-void
.end method

.method private setSwitchMultiButtonView(Lcom/yftech/settings/manager/CarDriveModeManager$Function;I)V
    .locals 1

    .line 169
    sget-object v0, Lcom/yftech/settings/chassis/ChassisFragment$2;->$SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 171
    :cond_0
    iget-object p0, p0, Lcom/yftech/settings/chassis/ChassisFragment;->mSmbSteeringSteeringHand:Lcom/yftech/settings/widget/MultiSelectView;

    :goto_0
    if-eqz p0, :cond_2

    .line 177
    invoke-virtual {p0}, Lcom/yftech/settings/widget/MultiSelectView;->getTabNum()I

    move-result p1

    if-ne p1, p2, :cond_1

    return-void

    .line 180
    :cond_1
    invoke-virtual {p0, p2}, Lcom/yftech/settings/widget/MultiSelectView;->setSelectedTab(I)Lcom/yftech/settings/widget/MultiSelectView;

    :cond_2
    return-void
.end method

.method private setSwitcherView(Lcom/yftech/settings/manager/CarDriveModeManager$Function;Z)V
    .locals 1

    .line 152
    sget-object v0, Lcom/yftech/settings/chassis/ChassisFragment$2;->$SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 154
    :cond_0
    iget-object p0, p0, Lcom/yftech/settings/chassis/ChassisFragment;->mSwRememberDrivingMode:Lcom/yftech/settings/widget/Switcher;

    :goto_0
    if-eqz p0, :cond_2

    .line 160
    invoke-virtual {p0}, Lcom/yftech/settings/widget/Switcher;->isChecked()Z

    move-result p1

    if-ne p1, p2, :cond_1

    return-void

    .line 163
    :cond_1
    invoke-virtual {p0, p2}, Lcom/yftech/settings/widget/Switcher;->setChecked(Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 116
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isPressed()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 119
    :cond_0
    sget-object p0, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->UNKNOWN:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    .line 120
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v0, 0x7f08008b

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 122
    :cond_1
    sget-object p0, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->REMEMBER_DRIVING_MODE_ENABLED:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    .line 127
    :goto_0
    sget-object p1, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->UNKNOWN:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    if-eq p0, p1, :cond_2

    .line 128
    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/yftech/settings/manager/CarDriveModeManager;->setEnabled(Lcom/yftech/settings/manager/CarDriveModeManager$Function;Z)Z

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

    const p3, 0x7f0a0036

    const/4 v0, 0x0

    .line 57
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 58
    invoke-direct {p0, p1}, Lcom/yftech/settings/chassis/ChassisFragment;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method public onPause()V
    .locals 1

    .line 71
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onPause()V

    .line 72
    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/settings/chassis/ChassisFragment;->mCarDriveModeModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/manager/CarDriveModeManager;->unregisterModelCallback(Lcom/yftech/settings/manager/BaseManager$ModelCallback;)V

    .line 73
    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->STOP_TIMEOUT_ACTION:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {p0, v0}, Lcom/yftech/settings/manager/CarDriveModeManager;->setAction(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)Z

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 64
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onResume()V

    .line 65
    invoke-direct {p0}, Lcom/yftech/settings/chassis/ChassisFragment;->initViewData()V

    .line 66
    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/settings/chassis/ChassisFragment;->mCarDriveModeModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/manager/CarDriveModeManager;->registerModelCallback(Lcom/yftech/settings/manager/BaseManager$ModelCallback;)V

    return-void
.end method

.method public onSwitch(Lcom/yftech/settings/widget/MultiSelectView;ILjava/lang/String;Z)V
    .locals 0

    if-nez p4, :cond_0

    return-void

    .line 137
    :cond_0
    sget-object p0, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->UNKNOWN:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    .line 138
    invoke-virtual {p1}, Lcom/yftech/settings/widget/MultiSelectView;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const p3, 0x7f08008c

    if-eq p1, p3, :cond_1

    goto :goto_0

    .line 140
    :cond_1
    sget-object p0, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->EPS_STYLE_OPTION:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    .line 145
    :goto_0
    sget-object p1, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->UNKNOWN:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    if-eq p0, p1, :cond_2

    .line 146
    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/yftech/settings/manager/CarDriveModeManager;->setOption(Lcom/yftech/settings/manager/CarDriveModeManager$Function;I)Z

    :cond_2
    return-void
.end method
