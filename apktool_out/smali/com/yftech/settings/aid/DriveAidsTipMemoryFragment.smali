.class public Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment;
.super Lcom/yftech/settings/BaseFragment;
.source "DriveAidsTipMemoryFragment.java"

# interfaces
.implements Lcom/yftech/settings/widget/SeekBarNumber$OnSeekChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final SPEED_REMINDER_MAX:I = 0xc8

.field private static final SPEED_REMINDER_STEP:I = 0xa


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

.field private mCarDriveModeModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yftech/settings/manager/BaseManager$ModelCallback<",
            "Lcom/yftech/settings/manager/CarDriveModeManager$Function;",
            ">;"
        }
    .end annotation
.end field

.field private mSpeedRemindeSB:Lcom/yftech/settings/widget/SeekBarNumber;

.field private mSwRememberDrivingMode:Lcom/yftech/settings/widget/Switcher;

.field private mTvSpeedReminder:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/yftech/settings/BaseFragment;-><init>()V

    .line 30
    new-instance v0, Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment$1;

    invoke-direct {v0, p0}, Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment$1;-><init>(Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment;)V

    iput-object v0, p0, Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment;->mCarAssistantModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;

    .line 49
    new-instance v0, Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment$2;

    invoke-direct {v0, p0}, Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment$2;-><init>(Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment;)V

    iput-object v0, p0, Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment;->mCarDriveModeModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment;Lcom/yftech/settings/manager/CarAssistantManager$Function;Ljava/lang/Object;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment;->setValueView(Lcom/yftech/settings/manager/CarAssistantManager$Function;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment;->initAssistantViewData()V

    return-void
.end method

.method static synthetic access$200(Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment;Lcom/yftech/settings/manager/CarDriveModeManager$Function;Z)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment;->setSwitcherView(Lcom/yftech/settings/manager/CarDriveModeManager$Function;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment;->initDriveModeViewData()V

    return-void
.end method

.method private initAssistantViewData()V
    .locals 3

    .line 138
    invoke-static {}, Lcom/yftech/settings/manager/CarAssistantManager;->getInstance()Lcom/yftech/settings/manager/CarAssistantManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->SPEED_WARNING_VALUE:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarAssistantManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarAssistantManager$Function;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    sget-object v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;->SPEED_WARNING_VALUE:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-static {}, Lcom/yftech/settings/manager/CarAssistantManager;->getInstance()Lcom/yftech/settings/manager/CarAssistantManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/CarAssistantManager$Function;->SPEED_WARNING_VALUE:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/CarAssistantManager;->getValue(Lcom/yftech/settings/manager/CarAssistantManager$Function;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment;->setValueView(Lcom/yftech/settings/manager/CarAssistantManager$Function;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private initDriveModeViewData()V
    .locals 3

    .line 144
    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->REMEMBER_DRIVING_MODE_ENABLED:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarDriveModeManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    sget-object v0, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->REMEMBER_DRIVING_MODE_ENABLED:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->REMEMBER_DRIVING_MODE_ENABLED:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/CarDriveModeManager;->getEnabled(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment;->setSwitcherView(Lcom/yftech/settings/manager/CarDriveModeManager$Function;Z)V

    :cond_0
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 8

    const v0, 0x7f080028

    .line 107
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 108
    invoke-static {}, Lcom/yftech/settings/manager/CarAssistantManager;->getInstance()Lcom/yftech/settings/manager/CarAssistantManager;

    move-result-object v2

    sget-object v3, Lcom/yftech/settings/manager/CarAssistantManager$Function;->SPEED_WARNING_VALUE:Lcom/yftech/settings/manager/CarAssistantManager$Function;

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

    .line 110
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    const v5, 0x7f0801ff

    const v6, 0x7f080218

    if-nez v2, :cond_1

    .line 111
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v7, 0x7f0d0055

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(I)V

    .line 112
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v7, 0x7f0d0056

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(I)V

    const v2, 0x7f08018b

    .line 113
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/yftech/settings/widget/SeekBarNumber;

    iput-object v2, p0, Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment;->mSpeedRemindeSB:Lcom/yftech/settings/widget/SeekBarNumber;

    .line 114
    iget-object v2, p0, Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment;->mSpeedRemindeSB:Lcom/yftech/settings/widget/SeekBarNumber;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/yftech/settings/widget/SeekBarNumber;->setTag(Ljava/lang/Object;)V

    .line 115
    iget-object v0, p0, Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment;->mSpeedRemindeSB:Lcom/yftech/settings/widget/SeekBarNumber;

    const/16 v2, 0x14

    invoke-virtual {v0, v2}, Lcom/yftech/settings/widget/SeekBarNumber;->setMax(I)V

    .line 116
    iget-object v0, p0, Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment;->mSpeedRemindeSB:Lcom/yftech/settings/widget/SeekBarNumber;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/widget/SeekBarNumber;->setOnSeekChangeListener(Lcom/yftech/settings/widget/SeekBarNumber$OnSeekChangeListener;)V

    .line 117
    iget-object v0, p0, Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment;->mSpeedRemindeSB:Lcom/yftech/settings/widget/SeekBarNumber;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/widget/SeekBarNumber;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f0801fd

    .line 118
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment;->mTvSpeedReminder:Landroid/widget/TextView;

    .line 119
    iget-object v0, p0, Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment;->mTvSpeedReminder:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050032

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 120
    iget-object v0, p0, Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment;->mTvSpeedReminder:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060063

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_1
    const v0, 0x7f08008b

    .line 123
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 124
    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->REMEMBER_DRIVING_MODE_ENABLED:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/CarDriveModeManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v3, v4

    :cond_2
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 126
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 127
    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0d00c1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 128
    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0d00c2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f0801bb

    .line 129
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/yftech/settings/widget/Switcher;

    iput-object p1, p0, Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment;->mSwRememberDrivingMode:Lcom/yftech/settings/widget/Switcher;

    .line 130
    iget-object p1, p0, Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment;->mSwRememberDrivingMode:Lcom/yftech/settings/widget/Switcher;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yftech/settings/widget/Switcher;->setTag(Ljava/lang/Object;)V

    .line 131
    iget-object p1, p0, Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment;->mSwRememberDrivingMode:Lcom/yftech/settings/widget/Switcher;

    invoke-virtual {p1, p0}, Lcom/yftech/settings/widget/Switcher;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 132
    iget-object p1, p0, Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment;->mSwRememberDrivingMode:Lcom/yftech/settings/widget/Switcher;

    invoke-virtual {p1, p0}, Lcom/yftech/settings/widget/Switcher;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_3
    return-void
.end method

.method private setSwitcherView(Lcom/yftech/settings/manager/CarDriveModeManager$Function;Z)V
    .locals 1

    .line 207
    sget-object v0, Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment$3;->$SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 209
    :cond_0
    iget-object p0, p0, Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment;->mSwRememberDrivingMode:Lcom/yftech/settings/widget/Switcher;

    :goto_0
    if-eqz p0, :cond_2

    .line 215
    invoke-virtual {p0}, Lcom/yftech/settings/widget/Switcher;->isChecked()Z

    move-result p1

    if-ne p1, p2, :cond_1

    return-void

    .line 218
    :cond_1
    invoke-virtual {p0, p2}, Lcom/yftech/settings/widget/Switcher;->setChecked(Z)V

    :cond_2
    return-void
.end method

.method private setValueView(Lcom/yftech/settings/manager/CarAssistantManager$Function;Ljava/lang/Object;)V
    .locals 1

    .line 192
    sget-object v0, Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment$3;->$SwitchMap$com$yftech$settings$manager$CarAssistantManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/CarAssistantManager$Function;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 194
    :cond_0
    move-object p1, p2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    div-int/lit8 p1, p1, 0xa

    .line 195
    iget-object v0, p0, Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment;->mSpeedRemindeSB:Lcom/yftech/settings/widget/SeekBarNumber;

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment;->mSpeedRemindeSB:Lcom/yftech/settings/widget/SeekBarNumber;

    invoke-virtual {v0, p1}, Lcom/yftech/settings/widget/SeekBarNumber;->setProgress(I)V

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment;->mTvSpeedReminder:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 199
    iget-object v0, p0, Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment;->mTvSpeedReminder:Landroid/widget/TextView;

    if-lez p1, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "km/h"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const p1, 0x7f0d005b

    invoke-virtual {p0, p1}, Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method protected dismissAllDialog()V
    .locals 0

    .line 224
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->dismissAllDialog()V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 175
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isPressed()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 178
    :cond_0
    sget-object p0, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->UNKNOWN:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    .line 179
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v0, 0x7f08008b

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 181
    :cond_1
    sget-object p0, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->REMEMBER_DRIVING_MODE_ENABLED:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    .line 186
    :goto_0
    sget-object p1, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->UNKNOWN:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    if-eq p0, p1, :cond_2

    .line 187
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

    const p3, 0x7f0a0032

    const/4 v0, 0x0

    .line 81
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 82
    invoke-direct {p0, p1}, Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method public onPause()V
    .locals 2

    .line 97
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onPause()V

    .line 98
    invoke-static {}, Lcom/yftech/settings/manager/CarAssistantManager;->getInstance()Lcom/yftech/settings/manager/CarAssistantManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment;->mCarAssistantModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarAssistantManager;->unregisterModelCallback(Lcom/yftech/settings/manager/BaseManager$ModelCallback;)V

    .line 99
    invoke-static {}, Lcom/yftech/settings/manager/CarAssistantManager;->getInstance()Lcom/yftech/settings/manager/CarAssistantManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->STOP_TIMEOUT_ACTION:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarAssistantManager;->setAction(Lcom/yftech/settings/manager/CarAssistantManager$Function;)Z

    .line 101
    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment;->mCarDriveModeModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/manager/CarDriveModeManager;->unregisterModelCallback(Lcom/yftech/settings/manager/BaseManager$ModelCallback;)V

    .line 102
    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->STOP_TIMEOUT_ACTION:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {p0, v0}, Lcom/yftech/settings/manager/CarDriveModeManager;->setAction(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)Z

    return-void
.end method

.method public onProgressChanged(Lcom/yftech/settings/widget/SeekBarNumber;I)V
    .locals 3

    .line 156
    invoke-virtual {p1}, Lcom/yftech/settings/widget/SeekBarNumber;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v0, 0x7f080028

    if-ne p1, v0, :cond_1

    mul-int/lit8 p1, p2, 0xa

    .line 162
    invoke-static {}, Lcom/yftech/settings/manager/CarAssistantManager;->getInstance()Lcom/yftech/settings/manager/CarAssistantManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->SPEED_WARNING_VALUE:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yftech/settings/manager/CarAssistantManager;->setValue(Lcom/yftech/settings/manager/CarAssistantManager$Function;Ljava/lang/Object;)Z

    .line 163
    iget-object v0, p0, Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment;->mTvSpeedReminder:Landroid/widget/TextView;

    if-lez p2, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "km/h"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const p1, 0x7f0d005b

    invoke-virtual {p0, p1}, Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 88
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onResume()V

    .line 89
    invoke-direct {p0}, Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment;->initAssistantViewData()V

    .line 90
    invoke-direct {p0}, Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment;->initDriveModeViewData()V

    .line 91
    invoke-static {}, Lcom/yftech/settings/manager/CarAssistantManager;->getInstance()Lcom/yftech/settings/manager/CarAssistantManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment;->mCarAssistantModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarAssistantManager;->registerModelCallback(Lcom/yftech/settings/manager/BaseManager$ModelCallback;)V

    .line 92
    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment;->mCarDriveModeModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/manager/CarDriveModeManager;->registerModelCallback(Lcom/yftech/settings/manager/BaseManager$ModelCallback;)V

    return-void
.end method

.method public onStartTrackingTouch(Lcom/yftech/settings/widget/SeekBarNumber;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Lcom/yftech/settings/widget/SeekBarNumber;)V
    .locals 0

    return-void
.end method
