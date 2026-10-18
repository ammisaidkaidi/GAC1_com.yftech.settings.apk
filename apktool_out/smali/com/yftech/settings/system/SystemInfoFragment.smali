.class public Lcom/yftech/settings/system/SystemInfoFragment;
.super Lcom/yftech/settings/BaseFragment;
.source "SystemInfoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final FLAG_SYS_RESTORE_FACTORY:Ljava/lang/String; = "system_info_restore_factory"

.field private static final FLAG_SYS_VERSION:Ljava/lang/String; = "system_version"

.field private static final TAG:Ljava/lang/String; = "SystemInfoFragment"

.field private static mInstance:Lcom/yftech/settings/system/SystemInfoFragment;


# instance fields
.field private clickCount:I

.field private mFactoryDialog:Lcom/yftech/settings/widget/dialog/FactoryDialog;

.field private mFlag:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mTvHardwareVersion:Landroid/widget/TextView;

.field private mTvSerialNumber:Landroid/widget/TextView;

.field private mTvSystemVersion:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/yftech/settings/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/yftech/settings/system/SystemInfoFragment;->clickCount:I

    const-string v0, "init"

    .line 43
    iput-object v0, p0, Lcom/yftech/settings/system/SystemInfoFragment;->mFlag:Ljava/lang/String;

    .line 54
    new-instance v0, Lcom/yftech/settings/system/SystemInfoFragment$1;

    invoke-direct {v0, p0}, Lcom/yftech/settings/system/SystemInfoFragment$1;-><init>(Lcom/yftech/settings/system/SystemInfoFragment;)V

    iput-object v0, p0, Lcom/yftech/settings/system/SystemInfoFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/settings/system/SystemInfoFragment;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/yftech/settings/system/SystemInfoFragment;->clickCount:I

    return p0
.end method

.method static synthetic access$002(Lcom/yftech/settings/system/SystemInfoFragment;I)I
    .locals 0

    .line 30
    iput p1, p0, Lcom/yftech/settings/system/SystemInfoFragment;->clickCount:I

    return p1
.end method

