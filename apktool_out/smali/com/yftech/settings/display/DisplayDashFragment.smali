.class public Lcom/yftech/settings/display/DisplayDashFragment;
.super Lcom/yftech/settings/BaseFragment;
.source "DisplayDashFragment.java"

# interfaces
.implements Lcom/yftech/settings/widget/SeekBarNumber$OnSeekChangeListener;
.implements Lcom/yftech/settings/widget/MultiSelectView$OnSwitchListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "DisplayDashFragment"


# instance fields
.field private flag:Z

.field private mCarDashboardModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yftech/settings/manager/BaseManager$ModelCallback<",
            "Lcom/yftech/settings/manager/CarDashboardManager$Function;",
            ">;"
        }
    .end annotation
.end field

.field private mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

.field private mDashBrightnessSB:Lcom/yftech/settings/widget/SeekBarNumber;

.field private mDashBrightnessToast:Landroid/widget/Toast;

.field private mHandler:Landroid/os/Handler;

.field private mIsTouchSmallLightEnabled:Z

.field private mIvDashBrightness:Landroid/widget/ImageView;

.field private mLastDashBrightness:I

.field private mSmbDashDistanceUnit:Lcom/yftech/settings/widget/MultiSelectView;

.field private mSmbDashLanguage:Lcom/yftech/settings/widget/MultiSelectView;

.field private mSmbDashPressureUnit:Lcom/yftech/settings/widget/MultiSelectView;

.field private mSmbDashTemperatureUnit:Lcom/yftech/settings/widget/MultiSelectView;

