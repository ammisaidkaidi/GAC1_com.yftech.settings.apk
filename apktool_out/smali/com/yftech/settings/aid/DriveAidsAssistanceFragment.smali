.class public Lcom/yftech/settings/aid/DriveAidsAssistanceFragment;
.super Lcom/yftech/settings/BaseFragment;
.source "DriveAidsAssistanceFragment.java"

# interfaces
.implements Lcom/yftech/settings/widget/MultiSelectView$OnSwitchListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mCarAssistantModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yftech/settings/manager/BaseManager$ModelCallback<",
            "Lcom/yftech/settings/manager/CarAssistantManager$Function;",
            ">;"
        }
    .end annotation
.end field

.field private mSmbCruiseAidMode:Lcom/yftech/settings/widget/MultiSelectView;

.field private mSwDistanceFromFrontCar:Lcom/yftech/settings/widget/Switcher;

.field private mSwIntelligentAvoidance:Lcom/yftech/settings/widget/Switcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/yftech/settings/BaseFragment;-><init>()V

    .line 27
    new-instance v0, Lcom/yftech/settings/aid/DriveAidsAssistanceFragment$1;

    invoke-direct {v0, p0}, Lcom/yftech/settings/aid/DriveAidsAssistanceFragment$1;-><init>(Lcom/yftech/settings/aid/DriveAidsAssistanceFragment;)V

    iput-object v0, p0, Lcom/yftech/settings/aid/DriveAidsAssistanceFragment;->mCarAssistantModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/settings/aid/DriveAidsAssistanceFragment;Lcom/yftech/settings/manager/CarAssistantManager$Function;Z)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/aid/DriveAidsAssistanceFragment;->setSwitcherView(Lcom/yftech/settings/manager/CarAssistantManager$Function;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/yftech/settings/aid/DriveAidsAssistanceFragment;Lcom/yftech/settings/manager/CarAssistantManager$Function;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/aid/DriveAidsAssistanceFragment;->setSwitchMultiButtonView(Lcom/yftech/settings/manager/CarAssistantManager$Function;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/yftech/settings/aid/DriveAidsAssistanceFragment;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/yftech/settings/aid/DriveAidsAssistanceFragment;->initViewData()V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 9

    const v0, 0x7f0800b1

    .line 86
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 87
    invoke-static {}, Lcom/yftech/settings/manager/CarAssistantManager;->getInstance()Lcom/yftech/settings/manager/CarAssistantManager;

    move-result-object v2

    sget-object v3, Lcom/yftech/settings/manager/CarAssistantManager$Function;->CRUISE_ASSIST_OPTION:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {v2, v3}, Lcom/yftech/settings/manager/CarAssistantManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarAssistantManager$Function;)Z

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

    .line 89
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    const v5, 0x7f0801ff

    const v6, 0x7f080218

    if-nez v2, :cond_1

    .line 90
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v7, 0x7f0d0109

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(I)V

    .line 91
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v7, 0x7f0d010a

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(I)V

    const v2, 0x7f080158

    .line 92
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yftech/settings/widget/MultiSelectView;

    iput-object v1, p0, Lcom/yftech/settings/aid/DriveAidsAssistanceFragment;->mSmbCruiseAidMode:Lcom/yftech/settings/widget/MultiSelectView;

    .line 93
    iget-object v1, p0, Lcom/yftech/settings/aid/DriveAidsAssistanceFragment;->mSmbCruiseAidMode:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yftech/settings/widget/MultiSelectView;->setTag(Ljava/lang/Object;)V

    .line 94
    iget-object v0, p0, Lcom/yftech/settings/aid/DriveAidsAssistanceFragment;->mSmbCruiseAidMode:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-virtual {p0}, Lcom/yftech/settings/aid/DriveAidsAssistanceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/MultiSelectView;->setText([Ljava/lang/String;)Lcom/yftech/settings/widget/MultiSelectView;

    .line 95
    iget-object v0, p0, Lcom/yftech/settings/aid/DriveAidsAssistanceFragment;->mSmbCruiseAidMode:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/widget/MultiSelectView;->setOnSwitchListener(Lcom/yftech/settings/widget/MultiSelectView$OnSwitchListener;)Lcom/yftech/settings/widget/MultiSelectView;

    .line 96
    iget-object v0, p0, Lcom/yftech/settings/aid/DriveAidsAssistanceFragment;->mSmbCruiseAidMode:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/widget/MultiSelectView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    const v0, 0x7f08001f

    .line 100
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 101
    invoke-static {}, Lcom/yftech/settings/manager/CarAssistantManager;->getInstance()Lcom/yftech/settings/manager/CarAssistantManager;

    move-result-object v2

    sget-object v7, Lcom/yftech/settings/manager/CarAssistantManager$Function;->DFC_ENABLE:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {v2, v7}, Lcom/yftech/settings/manager/CarAssistantManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarAssistantManager$Function;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 103
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    const v7, 0x7f0801bb

    if-nez v2, :cond_3

    .line 104
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v8, 0x7f0d010b

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(I)V

    .line 105
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v8, 0x7f0d010c

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(I)V

    .line 106
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yftech/settings/widget/Switcher;

    iput-object v1, p0, Lcom/yftech/settings/aid/DriveAidsAssistanceFragment;->mSwDistanceFromFrontCar:Lcom/yftech/settings/widget/Switcher;

    .line 107
    iget-object v1, p0, Lcom/yftech/settings/aid/DriveAidsAssistanceFragment;->mSwDistanceFromFrontCar:Lcom/yftech/settings/widget/Switcher;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yftech/settings/widget/Switcher;->setTag(Ljava/lang/Object;)V

    .line 108
    iget-object v0, p0, Lcom/yftech/settings/aid/DriveAidsAssistanceFragment;->mSwDistanceFromFrontCar:Lcom/yftech/settings/widget/Switcher;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/widget/Switcher;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 109
    iget-object v0, p0, Lcom/yftech/settings/aid/DriveAidsAssistanceFragment;->mSwDistanceFromFrontCar:Lcom/yftech/settings/widget/Switcher;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/widget/Switcher;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_3
    const v0, 0x7f080021

    .line 114
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 115
    invoke-static {}, Lcom/yftech/settings/manager/CarAssistantManager;->getInstance()Lcom/yftech/settings/manager/CarAssistantManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/CarAssistantManager$Function;->IA_ENABLE:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/CarAssistantManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarAssistantManager$Function;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v3, v4

    :cond_4
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 117
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    .line 118
    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0d010d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 119
    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0d010e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 120
    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/yftech/settings/widget/Switcher;

    iput-object p1, p0, Lcom/yftech/settings/aid/DriveAidsAssistanceFragment;->mSwIntelligentAvoidance:Lcom/yftech/settings/widget/Switcher;

    .line 121
    iget-object p1, p0, Lcom/yftech/settings/aid/DriveAidsAssistanceFragment;->mSwIntelligentAvoidance:Lcom/yftech/settings/widget/Switcher;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yftech/settings/widget/Switcher;->setTag(Ljava/lang/Object;)V

    .line 122
    iget-object p1, p0, Lcom/yftech/settings/aid/DriveAidsAssistanceFragment;->mSwIntelligentAvoidance:Lcom/yftech/settings/widget/Switcher;

    invoke-virtual {p1, p0}, Lcom/yftech/settings/widget/Switcher;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 123
    iget-object p1, p0, Lcom/yftech/settings/aid/DriveAidsAssistanceFragment;->mSwIntelligentAvoidance:Lcom/yftech/settings/widget/Switcher;

    invoke-virtual {p1, p0}, Lcom/yftech/settings/widget/Switcher;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_5
    return-void
.end method

.method private initViewData()V
    .locals 3

    .line 128
    invoke-static {}, Lcom/yftech/settings/manager/CarAssistantManager;->getInstance()Lcom/yftech/settings/manager/CarAssistantManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->CRUISE_ASSIST_OPTION:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarAssistantManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarAssistantManager$Function;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    sget-object v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;->CRUISE_ASSIST_OPTION:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-static {}, Lcom/yftech/settings/manager/CarAssistantManager;->getInstance()Lcom/yftech/settings/manager/CarAssistantManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/CarAssistantManager$Function;->CRUISE_ASSIST_OPTION:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/CarAssistantManager;->getOption(Lcom/yftech/settings/manager/CarAssistantManager$Function;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/aid/DriveAidsAssistanceFragment;->setSwitchMultiButtonView(Lcom/yftech/settings/manager/CarAssistantManager$Function;I)V

    .line 132
    :cond_0
    invoke-static {}, Lcom/yftech/settings/manager/CarAssistantManager;->getInstance()Lcom/yftech/settings/manager/CarAssistantManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->DFC_ENABLE:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarAssistantManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarAssistantManager$Function;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    sget-object v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;->DFC_ENABLE:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-static {}, Lcom/yftech/settings/manager/CarAssistantManager;->getInstance()Lcom/yftech/settings/manager/CarAssistantManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/CarAssistantManager$Function;->DFC_ENABLE:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/CarAssistantManager;->getEnabled(Lcom/yftech/settings/manager/CarAssistantManager$Function;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/aid/DriveAidsAssistanceFragment;->setSwitcherView(Lcom/yftech/settings/manager/CarAssistantManager$Function;Z)V

    .line 136
    :cond_1
    invoke-static {}, Lcom/yftech/settings/manager/CarAssistantManager;->getInstance()Lcom/yftech/settings/manager/CarAssistantManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->IA_ENABLE:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarAssistantManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarAssistantManager$Function;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 137
    sget-object v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;->IA_ENABLE:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-static {}, Lcom/yftech/settings/manager/CarAssistantManager;->getInstance()Lcom/yftech/settings/manager/CarAssistantManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/CarAssistantManager$Function;->IA_ENABLE:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/CarAssistantManager;->getEnabled(Lcom/yftech/settings/manager/CarAssistantManager$Function;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/aid/DriveAidsAssistanceFragment;->setSwitcherView(Lcom/yftech/settings/manager/CarAssistantManager$Function;Z)V

    :cond_2
    return-void
.end method

.method private setSwitchMultiButtonView(Lcom/yftech/settings/manager/CarAssistantManager$Function;I)V
    .locals 1

    .line 196
    sget-object v0, Lcom/yftech/settings/aid/DriveAidsAssistanceFragment$2;->$SwitchMap$com$yftech$settings$manager$CarAssistantManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/CarAssistantManager$Function;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 198
    :cond_0
    iget-object p0, p0, Lcom/yftech/settings/aid/DriveAidsAssistanceFragment;->mSmbCruiseAidMode:Lcom/yftech/settings/widget/MultiSelectView;

    :goto_0
    if-eqz p0, :cond_2

    .line 202
    invoke-virtual {p0}, Lcom/yftech/settings/widget/MultiSelectView;->getTabNum()I

    move-result p1

    if-ne p1, p2, :cond_1

    return-void

    .line 205
    :cond_1
    invoke-virtual {p0, p2}, Lcom/yftech/settings/widget/MultiSelectView;->setSelectedTab(I)Lcom/yftech/settings/widget/MultiSelectView;

    :cond_2
    return-void
.end method

.method private setSwitcherView(Lcom/yftech/settings/manager/CarAssistantManager$Function;Z)V
    .locals 1

    .line 178
    sget-object v0, Lcom/yftech/settings/aid/DriveAidsAssistanceFragment$2;->$SwitchMap$com$yftech$settings$manager$CarAssistantManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/CarAssistantManager$Function;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    .line 183
    :pswitch_0
    iget-object p0, p0, Lcom/yftech/settings/aid/DriveAidsAssistanceFragment;->mSwIntelligentAvoidance:Lcom/yftech/settings/widget/Switcher;

    goto :goto_0

    .line 180
    :pswitch_1
    iget-object p0, p0, Lcom/yftech/settings/aid/DriveAidsAssistanceFragment;->mSwDistanceFromFrontCar:Lcom/yftech/settings/widget/Switcher;

    :goto_0
    if-eqz p0, :cond_1

    .line 187
    invoke-virtual {p0}, Lcom/yftech/settings/widget/Switcher;->isChecked()Z

    move-result p1

    if-ne p1, p2, :cond_0

    return-void

    .line 190
    :cond_0
    invoke-virtual {p0, p2}, Lcom/yftech/settings/widget/Switcher;->setChecked(Z)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected dismissAllDialog()V
    .locals 0

    .line 212
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->dismissAllDialog()V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 143
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isPressed()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 146
    :cond_0
    sget-object p0, Lcom/yftech/settings/manager/CarAssistantManager$Function;->UNKNOWN:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    .line 147
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v0, 0x7f08001f

    if-eq p1, v0, :cond_2

    const v0, 0x7f080021

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 152
    :cond_1
    sget-object p0, Lcom/yftech/settings/manager/CarAssistantManager$Function;->IA_ENABLE:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    goto :goto_0

    .line 149
    :cond_2
    sget-object p0, Lcom/yftech/settings/manager/CarAssistantManager$Function;->DFC_ENABLE:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    .line 155
    :goto_0
    sget-object p1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->UNKNOWN:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    if-eq p0, p1, :cond_3

    .line 156
    invoke-static {}, Lcom/yftech/settings/manager/CarAssistantManager;->getInstance()Lcom/yftech/settings/manager/CarAssistantManager;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/yftech/settings/manager/CarAssistantManager;->setEnabled(Lcom/yftech/settings/manager/CarAssistantManager$Function;Z)Z

    :cond_3
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

    const p3, 0x7f0a002e

    const/4 v0, 0x0

    .line 64
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 65
    invoke-direct {p0, p1}, Lcom/yftech/settings/aid/DriveAidsAssistanceFragment;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method public onPause()V
    .locals 1

    .line 78
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onPause()V

    .line 79
    invoke-static {}, Lcom/yftech/settings/manager/CarAssistantManager;->getInstance()Lcom/yftech/settings/manager/CarAssistantManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/settings/aid/DriveAidsAssistanceFragment;->mCarAssistantModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/manager/CarAssistantManager;->unregisterModelCallback(Lcom/yftech/settings/manager/BaseManager$ModelCallback;)V

    .line 80
    invoke-static {}, Lcom/yftech/settings/manager/CarAssistantManager;->getInstance()Lcom/yftech/settings/manager/CarAssistantManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;->STOP_TIMEOUT_ACTION:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {p0, v0}, Lcom/yftech/settings/manager/CarAssistantManager;->setAction(Lcom/yftech/settings/manager/CarAssistantManager$Function;)Z

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 71
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onResume()V

    .line 72
    invoke-direct {p0}, Lcom/yftech/settings/aid/DriveAidsAssistanceFragment;->initViewData()V

    .line 73
    invoke-static {}, Lcom/yftech/settings/manager/CarAssistantManager;->getInstance()Lcom/yftech/settings/manager/CarAssistantManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/settings/aid/DriveAidsAssistanceFragment;->mCarAssistantModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/manager/CarAssistantManager;->registerModelCallback(Lcom/yftech/settings/manager/BaseManager$ModelCallback;)V

    return-void
.end method

.method public onSwitch(Lcom/yftech/settings/widget/MultiSelectView;ILjava/lang/String;Z)V
    .locals 0

    if-nez p4, :cond_0

    return-void

    .line 165
    :cond_0
    sget-object p0, Lcom/yftech/settings/manager/CarAssistantManager$Function;->UNKNOWN:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    .line 166
    invoke-virtual {p1}, Lcom/yftech/settings/widget/MultiSelectView;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const p3, 0x7f0800b1

    if-eq p1, p3, :cond_1

    goto :goto_0

    .line 168
    :cond_1
    sget-object p0, Lcom/yftech/settings/manager/CarAssistantManager$Function;->CRUISE_ASSIST_OPTION:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    .line 171
    :goto_0
    sget-object p1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->UNKNOWN:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    if-eq p0, p1, :cond_2

    .line 172
    invoke-static {}, Lcom/yftech/settings/manager/CarAssistantManager;->getInstance()Lcom/yftech/settings/manager/CarAssistantManager;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/yftech/settings/manager/CarAssistantManager;->setOption(Lcom/yftech/settings/manager/CarAssistantManager$Function;I)Z

    :cond_2
    return-void
.end method