.method static synthetic access$100(Lcom/yftech/settings/system/SystemInfoFragment;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/yftech/settings/system/SystemInfoFragment;->startFota()V

    return-void
.end method

.method static synthetic access$200(Lcom/yftech/settings/system/SystemInfoFragment;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/yftech/settings/system/SystemInfoFragment;->startAppLuanch()V

    return-void
.end method

.method static synthetic access$300(Lcom/yftech/settings/system/SystemInfoFragment;)Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/yftech/settings/system/SystemInfoFragment;->mFlag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lcom/yftech/settings/system/SystemInfoFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/yftech/settings/system/SystemInfoFragment;->mFlag:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/yftech/settings/system/SystemInfoFragment;Lcom/yftech/settings/widget/dialog/FactoryDialog;)Lcom/yftech/settings/widget/dialog/FactoryDialog;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/yftech/settings/system/SystemInfoFragment;->mFactoryDialog:Lcom/yftech/settings/widget/dialog/FactoryDialog;

    return-object p1
.end method

.method private initView(Landroid/view/View;)V
    .locals 7

    const v0, 0x7f0801c7

    .line 94
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f080218

    .line 95
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0d0196

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 97
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/yftech/settings/system/SystemInfoFragment$2;

    invoke-direct {v3, p0}, Lcom/yftech/settings/system/SystemInfoFragment$2;-><init>(Lcom/yftech/settings/system/SystemInfoFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 110
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/yftech/settings/system/SystemInfoFragment$3;

    invoke-direct {v3, p0}, Lcom/yftech/settings/system/SystemInfoFragment$3;-><init>(Lcom/yftech/settings/system/SystemInfoFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0801fd

    .line 122
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/settings/system/SystemInfoFragment;->mTvSystemVersion:Landroid/widget/TextView;

    const v0, 0x7f0801c1

    .line 125
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 126
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0d018f

    .line 127
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 128
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/settings/system/SystemInfoFragment;->mTvSerialNumber:Landroid/widget/TextView;

    const v0, 0x7f0801be

    .line 131
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 132
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0d018b

    .line 133
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 134
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/settings/system/SystemInfoFragment;->mTvHardwareVersion:Landroid/widget/TextView;

    const v0, 0x7f0801c2

    .line 137
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v3, 0x7f08016f

    .line 138
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 139
    invoke-static {}, Lcom/yftech/settings/manager/SettingsManager;->getInstance()Lcom/yftech/settings/manager/SettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yftech/settings/manager/SettingsManager;->getStorageSpaceSize()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    const v0, 0x7f0801c3

    .line 142
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 143
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0d0191

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    const v4, 0x7f080070

    .line 144
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 145
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f0d0198

    .line 146
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setText(I)V

    .line 147
    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0801c4

    .line 150
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 151
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v5, 0x7f0d0188

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 152
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f0d0189

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0801c6

    .line 155
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 156
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v5, 0x7f0d0192

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 157
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f0d0193

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0801c0

    .line 160
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 161
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0d018e

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 162
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 163
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f0d0197

    .line 164
    invoke-virtual {v4, v0}, Landroid/widget/Button;->setText(I)V

    .line 165
    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/yftech/settings/system/SystemInfoFragment$4;

    invoke-direct {v3, p0}, Lcom/yftech/settings/system/SystemInfoFragment$4;-><init>(Lcom/yftech/settings/system/SystemInfoFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p0, 0x7f0801bf

    .line 180
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    .line 181
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v3, "\u5236\u9020\u5546"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const-string v0, "GAC"

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p0, 0x7f0801c8

    .line 185
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    .line 186
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, "\u578b\u53f7"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const-string p1, "A79"

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initViewData()V
    .locals 4

    .line 202
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isGACLogoPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/yftech/settings/system/SystemInfoFragment;->mTvSystemVersion:Landroid/widget/TextView;

    invoke-static {}, Lcom/yftech/settings/manager/SettingsManager;->getInstance()Lcom/yftech/settings/manager/SettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/settings/manager/SettingsManager;->getSystemVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/yftech/settings/system/SystemInfoFragment;->mTvSystemVersion:Landroid/widget/TextView;

    invoke-static {}, Lcom/yftech/settings/manager/SettingsManager;->getInstance()Lcom/yftech/settings/manager/SettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/settings/manager/SettingsManager;->getSystemVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "A79_G_"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    :goto_0
    iget-object v0, p0, Lcom/yftech/settings/system/SystemInfoFragment;->mTvSerialNumber:Landroid/widget/TextView;

    invoke-static {}, Lcom/yftech/settings/manager/SettingsManager;->getInstance()Lcom/yftech/settings/manager/SettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/settings/manager/SettingsManager;->getSerialNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object p0, p0, Lcom/yftech/settings/system/SystemInfoFragment;->mTvHardwareVersion:Landroid/widget/TextView;

    invoke-static {}, Lcom/yftech/settings/manager/SettingsManager;->getInstance()Lcom/yftech/settings/manager/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/settings/manager/SettingsManager;->getHardwareVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showFactoryDialog()V
    .locals 2

    .line 227
    new-instance v0, Lcom/yftech/settings/widget/dialog/FactoryDialog;

    invoke-virtual {p0}, Lcom/yftech/settings/system/SystemInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yftech/settings/widget/dialog/FactoryDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yftech/settings/system/SystemInfoFragment;->mFactoryDialog:Lcom/yftech/settings/widget/dialog/FactoryDialog;

    .line 228
    iget-object v0, p0, Lcom/yftech/settings/system/SystemInfoFragment;->mFactoryDialog:Lcom/yftech/settings/widget/dialog/FactoryDialog;

    new-instance v1, Lcom/yftech/settings/system/SystemInfoFragment$5;

    invoke-direct {v1, p0}, Lcom/yftech/settings/system/SystemInfoFragment$5;-><init>(Lcom/yftech/settings/system/SystemInfoFragment;)V

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/dialog/FactoryDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 234
    iget-object p0, p0, Lcom/yftech/settings/system/SystemInfoFragment;->mFactoryDialog:Lcom/yftech/settings/widget/dialog/FactoryDialog;

    invoke-virtual {p0}, Lcom/yftech/settings/widget/dialog/FactoryDialog;->show()V

    return-void
.end method

.method private startAppLuanch()V
    .locals 4

    .line 243
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 244
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.hh.luanch"

    const-string v3, "com.hh.luanch.MainActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 245
    invoke-virtual {p0, v0}, Lcom/yftech/settings/system/SystemInfoFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 247
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private startFota()V
    .locals 4

    .line 69
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 70
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.yftech.upgrade"

    const-string v3, "com.yftech.upgrade.app.MainActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 71
    invoke-virtual {p0, v0}, Lcom/yftech/settings/system/SystemInfoFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 73
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected dismissAllDialog()V
    .locals 1

    .line 253
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->dismissAllDialog()V

    .line 254
    iget-object v0, p0, Lcom/yftech/settings/system/SystemInfoFragment;->mFactoryDialog:Lcom/yftech/settings/widget/dialog/FactoryDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/settings/system/SystemInfoFragment;->mFactoryDialog:Lcom/yftech/settings/widget/dialog/FactoryDialog;

    invoke-virtual {v0}, Lcom/yftech/settings/widget/dialog/FactoryDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/yftech/settings/system/SystemInfoFragment;->mFactoryDialog:Lcom/yftech/settings/widget/dialog/FactoryDialog;

    invoke-virtual {v0}, Lcom/yftech/settings/widget/dialog/FactoryDialog;->dismiss()V

    const/4 v0, 0x0

    .line 256
    iput-object v0, p0, Lcom/yftech/settings/system/SystemInfoFragment;->mFactoryDialog:Lcom/yftech/settings/widget/dialog/FactoryDialog;

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 213
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v0, 0x7f0801c0

    if-eq p1, v0, :cond_1

    const p0, 0x7f0801c3

    if-eq p1, p0, :cond_0

    goto :goto_0

    .line 215
    :cond_0
    invoke-static {}, Lcom/yftech/settings/manager/SettingsManager;->getInstance()Lcom/yftech/settings/manager/SettingsManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/settings/manager/SettingsManager;->cleanStorageSpace()V

    goto :goto_0

    .line 218
    :cond_1
    invoke-direct {p0}, Lcom/yftech/settings/system/SystemInfoFragment;->showFactoryDialog()V

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

    const p3, 0x7f0a0049

    const/4 v0, 0x0

    .line 87
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 88
    invoke-direct {p0, p1}, Lcom/yftech/settings/system/SystemInfoFragment;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method public onPause()V
    .locals 0

    .line 198
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 192
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onResume()V

    .line 193
    invoke-direct {p0}, Lcom/yftech/settings/system/SystemInfoFragment;->initViewData()V

    return-void
.end method

.method public setCountDown()V
    .locals 3

    const-string v0, "SystemInfoFragment"

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCountDown: clickCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yftech/settings/system/SystemInfoFragment;->clickCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 80
    iget v1, p0, Lcom/yftech/settings/system/SystemInfoFragment;->clickCount:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 81
    iget-object p0, p0, Lcom/yftech/settings/system/SystemInfoFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
