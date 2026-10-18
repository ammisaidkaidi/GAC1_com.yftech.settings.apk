.class public Lcom/yftech/settings/system/SystemBasicFragment;
.super Lcom/yftech/settings/BaseFragment;
.source "SystemBasicFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final COUNTS:I = 0xa


# instance fields
.field private mClickCount:I

.field private mSw24Hour:Lcom/yftech/settings/widget/Switcher;

.field private mTimeChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mTimeSettingDialog:Lcom/yftech/settings/widget/dialog/TimeSettingDialog;

.field private mTvTime:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/yftech/settings/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/yftech/settings/system/SystemBasicFragment;->mClickCount:I

    .line 37
    new-instance v0, Lcom/yftech/settings/system/SystemBasicFragment$1;

    invoke-direct {v0, p0}, Lcom/yftech/settings/system/SystemBasicFragment$1;-><init>(Lcom/yftech/settings/system/SystemBasicFragment;)V

    iput-object v0, p0, Lcom/yftech/settings/system/SystemBasicFragment;->mTimeChangeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/settings/system/SystemBasicFragment;)Landroid/widget/TextView;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/yftech/settings/system/SystemBasicFragment;->mTvTime:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/yftech/settings/system/SystemBasicFragment;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/yftech/settings/system/SystemBasicFragment;->mClickCount:I

    return p0
.end method

.method static synthetic access$102(Lcom/yftech/settings/system/SystemBasicFragment;I)I
    .locals 0

    .line 27
    iput p1, p0, Lcom/yftech/settings/system/SystemBasicFragment;->mClickCount:I

    return p1
.end method

.method static synthetic access$108(Lcom/yftech/settings/system/SystemBasicFragment;)I
    .locals 2

    .line 27
    iget v0, p0, Lcom/yftech/settings/system/SystemBasicFragment;->mClickCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/yftech/settings/system/SystemBasicFragment;->mClickCount:I

    return v0
.end method

.method static synthetic access$202(Lcom/yftech/settings/system/SystemBasicFragment;Lcom/yftech/settings/widget/dialog/TimeSettingDialog;)Lcom/yftech/settings/widget/dialog/TimeSettingDialog;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/yftech/settings/system/SystemBasicFragment;->mTimeSettingDialog:Lcom/yftech/settings/widget/dialog/TimeSettingDialog;

    return-object p1
.end method

