.class public Lcom/yftech/settings/system/SystemVehicleInfoFragment;
.super Lcom/yftech/settings/BaseFragment;
.source "SystemVehicleInfoFragment.java"

# interfaces
.implements Lcom/yftech/settings/widget/MultiSelectView$OnSwitchListener;


# static fields
.field private static final COUNTS:I = 0xa

.field private static final TAG:Ljava/lang/String; = "SystemVehicleInfoFragment"

.field private static mInstance:Lcom/yftech/settings/system/SystemVehicleInfoFragment;


# instance fields
.field private language:[Ljava/lang/String;

.field private mClickLogCount:I

.field private mSmbCurrentLanguage:Lcom/yftech/settings/widget/MultiSelectView;

.field private mTvCurrentLanguage:Landroid/widget/TextView;

.field private mTvHardwareVersion:Landroid/widget/TextView;

.field private mTvSerialNumber:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/yftech/settings/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/yftech/settings/system/SystemVehicleInfoFragment;->mClickLogCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/settings/system/SystemVehicleInfoFragment;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/yftech/settings/system/SystemVehicleInfoFragment;->mClickLogCount:I

    return p0
.end method

.method static synthetic access$002(Lcom/yftech/settings/system/SystemVehicleInfoFragment;I)I
    .locals 0

    .line 30
    iput p1, p0, Lcom/yftech/settings/system/SystemVehicleInfoFragment;->mClickLogCount:I

    return p1
.end method

.method static synthetic access$008(Lcom/yftech/settings/system/SystemVehicleInfoFragment;)I
    .locals 2

    .line 30
    iget v0, p0, Lcom/yftech/settings/system/SystemVehicleInfoFragment;->mClickLogCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/yftech/settings/system/SystemVehicleInfoFragment;->mClickLogCount:I

    return v0
.end method

.method private initView(Landroid/view/View;)V
    .locals 8

    const v0, 0x7f0801bf

    .line 62
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0801c8

    .line 64
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 65
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isGACLogoPresent()Z

    move-result v2

    const/16 v3, 0x8

    const v4, 0x7f0801fd

    const v5, 0x7f080218

    if-eqz v2, :cond_0

    .line 66
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v6, 0x7f0d018c

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    .line 67
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v2, "GAC"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0d018d

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 69
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "A79-G"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 72
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    const v0, 0x7f0801c1

    .line 76
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 77
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0d018f

    .line 78
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 79
    new-instance v2, Lcom/yftech/settings/system/SystemVehicleInfoFragment$1;

    invoke-direct {v2, p0}, Lcom/yftech/settings/system/SystemVehicleInfoFragment$1;-><init>(Lcom/yftech/settings/system/SystemVehicleInfoFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/settings/system/SystemVehicleInfoFragment;->mTvSerialNumber:Landroid/widget/TextView;

    const v0, 0x7f0801be

    .line 95
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 96
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0d018b

    .line 97
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 98
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/settings/system/SystemVehicleInfoFragment;->mTvHardwareVersion:Landroid/widget/TextView;

    const v0, 0x7f0801c4

    .line 101
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 102
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0d0188

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 103
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/yftech/settings/system/SystemVehicleInfoFragment;->mTvCurrentLanguage:Landroid/widget/TextView;

    const v1, 0x7f0801c5

    .line 106
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 107
    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(I)V

    const v2, 0x7f080158

    .line 108
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/yftech/settings/widget/MultiSelectView;

    iput-object v2, p0, Lcom/yftech/settings/system/SystemVehicleInfoFragment;->mSmbCurrentLanguage:Lcom/yftech/settings/widget/MultiSelectView;

    .line 109
    iget-object v2, p0, Lcom/yftech/settings/system/SystemVehicleInfoFragment;->mSmbCurrentLanguage:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/yftech/settings/widget/MultiSelectView;->setTag(Ljava/lang/Object;)V

    .line 112
    invoke-static {}, Lcom/yftech/settings/utils/Utils;->isRightDrive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    iget-object v1, p0, Lcom/yftech/settings/system/SystemVehicleInfoFragment;->mSmbCurrentLanguage:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-virtual {p0}, Lcom/yftech/settings/system/SystemVehicleInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v7, 0x7f020028

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yftech/settings/widget/MultiSelectView;->setText([Ljava/lang/String;)Lcom/yftech/settings/widget/MultiSelectView;

    goto :goto_1

    .line 115
    :cond_1
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->getVehiclePlatform()Lcom/yftech/vehicle/internal/adapter/ICarConfig$VehiclePlatform;

    move-result-object v1

    sget-object v2, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VehiclePlatform;->CS112:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VehiclePlatform;

    if-ne v1, v2, :cond_2

    .line 116
    iget-object v1, p0, Lcom/yftech/settings/system/SystemVehicleInfoFragment;->mSmbCurrentLanguage:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-virtual {p0}, Lcom/yftech/settings/system/SystemVehicleInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v7, 0x7f020027

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yftech/settings/widget/MultiSelectView;->setText([Ljava/lang/String;)Lcom/yftech/settings/widget/MultiSelectView;

    goto :goto_1

    .line 118
    :cond_2
    iget-object v1, p0, Lcom/yftech/settings/system/SystemVehicleInfoFragment;->mSmbCurrentLanguage:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-virtual {p0}, Lcom/yftech/settings/system/SystemVehicleInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v7, 0x7f020026

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yftech/settings/widget/MultiSelectView;->setText([Ljava/lang/String;)Lcom/yftech/settings/widget/MultiSelectView;

    .line 122
    :goto_1
    iget-object v1, p0, Lcom/yftech/settings/system/SystemVehicleInfoFragment;->mSmbCurrentLanguage:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-virtual {v1, p0}, Lcom/yftech/settings/widget/MultiSelectView;->setOnSwitchListener(Lcom/yftech/settings/widget/MultiSelectView$OnSwitchListener;)Lcom/yftech/settings/widget/MultiSelectView;

    .line 125
    invoke-static {}, Lcom/yftech/vehicle/sdk/HostConfig;->getLanguage()Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    move-result-object p0

    .line 126
    sget-object v1, Lcom/yftech/settings/system/SystemVehicleInfoFragment$2;->$SwitchMap$com$yftech$vehicle$internal$adapter$IHostConfig$Language:[I

    invoke-virtual {p0}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    goto :goto_2

    .line 128
    :cond_3
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 129
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_2
    const p0, 0x7f0801c6

    .line 143
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    .line 144
    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f0d0192

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 145
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const p1, 0x7f0d0193

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private initViewData()V
    .locals 3

    .line 176
    invoke-static {}, Lcom/yftech/settings/utils/Utils;->isRightDrive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/yftech/settings/system/SystemVehicleInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/settings/system/SystemVehicleInfoFragment;->language:[Ljava/lang/String;

    goto :goto_0

    .line 179
    :cond_0
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->getVehiclePlatform()Lcom/yftech/vehicle/internal/adapter/ICarConfig$VehiclePlatform;

    move-result-object v0

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VehiclePlatform;->CS112:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VehiclePlatform;

    if-ne v0, v1, :cond_1

    .line 180
    invoke-virtual {p0}, Lcom/yftech/settings/system/SystemVehicleInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/settings/system/SystemVehicleInfoFragment;->language:[Ljava/lang/String;

    goto :goto_0

    .line 182
    :cond_1
    invoke-virtual {p0}, Lcom/yftech/settings/system/SystemVehicleInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/settings/system/SystemVehicleInfoFragment;->language:[Ljava/lang/String;

    .line 185
    :goto_0
    iget-object v0, p0, Lcom/yftech/settings/system/SystemVehicleInfoFragment;->mTvSerialNumber:Landroid/widget/TextView;

    invoke-static {}, Lcom/yftech/settings/manager/SettingsManager;->getInstance()Lcom/yftech/settings/manager/SettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/settings/manager/SettingsManager;->getSerialNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v0, p0, Lcom/yftech/settings/system/SystemVehicleInfoFragment;->mTvHardwareVersion:Landroid/widget/TextView;

    invoke-static {}, Lcom/yftech/settings/manager/SettingsManager;->getInstance()Lcom/yftech/settings/manager/SettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/settings/manager/SettingsManager;->getHardwareVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    invoke-static {}, Lcom/yftech/settings/manager/SettingsManager;->getInstance()Lcom/yftech/settings/manager/SettingsManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/SettingsManager$Function;->LANGUAGE_SETTING_OPTION:Lcom/yftech/settings/manager/SettingsManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/SettingsManager;->getOption(Lcom/yftech/settings/manager/SettingsManager$Function;)I

    move-result v0

    if-ltz v0, :cond_2

    .line 188
    iget-object v1, p0, Lcom/yftech/settings/system/SystemVehicleInfoFragment;->language:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 189
    iget-object v1, p0, Lcom/yftech/settings/system/SystemVehicleInfoFragment;->mTvCurrentLanguage:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yftech/settings/system/SystemVehicleInfoFragment;->language:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    sget-object v1, Lcom/yftech/settings/manager/SettingsManager$Function;->LANGUAGE_SETTING_OPTION:Lcom/yftech/settings/manager/SettingsManager$Function;

    invoke-direct {p0, v1, v0}, Lcom/yftech/settings/system/SystemVehicleInfoFragment;->setSwitchMultiButtonView(Lcom/yftech/settings/manager/SettingsManager$Function;I)V

    :cond_2
    return-void
.end method

.method private setSwitchMultiButtonView(Lcom/yftech/settings/manager/SettingsManager$Function;I)V
    .locals 1

    .line 213
    sget-object v0, Lcom/yftech/settings/system/SystemVehicleInfoFragment$2;->$SwitchMap$com$yftech$settings$manager$SettingsManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/SettingsManager$Function;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 215
    :cond_0
    iget-object p0, p0, Lcom/yftech/settings/system/SystemVehicleInfoFragment;->mSmbCurrentLanguage:Lcom/yftech/settings/widget/MultiSelectView;

    :goto_0
    if-eqz p0, :cond_2

    .line 221
    invoke-virtual {p0}, Lcom/yftech/settings/widget/MultiSelectView;->getTabNum()I

    move-result p1

    if-ne p1, p2, :cond_1

    return-void

    .line 224
    :cond_1
    invoke-virtual {p0, p2}, Lcom/yftech/settings/widget/MultiSelectView;->setSelectedTab(I)Lcom/yftech/settings/widget/MultiSelectView;

    :cond_2
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const p3, 0x7f0a004b

    const/4 v0, 0x0

    .line 55
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 56
    invoke-direct {p0, p1}, Lcom/yftech/settings/system/SystemVehicleInfoFragment;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 171
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onDestroy()V

    const-string p0, "SystemVehicleInfoFragment"

    const-string v0, "onDestroy: "

    .line 172
    invoke-static {p0, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 159
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onPause()V

    const-string p0, "SystemVehicleInfoFragment"

    const-string v0, "onPause: "

    .line 160
    invoke-static {p0, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 151
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onResume()V

    const/4 v0, 0x0

    .line 152
    iput v0, p0, Lcom/yftech/settings/system/SystemVehicleInfoFragment;->mClickLogCount:I

    .line 153
    invoke-direct {p0}, Lcom/yftech/settings/system/SystemVehicleInfoFragment;->initViewData()V

    const-string p0, "SystemVehicleInfoFragment"

    const-string v0, "onResume: "

    .line 154
    invoke-static {p0, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 165
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onStop()V

    const-string p0, "SystemVehicleInfoFragment"

    const-string v0, "onStop: "

    .line 166
    invoke-static {p0, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSwitch(Lcom/yftech/settings/widget/MultiSelectView;ILjava/lang/String;Z)V
    .locals 0

    if-nez p4, :cond_0

    return-void

    .line 199
    :cond_0
    sget-object p3, Lcom/yftech/settings/manager/SettingsManager$Function;->UNKNOWN:Lcom/yftech/settings/manager/SettingsManager$Function;

    .line 200
    invoke-virtual {p1}, Lcom/yftech/settings/widget/MultiSelectView;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const p4, 0x7f0801c5

    if-eq p1, p4, :cond_1

    goto :goto_0

    .line 202
    :cond_1
    sget-object p3, Lcom/yftech/settings/manager/SettingsManager$Function;->LANGUAGE_SETTING_OPTION:Lcom/yftech/settings/manager/SettingsManager$Function;

    .line 203
    invoke-virtual {p0}, Lcom/yftech/settings/system/SystemVehicleInfoFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "com.yftech.settings.language_change"

    const/4 p4, 0x1

    invoke-static {p0, p1, p4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 206
    :goto_0
    sget-object p0, Lcom/yftech/settings/manager/SettingsManager$Function;->UNKNOWN:Lcom/yftech/settings/manager/SettingsManager$Function;

    if-eq p3, p0, :cond_2

    .line 207
    invoke-static {}, Lcom/yftech/settings/manager/SettingsManager;->getInstance()Lcom/yftech/settings/manager/SettingsManager;

    move-result-object p0

    invoke-virtual {p0, p3, p2}, Lcom/yftech/settings/manager/SettingsManager;->setOption(Lcom/yftech/settings/manager/SettingsManager$Function;I)Z

    :cond_2
    return-void
.end method
