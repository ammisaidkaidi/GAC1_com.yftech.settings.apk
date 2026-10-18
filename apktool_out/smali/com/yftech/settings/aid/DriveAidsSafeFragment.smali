.class public Lcom/yftech/settings/aid/DriveAidsSafeFragment;
.super Lcom/yftech/settings/BaseFragment;
.source "DriveAidsSafeFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/yftech/settings/widget/MultiSelectView$OnSwitchListener;


# static fields
.field private static final MULTI_SELECT_OFF:I = 0x3

.field private static final SPEED_REMINDER_MAX:I = 0xc8

.field private static final SPEED_REMINDER_STEP:I = 0xa


# instance fields
.field private activeSafetyIntelligentSpeedLimitControl:Landroid/widget/LinearLayout;

.field private activeSafetyLaneDepartureOption:Landroid/widget/LinearLayout;

.field private activeSafetyPreCollisionWarningOption:Landroid/widget/LinearLayout;

.field private activeSafetySpeedingAlarm:Landroid/widget/LinearLayout;

.field private mCarAssistantModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yftech/settings/manager/BaseManager$ModelCallback<",
            "Lcom/yftech/settings/manager/CarAssistantManager$Function;",
            ">;"
        }
    .end annotation
.end field

.field private mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

.field private mIsFcwOffPresent:Z

.field private mIsFcwWarningDistancePresent:Z

.field private mIsIntelligentSpeedLimitControlPresent:Z

.field private mIsLdwLkaPresent:Z

.field private mIsLksModePresent:Z

.field private mIsSpeedingAlarmPresent:Z

.field private mSmbDriverStatusAlert:Lcom/yftech/settings/widget/MultiSelectView;

.field private mSmbLaneDeparture:Lcom/yftech/settings/widget/MultiSelectView;

.field private mSmbPreCollisionWarning:Lcom/yftech/settings/widget/MultiSelectView;

.field private mSmbTipMode:Lcom/yftech/settings/widget/MultiSelectView;

.field private mSwActiveBrake:Lcom/yftech/settings/widget/Switcher;

.field private mSwIntelligentSpeedLimitControl:Lcom/yftech/settings/widget/Switcher;

.field private mSwPreCollisionWarning:Lcom/yftech/settings/widget/Switcher;

.field private mSwSpeedLimitSignRecognition:Lcom/yftech/settings/widget/Switcher;

.field private mSwSpeedLimitSignRecognitionPresent:Z

.field private mSwSpeedingAlarm:Lcom/yftech/settings/widget/Switcher;

