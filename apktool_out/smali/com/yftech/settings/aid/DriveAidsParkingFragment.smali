.class public Lcom/yftech/settings/aid/DriveAidsParkingFragment;
.super Lcom/yftech/settings/BaseFragment;
.source "DriveAidsParkingFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mCarParkingModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yftech/settings/manager/BaseManager$ModelCallback<",
            "Lcom/yftech/settings/manager/CarParkingManager$Function;",
            ">;"
        }
    .end annotation
.end field

.field private mSwAutoParkingPush:Lcom/yftech/settings/widget/Switcher;

.field private mSwAutoParkingVoiceTip:Lcom/yftech/settings/widget/Switcher;

.field private mSwRadarAlarm:Lcom/yftech/settings/widget/Switcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/yftech/settings/BaseFragment;-><init>()V

    .line 24
    new-instance v0, Lcom/yftech/settings/aid/DriveAidsParkingFragment$1;

    invoke-direct {v0, p0}, Lcom/yftech/settings/aid/DriveAidsParkingFragment$1;-><init>(Lcom/yftech/settings/aid/DriveAidsParkingFragment;)V

    iput-object v0, p0, Lcom/yftech/settings/aid/DriveAidsParkingFragment;->mCarParkingModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/settings/aid/DriveAidsParkingFragment;Lcom/yftech/settings/manager/CarParkingManager$Function;Z)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/aid/DriveAidsParkingFragment;->setSwitcherView(Lcom/yftech/settings/manager/CarParkingManager$Function;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/yftech/settings/aid/DriveAidsParkingFragment;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/yftech/settings/aid/DriveAidsParkingFragment;->initViewData()V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 8

    const v0, 0x7f08016b

    .line 71
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 72
    invoke-static {}, Lcom/yftech/settings/manager/CarParkingManager;->getInstance()Lcom/yftech/settings/manager/CarParkingManager;

    move-result-object v2

    sget-object v3, Lcom/yftech/settings/manager/CarParkingManager$Function;->PARKING_RADAR_WARNING_TONE_ENABLED:Lcom/yftech/settings/manager/CarParkingManager$Function;

    invoke-virtual {v2, v3}, Lcom/yftech/settings/manager/CarParkingManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarParkingManager$Function;)Z

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

    .line 74
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    const v5, 0x7f0801bb

    const v6, 0x7f080218

    if-nez v2, :cond_1

    .line 75
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v7, 0x7f0d0132

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(I)V

    const v2, 0x7f0801ff

    .line 76
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v7, 0x7f0d0133

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(I)V

    .line 77
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yftech/settings/widget/Switcher;

    iput-object v1, p0, Lcom/yftech/settings/aid/DriveAidsParkingFragment;->mSwRadarAlarm:Lcom/yftech/settings/widget/Switcher;

    .line 78
    iget-object v1, p0, Lcom/yftech/settings/aid/DriveAidsParkingFragment;->mSwRadarAlarm:Lcom/yftech/settings/widget/Switcher;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yftech/settings/widget/Switcher;->setTag(Ljava/lang/Object;)V

    .line 79
    iget-object v0, p0, Lcom/yftech/settings/aid/DriveAidsParkingFragment;->mSwRadarAlarm:Lcom/yftech/settings/widget/Switcher;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/widget/Switcher;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 80
    iget-object v0, p0, Lcom/yftech/settings/aid/DriveAidsParkingFragment;->mSwRadarAlarm:Lcom/yftech/settings/widget/Switcher;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/widget/Switcher;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    const v0, 0x7f080169

    .line 84
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 85
    invoke-static {}, Lcom/yftech/settings/manager/CarParkingManager;->getInstance()Lcom/yftech/settings/manager/CarParkingManager;

    move-result-object v2

    sget-object v7, Lcom/yftech/settings/manager/CarParkingManager$Function;->PARKING_PUSH_ENABLED:Lcom/yftech/settings/manager/CarParkingManager$Function;

    invoke-virtual {v2, v7}, Lcom/yftech/settings/manager/CarParkingManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarParkingManager$Function;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 87
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    .line 88
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v7, 0x7f0d012c

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(I)V

    .line 90
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yftech/settings/widget/Switcher;

    iput-object v1, p0, Lcom/yftech/settings/aid/DriveAidsParkingFragment;->mSwAutoParkingPush:Lcom/yftech/settings/widget/Switcher;

    .line 91
    iget-object v1, p0, Lcom/yftech/settings/aid/DriveAidsParkingFragment;->mSwAutoParkingPush:Lcom/yftech/settings/widget/Switcher;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yftech/settings/widget/Switcher;->setTag(Ljava/lang/Object;)V

    .line 92
    iget-object v0, p0, Lcom/yftech/settings/aid/DriveAidsParkingFragment;->mSwAutoParkingPush:Lcom/yftech/settings/widget/Switcher;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/widget/Switcher;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 93
    iget-object v0, p0, Lcom/yftech/settings/aid/DriveAidsParkingFragment;->mSwAutoParkingPush:Lcom/yftech/settings/widget/Switcher;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/widget/Switcher;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_3
    const v0, 0x7f08016a

    .line 97
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 98
    invoke-static {}, Lcom/yftech/settings/manager/CarParkingManager;->getInstance()Lcom/yftech/settings/manager/CarParkingManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/CarParkingManager$Function;->PARKING_VOICE_TIP_ENABLED:Lcom/yftech/settings/manager/CarParkingManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/CarParkingManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarParkingManager$Function;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v3, v4

    :cond_4
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 100
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    .line 101
    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0d012e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 102
    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/yftech/settings/widget/Switcher;

    iput-object p1, p0, Lcom/yftech/settings/aid/DriveAidsParkingFragment;->mSwAutoParkingVoiceTip:Lcom/yftech/settings/widget/Switcher;

    .line 103
    iget-object p1, p0, Lcom/yftech/settings/aid/DriveAidsParkingFragment;->mSwAutoParkingVoiceTip:Lcom/yftech/settings/widget/Switcher;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yftech/settings/widget/Switcher;->setTag(Ljava/lang/Object;)V

    .line 104
    iget-object p1, p0, Lcom/yftech/settings/aid/DriveAidsParkingFragment;->mSwAutoParkingVoiceTip:Lcom/yftech/settings/widget/Switcher;

    invoke-virtual {p1, p0}, Lcom/yftech/settings/widget/Switcher;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 105
    iget-object p1, p0, Lcom/yftech/settings/aid/DriveAidsParkingFragment;->mSwAutoParkingVoiceTip:Lcom/yftech/settings/widget/Switcher;

    invoke-virtual {p1, p0}, Lcom/yftech/settings/widget/Switcher;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_5
    return-void