.field private mSmbDashVolume:Lcom/yftech/settings/widget/MultiSelectView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 30
    invoke-direct {p0}, Lcom/yftech/settings/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/yftech/settings/display/DisplayDashFragment;->mLastDashBrightness:I

    .line 47
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/yftech/settings/display/DisplayDashFragment;->mHandler:Landroid/os/Handler;

    .line 50
    iput-boolean v0, p0, Lcom/yftech/settings/display/DisplayDashFragment;->flag:Z

    .line 52
    new-instance v0, Lcom/yftech/settings/display/DisplayDashFragment$1;

    invoke-direct {v0, p0}, Lcom/yftech/settings/display/DisplayDashFragment$1;-><init>(Lcom/yftech/settings/display/DisplayDashFragment;)V

    iput-object v0, p0, Lcom/yftech/settings/display/DisplayDashFragment;->mCarDashboardModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/settings/display/DisplayDashFragment;Lcom/yftech/settings/manager/CarDashboardManager$Function;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/display/DisplayDashFragment;->setSwitchMultiButtonView(Lcom/yftech/settings/manager/CarDashboardManager$Function;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/yftech/settings/display/DisplayDashFragment;Lcom/yftech/settings/manager/CarDashboardManager$Function;Ljava/lang/Object;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/display/DisplayDashFragment;->setValueView(Lcom/yftech/settings/manager/CarDashboardManager$Function;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$202(Lcom/yftech/settings/display/DisplayDashFragment;I)I
    .locals 0

    .line 30
    iput p1, p0, Lcom/yftech/settings/display/DisplayDashFragment;->mLastDashBrightness:I

    return p1
.end method

.method static synthetic access$300(Lcom/yftech/settings/display/DisplayDashFragment;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/yftech/settings/display/DisplayDashFragment;->initViewData()V

    return-void
.end method

.method static synthetic access$400(Lcom/yftech/settings/display/DisplayDashFragment;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/yftech/settings/display/DisplayDashFragment;->mIsTouchSmallLightEnabled:Z

    return p0
.end method

.method static synthetic access$402(Lcom/yftech/settings/display/DisplayDashFragment;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/yftech/settings/display/DisplayDashFragment;->mIsTouchSmallLightEnabled:Z

    return p1
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Lcom/yftech/settings/display/DisplayDashFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/yftech/settings/display/DisplayDashFragment;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/yftech/settings/display/DisplayDashFragment;->showDashBrightnessToast()V

    return-void
.end method

.method static synthetic access$702(Lcom/yftech/settings/display/DisplayDashFragment;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/yftech/settings/display/DisplayDashFragment;->flag:Z

    return p1
.end method

.method static synthetic access$802(Lcom/yftech/settings/display/DisplayDashFragment;Lcom/yftech/settings/widget/dialog/CommonDialog;)Lcom/yftech/settings/widget/dialog/CommonDialog;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/yftech/settings/display/DisplayDashFragment;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    return-object p1
.end method

.method private getBrightnessIcon(I)I
    .locals 1

    if-gtz p1, :cond_0

    const p0, 0x7f0b00fb

    return p0

    :cond_0
    const/4 p0, 0x2

    if-gt p1, p0, :cond_1

    if-lez p1, :cond_1

    const p0, 0x7f0b00fc

    return p0

    :cond_1
    const/4 v0, 0x5

    if-gt p1, v0, :cond_2

    if-le p1, p0, :cond_2

    const p0, 0x7f0b00fd

    return p0

    :cond_2
    const p0, 0x7f0b00fe

    return p0
.end method

.method private initView(Landroid/view/View;)V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    const v0, 0x7f08009e

    .line 112
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 113
    invoke-static {}, Lcom/yftech/settings/manager/CarDashboardManager;->getInstance()Lcom/yftech/settings/manager/CarDashboardManager;

    move-result-object v2

    sget-object v3, Lcom/yftech/settings/manager/CarDashboardManager$Function;->DASH_BACK_LIGHT_LEVEL_VALUE:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    invoke-virtual {v2, v3}, Lcom/yftech/settings/manager/CarDashboardManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarDashboardManager$Function;)Z

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

    .line 115
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    const v5, 0x7f080218

    if-nez v2, :cond_1

    .line 116
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v6, 0x7f0d00d1

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    const v2, 0x7f0801ff

    .line 117
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v6, 0x7f0d00d2

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    const v2, 0x7f0800eb

    .line 118
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 119
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/yftech/settings/display/DisplayDashFragment;->mIvDashBrightness:Landroid/widget/ImageView;

    .line 120
    iget-object v2, p0, Lcom/yftech/settings/display/DisplayDashFragment;->mIvDashBrightness:Landroid/widget/ImageView;

    const v6, 0x7f0b00fb

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 121
    iget-object v2, p0, Lcom/yftech/settings/display/DisplayDashFragment;->mIvDashBrightness:Landroid/widget/ImageView;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 122
    iget-object v2, p0, Lcom/yftech/settings/display/DisplayDashFragment;->mIvDashBrightness:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f08018b

    .line 123
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yftech/settings/widget/SeekBarNumber;

    iput-object v1, p0, Lcom/yftech/settings/display/DisplayDashFragment;->mDashBrightnessSB:Lcom/yftech/settings/widget/SeekBarNumber;

    .line 124
    iget-object v1, p0, Lcom/yftech/settings/display/DisplayDashFragment;->mDashBrightnessSB:Lcom/yftech/settings/widget/SeekBarNumber;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yftech/settings/widget/SeekBarNumber;->setTag(Ljava/lang/Object;)V

    .line 125
    iget-object v0, p0, Lcom/yftech/settings/display/DisplayDashFragment;->mDashBrightnessSB:Lcom/yftech/settings/widget/SeekBarNumber;

    invoke-virtual {v0, v4}, Lcom/yftech/settings/widget/SeekBarNumber;->setMin(I)V

    .line 126
    iget-object v0, p0, Lcom/yftech/settings/display/DisplayDashFragment;->mDashBrightnessSB:Lcom/yftech/settings/widget/SeekBarNumber;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/SeekBarNumber;->setMax(I)V

    .line 127
    iget-object v0, p0, Lcom/yftech/settings/display/DisplayDashFragment;->mDashBrightnessSB:Lcom/yftech/settings/widget/SeekBarNumber;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/widget/SeekBarNumber;->setOnSeekChangeListener(Lcom/yftech/settings/widget/SeekBarNumber$OnSeekChangeListener;)V

    .line 128
    iget-object v0, p0, Lcom/yftech/settings/display/DisplayDashFragment;->mDashBrightnessSB:Lcom/yftech/settings/widget/SeekBarNumber;

    new-instance v1, Lcom/yftech/settings/display/DisplayDashFragment$2;

    invoke-direct {v1, p0}, Lcom/yftech/settings/display/DisplayDashFragment$2;-><init>(Lcom/yftech/settings/display/DisplayDashFragment;)V

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/SeekBarNumber;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    const v0, 0x7f0800a2

    .line 151
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 156
    invoke-static {}, Lcom/yftech/settings/manager/CarDashboardManager;->getInstance()Lcom/yftech/settings/manager/CarDashboardManager;

    move-result-object v2

    sget-object v6, Lcom/yftech/settings/manager/CarDashboardManager$Function;->DASH_LANGUAGE_OPTION:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    invoke-virtual {v2, v6}, Lcom/yftech/settings/manager/CarDashboardManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarDashboardManager$Function;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 158
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    const v6, 0x7f080158

    if-nez v2, :cond_3

    .line 159
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v7, 0x7f0d00d6

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(I)V

    .line 160
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yftech/settings/widget/MultiSelectView;

    iput-object v1, p0, Lcom/yftech/settings/display/DisplayDashFragment;->mSmbDashLanguage:Lcom/yftech/settings/widget/MultiSelectView;

    .line 161
    iget-object v1, p0, Lcom/yftech/settings/display/DisplayDashFragment;->mSmbDashLanguage:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yftech/settings/widget/MultiSelectView;->setTag(Ljava/lang/Object;)V

    .line 162
    iget-object v0, p0, Lcom/yftech/settings/display/DisplayDashFragment;->mSmbDashLanguage:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-virtual {p0}, Lcom/yftech/settings/display/DisplayDashFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/MultiSelectView;->setText([Ljava/lang/String;)Lcom/yftech/settings/widget/MultiSelectView;

    .line 163
    iget-object v0, p0, Lcom/yftech/settings/display/DisplayDashFragment;->mSmbDashLanguage:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/widget/MultiSelectView;->setOnSwitchListener(Lcom/yftech/settings/widget/MultiSelectView$OnSwitchListener;)Lcom/yftech/settings/widget/MultiSelectView;

    :cond_3
    const v0, 0x7f0800a5

    .line 167
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 172
    invoke-static {}, Lcom/yftech/settings/manager/CarDashboardManager;->getInstance()Lcom/yftech/settings/manager/CarDashboardManager;

    move-result-object v2

    sget-object v7, Lcom/yftech/settings/manager/CarDashboardManager$Function;->DASH_VOLUME_OPTION:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    invoke-virtual {v2, v7}, Lcom/yftech/settings/manager/CarDashboardManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarDashboardManager$Function;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v4

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 174
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_5

    .line 175
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v7, 0x7f0d00db

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(I)V

    .line 176
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yftech/settings/widget/MultiSelectView;

    iput-object v1, p0, Lcom/yftech/settings/display/DisplayDashFragment;->mSmbDashVolume:Lcom/yftech/settings/widget/MultiSelectView;

    .line 177
    iget-object v1, p0, Lcom/yftech/settings/display/DisplayDashFragment;->mSmbDashVolume:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yftech/settings/widget/MultiSelectView;->setTag(Ljava/lang/Object;)V

    .line 178
    iget-object v0, p0, Lcom/yftech/settings/display/DisplayDashFragment;->mSmbDashVolume:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-virtual {p0}, Lcom/yftech/settings/display/DisplayDashFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/MultiSelectView;->setText([Ljava/lang/String;)Lcom/yftech/settings/widget/MultiSelectView;

    .line 179
    iget-object v0, p0, Lcom/yftech/settings/display/DisplayDashFragment;->mSmbDashVolume:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/widget/MultiSelectView;->setOnSwitchListener(Lcom/yftech/settings/widget/MultiSelectView$OnSwitchListener;)Lcom/yftech/settings/widget/MultiSelectView;

    :cond_5
    const v0, 0x7f08009f

    .line 183
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 187
    invoke-static {}, Lcom/yftech/settings/manager/CarDashboardManager;->getInstance()Lcom/yftech/settings/manager/CarDashboardManager;

    move-result-object v2

    sget-object v7, Lcom/yftech/settings/manager/CarDashboardManager$Function;->DASH_RESET_CUMULATIVE_TRAVEL_ACTION:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    invoke-virtual {v2, v7}, Lcom/yftech/settings/manager/CarDashboardManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarDashboardManager$Function;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v4

    goto :goto_3

    :cond_6
    move v2, v3

    :goto_3
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 189
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    const v7, 0x7f080070

    if-nez v2, :cond_7

    .line 190
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v8, 0x7f0d00d3

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(I)V

    .line 191
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 192
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f0d00cd

    .line 193
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    .line 194
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    const v0, 0x7f0800a1

    .line 198
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 203
    invoke-static {}, Lcom/yftech/settings/manager/CarDashboardManager;->getInstance()Lcom/yftech/settings/manager/CarDashboardManager;

    move-result-object v2

    sget-object v8, Lcom/yftech/settings/manager/CarDashboardManager$Function;->DASH_FUEL_ECONOMY_AND_DISTANCE_UNIT_OPTION:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    invoke-virtual {v2, v8}, Lcom/yftech/settings/manager/CarDashboardManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarDashboardManager$Function;)Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v4

    goto :goto_4

    :cond_8
    move v2, v3

    :goto_4
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 205
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_9

    .line 206
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v8, 0x7f0d00d5

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(I)V

    .line 207
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yftech/settings/widget/MultiSelectView;

    iput-object v1, p0, Lcom/yftech/settings/display/DisplayDashFragment;->mSmbDashDistanceUnit:Lcom/yftech/settings/widget/MultiSelectView;

    .line 208
    iget-object v1, p0, Lcom/yftech/settings/display/DisplayDashFragment;->mSmbDashDistanceUnit:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yftech/settings/widget/MultiSelectView;->setTag(Ljava/lang/Object;)V

    .line 209
    iget-object v0, p0, Lcom/yftech/settings/display/DisplayDashFragment;->mSmbDashDistanceUnit:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-virtual {p0}, Lcom/yftech/settings/display/DisplayDashFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/MultiSelectView;->setText([Ljava/lang/String;)Lcom/yftech/settings/widget/MultiSelectView;

    .line 210
    iget-object v0, p0, Lcom/yftech/settings/display/DisplayDashFragment;->mSmbDashDistanceUnit:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/widget/MultiSelectView;->setOnSwitchListener(Lcom/yftech/settings/widget/MultiSelectView$OnSwitchListener;)Lcom/yftech/settings/widget/MultiSelectView;

    :cond_9
    const v0, 0x7f0800a4

    .line 214
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 219
    invoke-static {}, Lcom/yftech/settings/manager/CarDashboardManager;->getInstance()Lcom/yftech/settings/manager/CarDashboardManager;

    move-result-object v2

    sget-object v8, Lcom/yftech/settings/manager/CarDashboardManager$Function;->DASH_TEMPERATURE_UNIT_OPTION:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    invoke-virtual {v2, v8}, Lcom/yftech/settings/manager/CarDashboardManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarDashboardManager$Function;)Z

    move-result v2

    if-eqz v2, :cond_a

    move v2, v4

    goto :goto_5

    :cond_a
    move v2, v3

    :goto_5
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 221
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_b

    .line 222
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v8, 0x7f0d00da

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(I)V

    .line 223
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yftech/settings/widget/MultiSelectView;

    iput-object v1, p0, Lcom/yftech/settings/display/DisplayDashFragment;->mSmbDashTemperatureUnit:Lcom/yftech/settings/widget/MultiSelectView;

    .line 224
    iget-object v1, p0, Lcom/yftech/settings/display/DisplayDashFragment;->mSmbDashTemperatureUnit:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yftech/settings/widget/MultiSelectView;->setTag(Ljava/lang/Object;)V

    .line 225
    iget-object v0, p0, Lcom/yftech/settings/display/DisplayDashFragment;->mSmbDashTemperatureUnit:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-virtual {p0}, Lcom/yftech/settings/display/DisplayDashFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/MultiSelectView;->setText([Ljava/lang/String;)Lcom/yftech/settings/widget/MultiSelectView;

    .line 226
    iget-object v0, p0, Lcom/yftech/settings/display/DisplayDashFragment;->mSmbDashTemperatureUnit:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/widget/MultiSelectView;->setOnSwitchListener(Lcom/yftech/settings/widget/MultiSelectView$OnSwitchListener;)Lcom/yftech/settings/widget/MultiSelectView;

    :cond_b
    const v0, 0x7f0800a3

    .line 230
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 235
    invoke-static {}, Lcom/yftech/settings/manager/CarDashboardManager;->getInstance()Lcom/yftech/settings/manager/CarDashboardManager;

    move-result-object v2

    sget-object v8, Lcom/yftech/settings/manager/CarDashboardManager$Function;->DASH_PRESSURE_UNIT_OPTION:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    invoke-virtual {v2, v8}, Lcom/yftech/settings/manager/CarDashboardManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarDashboardManager$Function;)Z

    move-result v2

    if-eqz v2, :cond_c

    move v2, v4

    goto :goto_6

    :cond_c
    move v2, v3

    :goto_6
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 237
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_d

    .line 238
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v8, 0x7f0d00d8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(I)V

    .line 239
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yftech/settings/widget/MultiSelectView;

    iput-object v1, p0, Lcom/yftech/settings/display/DisplayDashFragment;->mSmbDashPressureUnit:Lcom/yftech/settings/widget/MultiSelectView;

    .line 240
    iget-object v1, p0, Lcom/yftech/settings/display/DisplayDashFragment;->mSmbDashPressureUnit:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yftech/settings/widget/MultiSelectView;->setTag(Ljava/lang/Object;)V

    .line 241
    iget-object v0, p0, Lcom/yftech/settings/display/DisplayDashFragment;->mSmbDashPressureUnit:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-virtual {p0}, Lcom/yftech/settings/display/DisplayDashFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/MultiSelectView;->setText([Ljava/lang/String;)Lcom/yftech/settings/widget/MultiSelectView;

    .line 242
    iget-object v0, p0, Lcom/yftech/settings/display/DisplayDashFragment;->mSmbDashPressureUnit:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/widget/MultiSelectView;->setOnSwitchListener(Lcom/yftech/settings/widget/MultiSelectView$OnSwitchListener;)Lcom/yftech/settings/widget/MultiSelectView;

    :cond_d
    const v0, 0x7f0800a0

    .line 246
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 251
    invoke-static {}, Lcom/yftech/settings/manager/CarDashboardManager;->getInstance()Lcom/yftech/settings/manager/CarDashboardManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/CarDashboardManager$Function;->DASH_RESTORE_FACTORY_SETTINGS_ACTION:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/CarDashboardManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarDashboardManager$Function;)Z

    move-result v1

    if-eqz v1, :cond_e

    move v3, v4

    :cond_e
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 253
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_f

    .line 254
    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0d00d4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 255
    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 256
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f0d00dc

    .line 257
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 258
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_f
    return-void
.end method

.method private initViewData()V
    .locals 3

    .line 263
    invoke-static {}, Lcom/yftech/settings/manager/CarDashboardManager;->getInstance()Lcom/yftech/settings/manager/CarDashboardManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/CarDashboardManager$Function;->DASH_BACK_LIGHT_LEVEL_VALUE:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarDashboardManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarDashboardManager$Function;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    sget-object v0, Lcom/yftech/settings/manager/CarDashboardManager$Function;->DASH_BACK_LIGHT_LEVEL_VALUE:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    invoke-static {}, Lcom/yftech/settings/manager/CarDashboardManager;->getInstance()Lcom/yftech/settings/manager/CarDashboardManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/CarDashboardManager$Function;->DASH_BACK_LIGHT_LEVEL_VALUE:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/CarDashboardManager;->getValue(Lcom/yftech/settings/manager/CarDashboardManager$Function;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/display/DisplayDashFragment;->setValueView(Lcom/yftech/settings/manager/CarDashboardManager$Function;Ljava/lang/Object;)V

    .line 266
    :cond_0
    invoke-static {}, Lcom/yftech/settings/manager/CarDashboardManager;->getInstance()Lcom/yftech/settings/manager/CarDashboardManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/CarDashboardManager$Function;->DASH_LANGUAGE_OPTION:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarDashboardManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarDashboardManager$Function;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    sget-object v0, Lcom/yftech/settings/manager/CarDashboardManager$Function;->DASH_LANGUAGE_OPTION:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    invoke-static {}, Lcom/yftech/settings/manager/CarDashboardManager;->getInstance()Lcom/yftech/settings/manager/CarDashboardManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/CarDashboardManager$Function;->DASH_LANGUAGE_OPTION:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/CarDashboardManager;->getOption(Lcom/yftech/settings/manager/CarDashboardManager$Function;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/display/DisplayDashFragment;->setSwitchMultiButtonView(Lcom/yftech/settings/manager/CarDashboardManager$Function;I)V

    .line 269
    :cond_1
    invoke-static {}, Lcom/yftech/settings/manager/CarDashboardManager;->getInstance()Lcom/yftech/settings/manager/CarDashboardManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/CarDashboardManager$Function;->DASH_VOLUME_OPTION:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarDashboardManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarDashboardManager$Function;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 270
    sget-object v0, Lcom/yftech/settings/manager/CarDashboardManager$Function;->DASH_VOLUME_OPTION:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    invoke-static {}, Lcom/yftech/settings/manager/CarDashboardManager;->getInstance()Lcom/yftech/settings/manager/CarDashboardManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/CarDashboardManager$Function;->DASH_VOLUME_OPTION:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/CarDashboardManager;->getOption(Lcom/yftech/settings/manager/CarDashboardManager$Function;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/display/DisplayDashFragment;->setSwitchMultiButtonView(Lcom/yftech/settings/manager/CarDashboardManager$Function;I)V

    .line 272
    :cond_2
    invoke-static {}, Lcom/yftech/settings/manager/CarDashboardManager;->getInstance()Lcom/yftech/settings/manager/CarDashboardManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/CarDashboardManager$Function;->DASH_FUEL_ECONOMY_AND_DISTANCE_UNIT_OPTION:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarDashboardManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarDashboardManager$Function;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 273
    sget-object v0, Lcom/yftech/settings/manager/CarDashboardManager$Function;->DASH_FUEL_ECONOMY_AND_DISTANCE_UNIT_OPTION:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    invoke-static {}, Lcom/yftech/settings/manager/CarDashboardManager;->getInstance()Lcom/yftech/settings/manager/CarDashboardManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/CarDashboardManager$Function;->DASH_DISTANCE_UNIT_OPTION:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/CarDashboardManager;->getOption(Lcom/yftech/settings/manager/CarDashboardManager$Function;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/display/DisplayDashFragment;->setSwitchMultiButtonView(Lcom/yftech/settings/manager/CarDashboardManager$Function;I)V

    .line 275
    :cond_3
    invoke-static {}, Lcom/yftech/settings/manager/CarDashboardManager;->getInstance()Lcom/yftech/settings/manager/CarDashboardManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/CarDashboardManager$Function;->DASH_TEMPERATURE_UNIT_OPTION:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarDashboardManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarDashboardManager$Function;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 276
    sget-object v0, Lcom/yftech/settings/manager/CarDashboardManager$Function;->DASH_TEMPERATURE_UNIT_OPTION:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    invoke-static {}, Lcom/yftech/settings/manager/CarDashboardManager;->getInstance()Lcom/yftech/settings/manager/CarDashboardManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/CarDashboardManager$Function;->DASH_TEMPERATURE_UNIT_OPTION:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/CarDashboardManager;->getOption(Lcom/yftech/settings/manager/CarDashboardManager$Function;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/display/DisplayDashFragment;->setSwitchMultiButtonView(Lcom/yftech/settings/manager/CarDashboardManager$Function;I)V

    .line 278
    :cond_4
    invoke-static {}, Lcom/yftech/settings/manager/CarDashboardManager;->getInstance()Lcom/yftech/settings/manager/CarDashboardManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/CarDashboardManager$Function;->DASH_PRESSURE_UNIT_OPTION:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarDashboardManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarDashboardManager$Function;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 279
    sget-object v0, Lcom/yftech/settings/manager/CarDashboardManager$Function;->DASH_PRESSURE_UNIT_OPTION:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    invoke-static {}, Lcom/yftech/settings/manager/CarDashboardManager;->getInstance()Lcom/yftech/settings/manager/CarDashboardManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/CarDashboardManager$Function;->DASH_PRESSURE_UNIT_OPTION:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/CarDashboardManager;->getOption(Lcom/yftech/settings/manager/CarDashboardManager$Function;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/display/DisplayDashFragment;->setSwitchMultiButtonView(Lcom/yftech/settings/manager/CarDashboardManager$Function;I)V

    :cond_5
    return-void
.end method

.method private setSwitchMultiButtonView(Lcom/yftech/settings/manager/CarDashboardManager$Function;I)V
    .locals 1

    .line 387
    sget-object v0, Lcom/yftech/settings/display/DisplayDashFragment$6;->$SwitchMap$com$yftech$settings$manager$CarDashboardManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/CarDashboardManager$Function;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    .line 401
    :pswitch_0
    iget-object p0, p0, Lcom/yftech/settings/display/DisplayDashFragment;->mSmbDashPressureUnit:Lcom/yftech/settings/widget/MultiSelectView;

    goto :goto_0

    .line 398
    :pswitch_1
    iget-object p0, p0, Lcom/yftech/settings/display/DisplayDashFragment;->mSmbDashTemperatureUnit:Lcom/yftech/settings/widget/MultiSelectView;

    goto :goto_0

    .line 395
    :pswitch_2
    iget-object p0, p0, Lcom/yftech/settings/display/DisplayDashFragment;->mSmbDashDistanceUnit:Lcom/yftech/settings/widget/MultiSelectView;

    goto :goto_0

    .line 392
    :pswitch_3
    iget-object p0, p0, Lcom/yftech/settings/display/DisplayDashFragment;->mSmbDashVolume:Lcom/yftech/settings/widget/MultiSelectView;

    goto :goto_0

    .line 389
    :pswitch_4
    iget-object p0, p0, Lcom/yftech/settings/display/DisplayDashFragment;->mSmbDashLanguage:Lcom/yftech/settings/widget/MultiSelectView;

    :goto_0
    if-eqz p0, :cond_1

    .line 407
    invoke-virtual {p0}, Lcom/yftech/settings/widget/MultiSelectView;->getTabNum()I

    move-result p1

    if-ne p1, p2, :cond_0

    return-void

    .line 410
    :cond_0
    invoke-virtual {p0, p2}, Lcom/yftech/settings/widget/MultiSelectView;->setSelectedTab(I)Lcom/yftech/settings/widget/MultiSelectView;

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setValueView(Lcom/yftech/settings/manager/CarDashboardManager$Function;Ljava/lang/Object;)V
    .locals 2

    .line 415
    sget-object v0, Lcom/yftech/settings/display/DisplayDashFragment$6;->$SwitchMap$com$yftech$settings$manager$CarDashboardManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/CarDashboardManager$Function;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 418
    :cond_0
    iget-boolean p1, p0, Lcom/yftech/settings/display/DisplayDashFragment;->flag:Z

    if-eqz p1, :cond_1

    return-void

    .line 421
    :cond_1
    iget-object p1, p0, Lcom/yftech/settings/display/DisplayDashFragment;->mDashBrightnessSB:Lcom/yftech/settings/widget/SeekBarNumber;

    if-eqz p1, :cond_2

    move-object p1, p2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/yftech/settings/display/DisplayDashFragment;->mDashBrightnessSB:Lcom/yftech/settings/widget/SeekBarNumber;

    invoke-virtual {v1}, Lcom/yftech/settings/widget/SeekBarNumber;->getProgress()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 422
    iget-object v0, p0, Lcom/yftech/settings/display/DisplayDashFragment;->mDashBrightnessSB:Lcom/yftech/settings/widget/SeekBarNumber;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/yftech/settings/widget/SeekBarNumber;->setProgress(I)V

    .line 424
    :cond_2
    iget-object p1, p0, Lcom/yftech/settings/display/DisplayDashFragment;->mIvDashBrightness:Landroid/widget/ImageView;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/yftech/settings/display/DisplayDashFragment;->getBrightnessIcon(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method private showDashBrightnessToast()V
    .locals 3

    .line 481
    iget-object v0, p0, Lcom/yftech/settings/display/DisplayDashFragment;->mDashBrightnessToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/yftech/settings/display/DisplayDashFragment;->mDashBrightnessToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    const/4 v0, 0x0

    .line 483
    iput-object v0, p0, Lcom/yftech/settings/display/DisplayDashFragment;->mDashBrightnessToast:Landroid/widget/Toast;

    .line 485
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/settings/display/DisplayDashFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yftech/settings/display/DisplayDashFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d00d2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/settings/display/DisplayDashFragment;->mDashBrightnessToast:Landroid/widget/Toast;

    .line 487
    iget-object p0, p0, Lcom/yftech/settings/display/DisplayDashFragment;->mDashBrightnessToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private showDashDefaultSettingDialog()V
    .locals 4

    .line 432
    new-instance v0, Lcom/yftech/settings/widget/dialog/CommonDialog;

    invoke-virtual {p0}, Lcom/yftech/settings/display/DisplayDashFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yftech/settings/widget/dialog/CommonDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yftech/settings/display/DisplayDashFragment;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    .line 433
    iget-object v0, p0, Lcom/yftech/settings/display/DisplayDashFragment;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    invoke-virtual {v0}, Lcom/yftech/settings/widget/dialog/CommonDialog;->show()V

    .line 434
    iget-object v0, p0, Lcom/yftech/settings/display/DisplayDashFragment;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    new-instance v1, Lcom/yftech/settings/display/DisplayDashFragment$4;

    invoke-direct {v1, p0}, Lcom/yftech/settings/display/DisplayDashFragment$4;-><init>(Lcom/yftech/settings/display/DisplayDashFragment;)V

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/dialog/CommonDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 440
    iget-object v0, p0, Lcom/yftech/settings/display/DisplayDashFragment;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    const v1, 0x7f0d00d0

    invoke-virtual {p0, v1}, Lcom/yftech/settings/display/DisplayDashFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/dialog/CommonDialog;->setContent(Ljava/lang/String;)Lcom/yftech/settings/widget/dialog/CommonDialog;

    .line 441
    iget-object v0, p0, Lcom/yftech/settings/display/DisplayDashFragment;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const v2, 0x7f0d00cf

    invoke-virtual {p0, v2}, Lcom/yftech/settings/display/DisplayDashFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f0d00ce

    invoke-virtual {p0, v2}, Lcom/yftech/settings/display/DisplayDashFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/dialog/CommonDialog;->setButtonText([Ljava/lang/String;)Lcom/yftech/settings/widget/dialog/CommonDialog;

    .line 442
    iget-object v0, p0, Lcom/yftech/settings/display/DisplayDashFragment;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    new-instance v1, Lcom/yftech/settings/display/DisplayDashFragment$5;

    invoke-direct {v1, p0}, Lcom/yftech/settings/display/DisplayDashFragment$5;-><init>(Lcom/yftech/settings/display/DisplayDashFragment;)V

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/dialog/CommonDialog;->setOnBtnClickListener(Lcom/yftech/settings/widget/dialog/CommonDialog$OnBtnClickListener;)Lcom/yftech/settings/widget/dialog/CommonDialog;

    return-void
.end method


# virtual methods
.method protected dismissAllDialog()V
    .locals 1

    .line 474
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->dismissAllDialog()V

    .line 475
    iget-object v0, p0, Lcom/yftech/settings/display/DisplayDashFragment;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/settings/display/DisplayDashFragment;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    invoke-virtual {v0}, Lcom/yftech/settings/widget/dialog/CommonDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    iget-object p0, p0, Lcom/yftech/settings/display/DisplayDashFragment;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    invoke-virtual {p0}, Lcom/yftech/settings/widget/dialog/CommonDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 315
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v0, 0x7f08009e

    if-eq p1, v0, :cond_1

    const v0, 0x7f0800a0

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 317
    :cond_0
    invoke-direct {p0}, Lcom/yftech/settings/display/DisplayDashFragment;->showDashDefaultSettingDialog()V

    goto :goto_0

    .line 321
    :cond_1
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarLightManager;->get()Lcom/yftech/vehicle/sdk/CarLightManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/vehicle/sdk/CarLightManager;->isSmallLightEnabled()Z

    move-result p1

    .line 322
    sget-object v0, Lcom/yftech/settings/display/DisplayDashFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick() dashBrightness isSmallLightEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_2

    .line 324
    invoke-direct {p0}, Lcom/yftech/settings/display/DisplayDashFragment;->showDashBrightnessToast()V

    return-void

    .line 327
    :cond_2
    iget-object p1, p0, Lcom/yftech/settings/display/DisplayDashFragment;->mDashBrightnessSB:Lcom/yftech/settings/widget/SeekBarNumber;

    invoke-virtual {p1}, Lcom/yftech/settings/widget/SeekBarNumber;->getProgress()I

    move-result p1

    if-lez p1, :cond_3

    .line 329
    iput p1, p0, Lcom/yftech/settings/display/DisplayDashFragment;->mLastDashBrightness:I

    .line 330
    iget-object p1, p0, Lcom/yftech/settings/display/DisplayDashFragment;->mDashBrightnessSB:Lcom/yftech/settings/widget/SeekBarNumber;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/yftech/settings/widget/SeekBarNumber;->setProgress(I)V

    .line 331
    iget-object p1, p0, Lcom/yftech/settings/display/DisplayDashFragment;->mIvDashBrightness:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/yftech/settings/display/DisplayDashFragment;->getBrightnessIcon(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 332
    invoke-static {}, Lcom/yftech/settings/manager/CarDashboardManager;->getInstance()Lcom/yftech/settings/manager/CarDashboardManager;

    move-result-object p0

    sget-object p1, Lcom/yftech/settings/manager/CarDashboardManager$Function;->DASH_BACK_LIGHT_LEVEL_VALUE:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/yftech/settings/manager/CarDashboardManager;->setValue(Lcom/yftech/settings/manager/CarDashboardManager$Function;Ljava/lang/Object;)Z

    goto :goto_0

    .line 334
    :cond_3
    iget-object p1, p0, Lcom/yftech/settings/display/DisplayDashFragment;->mDashBrightnessSB:Lcom/yftech/settings/widget/SeekBarNumber;

    iget v0, p0, Lcom/yftech/settings/display/DisplayDashFragment;->mLastDashBrightness:I

    invoke-virtual {p1, v0}, Lcom/yftech/settings/widget/SeekBarNumber;->setProgress(I)V

    .line 335
    iget-object p1, p0, Lcom/yftech/settings/display/DisplayDashFragment;->mIvDashBrightness:Landroid/widget/ImageView;

    iget v0, p0, Lcom/yftech/settings/display/DisplayDashFragment;->mLastDashBrightness:I

    invoke-direct {p0, v0}, Lcom/yftech/settings/display/DisplayDashFragment;->getBrightnessIcon(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 336
    invoke-static {}, Lcom/yftech/settings/manager/CarDashboardManager;->getInstance()Lcom/yftech/settings/manager/CarDashboardManager;

    move-result-object p1

    sget-object v0, Lcom/yftech/settings/manager/CarDashboardManager$Function;->DASH_BACK_LIGHT_LEVEL_VALUE:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    iget p0, p0, Lcom/yftech/settings/display/DisplayDashFragment;->mLastDashBrightness:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/yftech/settings/manager/CarDashboardManager;->setValue(Lcom/yftech/settings/manager/CarDashboardManager$Function;Ljava/lang/Object;)Z

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

    const p3, 0x7f0a003d

    const/4 v0, 0x0

    .line 88
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 89
    invoke-direct {p0, p1}, Lcom/yftech/settings/display/DisplayDashFragment;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method public onPause()V
    .locals 2

    .line 102
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onPause()V

    .line 103
    invoke-static {}, Lcom/yftech/settings/manager/CarDashboardManager;->getInstance()Lcom/yftech/settings/manager/CarDashboardManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/settings/display/DisplayDashFragment;->mCarDashboardModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarDashboardManager;->unregisterModelCallback(Lcom/yftech/settings/manager/BaseManager$ModelCallback;)V

    .line 104
    invoke-static {}, Lcom/yftech/settings/manager/CarDashboardManager;->getInstance()Lcom/yftech/settings/manager/CarDashboardManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/CarDashboardManager$Function;->STOP_TIMEOUT_ACTION:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarDashboardManager;->setAction(Lcom/yftech/settings/manager/CarDashboardManager$Function;)Z

    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p0, Lcom/yftech/settings/display/DisplayDashFragment;->flag:Z

    .line 106
    iget-object p0, p0, Lcom/yftech/settings/display/DisplayDashFragment;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onProgressChanged(Lcom/yftech/settings/widget/SeekBarNumber;I)V
    .locals 2

    .line 351
    invoke-virtual {p1}, Lcom/yftech/settings/widget/SeekBarNumber;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v0, 0x7f08009e

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 357
    :cond_0
    invoke-static {}, Lcom/yftech/settings/manager/CarDashboardManager;->getInstance()Lcom/yftech/settings/manager/CarDashboardManager;

    move-result-object p1

    sget-object v0, Lcom/yftech/settings/manager/CarDashboardManager$Function;->DASH_BACK_LIGHT_LEVEL_VALUE:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/yftech/settings/manager/CarDashboardManager;->setValue(Lcom/yftech/settings/manager/CarDashboardManager$Function;Ljava/lang/Object;)Z

    .line 358
    iget-object p1, p0, Lcom/yftech/settings/display/DisplayDashFragment;->mIvDashBrightness:Landroid/widget/ImageView;

    invoke-direct {p0, p2}, Lcom/yftech/settings/display/DisplayDashFragment;->getBrightnessIcon(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 95
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onResume()V

    .line 96
    invoke-direct {p0}, Lcom/yftech/settings/display/DisplayDashFragment;->initViewData()V

    .line 97
    invoke-static {}, Lcom/yftech/settings/manager/CarDashboardManager;->getInstance()Lcom/yftech/settings/manager/CarDashboardManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/settings/display/DisplayDashFragment;->mCarDashboardModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/manager/CarDashboardManager;->registerModelCallback(Lcom/yftech/settings/manager/BaseManager$ModelCallback;)V

    return-void
.end method

.method public onStartTrackingTouch(Lcom/yftech/settings/widget/SeekBarNumber;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Lcom/yftech/settings/widget/SeekBarNumber;)V
    .locals 3

    .line 370
    invoke-virtual {p1}, Lcom/yftech/settings/widget/SeekBarNumber;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v0, 0x7f08009e

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 372
    iput-boolean p1, p0, Lcom/yftech/settings/display/DisplayDashFragment;->flag:Z

    .line 373
    iget-object p1, p0, Lcom/yftech/settings/display/DisplayDashFragment;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/yftech/settings/display/DisplayDashFragment$3;

    invoke-direct {v0, p0}, Lcom/yftech/settings/display/DisplayDashFragment$3;-><init>(Lcom/yftech/settings/display/DisplayDashFragment;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public onSwitch(Lcom/yftech/settings/widget/MultiSelectView;ILjava/lang/String;Z)V
    .locals 0

    if-nez p4, :cond_0

    return-void

    .line 288
    :cond_0
    sget-object p0, Lcom/yftech/settings/manager/CarDashboardManager$Function;->UNKNOWN:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    .line 289
    invoke-virtual {p1}, Lcom/yftech/settings/widget/MultiSelectView;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 294
    :pswitch_0
    sget-object p0, Lcom/yftech/settings/manager/CarDashboardManager$Function;->DASH_VOLUME_OPTION:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    goto :goto_0

    .line 300
    :pswitch_1
    sget-object p0, Lcom/yftech/settings/manager/CarDashboardManager$Function;->DASH_TEMPERATURE_UNIT_OPTION:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    goto :goto_0

    .line 303
    :pswitch_2
    sget-object p0, Lcom/yftech/settings/manager/CarDashboardManager$Function;->DASH_PRESSURE_UNIT_OPTION:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    goto :goto_0

    .line 291
    :pswitch_3
    sget-object p0, Lcom/yftech/settings/manager/CarDashboardManager$Function;->DASH_LANGUAGE_OPTION:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    goto :goto_0

    .line 297
    :pswitch_4
    sget-object p0, Lcom/yftech/settings/manager/CarDashboardManager$Function;->DASH_FUEL_ECONOMY_AND_DISTANCE_UNIT_OPTION:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    .line 308
    :goto_0
    sget-object p1, Lcom/yftech/settings/manager/CarDashboardManager$Function;->UNKNOWN:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    if-eq p0, p1, :cond_1

    .line 309
    invoke-static {}, Lcom/yftech/settings/manager/CarDashboardManager;->getInstance()Lcom/yftech/settings/manager/CarDashboardManager;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/yftech/settings/manager/CarDashboardManager;->setOption(Lcom/yftech/settings/manager/CarDashboardManager$Function;I)Z

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0800a1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
