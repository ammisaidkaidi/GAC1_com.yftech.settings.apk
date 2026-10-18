.class public Lcom/yftech/settings/parts/CarPartsMoreFragment;
.super Lcom/yftech/settings/BaseFragment;
.source "CarPartsMoreFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/yftech/settings/widget/MultiSelectView$OnSwitchListener;


# static fields
.field private static final STEERING_WHEEL_ASTERISK_KEY_PHONE_INDEX:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CarPartsMoreFragment"


# instance fields
.field private isShowPhoneNumber:Z

.field private keyboardNumView:Lcom/yftech/settings/widget/OneClickPhoneNumberSettingView;

.field private mCarPartsModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yftech/settings/manager/BaseManager$ModelCallback<",
            "Lcom/yftech/settings/manager/CarPartsManager$Function;",
            ">;"
        }
    .end annotation
.end field

.field private mOneClickPhoneNumberSetting:Landroid/widget/LinearLayout;

.field private mSWAsteriskKey:Lcom/yftech/settings/widget/MultiSelectView;

.field private mSwAtuoWiper:Lcom/yftech/settings/widget/Switcher;

.field private mSwConvenientCarSearch:Lcom/yftech/settings/widget/Switcher;

.field private mSwEtc:Lcom/yftech/settings/widget/Switcher;

.field private mSwWirelessCharging:Lcom/yftech/settings/widget/Switcher;

.field private phoneNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/yftech/settings/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/yftech/settings/parts/CarPartsMoreFragment;->isShowPhoneNumber:Z

    .line 53
    new-instance v0, Lcom/yftech/settings/parts/CarPartsMoreFragment$1;

    invoke-direct {v0, p0}, Lcom/yftech/settings/parts/CarPartsMoreFragment$1;-><init>(Lcom/yftech/settings/parts/CarPartsMoreFragment;)V

    iput-object v0, p0, Lcom/yftech/settings/parts/CarPartsMoreFragment;->mCarPartsModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;

    return-void
.end method