.end method

.method private initViewData()V
    .locals 3

    .line 110
    invoke-static {}, Lcom/yftech/settings/manager/CarParkingManager;->getInstance()Lcom/yftech/settings/manager/CarParkingManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/CarParkingManager$Function;->PARKING_RADAR_WARNING_TONE_ENABLED:Lcom/yftech/settings/manager/CarParkingManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarParkingManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarParkingManager$Function;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    sget-object v0, Lcom/yftech/settings/manager/CarParkingManager$Function;->PARKING_RADAR_WARNING_TONE_ENABLED:Lcom/yftech/settings/manager/CarParkingManager$Function;

    invoke-static {}, Lcom/yftech/settings/manager/CarParkingManager;->getInstance()Lcom/yftech/settings/manager/CarParkingManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/CarParkingManager$Function;->PARKING_RADAR_WARNING_TONE_ENABLED:Lcom/yftech/settings/manager/CarParkingManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/CarParkingManager;->getEnabled(Lcom/yftech/settings/manager/CarParkingManager$Function;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/aid/DriveAidsParkingFragment;->setSwitcherView(Lcom/yftech/settings/manager/CarParkingManager$Function;Z)V

    .line 113
    :cond_0
    invoke-static {}, Lcom/yftech/settings/manager/CarParkingManager;->getInstance()Lcom/yftech/settings/manager/CarParkingManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/CarParkingManager$Function;->PARKING_PUSH_ENABLED:Lcom/yftech/settings/manager/CarParkingManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarParkingManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarParkingManager$Function;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    sget-object v0, Lcom/yftech/settings/manager/CarParkingManager$Function;->PARKING_PUSH_ENABLED:Lcom/yftech/settings/manager/CarParkingManager$Function;

    invoke-static {}, Lcom/yftech/settings/manager/CarParkingManager;->getInstance()Lcom/yftech/settings/manager/CarParkingManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/CarParkingManager$Function;->PARKING_PUSH_ENABLED:Lcom/yftech/settings/manager/CarParkingManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/CarParkingManager;->getEnabled(Lcom/yftech/settings/manager/CarParkingManager$Function;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/aid/DriveAidsParkingFragment;->setSwitcherView(Lcom/yftech/settings/manager/CarParkingManager$Function;Z)V

    .line 116
    :cond_1
    invoke-static {}, Lcom/yftech/settings/manager/CarParkingManager;->getInstance()Lcom/yftech/settings/manager/CarParkingManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/CarParkingManager$Function;->PARKING_VOICE_TIP_ENABLED:Lcom/yftech/settings/manager/CarParkingManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarParkingManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarParkingManager$Function;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    sget-object v0, Lcom/yftech/settings/manager/CarParkingManager$Function;->PARKING_VOICE_TIP_ENABLED:Lcom/yftech/settings/manager/CarParkingManager$Function;

    invoke-static {}, Lcom/yftech/settings/manager/CarParkingManager;->getInstance()Lcom/yftech/settings/manager/CarParkingManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/CarParkingManager$Function;->PARKING_VOICE_TIP_ENABLED:Lcom/yftech/settings/manager/CarParkingManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/CarParkingManager;->getEnabled(Lcom/yftech/settings/manager/CarParkingManager$Function;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/aid/DriveAidsParkingFragment;->setSwitcherView(Lcom/yftech/settings/manager/CarParkingManager$Function;Z)V

    :cond_2
    return-void
.end method

.method private setSwitcherView(Lcom/yftech/settings/manager/CarParkingManager$Function;Z)V
    .locals 1

    .line 145
    sget-object v0, Lcom/yftech/settings/aid/DriveAidsParkingFragment$2;->$SwitchMap$com$yftech$settings$manager$CarParkingManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/CarParkingManager$Function;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    .line 153
    :pswitch_0
    iget-object p0, p0, Lcom/yftech/settings/aid/DriveAidsParkingFragment;->mSwAutoParkingVoiceTip:Lcom/yftech/settings/widget/Switcher;

    goto :goto_0

    .line 150
    :pswitch_1
    iget-object p0, p0, Lcom/yftech/settings/aid/DriveAidsParkingFragment;->mSwAutoParkingPush:Lcom/yftech/settings/widget/Switcher;

    goto :goto_0

    .line 147
    :pswitch_2
    iget-object p0, p0, Lcom/yftech/settings/aid/DriveAidsParkingFragment;->mSwRadarAlarm:Lcom/yftech/settings/widget/Switcher;

    :goto_0
    if-eqz p0, :cond_1

    .line 157
    invoke-virtual {p0}, Lcom/yftech/settings/widget/Switcher;->isChecked()Z

    move-result p1

    if-ne p1, p2, :cond_0

    return-void

    .line 160
    :cond_0
    invoke-virtual {p0, p2}, Lcom/yftech/settings/widget/Switcher;->setChecked(Z)V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 123
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isPressed()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 126
    :cond_0
    sget-object p0, Lcom/yftech/settings/manager/CarParkingManager$Function;->UNKNOWN:Lcom/yftech/settings/manager/CarParkingManager$Function;

    .line 127
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 129
    :pswitch_0
    sget-object p0, Lcom/yftech/settings/manager/CarParkingManager$Function;->PARKING_RADAR_WARNING_TONE_ENABLED:Lcom/yftech/settings/manager/CarParkingManager$Function;

    goto :goto_0

    .line 135
    :pswitch_1
    sget-object p0, Lcom/yftech/settings/manager/CarParkingManager$Function;->PARKING_VOICE_TIP_ENABLED:Lcom/yftech/settings/manager/CarParkingManager$Function;

    goto :goto_0

    .line 132
    :pswitch_2
    sget-object p0, Lcom/yftech/settings/manager/CarParkingManager$Function;->PARKING_PUSH_ENABLED:Lcom/yftech/settings/manager/CarParkingManager$Function;

    .line 138
    :goto_0
    sget-object p1, Lcom/yftech/settings/manager/CarParkingManager$Function;->UNKNOWN:Lcom/yftech/settings/manager/CarParkingManager$Function;

    if-eq p0, p1, :cond_1

    .line 139
    invoke-static {}, Lcom/yftech/settings/manager/CarParkingManager;->getInstance()Lcom/yftech/settings/manager/CarParkingManager;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/yftech/settings/manager/CarParkingManager;->setEnabled(Lcom/yftech/settings/manager/CarParkingManager$Function;Z)Z

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f080169
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

    const p3, 0x7f0a0030

    const/4 v0, 0x0

    .line 50
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 51
    invoke-direct {p0, p1}, Lcom/yftech/settings/aid/DriveAidsParkingFragment;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method public onPause()V
    .locals 1

    .line 64
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onPause()V

    .line 65
    invoke-static {}, Lcom/yftech/settings/manager/CarParkingManager;->getInstance()Lcom/yftech/settings/manager/CarParkingManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/settings/aid/DriveAidsParkingFragment;->mCarParkingModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/manager/CarParkingManager;->unregisterModelCallback(Lcom/yftech/settings/manager/BaseManager$ModelCallback;)V

    .line 66
    invoke-static {}, Lcom/yftech/settings/manager/CarParkingManager;->getInstance()Lcom/yftech/settings/manager/CarParkingManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/settings/manager/CarParkingManager$Function;->STOP_TIMEOUT_ACTION:Lcom/yftech/settings/manager/CarParkingManager$Function;

    invoke-virtual {p0, v0}, Lcom/yftech/settings/manager/CarParkingManager;->setAction(Lcom/yftech/settings/manager/CarParkingManager$Function;)Z

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 57
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onResume()V

    .line 58
    invoke-direct {p0}, Lcom/yftech/settings/aid/DriveAidsParkingFragment;->initViewData()V

    .line 59
    invoke-static {}, Lcom/yftech/settings/manager/CarParkingManager;->getInstance()Lcom/yftech/settings/manager/CarParkingManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/settings/aid/DriveAidsParkingFragment;->mCarParkingModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/manager/CarParkingManager;->registerModelCallback(Lcom/yftech/settings/manager/BaseManager$ModelCallback;)V

    return-void
.end method