.method private initView(Landroid/view/View;)V
    .locals 5

    const v0, 0x7f0801bd

    .line 67
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x7f080218

    .line 68
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0d0185

    .line 69
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 71
    invoke-static {}, Lcom/yftech/settings/utils/Utils;->isRightDrive()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 72
    new-instance v4, Lcom/yftech/settings/system/SystemBasicFragment$2;

    invoke-direct {v4, p0}, Lcom/yftech/settings/system/SystemBasicFragment$2;-><init>(Lcom/yftech/settings/system/SystemBasicFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v3, 0x7f0801fd

    .line 84
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/yftech/settings/system/SystemBasicFragment;->mTvTime:Landroid/widget/TextView;

    const v3, 0x7f080070

    .line 88
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const/4 v3, 0x0

    .line 89
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 90
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f0d0186

    .line 91
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    .line 92
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0801bc

    .line 95
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 96
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0d0181

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f0801bb

    .line 97
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/yftech/settings/widget/Switcher;

    iput-object p1, p0, Lcom/yftech/settings/system/SystemBasicFragment;->mSw24Hour:Lcom/yftech/settings/widget/Switcher;

    .line 98
    iget-object p1, p0, Lcom/yftech/settings/system/SystemBasicFragment;->mSw24Hour:Lcom/yftech/settings/widget/Switcher;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yftech/settings/widget/Switcher;->setTag(Ljava/lang/Object;)V

    .line 99
    iget-object p1, p0, Lcom/yftech/settings/system/SystemBasicFragment;->mSw24Hour:Lcom/yftech/settings/widget/Switcher;

    invoke-virtual {p1, p0}, Lcom/yftech/settings/widget/Switcher;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private initViewData()V
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/yftech/settings/system/SystemBasicFragment;->mTvTime:Landroid/widget/TextView;

    invoke-static {}, Lcom/yftech/settings/manager/SettingsManager;->getInstance()Lcom/yftech/settings/manager/SettingsManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yftech/settings/system/SystemBasicFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/SettingsManager;->getCurTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v0, p0, Lcom/yftech/settings/system/SystemBasicFragment;->mSw24Hour:Lcom/yftech/settings/widget/Switcher;

    invoke-static {}, Lcom/yftech/settings/manager/SettingsManager;->getInstance()Lcom/yftech/settings/manager/SettingsManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yftech/settings/system/SystemBasicFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/yftech/settings/manager/SettingsManager;->get24HourFormatState(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/yftech/settings/widget/Switcher;->setChecked(Z)V

    return-void
.end method

.method private registerReceivers()V
    .locals 2

    .line 122
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_TICK"

    .line 123
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    .line 124
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lcom/yftech/settings/system/SystemBasicFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/yftech/settings/system/SystemBasicFragment;->mTimeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private showTimeSettingDialog()V
    .locals 2

    .line 150
    new-instance v0, Lcom/yftech/settings/widget/dialog/TimeSettingDialog;

    invoke-virtual {p0}, Lcom/yftech/settings/system/SystemBasicFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yftech/settings/widget/dialog/TimeSettingDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yftech/settings/system/SystemBasicFragment;->mTimeSettingDialog:Lcom/yftech/settings/widget/dialog/TimeSettingDialog;

    .line 151
    iget-object v0, p0, Lcom/yftech/settings/system/SystemBasicFragment;->mTimeSettingDialog:Lcom/yftech/settings/widget/dialog/TimeSettingDialog;

    new-instance v1, Lcom/yftech/settings/system/SystemBasicFragment$3;

    invoke-direct {v1, p0}, Lcom/yftech/settings/system/SystemBasicFragment$3;-><init>(Lcom/yftech/settings/system/SystemBasicFragment;)V

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/dialog/TimeSettingDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 157
    iget-object p0, p0, Lcom/yftech/settings/system/SystemBasicFragment;->mTimeSettingDialog:Lcom/yftech/settings/widget/dialog/TimeSettingDialog;

    invoke-virtual {p0}, Lcom/yftech/settings/widget/dialog/TimeSettingDialog;->show()V

    return-void
.end method

.method private unregisterReceivers()V
    .locals 1

    .line 129
    invoke-virtual {p0}, Lcom/yftech/settings/system/SystemBasicFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/settings/system/SystemBasicFragment;->mTimeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method protected dismissAllDialog()V
    .locals 1

    .line 162
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->dismissAllDialog()V

    .line 163
    iget-object v0, p0, Lcom/yftech/settings/system/SystemBasicFragment;->mTimeSettingDialog:Lcom/yftech/settings/widget/dialog/TimeSettingDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/settings/system/SystemBasicFragment;->mTimeSettingDialog:Lcom/yftech/settings/widget/dialog/TimeSettingDialog;

    invoke-virtual {v0}, Lcom/yftech/settings/widget/dialog/TimeSettingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/yftech/settings/system/SystemBasicFragment;->mTimeSettingDialog:Lcom/yftech/settings/widget/dialog/TimeSettingDialog;

    invoke-virtual {v0}, Lcom/yftech/settings/widget/dialog/TimeSettingDialog;->dismiss()V

    const/4 v0, 0x0

    .line 165
    iput-object v0, p0, Lcom/yftech/settings/system/SystemBasicFragment;->mTimeSettingDialog:Lcom/yftech/settings/widget/dialog/TimeSettingDialog;

    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 141
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isPressed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 144
    :cond_0
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v0, 0x7f0801bc

    if-ne p1, v0, :cond_1

    .line 145
    invoke-static {}, Lcom/yftech/settings/manager/SettingsManager;->getInstance()Lcom/yftech/settings/manager/SettingsManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/yftech/settings/system/SystemBasicFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Lcom/yftech/settings/manager/SettingsManager;->set24HourFormatState(Landroid/content/Context;Z)V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 134
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v0, 0x7f0801bd

    if-ne p1, v0, :cond_0

    .line 135
    invoke-direct {p0}, Lcom/yftech/settings/system/SystemBasicFragment;->showTimeSettingDialog()V

    :cond_0
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

    const p3, 0x7f0a0048

    const/4 v0, 0x0

    .line 60
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 61
    invoke-direct {p0, p1}, Lcom/yftech/settings/system/SystemBasicFragment;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method public onPause()V
    .locals 0

    .line 112
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onPause()V

    .line 113
    invoke-direct {p0}, Lcom/yftech/settings/system/SystemBasicFragment;->unregisterReceivers()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 104
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onResume()V

    const/4 v0, 0x0

    .line 105
    iput v0, p0, Lcom/yftech/settings/system/SystemBasicFragment;->mClickCount:I

    .line 106
    invoke-direct {p0}, Lcom/yftech/settings/system/SystemBasicFragment;->initViewData()V

    .line 107
    invoke-direct {p0}, Lcom/yftech/settings/system/SystemBasicFragment;->registerReceivers()V

    return-void
.end method