.method private IsESOrRU()Z
    .locals 2

    .line 262
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    .line 263
    new-instance v0, Ljava/util/Locale;

    const-string v1, "ru"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/Locale;

    const-string v1, "es"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 264
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic access$000(Lcom/yftech/settings/parts/CarPartsMoreFragment;Lcom/yftech/settings/manager/CarPartsManager$Function;Z)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/parts/CarPartsMoreFragment;->setSwitcherView(Lcom/yftech/settings/manager/CarPartsManager$Function;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/yftech/settings/parts/CarPartsMoreFragment;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/yftech/settings/parts/CarPartsMoreFragment;->initViewData()V

    return-void
.end method

.method private getPhoneNumber()Ljava/lang/String;
    .locals 3

    .line 421
    invoke-virtual {p0}, Lcom/yftech/settings/parts/CarPartsMoreFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "phoneNumber"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "CarPartsMoreFragment"

    .line 422
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPhoneNumber:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private initView(Landroid/view/View;)V
    .locals 14

    const v0, 0x7f080153

    .line 108
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 109
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v2

    sget-object v3, Lcom/yftech/settings/manager/CarPartsManager$Function;->AUTO_WIPER_MODE_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

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

    .line 111
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    const v5, 0x7f0801bb

    const v6, 0x7f0801ff

    const v7, 0x7f080218

    if-nez v2, :cond_1

    .line 112
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v8, 0x7f0d0135

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(I)V

    .line 113
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v8, 0x7f0d0136

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(I)V

    .line 114
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yftech/settings/widget/Switcher;

    iput-object v1, p0, Lcom/yftech/settings/parts/CarPartsMoreFragment;->mSwAtuoWiper:Lcom/yftech/settings/widget/Switcher;

    .line 115
    iget-object v1, p0, Lcom/yftech/settings/parts/CarPartsMoreFragment;->mSwAtuoWiper:Lcom/yftech/settings/widget/Switcher;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yftech/settings/widget/Switcher;->setTag(Ljava/lang/Object;)V

    .line 116
    iget-object v0, p0, Lcom/yftech/settings/parts/CarPartsMoreFragment;->mSwAtuoWiper:Lcom/yftech/settings/widget/Switcher;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/widget/Switcher;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 117
    iget-object v0, p0, Lcom/yftech/settings/parts/CarPartsMoreFragment;->mSwAtuoWiper:Lcom/yftech/settings/widget/Switcher;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/widget/Switcher;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    const v0, 0x7f080156

    .line 121
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 122
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v2

    sget-object v8, Lcom/yftech/settings/manager/CarPartsManager$Function;->FRONT_WIPER_SERVICE_POSITION_ACTION:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v2, v8}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 124
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    .line 125
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v8, 0x7f0d0147

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(I)V

    .line 126
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v8, 0x7f0d0149

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(I)V

    const v2, 0x7f080070

    .line 127
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 128
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f0d0148

    .line 129
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    .line 130
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_3
    const v0, 0x7f080155

    .line 135
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 136
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v2

    sget-object v8, Lcom/yftech/settings/manager/CarPartsManager$Function;->ETC_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v2, v8}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v4

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 138
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_5

    .line 139
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v8, 0x7f0d0139

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(I)V

    .line 140
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v8, 0x7f0d013a

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(I)V

    .line 141
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yftech/settings/widget/Switcher;

    iput-object v1, p0, Lcom/yftech/settings/parts/CarPartsMoreFragment;->mSwEtc:Lcom/yftech/settings/widget/Switcher;

    .line 142
    iget-object v1, p0, Lcom/yftech/settings/parts/CarPartsMoreFragment;->mSwEtc:Lcom/yftech/settings/widget/Switcher;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yftech/settings/widget/Switcher;->setTag(Ljava/lang/Object;)V

    .line 143
    iget-object v0, p0, Lcom/yftech/settings/parts/CarPartsMoreFragment;->mSwEtc:Lcom/yftech/settings/widget/Switcher;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/widget/Switcher;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 144
    iget-object v0, p0, Lcom/yftech/settings/parts/CarPartsMoreFragment;->mSwEtc:Lcom/yftech/settings/widget/Switcher;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/widget/Switcher;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_5
    const v0, 0x7f080157

    .line 161
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 162
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v2

    sget-object v8, Lcom/yftech/settings/manager/CarPartsManager$Function;->WIRELESS_CHARGING_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v2, v8}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v4

    goto :goto_3

    :cond_6
    move v2, v3

    :goto_3
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 165
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_7

    .line 166
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v8, 0x7f0d014a

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(I)V

    .line 167
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v8, 0x7f0d014b

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(I)V

    .line 168
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yftech/settings/widget/Switcher;

    iput-object v1, p0, Lcom/yftech/settings/parts/CarPartsMoreFragment;->mSwWirelessCharging:Lcom/yftech/settings/widget/Switcher;

    .line 169
    iget-object v1, p0, Lcom/yftech/settings/parts/CarPartsMoreFragment;->mSwWirelessCharging:Lcom/yftech/settings/widget/Switcher;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yftech/settings/widget/Switcher;->setTag(Ljava/lang/Object;)V

    .line 170
    iget-object v0, p0, Lcom/yftech/settings/parts/CarPartsMoreFragment;->mSwWirelessCharging:Lcom/yftech/settings/widget/Switcher;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/widget/Switcher;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 171
    iget-object v0, p0, Lcom/yftech/settings/parts/CarPartsMoreFragment;->mSwWirelessCharging:Lcom/yftech/settings/widget/Switcher;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/widget/Switcher;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_7
    const v0, 0x7f0801b4

    .line 175
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 178
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v2

    sget-object v8, Lcom/yftech/settings/manager/CarPartsManager$Function;->STEERING_WHEEL_ASTERISK_KEY:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v2, v8}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v4

    goto :goto_4

    :cond_8
    move v2, v3

    :goto_4
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 181
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_f

    .line 182
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v8, 0x7f0d0142

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(I)V

    const v2, 0x7f080158

    .line 183
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yftech/settings/widget/MultiSelectView;

    iput-object v1, p0, Lcom/yftech/settings/parts/CarPartsMoreFragment;->mSWAsteriskKey:Lcom/yftech/settings/widget/MultiSelectView;

    .line 184
    iget-object v1, p0, Lcom/yftech/settings/parts/CarPartsMoreFragment;->mSWAsteriskKey:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yftech/settings/widget/MultiSelectView;->setTag(Ljava/lang/Object;)V

    .line 185
    iget-object v0, p0, Lcom/yftech/settings/parts/CarPartsMoreFragment;->mSWAsteriskKey:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-virtual {v0, v4}, Lcom/yftech/settings/widget/MultiSelectView;->setVisibility(I)V

    .line 186
    invoke-virtual {p0}, Lcom/yftech/settings/parts/CarPartsMoreFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 187
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v2, v4

    move v8, v2

    .line 189
    :goto_5
    array-length v9, v0

    if-ge v2, v9, :cond_d

    const/4 v9, 0x1

    if-ne v2, v9, :cond_9

    .line 191
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->getCameraNumber()Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;

    move-result-object v10

    const-string v11, "CarPartsMoreFragment"

    .line 192
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "initView() cameraNumber:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    sget-object v11, Lcom/yftech/settings/parts/CarPartsMoreFragment$2;->$SwitchMap$com$yftech$vehicle$internal$adapter$ICarConfig$CameraNumber:[I

    invoke-virtual {v10}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;->ordinal()I

    move-result v10

    aget v10, v11, v10

    packed-switch v10, :pswitch_data_0

    goto :goto_6

    :pswitch_0
    move v8, v9

    .line 202
    :pswitch_1
    aget-object v9, v0, v2

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_9
    const/4 v9, 0x4

    if-ne v2, v9, :cond_a

    .line 210
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isSportPlusPresent()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 211
    aget-object v9, v0, v2

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_a
    const/4 v9, 0x5

    if-ne v2, v9, :cond_b

    if-eqz v8, :cond_c

    .line 216
    aget-object v9, v0, v2

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 220
    :cond_b
    aget-object v9, v0, v2

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 223
    :cond_d
    iget-object v0, p0, Lcom/yftech/settings/parts/CarPartsMoreFragment;->mSWAsteriskKey:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/yftech/settings/widget/MultiSelectView;->setText([Ljava/lang/String;)Lcom/yftech/settings/widget/MultiSelectView;

    .line 224
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "CarPartsMoreFragment"

    .line 225
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initView: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 227
    :cond_e
    iget-object v0, p0, Lcom/yftech/settings/parts/CarPartsMoreFragment;->mSWAsteriskKey:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/widget/MultiSelectView;->setOnSwitchListener(Lcom/yftech/settings/widget/MultiSelectView$OnSwitchListener;)Lcom/yftech/settings/widget/MultiSelectView;

    :cond_f
    const v0, 0x7f08016e

    .line 231
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/yftech/settings/parts/CarPartsMoreFragment;->mOneClickPhoneNumberSetting:Landroid/widget/LinearLayout;

    .line 233
    iget-object v1, p0, Lcom/yftech/settings/parts/CarPartsMoreFragment;->mOneClickPhoneNumberSetting:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v2

    sget-object v8, Lcom/yftech/settings/manager/CarPartsManager$Function;->STEERING_WHEEL_ASTERISK_KEY:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v2, v8}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 234
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v2

    sget-object v8, Lcom/yftech/settings/manager/CarPartsManager$Function;->STEERING_WHEEL_ASTERISK_KEY:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v2, v8}, Lcom/yftech/settings/manager/CarPartsManager;->getOption(Lcom/yftech/settings/manager/CarPartsManager$Function;)I

    move-result v2

    if-nez v2, :cond_10

    move v2, v4

    goto :goto_8

    :cond_10
    move v2, v3

    .line 233
    :goto_8
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 237
    iget-object v1, p0, Lcom/yftech/settings/parts/CarPartsMoreFragment;->mOneClickPhoneNumberSetting:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0d013c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f08010b

    .line 238
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yftech/settings/widget/OneClickPhoneNumberSettingView;

    iput-object v1, p0, Lcom/yftech/settings/parts/CarPartsMoreFragment;->keyboardNumView:Lcom/yftech/settings/widget/OneClickPhoneNumberSettingView;

    .line 239
    iget-object v1, p0, Lcom/yftech/settings/parts/CarPartsMoreFragment;->keyboardNumView:Lcom/yftech/settings/widget/OneClickPhoneNumberSettingView;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yftech/settings/widget/OneClickPhoneNumberSettingView;->setTag(Ljava/lang/Object;)V

    .line 240
    iget-object v0, p0, Lcom/yftech/settings/parts/CarPartsMoreFragment;->keyboardNumView:Lcom/yftech/settings/widget/OneClickPhoneNumberSettingView;

    invoke-virtual {v0, v4}, Lcom/yftech/settings/widget/OneClickPhoneNumberSettingView;->setVisibility(I)V

    .line 242
    invoke-direct {p0}, Lcom/yftech/settings/parts/CarPartsMoreFragment;->IsESOrRU()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 243
    iget-object v0, p0, Lcom/yftech/settings/parts/CarPartsMoreFragment;->mOneClickPhoneNumberSetting:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/high16 v1, 0x41e80000    # 29.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_11
    const v0, 0x7f080154

    .line 247
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 248
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/CarPartsManager$Function;->CONVENIENT_CAR_SEARCH_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v1

    if-eqz v1, :cond_12

    move v3, v4

    :cond_12
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 250
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_13

    .line 251
    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0d0137

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 252
    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0d0138

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 253
    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/yftech/settings/widget/Switcher;

    iput-object p1, p0, Lcom/yftech/settings/parts/CarPartsMoreFragment;->mSwConvenientCarSearch:Lcom/yftech/settings/widget/Switcher;

    .line 254
    iget-object p1, p0, Lcom/yftech/settings/parts/CarPartsMoreFragment;->mSwConvenientCarSearch:Lcom/yftech/settings/widget/Switcher;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yftech/settings/widget/Switcher;->setTag(Ljava/lang/Object;)V

    .line 255
    iget-object p1, p0, Lcom/yftech/settings/parts/CarPartsMoreFragment;->mSwConvenientCarSearch:Lcom/yftech/settings/widget/Switcher;

    invoke-virtual {p1, p0}, Lcom/yftech/settings/widget/Switcher;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 256
    iget-object p1, p0, Lcom/yftech/settings/parts/CarPartsMoreFragment;->mSwConvenientCarSearch:Lcom/yftech/settings/widget/Switcher;

    invoke-virtual {p1, p0}, Lcom/yftech/settings/widget/Switcher;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_13
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private initViewData()V
    .locals 3

    .line 271
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/CarPartsManager$Function;->AUTO_WIPER_MODE_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->AUTO_WIPER_MODE_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/CarPartsManager$Function;->AUTO_WIPER_MODE_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/CarPartsManager;->getEnabled(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/parts/CarPartsMoreFragment;->setSwitcherView(Lcom/yftech/settings/manager/CarPartsManager$Function;Z)V

    .line 274
    :cond_0
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/CarPartsManager$Function;->ETC_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 275
    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->ETC_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/CarPartsManager$Function;->ETC_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/CarPartsManager;->getEnabled(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/parts/CarPartsMoreFragment;->setSwitcherView(Lcom/yftech/settings/manager/CarPartsManager$Function;Z)V

    .line 281
    :cond_1
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/CarPartsManager$Function;->WIRELESS_CHARGING_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 282
    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->WIRELESS_CHARGING_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/CarPartsManager$Function;->WIRELESS_CHARGING_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/CarPartsManager;->getEnabled(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/parts/CarPartsMoreFragment;->setSwitcherView(Lcom/yftech/settings/manager/CarPartsManager$Function;Z)V

    .line 284
    :cond_2
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/CarPartsManager$Function;->CONVENIENT_CAR_SEARCH_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 285
    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->CONVENIENT_CAR_SEARCH_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/CarPartsManager$Function;->CONVENIENT_CAR_SEARCH_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/CarPartsManager;->getEnabled(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/parts/CarPartsMoreFragment;->setSwitcherView(Lcom/yftech/settings/manager/CarPartsManager$Function;Z)V

    .line 288
    :cond_3
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/CarPartsManager$Function;->STEERING_WHEEL_ASTERISK_KEY:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 289
    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->STEERING_WHEEL_ASTERISK_KEY:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/CarPartsManager$Function;->STEERING_WHEEL_ASTERISK_KEY:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/CarPartsManager;->getOption(Lcom/yftech/settings/manager/CarPartsManager$Function;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/parts/CarPartsMoreFragment;->setSwitchMultiButtonView(Lcom/yftech/settings/manager/CarPartsManager$Function;I)V

    .line 291
    :cond_4
    iget-object v0, p0, Lcom/yftech/settings/parts/CarPartsMoreFragment;->keyboardNumView:Lcom/yftech/settings/widget/OneClickPhoneNumberSettingView;

    if-eqz v0, :cond_6

    .line 292
    invoke-direct {p0}, Lcom/yftech/settings/parts/CarPartsMoreFragment;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    .line 293
    iget-object v0, p0, Lcom/yftech/settings/parts/CarPartsMoreFragment;->keyboardNumView:Lcom/yftech/settings/widget/OneClickPhoneNumberSettingView;

    const v1, 0x7f0d0146

    invoke-virtual {p0, v1}, Lcom/yftech/settings/parts/CarPartsMoreFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/OneClickPhoneNumberSettingView;->setTextValue(Ljava/lang/String;)V

    .line 294
    iget-object p0, p0, Lcom/yftech/settings/parts/CarPartsMoreFragment;->keyboardNumView:Lcom/yftech/settings/widget/OneClickPhoneNumberSettingView;

    const/16 v0, 0x46

    const/16 v1, 0xff

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yftech/settings/widget/OneClickPhoneNumberSettingView;->setTextColor(I)V

    goto :goto_0

    .line 296
    :cond_5
    iget-object v0, p0, Lcom/yftech/settings/parts/CarPartsMoreFragment;->keyboardNumView:Lcom/yftech/settings/widget/OneClickPhoneNumberSettingView;

    invoke-direct {p0}, Lcom/yftech/settings/parts/CarPartsMoreFragment;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/OneClickPhoneNumberSettingView;->setTextValue(Ljava/lang/String;)V

    .line 297
    iget-object p0, p0, Lcom/yftech/settings/parts/CarPartsMoreFragment;->keyboardNumView:Lcom/yftech/settings/widget/OneClickPhoneNumberSettingView;

    const/16 v0, 0xdd

    const/16 v1, 0x9d

    const/16 v2, 0x9

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yftech/settings/widget/OneClickPhoneNumberSettingView;->setTextColor(I)V

    :cond_6
    :goto_0
    return-void
.end method

.method private setSwitchMultiButtonView(Lcom/yftech/settings/manager/CarPartsManager$Function;I)V
    .locals 1

    .line 376
    sget-object v0, Lcom/yftech/settings/parts/CarPartsMoreFragment$2;->$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/CarPartsManager$Function;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 378
    :cond_0
    iget-object p0, p0, Lcom/yftech/settings/parts/CarPartsMoreFragment;->mSWAsteriskKey:Lcom/yftech/settings/widget/MultiSelectView;

    :goto_0
    if-eqz p0, :cond_2

    .line 384
    invoke-virtual {p0}, Lcom/yftech/settings/widget/MultiSelectView;->getTabNum()I

    move-result p1

    if-ne p1, p2, :cond_1

    return-void

    .line 387
    :cond_1
    invoke-virtual {p0, p2}, Lcom/yftech/settings/widget/MultiSelectView;->setSelectedTab(I)Lcom/yftech/settings/widget/MultiSelectView;

    :cond_2
    return-void
.end method

.method private setSwitcherView(Lcom/yftech/settings/manager/CarPartsManager$Function;Z)V
    .locals 1

    .line 346
    sget-object v0, Lcom/yftech/settings/parts/CarPartsMoreFragment$2;->$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/CarPartsManager$Function;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    .line 361
    :pswitch_0
    iget-object p0, p0, Lcom/yftech/settings/parts/CarPartsMoreFragment;->mSwConvenientCarSearch:Lcom/yftech/settings/widget/Switcher;

    goto :goto_0

    .line 358
    :pswitch_1
    iget-object p0, p0, Lcom/yftech/settings/parts/CarPartsMoreFragment;->mSwWirelessCharging:Lcom/yftech/settings/widget/Switcher;

    goto :goto_0

    .line 351
    :pswitch_2
    iget-object p0, p0, Lcom/yftech/settings/parts/CarPartsMoreFragment;->mSwEtc:Lcom/yftech/settings/widget/Switcher;

    goto :goto_0

    .line 348
    :pswitch_3
    iget-object p0, p0, Lcom/yftech/settings/parts/CarPartsMoreFragment;->mSwAtuoWiper:Lcom/yftech/settings/widget/Switcher;

    :goto_0
    if-eqz p0, :cond_1

    .line 367
    invoke-virtual {p0}, Lcom/yftech/settings/widget/Switcher;->isChecked()Z

    move-result p1

    if-ne p1, p2, :cond_0

    return-void

    .line 370
    :cond_0
    invoke-virtual {p0, p2}, Lcom/yftech/settings/widget/Switcher;->setChecked(Z)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 315
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isPressed()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 318
    :cond_0
    sget-object p0, Lcom/yftech/settings/manager/CarPartsManager$Function;->UNKNOWN:Lcom/yftech/settings/manager/CarPartsManager$Function;

    .line 319
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 331
    :pswitch_1
    sget-object p0, Lcom/yftech/settings/manager/CarPartsManager$Function;->WIRELESS_CHARGING_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    goto :goto_0

    .line 321
    :pswitch_2
    sget-object p0, Lcom/yftech/settings/manager/CarPartsManager$Function;->ETC_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    goto :goto_0

    .line 334
    :pswitch_3
    sget-object p0, Lcom/yftech/settings/manager/CarPartsManager$Function;->CONVENIENT_CAR_SEARCH_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    goto :goto_0

    .line 324
    :pswitch_4
    sget-object p0, Lcom/yftech/settings/manager/CarPartsManager$Function;->AUTO_WIPER_MODE_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    .line 339
    :goto_0
    sget-object p1, Lcom/yftech/settings/manager/CarPartsManager$Function;->UNKNOWN:Lcom/yftech/settings/manager/CarPartsManager$Function;

    if-eq p0, p1, :cond_1

    .line 340
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/yftech/settings/manager/CarPartsManager;->setEnabled(Lcom/yftech/settings/manager/CarPartsManager$Function;Z)Z

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x7f080153
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 304
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const p1, 0x7f080156

    if-eq p0, p1, :cond_0

    goto :goto_0

    .line 306
    :cond_0
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object p0

    sget-object p1, Lcom/yftech/settings/manager/CarPartsManager$Function;->FRONT_WIPER_SERVICE_POSITION_ACTION:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {p0, p1}, Lcom/yftech/settings/manager/CarPartsManager;->setAction(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

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

    const p3, 0x7f0a0042

    const/4 v0, 0x0

    .line 83
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 84
    invoke-direct {p0, p1}, Lcom/yftech/settings/parts/CarPartsMoreFragment;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method public onPause()V
    .locals 2

    .line 100
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onPause()V

    .line 101
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/settings/parts/CarPartsMoreFragment;->mCarPartsModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarPartsManager;->unregisterModelCallback(Lcom/yftech/settings/manager/BaseManager$ModelCallback;)V

    .line 102
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/CarPartsManager$Function;->STOP_TIMEOUT_ACTION:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarPartsManager;->setAction(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    const/4 v0, 0x0

    .line 103
    iput-boolean v0, p0, Lcom/yftech/settings/parts/CarPartsMoreFragment;->isShowPhoneNumber:Z

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 90
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onResume()V

    .line 91
    invoke-direct {p0}, Lcom/yftech/settings/parts/CarPartsMoreFragment;->initViewData()V

    .line 92
    iget-boolean v0, p0, Lcom/yftech/settings/parts/CarPartsMoreFragment;->isShowPhoneNumber:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/settings/parts/CarPartsMoreFragment;->keyboardNumView:Lcom/yftech/settings/widget/OneClickPhoneNumberSettingView;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/yftech/settings/parts/CarPartsMoreFragment;->keyboardNumView:Lcom/yftech/settings/widget/OneClickPhoneNumberSettingView;

    invoke-virtual {v0}, Lcom/yftech/settings/widget/OneClickPhoneNumberSettingView;->show()V

    .line 95
    :cond_0
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/settings/parts/CarPartsMoreFragment;->mCarPartsModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/manager/CarPartsManager;->registerModelCallback(Lcom/yftech/settings/manager/BaseManager$ModelCallback;)V

    return-void
.end method

.method public onSwitch(Lcom/yftech/settings/widget/MultiSelectView;ILjava/lang/String;Z)V
    .locals 0

    if-nez p4, :cond_0

    return-void

    .line 396
    :cond_0
    sget-object p3, Lcom/yftech/settings/manager/CarPartsManager$Function;->UNKNOWN:Lcom/yftech/settings/manager/CarPartsManager$Function;

    .line 397
    invoke-virtual {p1}, Lcom/yftech/settings/widget/MultiSelectView;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const p4, 0x7f0801b4

    if-eq p1, p4, :cond_1

    goto :goto_1

    .line 399
    :cond_1
    sget-object p3, Lcom/yftech/settings/manager/CarPartsManager$Function;->STEERING_WHEEL_ASTERISK_KEY:Lcom/yftech/settings/manager/CarPartsManager$Function;

    if-nez p2, :cond_2

    .line 400
    invoke-direct {p0}, Lcom/yftech/settings/parts/CarPartsMoreFragment;->getPhoneNumber()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 401
    iget-object p1, p0, Lcom/yftech/settings/parts/CarPartsMoreFragment;->keyboardNumView:Lcom/yftech/settings/widget/OneClickPhoneNumberSettingView;

    if-eqz p1, :cond_2

    .line 402
    iget-object p1, p0, Lcom/yftech/settings/parts/CarPartsMoreFragment;->keyboardNumView:Lcom/yftech/settings/widget/OneClickPhoneNumberSettingView;

    invoke-virtual {p1}, Lcom/yftech/settings/widget/OneClickPhoneNumberSettingView;->show()V

    .line 406
    :cond_2
    iget-object p0, p0, Lcom/yftech/settings/parts/CarPartsMoreFragment;->mOneClickPhoneNumberSetting:Landroid/widget/LinearLayout;

    if-nez p2, :cond_3

    const/4 p1, 0x0

    goto :goto_0

    :cond_3
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 411
    :goto_1
    sget-object p0, Lcom/yftech/settings/manager/CarPartsManager$Function;->UNKNOWN:Lcom/yftech/settings/manager/CarPartsManager$Function;

    if-eq p3, p0, :cond_4

    .line 412
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object p0

    invoke-virtual {p0, p3, p2}, Lcom/yftech/settings/manager/CarPartsManager;->setOption(Lcom/yftech/settings/manager/CarPartsManager$Function;I)Z

    :cond_4
    return-void
.end method

.method public showPhoneNumberView()V
    .locals 1

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lcom/yftech/settings/parts/CarPartsMoreFragment;->isShowPhoneNumber:Z

    return-void
.end method