.field private mSwbLaneDeparture:Lcom/yftech/settings/widget/Switcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/yftech/settings/BaseFragment;-><init>()V

    .line 62
    new-instance v0, Lcom/yftech/settings/aid/DriveAidsSafeFragment$1;

    invoke-direct {v0, p0}, Lcom/yftech/settings/aid/DriveAidsSafeFragment$1;-><init>(Lcom/yftech/settings/aid/DriveAidsSafeFragment;)V

    iput-object v0, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mCarAssistantModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/settings/aid/DriveAidsSafeFragment;Lcom/yftech/settings/manager/CarAssistantManager$Function;Z)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->setSwitcherView(Lcom/yftech/settings/manager/CarAssistantManager$Function;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/yftech/settings/aid/DriveAidsSafeFragment;Lcom/yftech/settings/manager/CarAssistantManager$Function;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->setSwitchMultiButtonView(Lcom/yftech/settings/manager/CarAssistantManager$Function;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/yftech/settings/aid/DriveAidsSafeFragment;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->initViewData()V

    return-void
.end method

.method static synthetic access$302(Lcom/yftech/settings/aid/DriveAidsSafeFragment;Lcom/yftech/settings/widget/dialog/CommonDialog;)Lcom/yftech/settings/widget/dialog/CommonDialog;
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    return-object p1
.end method

.method static synthetic access$400(Lcom/yftech/settings/aid/DriveAidsSafeFragment;)Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mIsFcwWarningDistancePresent:Z

    return p0
.end method

.method static synthetic access$500(Lcom/yftech/settings/aid/DriveAidsSafeFragment;)Landroid/widget/LinearLayout;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->activeSafetyPreCollisionWarningOption:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private getFcwFunction(I)Lcom/yftech/settings/manager/CarAssistantManager$Function;
    .locals 1

    const/4 p0, 0x3

    if-ge p1, p0, :cond_1

    .line 378
    invoke-static {}, Lcom/yftech/settings/manager/CarAssistantManager;->getInstance()Lcom/yftech/settings/manager/CarAssistantManager;

    move-result-object p0

    sget-object p1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->FCW_OFF_ENABLED:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {p0, p1}, Lcom/yftech/settings/manager/CarAssistantManager;->getEnabled(Lcom/yftech/settings/manager/CarAssistantManager$Function;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 379
    invoke-static {}, Lcom/yftech/settings/manager/CarAssistantManager;->getInstance()Lcom/yftech/settings/manager/CarAssistantManager;

    move-result-object p0

    sget-object p1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->FCW_OFF_ENABLED:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/yftech/settings/manager/CarAssistantManager;->setEnabled(Lcom/yftech/settings/manager/CarAssistantManager$Function;Z)Z

    .line 381
    :cond_0
    sget-object p0, Lcom/yftech/settings/manager/CarAssistantManager$Function;->FCW_WARNING_DISTANCE_OPTION:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    return-object p0

    .line 383
    :cond_1
    invoke-static {}, Lcom/yftech/settings/manager/CarAssistantManager;->getInstance()Lcom/yftech/settings/manager/CarAssistantManager;

    move-result-object p0

    sget-object p1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->FCW_OFF_ENABLED:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/yftech/settings/manager/CarAssistantManager;->setEnabled(Lcom/yftech/settings/manager/CarAssistantManager$Function;Z)Z

    .line 384
    sget-object p0, Lcom/yftech/settings/manager/CarAssistantManager$Function;->UNKNOWN:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    return-object p0
.end method

.method private getLksModeFunction(I)Lcom/yftech/settings/manager/CarAssistantManager$Function;
    .locals 1

    const/4 p0, 0x3

    if-ge p1, p0, :cond_0

    .line 398
    sget-object p0, Lcom/yftech/settings/manager/CarAssistantManager$Function;->LKS_MODE_OPTION:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    return-object p0

    .line 400
    :cond_0
    invoke-static {}, Lcom/yftech/settings/manager/CarAssistantManager;->getInstance()Lcom/yftech/settings/manager/CarAssistantManager;

    move-result-object p0

    sget-object p1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->LDW_LKA_ENABLED:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/yftech/settings/manager/CarAssistantManager;->setEnabled(Lcom/yftech/settings/manager/CarAssistantManager$Function;Z)Z

    .line 401
    sget-object p0, Lcom/yftech/settings/manager/CarAssistantManager$Function;->UNKNOWN:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    return-object p0
.end method

.method private initView(Landroid/view/View;)V
    .locals 11

    const v0, 0x7f080025

    .line 106
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 107
    invoke-static {}, Lcom/yftech/settings/manager/CarAssistantManager;->getInstance()Lcom/yftech/settings/manager/CarAssistantManager;

    move-result-object v2

    sget-object v3, Lcom/yftech/settings/manager/CarAssistantManager$Function;->FCW_OFF_ENABLED:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {v2, v3}, Lcom/yftech/settings/manager/CarAssistantManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarAssistantManager$Function;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mIsFcwOffPresent:Z

    .line 108
    iget-boolean v2, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mIsFcwOffPresent:Z

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 109
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    const v5, 0x7f0801bb

    const v6, 0x7f0801ff

    const v7, 0x7f080218

    if-nez v2, :cond_1

    .line 110
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v8, 0x7f0d0048

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(I)V

    .line 111
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v8, 0x7f0d0049

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(I)V

    .line 112
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yftech/settings/widget/Switcher;

    iput-object v1, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mSwPreCollisionWarning:Lcom/yftech/settings/widget/Switcher;

    .line 113
    iget-object v1, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mSwPreCollisionWarning:Lcom/yftech/settings/widget/Switcher;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yftech/settings/widget/Switcher;->setTag(Ljava/lang/Object;)V

    .line 114
    iget-object v0, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mSwPreCollisionWarning:Lcom/yftech/settings/widget/Switcher;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/widget/Switcher;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 115
    iget-object v0, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mSwPreCollisionWarning:Lcom/yftech/settings/widget/Switcher;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/widget/Switcher;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    const v0, 0x7f080026

    .line 119
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->activeSafetyPreCollisionWarningOption:Landroid/widget/LinearLayout;

    .line 120
    iget-boolean v1, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mIsFcwOffPresent:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/yftech/settings/manager/CarAssistantManager;->getInstance()Lcom/yftech/settings/manager/CarAssistantManager;

    move-result-object v1

    sget-object v8, Lcom/yftech/settings/manager/CarAssistantManager$Function;->FCW_WARNING_DISTANCE_OPTION:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {v1, v8}, Lcom/yftech/settings/manager/CarAssistantManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarAssistantManager$Function;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v4

    :goto_1
    iput-boolean v1, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mIsFcwWarningDistancePresent:Z

    .line 121
    iget-object v1, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->activeSafetyPreCollisionWarningOption:Landroid/widget/LinearLayout;

    iget-boolean v8, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mIsFcwWarningDistancePresent:Z

    if-eqz v8, :cond_3

    move v8, v4

    goto :goto_2

    :cond_3
    move v8, v3

    :goto_2
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 122
    iget-object v1, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->activeSafetyPreCollisionWarningOption:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    const v8, 0x7f080158

    if-nez v1, :cond_4

    .line 123
    iget-object v1, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->activeSafetyPreCollisionWarningOption:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v9, 0x7f0d004a

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(I)V

    .line 124
    iget-object v1, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->activeSafetyPreCollisionWarningOption:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yftech/settings/widget/MultiSelectView;

    iput-object v1, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mSmbPreCollisionWarning:Lcom/yftech/settings/widget/MultiSelectView;

    .line 125
    iget-object v1, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mSmbPreCollisionWarning:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yftech/settings/widget/MultiSelectView;->setTag(Ljava/lang/Object;)V

    .line 126
    iget-object v0, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mSmbPreCollisionWarning:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-virtual {p0}, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v9, 0x7f020002

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/MultiSelectView;->setText([Ljava/lang/String;)Lcom/yftech/settings/widget/MultiSelectView;

    .line 127
    iget-object v0, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mSmbPreCollisionWarning:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/widget/MultiSelectView;->setOnSwitchListener(Lcom/yftech/settings/widget/MultiSelectView$OnSwitchListener;)Lcom/yftech/settings/widget/MultiSelectView;

    .line 128
    iget-object v0, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mSmbPreCollisionWarning:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/widget/MultiSelectView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_4
    const v0, 0x7f08001e

    .line 132
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 133
    invoke-static {}, Lcom/yftech/settings/manager/CarAssistantManager;->getInstance()Lcom/yftech/settings/manager/CarAssistantManager;

    move-result-object v9

    sget-object v10, Lcom/yftech/settings/manager/CarAssistantManager$Function;->AEB_OFF_ENABLED:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {v9, v10}, Lcom/yftech/settings/manager/CarAssistantManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarAssistantManager$Function;)Z

    move-result v9

    if-eqz v9, :cond_5

    move v9, v4

    goto :goto_3

    :cond_5
    move v9, v3

    :goto_3
    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 135
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v9

    if-nez v9, :cond_6

    .line 136
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v10, 0x7f0d0038

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    .line 137
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v10, 0x7f0d0039

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    .line 138
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yftech/settings/widget/Switcher;

    iput-object v1, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mSwActiveBrake:Lcom/yftech/settings/widget/Switcher;

    .line 139
    iget-object v1, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mSwActiveBrake:Lcom/yftech/settings/widget/Switcher;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yftech/settings/widget/Switcher;->setTag(Ljava/lang/Object;)V

    .line 140
    iget-object v0, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mSwActiveBrake:Lcom/yftech/settings/widget/Switcher;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/widget/Switcher;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 141
    iget-object v0, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mSwActiveBrake:Lcom/yftech/settings/widget/Switcher;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/widget/Switcher;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 145
    :cond_6
    invoke-static {}, Lcom/yftech/settings/manager/CarAssistantManager;->getInstance()Lcom/yftech/settings/manager/CarAssistantManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->LDW_LKA_ENABLED:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarAssistantManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarAssistantManager$Function;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mIsLdwLkaPresent:Z

    .line 146
    iget-boolean v0, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mIsLdwLkaPresent:Z

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/yftech/settings/manager/CarAssistantManager;->getInstance()Lcom/yftech/settings/manager/CarAssistantManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->LKS_MODE_OPTION:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarAssistantManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarAssistantManager$Function;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_4

    :cond_7
    move v2, v4

    :goto_4
    iput-boolean v2, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mIsLksModePresent:Z

    const v0, 0x7f080023

    .line 147
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 148
    iget-boolean v2, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mIsLdwLkaPresent:Z

    if-eqz v2, :cond_8

    move v2, v4

    goto :goto_5

    :cond_8
    move v2, v3

    :goto_5
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 149
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_a

    .line 150
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v9, 0x7f0d0041

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(I)V

    .line 151
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v9, 0x7f0d0042

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(I)V

    .line 153
    iget-boolean v2, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mIsLksModePresent:Z

    if-nez v2, :cond_9

    .line 154
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v9, 0x7f0d0043

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(I)V

    .line 156
    :cond_9
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yftech/settings/widget/Switcher;

    iput-object v1, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mSwbLaneDeparture:Lcom/yftech/settings/widget/Switcher;

    .line 157
    iget-object v1, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mSwbLaneDeparture:Lcom/yftech/settings/widget/Switcher;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yftech/settings/widget/Switcher;->setTag(Ljava/lang/Object;)V

    .line 158
    iget-object v0, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mSwbLaneDeparture:Lcom/yftech/settings/widget/Switcher;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/widget/Switcher;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 159
    iget-object v0, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mSwbLaneDeparture:Lcom/yftech/settings/widget/Switcher;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/widget/Switcher;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_a
    const v0, 0x7f080024

    .line 163
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->activeSafetyLaneDepartureOption:Landroid/widget/LinearLayout;

    .line 164
    iget-object v1, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->activeSafetyLaneDepartureOption:Landroid/widget/LinearLayout;

    iget-boolean v2, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mIsLksModePresent:Z

    if-eqz v2, :cond_b

    move v2, v4

    goto :goto_6

    :cond_b
    move v2, v3

    :goto_6
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 165
    iget-object v1, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->activeSafetyLaneDepartureOption:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_c

    .line 166
    iget-object v1, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->activeSafetyLaneDepartureOption:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0d0040

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 167
    iget-object v1, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->activeSafetyLaneDepartureOption:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yftech/settings/widget/MultiSelectView;

    iput-object v1, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mSmbLaneDeparture:Lcom/yftech/settings/widget/MultiSelectView;

    .line 168
    iget-object v1, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mSmbLaneDeparture:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yftech/settings/widget/MultiSelectView;->setTag(Ljava/lang/Object;)V

    .line 169
    iget-object v0, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mSmbLaneDeparture:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-virtual {p0}, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/MultiSelectView;->setText([Ljava/lang/String;)Lcom/yftech/settings/widget/MultiSelectView;

    .line 170
    iget-object v0, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mSmbLaneDeparture:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/widget/MultiSelectView;->setOnSwitchListener(Lcom/yftech/settings/widget/MultiSelectView$OnSwitchListener;)Lcom/yftech/settings/widget/MultiSelectView;

    .line 171
    iget-object v0, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mSmbLaneDeparture:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/widget/MultiSelectView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_c
    const v0, 0x7f080027

    .line 179
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 180
    invoke-static {}, Lcom/yftech/settings/manager/CarAssistantManager;->getInstance()Lcom/yftech/settings/manager/CarAssistantManager;

    move-result-object v2

    sget-object v9, Lcom/yftech/settings/manager/CarAssistantManager$Function;->TSR_ENABLED:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {v2, v9}, Lcom/yftech/settings/manager/CarAssistantManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarAssistantManager$Function;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mSwSpeedLimitSignRecognitionPresent:Z

    .line 181
    iget-boolean v2, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mSwSpeedLimitSignRecognitionPresent:Z

    if-eqz v2, :cond_d

    move v2, v4

    goto :goto_7

    :cond_d
    move v2, v3

    :goto_7
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 182
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_e

    .line 183
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v9, 0x7f0d0053

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(I)V

    .line 184
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v9, 0x7f0d0054

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(I)V

    .line 185
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yftech/settings/widget/Switcher;

    iput-object v1, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mSwSpeedLimitSignRecognition:Lcom/yftech/settings/widget/Switcher;

    .line 186
    iget-object v1, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mSwSpeedLimitSignRecognition:Lcom/yftech/settings/widget/Switcher;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yftech/settings/widget/Switcher;->setTag(Ljava/lang/Object;)V

    .line 187
    iget-object v0, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mSwSpeedLimitSignRecognition:Lcom/yftech/settings/widget/Switcher;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/widget/Switcher;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 188
    iget-object v0, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mSwSpeedLimitSignRecognition:Lcom/yftech/settings/widget/Switcher;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/widget/Switcher;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_e
    const v0, 0x7f080029

    .line 192
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->activeSafetySpeedingAlarm:Landroid/widget/LinearLayout;

    .line 193
    invoke-static {}, Lcom/yftech/settings/manager/CarAssistantManager;->getInstance()Lcom/yftech/settings/manager/CarAssistantManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/CarAssistantManager$Function;->TSR_AUDIO_WARNING_ENABLED:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/CarAssistantManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarAssistantManager$Function;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mIsSpeedingAlarmPresent:Z

    .line 196
    iget-boolean v1, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mSwSpeedLimitSignRecognitionPresent:Z

    if-eqz v1, :cond_10

    .line 197
    iget-object v1, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->activeSafetySpeedingAlarm:Landroid/widget/LinearLayout;

    iget-boolean v2, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mIsSpeedingAlarmPresent:Z

    if-eqz v2, :cond_f

    move v2, v4

    goto :goto_8

    :cond_f
    move v2, v3

    :goto_8
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_9

    .line 199
    :cond_10
    iget-object v1, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->activeSafetySpeedingAlarm:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 202
    :goto_9
    iget-object v1, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->activeSafetySpeedingAlarm:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_11

    .line 203
    iget-object v1, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->activeSafetySpeedingAlarm:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0d0057

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 204
    iget-object v1, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->activeSafetySpeedingAlarm:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0d0058

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 205
    iget-object v1, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->activeSafetySpeedingAlarm:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yftech/settings/widget/Switcher;

    iput-object v1, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mSwSpeedingAlarm:Lcom/yftech/settings/widget/Switcher;

    .line 206
    iget-object v1, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mSwSpeedingAlarm:Lcom/yftech/settings/widget/Switcher;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yftech/settings/widget/Switcher;->setTag(Ljava/lang/Object;)V

    .line 207
    iget-object v0, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mSwSpeedingAlarm:Lcom/yftech/settings/widget/Switcher;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/widget/Switcher;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 208
    iget-object v0, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mSwSpeedingAlarm:Lcom/yftech/settings/widget/Switcher;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/widget/Switcher;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_11
    const v0, 0x7f080022

    .line 212
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->activeSafetyIntelligentSpeedLimitControl:Landroid/widget/LinearLayout;

    .line 213
    invoke-static {}, Lcom/yftech/settings/manager/CarAssistantManager;->getInstance()Lcom/yftech/settings/manager/CarAssistantManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/CarAssistantManager$Function;->IACC_ENABLED:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/CarAssistantManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarAssistantManager$Function;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mIsIntelligentSpeedLimitControlPresent:Z

    .line 215
    iget-boolean v1, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mSwSpeedLimitSignRecognitionPresent:Z

    if-eqz v1, :cond_13

    .line 216
    iget-object v1, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->activeSafetyIntelligentSpeedLimitControl:Landroid/widget/LinearLayout;

    iget-boolean v2, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mIsIntelligentSpeedLimitControlPresent:Z

    if-eqz v2, :cond_12

    move v2, v4

    goto :goto_a

    :cond_12
    move v2, v3

    :goto_a
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_b

    .line 218
    :cond_13
    iget-object v1, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->activeSafetyIntelligentSpeedLimitControl:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 221
    :goto_b
    iget-object v1, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->activeSafetyIntelligentSpeedLimitControl:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_14

    .line 222
    iget-object v1, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->activeSafetyIntelligentSpeedLimitControl:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0d003c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 223
    iget-object v1, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->activeSafetyIntelligentSpeedLimitControl:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0d003d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 224
    iget-object v1, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->activeSafetyIntelligentSpeedLimitControl:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yftech/settings/widget/Switcher;

    iput-object v1, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mSwIntelligentSpeedLimitControl:Lcom/yftech/settings/widget/Switcher;

    .line 225
    iget-object v1, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mSwIntelligentSpeedLimitControl:Lcom/yftech/settings/widget/Switcher;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yftech/settings/widget/Switcher;->setTag(Ljava/lang/Object;)V

    .line 226
    iget-object v0, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mSwIntelligentSpeedLimitControl:Lcom/yftech/settings/widget/Switcher;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/widget/Switcher;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 227
    iget-object v0, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mSwIntelligentSpeedLimitControl:Lcom/yftech/settings/widget/Switcher;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/widget/Switcher;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_14
    const v0, 0x7f0800b2

    .line 231
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 232
    invoke-static {}, Lcom/yftech/settings/manager/CarAssistantManager;->getInstance()Lcom/yftech/settings/manager/CarAssistantManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/CarAssistantManager$Function;->ADAS_WARN_TYPE_OPTION:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/CarAssistantManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarAssistantManager$Function;)Z

    move-result v1

    if-eqz v1, :cond_15

    move v1, v4

    goto :goto_c

    :cond_15
    move v1, v3

    :goto_c
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 234
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_18

    .line 235
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0d0117

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 236
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0d0118

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 237
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yftech/settings/widget/MultiSelectView;

    iput-object v0, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mSmbTipMode:Lcom/yftech/settings/widget/MultiSelectView;

    .line 238
    iget-object v0, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mSmbTipMode:Lcom/yftech/settings/widget/MultiSelectView;

    const v1, 0x7f0800b2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/MultiSelectView;->setTag(Ljava/lang/Object;)V

    .line 239
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->getPromptType()Lcom/yftech/vehicle/internal/adapter/ICarConfig$PromptType;

    move-result-object v0

    .line 241
    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$PromptType;->SOUND_AND_VOICE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$PromptType;

    if-ne v0, v1, :cond_16

    .line 242
    invoke-virtual {p0}, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 243
    :cond_16
    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$PromptType;->SOUND_AND_VOICE_AND_SEAT_VIBRATION:Lcom/yftech/vehicle/internal/adapter/ICarConfig$PromptType;

    if-ne v0, v1, :cond_17

    .line 244
    invoke-virtual {p0}, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 246
    :cond_17
    invoke-virtual {p0}, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 248
    :goto_d
    iget-object v1, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mSmbTipMode:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-virtual {v1, v0}, Lcom/yftech/settings/widget/MultiSelectView;->setText([Ljava/lang/String;)Lcom/yftech/settings/widget/MultiSelectView;

    .line 249
    iget-object v0, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mSmbTipMode:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/widget/MultiSelectView;->setOnSwitchListener(Lcom/yftech/settings/widget/MultiSelectView$OnSwitchListener;)Lcom/yftech/settings/widget/MultiSelectView;

    .line 250
    iget-object v0, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mSmbTipMode:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/widget/MultiSelectView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_18
    const v0, 0x7f080020

    .line 254
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 255
    invoke-static {}, Lcom/yftech/settings/manager/CarAssistantManager;->getInstance()Lcom/yftech/settings/manager/CarAssistantManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->DSA_OFF_ENABLES:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarAssistantManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarAssistantManager$Function;)Z

    move-result v0

    if-eqz v0, :cond_19

    move v3, v4

    :cond_19
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 257
    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0d0059

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 258
    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0d005a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 259
    invoke-virtual {p1, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/yftech/settings/widget/MultiSelectView;

    iput-object p1, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mSmbDriverStatusAlert:Lcom/yftech/settings/widget/MultiSelectView;

    .line 260
    iget-object p1, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mSmbDriverStatusAlert:Lcom/yftech/settings/widget/MultiSelectView;

    const v0, 0x7f080020

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yftech/settings/widget/MultiSelectView;->setTag(Ljava/lang/Object;)V

    .line 261
    iget-object p1, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mSmbDriverStatusAlert:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-virtual {p1, v4}, Lcom/yftech/settings/widget/MultiSelectView;->setVisibility(I)V

    .line 262
    iget-object p1, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mSmbDriverStatusAlert:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-virtual {p0}, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yftech/settings/widget/MultiSelectView;->setText([Ljava/lang/String;)Lcom/yftech/settings/widget/MultiSelectView;

    .line 263
    iget-object p1, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mSmbDriverStatusAlert:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-virtual {p1, p0}, Lcom/yftech/settings/widget/MultiSelectView;->setOnSwitchListener(Lcom/yftech/settings/widget/MultiSelectView$OnSwitchListener;)Lcom/yftech/settings/widget/MultiSelectView;

    .line 264
    iget-object p1, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mSmbDriverStatusAlert:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-virtual {p1, p0}, Lcom/yftech/settings/widget/MultiSelectView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private initViewData()V
    .locals 3

    .line 269
    invoke-static {}, Lcom/yftech/settings/manager/CarAssistantManager;->getInstance()Lcom/yftech/settings/manager/CarAssistantManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->FCW_OFF_ENABLED:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarAssistantManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarAssistantManager$Function;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    sget-object v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;->FCW_OFF_ENABLED:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-static {}, Lcom/yftech/settings/manager/CarAssistantManager;->getInstance()Lcom/yftech/settings/manager/CarAssistantManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/CarAssistantManager$Function;->FCW_OFF_ENABLED:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/CarAssistantManager;->getEnabled(Lcom/yftech/settings/manager/CarAssistantManager$Function;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->setSwitcherView(Lcom/yftech/settings/manager/CarAssistantManager$Function;Z)V

    .line 272
    :cond_0
    invoke-static {}, Lcom/yftech/settings/manager/CarAssistantManager;->getInstance()Lcom/yftech/settings/manager/CarAssistantManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->FCW_WARNING_DISTANCE_OPTION:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarAssistantManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarAssistantManager$Function;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    sget-object v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;->FCW_WARNING_DISTANCE_OPTION:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-static {}, Lcom/yftech/settings/manager/CarAssistantManager;->getInstance()Lcom/yftech/settings/manager/CarAssistantManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/CarAssistantManager$Function;->FCW_WARNING_DISTANCE_OPTION:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/CarAssistantManager;->getOption(Lcom/yftech/settings/manager/CarAssistantManager$Function;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->setSwitchMultiButtonView(Lcom/yftech/settings/manager/CarAssistantManager$Function;I)V

    .line 275
    :cond_1
    invoke-static {}, Lcom/yftech/settings/manager/CarAssistantManager;->getInstance()Lcom/yftech/settings/manager/CarAssistantManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->LDW_LKA_ENABLED:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarAssistantManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarAssistantManager$Function;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 276
    sget-object v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;->LDW_LKA_ENABLED:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-static {}, Lcom/yftech/settings/manager/CarAssistantManager;->getInstance()Lcom/yftech/settings/manager/CarAssistantManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/CarAssistantManager$Function;->LDW_LKA_ENABLED:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/CarAssistantManager;->getEnabled(Lcom/yftech/settings/manager/CarAssistantManager$Function;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->setSwitcherView(Lcom/yftech/settings/manager/CarAssistantManager$Function;Z)V

    .line 278
    :cond_2
    invoke-static {}, Lcom/yftech/settings/manager/CarAssistantManager;->getInstance()Lcom/yftech/settings/manager/CarAssistantManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->LKS_MODE_OPTION:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarAssistantManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarAssistantManager$Function;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 279
    sget-object v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;->LKS_MODE_OPTION:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-static {}, Lcom/yftech/settings/manager/CarAssistantManager;->getInstance()Lcom/yftech/settings/manager/CarAssistantManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/CarAssistantManager$Function;->LKS_MODE_OPTION:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/CarAssistantManager;->getOption(Lcom/yftech/settings/manager/CarAssistantManager$Function;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->setSwitchMultiButtonView(Lcom/yftech/settings/manager/CarAssistantManager$Function;I)V

    .line 281
    :cond_3
    invoke-static {}, Lcom/yftech/settings/manager/CarAssistantManager;->getInstance()Lcom/yftech/settings/manager/CarAssistantManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->ADAS_WARN_TYPE_OPTION:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarAssistantManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarAssistantManager$Function;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 282
    sget-object v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;->ADAS_WARN_TYPE_OPTION:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-static {}, Lcom/yftech/settings/manager/CarAssistantManager;->getInstance()Lcom/yftech/settings/manager/CarAssistantManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/CarAssistantManager$Function;->ADAS_WARN_TYPE_OPTION:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/CarAssistantManager;->getOption(Lcom/yftech/settings/manager/CarAssistantManager$Function;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->setSwitchMultiButtonView(Lcom/yftech/settings/manager/CarAssistantManager$Function;I)V

    .line 284
    :cond_4
    invoke-static {}, Lcom/yftech/settings/manager/CarAssistantManager;->getInstance()Lcom/yftech/settings/manager/CarAssistantManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->TSR_ENABLED:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarAssistantManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarAssistantManager$Function;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 285
    sget-object v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;->TSR_ENABLED:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-static {}, Lcom/yftech/settings/manager/CarAssistantManager;->getInstance()Lcom/yftech/settings/manager/CarAssistantManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/CarAssistantManager$Function;->TSR_ENABLED:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/CarAssistantManager;->getEnabled(Lcom/yftech/settings/manager/CarAssistantManager$Function;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->setSwitcherView(Lcom/yftech/settings/manager/CarAssistantManager$Function;Z)V

    .line 287
    :cond_5
    invoke-static {}, Lcom/yftech/settings/manager/CarAssistantManager;->getInstance()Lcom/yftech/settings/manager/CarAssistantManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->IACC_ENABLED:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarAssistantManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarAssistantManager$Function;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 288
    sget-object v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;->IACC_ENABLED:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-static {}, Lcom/yftech/settings/manager/CarAssistantManager;->getInstance()Lcom/yftech/settings/manager/CarAssistantManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/CarAssistantManager$Function;->IACC_ENABLED:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/CarAssistantManager;->getEnabled(Lcom/yftech/settings/manager/CarAssistantManager$Function;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->setSwitcherView(Lcom/yftech/settings/manager/CarAssistantManager$Function;Z)V

    .line 290
    :cond_6
    invoke-static {}, Lcom/yftech/settings/manager/CarAssistantManager;->getInstance()Lcom/yftech/settings/manager/CarAssistantManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->TSR_AUDIO_WARNING_ENABLED:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarAssistantManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarAssistantManager$Function;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 291
    sget-object v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;->TSR_AUDIO_WARNING_ENABLED:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-static {}, Lcom/yftech/settings/manager/CarAssistantManager;->getInstance()Lcom/yftech/settings/manager/CarAssistantManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/CarAssistantManager$Function;->TSR_AUDIO_WARNING_ENABLED:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/CarAssistantManager;->getEnabled(Lcom/yftech/settings/manager/CarAssistantManager$Function;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->setSwitcherView(Lcom/yftech/settings/manager/CarAssistantManager$Function;Z)V

    .line 293
    :cond_7
    invoke-static {}, Lcom/yftech/settings/manager/CarAssistantManager;->getInstance()Lcom/yftech/settings/manager/CarAssistantManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->AEB_OFF_ENABLED:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarAssistantManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarAssistantManager$Function;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 294
    sget-object v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;->AEB_OFF_ENABLED:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-static {}, Lcom/yftech/settings/manager/CarAssistantManager;->getInstance()Lcom/yftech/settings/manager/CarAssistantManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/CarAssistantManager$Function;->AEB_OFF_ENABLED:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/CarAssistantManager;->getEnabled(Lcom/yftech/settings/manager/CarAssistantManager$Function;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->setSwitcherView(Lcom/yftech/settings/manager/CarAssistantManager$Function;Z)V

    .line 299
    :cond_8
    invoke-static {}, Lcom/yftech/settings/manager/CarAssistantManager;->getInstance()Lcom/yftech/settings/manager/CarAssistantManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->DSA_MODE_OPTION:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarAssistantManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarAssistantManager$Function;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 300
    sget-object v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;->DSA_MODE_OPTION:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->setSwitchMultiButtonView(Lcom/yftech/settings/manager/CarAssistantManager$Function;I)V

    :cond_9
    return-void
.end method

.method private setSwitchMultiButtonView(Lcom/yftech/settings/manager/CarAssistantManager$Function;I)V
    .locals 1

    .line 442
    sget-object v0, Lcom/yftech/settings/aid/DriveAidsSafeFragment$6;->$SwitchMap$com$yftech$settings$manager$CarAssistantManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/CarAssistantManager$Function;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    .line 453
    :pswitch_0
    iget-object p0, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mSmbDriverStatusAlert:Lcom/yftech/settings/widget/MultiSelectView;

    goto :goto_0

    .line 450
    :pswitch_1
    iget-object p0, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mSmbTipMode:Lcom/yftech/settings/widget/MultiSelectView;

    goto :goto_0

    .line 447
    :pswitch_2
    iget-object p0, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mSmbLaneDeparture:Lcom/yftech/settings/widget/MultiSelectView;

    goto :goto_0

    .line 444
    :pswitch_3
    iget-object p0, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mSmbPreCollisionWarning:Lcom/yftech/settings/widget/MultiSelectView;

    :goto_0
    if-eqz p0, :cond_1

    .line 456
    invoke-virtual {p0}, Lcom/yftech/settings/widget/MultiSelectView;->getTabNum()I

    move-result p1

    if-ne p1, p2, :cond_0

    return-void

    .line 459
    :cond_0
    invoke-virtual {p0, p2}, Lcom/yftech/settings/widget/MultiSelectView;->setSelectedTab(I)Lcom/yftech/settings/widget/MultiSelectView;

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setSwitcherView(Lcom/yftech/settings/manager/CarAssistantManager$Function;Z)V
    .locals 4

    .line 407
    sget-object v0, Lcom/yftech/settings/aid/DriveAidsSafeFragment$6;->$SwitchMap$com$yftech$settings$manager$CarAssistantManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/CarAssistantManager$Function;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/16 v1, 0x8

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_4

    .line 428
    :pswitch_0
    iget-object p1, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mSwPreCollisionWarning:Lcom/yftech/settings/widget/Switcher;

    .line 429
    iget-object v2, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->activeSafetyPreCollisionWarningOption:Landroid/widget/LinearLayout;

    iget-boolean p0, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mIsFcwWarningDistancePresent:Z

    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_4

    .line 424
    :pswitch_1
    iget-object p1, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mSwbLaneDeparture:Lcom/yftech/settings/widget/Switcher;

    .line 425
    iget-object v2, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->activeSafetyLaneDepartureOption:Landroid/widget/LinearLayout;

    iget-boolean p0, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mIsLksModePresent:Z

    if-eqz p0, :cond_1

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_4

    .line 421
    :pswitch_2
    iget-object p1, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mSwActiveBrake:Lcom/yftech/settings/widget/Switcher;

    goto :goto_4

    .line 418
    :pswitch_3
    iget-object p1, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mSwSpeedingAlarm:Lcom/yftech/settings/widget/Switcher;

    goto :goto_4

    .line 415
    :pswitch_4
    iget-object p1, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mSwIntelligentSpeedLimitControl:Lcom/yftech/settings/widget/Switcher;

    goto :goto_4

    .line 409
    :pswitch_5
    iget-object p1, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mSwSpeedLimitSignRecognition:Lcom/yftech/settings/widget/Switcher;

    .line 410
    iget-object v2, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->activeSafetySpeedingAlarm:Landroid/widget/LinearLayout;

    iget-boolean v3, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mIsSpeedingAlarmPresent:Z

    if-eqz v3, :cond_2

    if-eqz p2, :cond_2

    move v3, v0

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 411
    iget-object v2, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->activeSafetyIntelligentSpeedLimitControl:Landroid/widget/LinearLayout;

    iget-boolean p0, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mIsIntelligentSpeedLimitControlPresent:Z

    if-eqz p0, :cond_3

    if-eqz p2, :cond_3

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_4
    if-eqz p1, :cond_5

    .line 433
    invoke-virtual {p1}, Lcom/yftech/settings/widget/Switcher;->isChecked()Z

    move-result p0

    if-ne p0, p2, :cond_4

    return-void

    .line 436
    :cond_4
    invoke-virtual {p1, p2}, Lcom/yftech/settings/widget/Switcher;->setChecked(Z)V

    :cond_5
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

.method private showAidsSafeTipDialog(Lcom/yftech/settings/manager/CarAssistantManager$Function;Z)V
    .locals 4

    .line 493
    new-instance v0, Lcom/yftech/settings/widget/dialog/CommonDialog;

    invoke-virtual {p0}, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yftech/settings/widget/dialog/CommonDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    .line 494
    iget-object v0, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    invoke-virtual {v0}, Lcom/yftech/settings/widget/dialog/CommonDialog;->show()V

    .line 495
    iget-object v0, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    new-instance v1, Lcom/yftech/settings/aid/DriveAidsSafeFragment$4;

    invoke-direct {v1, p0}, Lcom/yftech/settings/aid/DriveAidsSafeFragment$4;-><init>(Lcom/yftech/settings/aid/DriveAidsSafeFragment;)V

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/dialog/CommonDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 501
    sget-object v0, Lcom/yftech/settings/aid/DriveAidsSafeFragment$6;->$SwitchMap$com$yftech$settings$manager$CarAssistantManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/CarAssistantManager$Function;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto :goto_2

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    if-eqz p2, :cond_1

    const v1, 0x7f0d00f9

    goto :goto_0

    :cond_1
    const v1, 0x7f0d00eb

    :goto_0
    invoke-virtual {p0, v1}, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/dialog/CommonDialog;->setContent(Ljava/lang/String;)Lcom/yftech/settings/widget/dialog/CommonDialog;

    goto :goto_2

    .line 506
    :cond_2
    iget-object v0, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    if-eqz p2, :cond_3

    const v1, 0x7f0d00fa

    goto :goto_1

    :cond_3
    const v1, 0x7f0d00ec

    :goto_1
    invoke-virtual {p0, v1}, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/dialog/CommonDialog;->setContent(Ljava/lang/String;)Lcom/yftech/settings/widget/dialog/CommonDialog;

    .line 509
    :goto_2
    iget-object v0, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz p2, :cond_4

    const v3, 0x7f0d00f8

    goto :goto_3

    :cond_4
    const v3, 0x7f0d00ea

    :goto_3
    invoke-virtual {p0, v3}, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const v3, 0x7f0d00e9

    invoke-virtual {p0, v3}, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/dialog/CommonDialog;->setButtonText([Ljava/lang/String;)Lcom/yftech/settings/widget/dialog/CommonDialog;

    .line 510
    iget-object v0, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    new-instance v1, Lcom/yftech/settings/aid/DriveAidsSafeFragment$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/yftech/settings/aid/DriveAidsSafeFragment$5;-><init>(Lcom/yftech/settings/aid/DriveAidsSafeFragment;Lcom/yftech/settings/manager/CarAssistantManager$Function;Z)V

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/dialog/CommonDialog;->setOnBtnClickListener(Lcom/yftech/settings/widget/dialog/CommonDialog$OnBtnClickListener;)Lcom/yftech/settings/widget/dialog/CommonDialog;

    return-void
.end method

.method private showCloseFcwTipDialog()V
    .locals 4

    .line 464
    new-instance v0, Lcom/yftech/settings/widget/dialog/CommonDialog;

    invoke-virtual {p0}, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yftech/settings/widget/dialog/CommonDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    .line 465
    iget-object v0, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    invoke-virtual {v0}, Lcom/yftech/settings/widget/dialog/CommonDialog;->show()V

    .line 466
    iget-object v0, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    new-instance v1, Lcom/yftech/settings/aid/DriveAidsSafeFragment$2;

    invoke-direct {v1, p0}, Lcom/yftech/settings/aid/DriveAidsSafeFragment$2;-><init>(Lcom/yftech/settings/aid/DriveAidsSafeFragment;)V

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/dialog/CommonDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 472
    iget-object v0, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    const v1, 0x7f0d00eb

    invoke-virtual {p0, v1}, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/dialog/CommonDialog;->setContent(Ljava/lang/String;)Lcom/yftech/settings/widget/dialog/CommonDialog;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const v2, 0x7f0d00ea

    .line 473
    invoke-virtual {p0, v2}, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f0d00e9

    invoke-virtual {p0, v2}, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/dialog/CommonDialog;->setButtonText([Ljava/lang/String;)Lcom/yftech/settings/widget/dialog/CommonDialog;

    move-result-object v0

    new-instance v1, Lcom/yftech/settings/aid/DriveAidsSafeFragment$3;

    invoke-direct {v1, p0}, Lcom/yftech/settings/aid/DriveAidsSafeFragment$3;-><init>(Lcom/yftech/settings/aid/DriveAidsSafeFragment;)V

    .line 474
    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/dialog/CommonDialog;->setOnBtnClickListener(Lcom/yftech/settings/widget/dialog/CommonDialog$OnBtnClickListener;)Lcom/yftech/settings/widget/dialog/CommonDialog;

    return-void
.end method


# virtual methods
.method protected dismissAllDialog()V
    .locals 1

    .line 534
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->dismissAllDialog()V

    .line 535
    iget-object v0, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    invoke-virtual {v0}, Lcom/yftech/settings/widget/dialog/CommonDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    iget-object p0, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    invoke-virtual {p0}, Lcom/yftech/settings/widget/dialog/CommonDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    .line 306
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isPressed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 309
    :cond_0
    sget-object v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;->UNKNOWN:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    .line 310
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x0

    const/16 v2, 0x8

    sparse-switch p1, :sswitch_data_0

    goto :goto_3

    .line 333
    :sswitch_0
    sget-object v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;->TSR_AUDIO_WARNING_ENABLED:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    goto :goto_3

    .line 324
    :sswitch_1
    sget-object v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;->TSR_ENABLED:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    .line 325
    iget-object p1, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->activeSafetySpeedingAlarm:Landroid/widget/LinearLayout;

    iget-boolean v3, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mIsSpeedingAlarmPresent:Z

    if-eqz v3, :cond_1

    if-eqz p2, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 326
    iget-object p1, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->activeSafetyIntelligentSpeedLimitControl:Landroid/widget/LinearLayout;

    iget-boolean p0, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mIsIntelligentSpeedLimitControlPresent:Z

    if-eqz p0, :cond_2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3

    .line 317
    :sswitch_2
    sget-object p1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->FCW_OFF_ENABLED:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->showAidsSafeTipDialog(Lcom/yftech/settings/manager/CarAssistantManager$Function;Z)V

    goto :goto_3

    .line 320
    :sswitch_3
    sget-object v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;->LDW_LKA_ENABLED:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    .line 321
    iget-object p1, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->activeSafetyLaneDepartureOption:Landroid/widget/LinearLayout;

    iget-boolean p0, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mIsLksModePresent:Z

    if-eqz p0, :cond_3

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3

    .line 330
    :sswitch_4
    sget-object v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;->IACC_ENABLED:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    goto :goto_3

    .line 336
    :sswitch_5
    sget-object p1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->AEB_OFF_ENABLED:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->showAidsSafeTipDialog(Lcom/yftech/settings/manager/CarAssistantManager$Function;Z)V

    .line 339
    :goto_3
    sget-object p0, Lcom/yftech/settings/manager/CarAssistantManager$Function;->UNKNOWN:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    if-eq v0, p0, :cond_4

    .line 340
    invoke-static {}, Lcom/yftech/settings/manager/CarAssistantManager;->getInstance()Lcom/yftech/settings/manager/CarAssistantManager;

    move-result-object p0

    invoke-virtual {p0, v0, p2}, Lcom/yftech/settings/manager/CarAssistantManager;->setEnabled(Lcom/yftech/settings/manager/CarAssistantManager$Function;Z)Z

    :cond_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f08001e -> :sswitch_5
        0x7f080022 -> :sswitch_4
        0x7f080023 -> :sswitch_3
        0x7f080025 -> :sswitch_2
        0x7f080027 -> :sswitch_1
        0x7f080029 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const p3, 0x7f0a0031

    const/4 v0, 0x0

    .line 85
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 86
    invoke-direct {p0, p1}, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method public onPause()V
    .locals 1

    .line 99
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onPause()V

    .line 100
    invoke-static {}, Lcom/yftech/settings/manager/CarAssistantManager;->getInstance()Lcom/yftech/settings/manager/CarAssistantManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mCarAssistantModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/manager/CarAssistantManager;->unregisterModelCallback(Lcom/yftech/settings/manager/BaseManager$ModelCallback;)V

    .line 101
    invoke-static {}, Lcom/yftech/settings/manager/CarAssistantManager;->getInstance()Lcom/yftech/settings/manager/CarAssistantManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;->STOP_TIMEOUT_ACTION:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {p0, v0}, Lcom/yftech/settings/manager/CarAssistantManager;->setAction(Lcom/yftech/settings/manager/CarAssistantManager$Function;)Z

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 92
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onResume()V

    .line 93
    invoke-direct {p0}, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->initViewData()V

    .line 94
    invoke-static {}, Lcom/yftech/settings/manager/CarAssistantManager;->getInstance()Lcom/yftech/settings/manager/CarAssistantManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->mCarAssistantModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/manager/CarAssistantManager;->registerModelCallback(Lcom/yftech/settings/manager/BaseManager$ModelCallback;)V

    return-void
.end method

.method public onSwitch(Lcom/yftech/settings/widget/MultiSelectView;ILjava/lang/String;Z)V
    .locals 0

    if-nez p4, :cond_0

    return-void

    .line 349
    :cond_0
    sget-object p0, Lcom/yftech/settings/manager/CarAssistantManager$Function;->UNKNOWN:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    .line 350
    invoke-virtual {p1}, Lcom/yftech/settings/widget/MultiSelectView;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const p3, 0x7f080024

    if-eq p1, p3, :cond_3

    const p3, 0x7f080026

    if-eq p1, p3, :cond_2

    const p3, 0x7f0800b2

    if-eq p1, p3, :cond_1

    goto :goto_0

    .line 360
    :cond_1
    sget-object p0, Lcom/yftech/settings/manager/CarAssistantManager$Function;->ADAS_WARN_TYPE_OPTION:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    goto :goto_0

    .line 353
    :cond_2
    sget-object p0, Lcom/yftech/settings/manager/CarAssistantManager$Function;->FCW_WARNING_DISTANCE_OPTION:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    goto :goto_0

    .line 356
    :cond_3
    sget-object p0, Lcom/yftech/settings/manager/CarAssistantManager$Function;->LKS_MODE_OPTION:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    .line 363
    :goto_0
    sget-object p1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->UNKNOWN:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    if-eq p0, p1, :cond_4

    .line 364
    invoke-static {}, Lcom/yftech/settings/manager/CarAssistantManager;->getInstance()Lcom/yftech/settings/manager/CarAssistantManager;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/yftech/settings/manager/CarAssistantManager;->setOption(Lcom/yftech/settings/manager/CarAssistantManager$Function;I)Z

    :cond_4
    return-void
.end method
