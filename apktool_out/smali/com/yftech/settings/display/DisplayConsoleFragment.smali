.class public Lcom/yftech/settings/display/DisplayConsoleFragment;
.super Lcom/yftech/settings/BaseFragment;
.source "DisplayConsoleFragment.java"

# interfaces
.implements Lcom/yftech/settings/widget/SeekBarNumber$OnSeekChangeListener;
.implements Lcom/yftech/settings/widget/MultiSelectView$OnSwitchListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/settings/display/DisplayConsoleFragment$WallpaperBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final BRIGHTNESS_PROGRESS_MIN:I = 0x0

.field private static final KEY_FOR_LAST_SCREEN_BRIGHTNESS:Ljava/lang/String; = "last_screen_brightness"

.field private static final TAG:Ljava/lang/String; = "DisplayConsoleFragment"

.field private static final WALLPAPER_SETTING_ACTION:Ljava/lang/String; = "com.yftech.multimedia.action.wallpaper.setting"

.field private static final WALLPAPER_SETTING_DATA:Ljava/lang/String; = "com.yftech.multimedia.data.wallpaper.setting"


# instance fields
.field private lastProgressChangedTime:J

.field private mBrightnessSB:Lcom/yftech/settings/widget/SeekBarNumber;

.field private mHandler:Landroid/os/Handler;

.field private mIvBrightnessIcon:Landroid/widget/ImageView;

.field private mProgresss:I

.field private mRivWallpaper:Lcom/yftech/settings/widget/RoundedImageView;

.field private mSettingsModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yftech/settings/manager/BaseManager$ModelCallback<",
            "Lcom/yftech/settings/manager/SettingsManager$Function;",
            ">;"
        }
    .end annotation
.end field

.field private mSmbAcShowTime:Lcom/yftech/settings/widget/MultiSelectView;

.field private mWallpaperBroadcastReceiver:Lcom/yftech/settings/display/DisplayConsoleFragment$WallpaperBroadcastReceiver;

.field private mWallpaperDialog:Lcom/yftech/settings/widget/dialog/WallpaperDialog;

.field private wallpaperPath:Ljava/lang/String;

.field private wallpaperSettingRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Lcom/yftech/settings/BaseFragment;-><init>()V

    const-wide/16 v0, 0x0

    .line 52
    iput-wide v0, p0, Lcom/yftech/settings/display/DisplayConsoleFragment;->lastProgressChangedTime:J

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yftech/settings/display/DisplayConsoleFragment;->mHandler:Landroid/os/Handler;

    .line 65
    new-instance v0, Lcom/yftech/settings/display/DisplayConsoleFragment$1;

    invoke-direct {v0, p0}, Lcom/yftech/settings/display/DisplayConsoleFragment$1;-><init>(Lcom/yftech/settings/display/DisplayConsoleFragment;)V

    iput-object v0, p0, Lcom/yftech/settings/display/DisplayConsoleFragment;->mSettingsModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;

    .line 350
    new-instance v0, Lcom/yftech/settings/display/DisplayConsoleFragment$2;

    invoke-direct {v0, p0}, Lcom/yftech/settings/display/DisplayConsoleFragment$2;-><init>(Lcom/yftech/settings/display/DisplayConsoleFragment;)V

    iput-object v0, p0, Lcom/yftech/settings/display/DisplayConsoleFragment;->wallpaperSettingRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/settings/display/DisplayConsoleFragment;Lcom/yftech/settings/manager/SettingsManager$Function;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/display/DisplayConsoleFragment;->setSwitchMultiButtonView(Lcom/yftech/settings/manager/SettingsManager$Function;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/yftech/settings/display/DisplayConsoleFragment;Lcom/yftech/settings/manager/SettingsManager$Function;Ljava/lang/Object;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/display/DisplayConsoleFragment;->setValueView(Lcom/yftech/settings/manager/SettingsManager$Function;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/yftech/settings/display/DisplayConsoleFragment;)Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/yftech/settings/display/DisplayConsoleFragment;->wallpaperPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lcom/yftech/settings/display/DisplayConsoleFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/yftech/settings/display/DisplayConsoleFragment;->wallpaperPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/yftech/settings/display/DisplayConsoleFragment;)Ljava/lang/Runnable;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/yftech/settings/display/DisplayConsoleFragment;->wallpaperSettingRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$500(Lcom/yftech/settings/display/DisplayConsoleFragment;)Landroid/os/Handler;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/yftech/settings/display/DisplayConsoleFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/yftech/settings/display/DisplayConsoleFragment;)Lcom/yftech/settings/widget/RoundedImageView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/yftech/settings/display/DisplayConsoleFragment;->mRivWallpaper:Lcom/yftech/settings/widget/RoundedImageView;

    return-object p0
.end method

.method private getBrightnessIcon(I)I
    .locals 1

    if-gtz p1, :cond_0

    const p0, 0x7f0b00fb

    return p0

    :cond_0
    const/16 p0, 0x21

    if-gt p1, p0, :cond_1

    if-lez p1, :cond_1

    const p0, 0x7f0b00fc

    return p0

    :cond_1
    const/16 v0, 0x42

    if-gt p1, v0, :cond_2

    if-le p1, p0, :cond_2

    const p0, 0x7f0b00fd

    return p0

    :cond_2
    const p0, 0x7f0b00fe

    return p0
.end method

.method private getScreenBrightness()I
    .locals 4

    .line 298
    invoke-static {}, Lcom/yftech/settings/manager/SettingsManager;->getInstance()Lcom/yftech/settings/manager/SettingsManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/SettingsManager$Function;->SCREEN_BRIGHTNESS_VALUE:Lcom/yftech/settings/manager/SettingsManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/SettingsManager;->getValue(Lcom/yftech/settings/manager/SettingsManager$Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 299
    invoke-direct {p0, v0}, Lcom/yftech/settings/display/DisplayConsoleFragment;->originalToProgressBrightness(I)I

    move-result p0

    const-string v1, "DisplayConsoleFragment"

    .line 300
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getScreenBrightness originalBrightness:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", brightness:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method private handleBrightnessChanged(I)V
    .locals 1

    .line 305
    invoke-direct {p0, p1}, Lcom/yftech/settings/display/DisplayConsoleFragment;->setScreenBrightness(I)V

    .line 306
    iget-object v0, p0, Lcom/yftech/settings/display/DisplayConsoleFragment;->mIvBrightnessIcon:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/yftech/settings/display/DisplayConsoleFragment;->getBrightnessIcon(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 7

    const v0, 0x7f080097

    .line 130
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x7f080218

    .line 131
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0d00c7

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    const v3, 0x7f0800eb

    .line 132
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/yftech/settings/display/DisplayConsoleFragment;->mIvBrightnessIcon:Landroid/widget/ImageView;

    const v3, 0x7f08018b

    .line 133
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yftech/settings/widget/SeekBarNumber;

    iput-object v1, p0, Lcom/yftech/settings/display/DisplayConsoleFragment;->mBrightnessSB:Lcom/yftech/settings/widget/SeekBarNumber;

    .line 134
    iget-object v1, p0, Lcom/yftech/settings/display/DisplayConsoleFragment;->mBrightnessSB:Lcom/yftech/settings/widget/SeekBarNumber;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/yftech/settings/widget/SeekBarNumber;->setTag(Ljava/lang/Object;)V

    .line 135
    iget-object v1, p0, Lcom/yftech/settings/display/DisplayConsoleFragment;->mBrightnessSB:Lcom/yftech/settings/widget/SeekBarNumber;

    invoke-static {}, Lcom/yftech/settings/manager/SettingsManager;->getInstance()Lcom/yftech/settings/manager/SettingsManager;

    move-result-object v3

    sget-object v4, Lcom/yftech/settings/manager/SettingsManager$Function;->SCREEN_BRIGHTNESS_MAX_GET_VALUE:Lcom/yftech/settings/manager/SettingsManager$Function;

    invoke-virtual {v3, v4}, Lcom/yftech/settings/manager/SettingsManager;->getValue(Lcom/yftech/settings/manager/SettingsManager$Function;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/yftech/settings/widget/SeekBarNumber;->setMax(I)V

    .line 136
    iget-object v1, p0, Lcom/yftech/settings/display/DisplayConsoleFragment;->mBrightnessSB:Lcom/yftech/settings/widget/SeekBarNumber;

    invoke-virtual {v1, p0}, Lcom/yftech/settings/widget/SeekBarNumber;->setOnSeekChangeListener(Lcom/yftech/settings/widget/SeekBarNumber$OnSeekChangeListener;)V

    .line 137
    iget-object v1, p0, Lcom/yftech/settings/display/DisplayConsoleFragment;->mIvBrightnessIcon:Landroid/widget/ImageView;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 138
    iget-object v0, p0, Lcom/yftech/settings/display/DisplayConsoleFragment;->mIvBrightnessIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080096

    .line 141
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 142
    invoke-static {}, Lcom/yftech/settings/manager/SettingsManager;->getInstance()Lcom/yftech/settings/manager/SettingsManager;

    move-result-object v3

    sget-object v4, Lcom/yftech/settings/manager/SettingsManager$Function;->AC_VIEW_HOLD_TIME_OPTION:Lcom/yftech/settings/manager/SettingsManager$Function;

    invoke-virtual {v3, v4}, Lcom/yftech/settings/manager/SettingsManager;->getFunctionPresent(Lcom/yftech/settings/manager/SettingsManager$Function;)Z

    move-result v3

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 143
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v6, 0x7f0d00c6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    const v3, 0x7f080158

    .line 144
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yftech/settings/widget/MultiSelectView;

    iput-object v1, p0, Lcom/yftech/settings/display/DisplayConsoleFragment;->mSmbAcShowTime:Lcom/yftech/settings/widget/MultiSelectView;

    .line 145
    iget-object v1, p0, Lcom/yftech/settings/display/DisplayConsoleFragment;->mSmbAcShowTime:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yftech/settings/widget/MultiSelectView;->setTag(Ljava/lang/Object;)V

    .line 146
    iget-object v0, p0, Lcom/yftech/settings/display/DisplayConsoleFragment;->mSmbAcShowTime:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-virtual {p0}, Lcom/yftech/settings/display/DisplayConsoleFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f020014

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/MultiSelectView;->setText([Ljava/lang/String;)Lcom/yftech/settings/widget/MultiSelectView;

    .line 147
    iget-object v0, p0, Lcom/yftech/settings/display/DisplayConsoleFragment;->mSmbAcShowTime:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/widget/MultiSelectView;->setOnSwitchListener(Lcom/yftech/settings/widget/MultiSelectView$OnSwitchListener;)Lcom/yftech/settings/widget/MultiSelectView;

    const v0, 0x7f080098

    .line 150
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    .line 151
    invoke-static {}, Lcom/yftech/vehicle/sdk/HostConfig;->isWallpaperPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    move v4, v5

    :cond_1
    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 152
    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0d00ca

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f08006f

    .line 153
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 154
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f08010a

    .line 155
    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/yftech/settings/widget/RoundedImageView;

    iput-object v2, p0, Lcom/yftech/settings/display/DisplayConsoleFragment;->mRivWallpaper:Lcom/yftech/settings/widget/RoundedImageView;

    .line 156
    iget-object v2, p0, Lcom/yftech/settings/display/DisplayConsoleFragment;->mRivWallpaper:Lcom/yftech/settings/widget/RoundedImageView;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/yftech/settings/widget/RoundedImageView;->setTag(Ljava/lang/Object;)V

    .line 157
    iget-object v0, p0, Lcom/yftech/settings/display/DisplayConsoleFragment;->mRivWallpaper:Lcom/yftech/settings/widget/RoundedImageView;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/widget/RoundedImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    .line 161
    new-instance v0, Ljava/util/Locale;

    const-string v2, "es"

    invoke-direct {v0, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 163
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Button;

    const/16 v0, 0x31

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setGravity(I)V

    .line 164
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Button;

    const/high16 p1, 0x41c00000    # 24.0f

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setTextSize(F)V

    :cond_2
    return-void
.end method

.method private initViewData()V
    .locals 3

    .line 169
    invoke-direct {p0}, Lcom/yftech/settings/display/DisplayConsoleFragment;->getScreenBrightness()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/yftech/settings/display/DisplayConsoleFragment;->setBrightnessProgress(I)V

    .line 170
    sget-object v0, Lcom/yftech/settings/manager/SettingsManager$Function;->AC_VIEW_HOLD_TIME_OPTION:Lcom/yftech/settings/manager/SettingsManager$Function;

    invoke-static {}, Lcom/yftech/settings/manager/SettingsManager;->getInstance()Lcom/yftech/settings/manager/SettingsManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/SettingsManager$Function;->AC_VIEW_HOLD_TIME_OPTION:Lcom/yftech/settings/manager/SettingsManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/SettingsManager;->getOption(Lcom/yftech/settings/manager/SettingsManager$Function;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/display/DisplayConsoleFragment;->setSwitchMultiButtonView(Lcom/yftech/settings/manager/SettingsManager$Function;I)V

    return-void
.end method

.method private originalToProgressBrightness(I)I
    .locals 0

    return p1
.end method

.method private progressToOriginalBrightness(I)I
    .locals 0

    return p1
.end method

.method private setBrightnessProgress(I)V
    .locals 3

    const-string v0, "DisplayConsoleFragment"

    .line 292
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBrightnessProgress progress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/yftech/settings/display/DisplayConsoleFragment;->mBrightnessSB:Lcom/yftech/settings/widget/SeekBarNumber;

    invoke-virtual {v0, p1}, Lcom/yftech/settings/widget/SeekBarNumber;->setProgress(I)V

    .line 294
    iget-object v0, p0, Lcom/yftech/settings/display/DisplayConsoleFragment;->mIvBrightnessIcon:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/yftech/settings/display/DisplayConsoleFragment;->getBrightnessIcon(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private setScreenBrightness(I)V
    .locals 4

    .line 310
    invoke-direct {p0, p1}, Lcom/yftech/settings/display/DisplayConsoleFragment;->progressToOriginalBrightness(I)I

    move-result p0

    .line 311
    invoke-static {}, Lcom/yftech/settings/manager/SettingsManager;->getInstance()Lcom/yftech/settings/manager/SettingsManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/SettingsManager$Function;->SCREEN_BRIGHTNESS_VALUE:Lcom/yftech/settings/manager/SettingsManager$Function;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yftech/settings/manager/SettingsManager;->setValue(Lcom/yftech/settings/manager/SettingsManager$Function;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "DisplayConsoleFragment"

    .line 312
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setScreenBrightness, brightness:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", originalBrightness:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", ret:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setSwitchMultiButtonView(Lcom/yftech/settings/manager/SettingsManager$Function;I)V
    .locals 1

    .line 262
    sget-object v0, Lcom/yftech/settings/display/DisplayConsoleFragment$3;->$SwitchMap$com$yftech$settings$manager$SettingsManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/SettingsManager$Function;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 264
    :cond_0
    iget-object p0, p0, Lcom/yftech/settings/display/DisplayConsoleFragment;->mSmbAcShowTime:Lcom/yftech/settings/widget/MultiSelectView;

    :goto_0
    if-eqz p0, :cond_2

    .line 270
    invoke-virtual {p0}, Lcom/yftech/settings/widget/MultiSelectView;->getTabNum()I

    move-result p1

    if-ne p1, p2, :cond_1

    return-void

    .line 273
    :cond_1
    invoke-virtual {p0, p2}, Lcom/yftech/settings/widget/MultiSelectView;->setSelectedTab(I)Lcom/yftech/settings/widget/MultiSelectView;

    :cond_2
    return-void
.end method

.method private setValueView(Lcom/yftech/settings/manager/SettingsManager$Function;Ljava/lang/Object;)V
    .locals 1

    .line 278
    sget-object v0, Lcom/yftech/settings/display/DisplayConsoleFragment$3;->$SwitchMap$com$yftech$settings$manager$SettingsManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/SettingsManager$Function;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 280
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/yftech/settings/display/DisplayConsoleFragment;->originalToProgressBrightness(I)I

    move-result p1

    .line 281
    iget-object p2, p0, Lcom/yftech/settings/display/DisplayConsoleFragment;->mBrightnessSB:Lcom/yftech/settings/widget/SeekBarNumber;

    invoke-virtual {p2}, Lcom/yftech/settings/widget/SeekBarNumber;->getProgress()I

    move-result p2

    if-eq p1, p2, :cond_1

    .line 283
    invoke-direct {p0, p1}, Lcom/yftech/settings/display/DisplayConsoleFragment;->setBrightnessProgress(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 175
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v0, 0x7f08006f

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 178
    :pswitch_0
    iget-object p0, p0, Lcom/yftech/settings/display/DisplayConsoleFragment;->mBrightnessSB:Lcom/yftech/settings/widget/SeekBarNumber;

    invoke-virtual {p0}, Lcom/yftech/settings/widget/SeekBarNumber;->getProgress()I

    move-result p0

    const/4 p1, 0x1

    if-lez p0, :cond_0

    const-string v0, "last_screen_brightness"

    .line 180
    invoke-static {v0, p0, p1}, Lcom/yftech/car/data/CarDataManager;->setInt(Ljava/lang/String;IZ)Z

    const-string p1, "DisplayConsoleFragment"

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInt(KEY_FOR_LAST_SCREEN_BRIGHTNESS): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-static {}, Lcom/yftech/settings/manager/SettingsManager;->getInstance()Lcom/yftech/settings/manager/SettingsManager;

    move-result-object p0

    sget-object p1, Lcom/yftech/settings/manager/SettingsManager$Function;->SCREEN_BRIGHTNESS_VALUE:Lcom/yftech/settings/manager/SettingsManager$Function;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/yftech/settings/manager/SettingsManager;->setValue(Lcom/yftech/settings/manager/SettingsManager$Function;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p0, "last_screen_brightness"

    .line 184
    invoke-static {p0, p1}, Lcom/yftech/car/data/CarDataManager;->getInt(Ljava/lang/String;I)I

    move-result p0

    const-string p1, "DisplayConsoleFragment"

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getInt(KEY_FOR_LAST_SCREEN_BRIGHTNESS): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-static {}, Lcom/yftech/settings/manager/SettingsManager;->getInstance()Lcom/yftech/settings/manager/SettingsManager;

    move-result-object p1

    sget-object v0, Lcom/yftech/settings/manager/SettingsManager$Function;->SCREEN_BRIGHTNESS_VALUE:Lcom/yftech/settings/manager/SettingsManager$Function;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/yftech/settings/manager/SettingsManager;->setValue(Lcom/yftech/settings/manager/SettingsManager$Function;Ljava/lang/Object;)Z

    goto :goto_0

    .line 192
    :cond_1
    :pswitch_1
    new-instance p1, Lcom/yftech/settings/widget/dialog/WallpaperDialog;

    invoke-virtual {p0}, Lcom/yftech/settings/display/DisplayConsoleFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/yftech/settings/widget/dialog/WallpaperDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/yftech/settings/display/DisplayConsoleFragment;->mWallpaperDialog:Lcom/yftech/settings/widget/dialog/WallpaperDialog;

    .line 193
    iget-object p0, p0, Lcom/yftech/settings/display/DisplayConsoleFragment;->mWallpaperDialog:Lcom/yftech/settings/widget/dialog/WallpaperDialog;

    invoke-virtual {p0}, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->show()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f080097
        :pswitch_0
        :pswitch_1
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

    const p3, 0x7f0a003c

    const/4 v0, 0x0

    .line 95
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 96
    invoke-direct {p0, p1}, Lcom/yftech/settings/display/DisplayConsoleFragment;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method public onPause()V
    .locals 2

    .line 120
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onPause()V

    .line 121
    invoke-static {}, Lcom/yftech/settings/manager/SettingsManager;->getInstance()Lcom/yftech/settings/manager/SettingsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/settings/display/DisplayConsoleFragment;->mSettingsModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/SettingsManager;->unregisterModelCallback(Lcom/yftech/settings/manager/BaseManager$ModelCallback;)V

    .line 122
    iget-object v0, p0, Lcom/yftech/settings/display/DisplayConsoleFragment;->mWallpaperDialog:Lcom/yftech/settings/widget/dialog/WallpaperDialog;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/yftech/settings/display/DisplayConsoleFragment;->mWallpaperDialog:Lcom/yftech/settings/widget/dialog/WallpaperDialog;

    invoke-virtual {v0}, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->dismiss()V

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/settings/display/DisplayConsoleFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/settings/display/DisplayConsoleFragment;->mWallpaperBroadcastReceiver:Lcom/yftech/settings/display/DisplayConsoleFragment$WallpaperBroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onProgressChanged(Lcom/yftech/settings/widget/SeekBarNumber;I)V
    .locals 2

    .line 225
    invoke-virtual {p1}, Lcom/yftech/settings/widget/SeekBarNumber;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v0, 0x7f080097

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 230
    :cond_0
    iget-wide v0, p0, Lcom/yftech/settings/display/DisplayConsoleFragment;->lastProgressChangedTime:J

    invoke-static {v0, v1}, Lcom/yftech/settings/utils/Utils;->progressChangedEnable(J)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 232
    invoke-direct {p0, p2}, Lcom/yftech/settings/display/DisplayConsoleFragment;->handleBrightnessChanged(I)V

    .line 233
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yftech/settings/display/DisplayConsoleFragment;->lastProgressChangedTime:J

    .line 235
    :cond_1
    iput p2, p0, Lcom/yftech/settings/display/DisplayConsoleFragment;->mProgresss:I

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 102
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onResume()V

    .line 103
    invoke-direct {p0}, Lcom/yftech/settings/display/DisplayConsoleFragment;->initViewData()V

    .line 104
    invoke-static {}, Lcom/yftech/settings/manager/SettingsManager;->getInstance()Lcom/yftech/settings/manager/SettingsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/settings/display/DisplayConsoleFragment;->mSettingsModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/SettingsManager;->registerModelCallback(Lcom/yftech/settings/manager/BaseManager$ModelCallback;)V

    .line 105
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.yftech.multimedia.action.wallpaper.setting"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 106
    new-instance v1, Lcom/yftech/settings/display/DisplayConsoleFragment$WallpaperBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/yftech/settings/display/DisplayConsoleFragment$WallpaperBroadcastReceiver;-><init>(Lcom/yftech/settings/display/DisplayConsoleFragment;Lcom/yftech/settings/display/DisplayConsoleFragment$1;)V

    iput-object v1, p0, Lcom/yftech/settings/display/DisplayConsoleFragment;->mWallpaperBroadcastReceiver:Lcom/yftech/settings/display/DisplayConsoleFragment$WallpaperBroadcastReceiver;

    .line 107
    invoke-virtual {p0}, Lcom/yftech/settings/display/DisplayConsoleFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/yftech/settings/display/DisplayConsoleFragment;->mWallpaperBroadcastReceiver:Lcom/yftech/settings/display/DisplayConsoleFragment$WallpaperBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 110
    invoke-static {}, Lcom/yftech/settings/utils/WallpaperUtils;->getWallPaperOutputPath()Ljava/lang/String;

    move-result-object v0

    .line 111
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 114
    iget-object p0, p0, Lcom/yftech/settings/display/DisplayConsoleFragment;->mRivWallpaper:Lcom/yftech/settings/widget/RoundedImageView;

    invoke-virtual {p0, v0}, Lcom/yftech/settings/widget/RoundedImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Lcom/yftech/settings/widget/SeekBarNumber;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Lcom/yftech/settings/widget/SeekBarNumber;)V
    .locals 3

    const-string v0, "DisplayConsoleFragment"

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStopTrackingTouch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yftech/settings/display/DisplayConsoleFragment;->mProgresss:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-virtual {p1}, Lcom/yftech/settings/widget/SeekBarNumber;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0x7f080097

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 249
    :cond_0
    invoke-virtual {p1}, Lcom/yftech/settings/widget/SeekBarNumber;->getProgress()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "last_screen_brightness"

    .line 250
    invoke-virtual {p1}, Lcom/yftech/settings/widget/SeekBarNumber;->getProgress()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/yftech/car/data/CarDataManager;->setInt(Ljava/lang/String;IZ)Z

    .line 252
    :cond_1
    invoke-virtual {p1}, Lcom/yftech/settings/widget/SeekBarNumber;->getProgress()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/yftech/settings/display/DisplayConsoleFragment;->handleBrightnessChanged(I)V

    .line 253
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yftech/settings/display/DisplayConsoleFragment;->lastProgressChangedTime:J

    :goto_0
    return-void
.end method

.method public onSwitch(Lcom/yftech/settings/widget/MultiSelectView;ILjava/lang/String;Z)V
    .locals 0

    if-nez p4, :cond_0

    return-void

    .line 205
    :cond_0
    sget-object p0, Lcom/yftech/settings/manager/SettingsManager$Function;->UNKNOWN:Lcom/yftech/settings/manager/SettingsManager$Function;

    .line 206
    invoke-virtual {p1}, Lcom/yftech/settings/widget/MultiSelectView;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const p3, 0x7f080096

    if-eq p1, p3, :cond_1

    goto :goto_0

    .line 208
    :cond_1
    sget-object p0, Lcom/yftech/settings/manager/SettingsManager$Function;->AC_VIEW_HOLD_TIME_OPTION:Lcom/yftech/settings/manager/SettingsManager$Function;

    .line 213
    :goto_0
    sget-object p1, Lcom/yftech/settings/manager/SettingsManager$Function;->UNKNOWN:Lcom/yftech/settings/manager/SettingsManager$Function;

    if-eq p0, p1, :cond_2

    .line 214
    invoke-static {}, Lcom/yftech/settings/manager/SettingsManager;->getInstance()Lcom/yftech/settings/manager/SettingsManager;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/yftech/settings/manager/SettingsManager;->setOption(Lcom/yftech/settings/manager/SettingsManager$Function;I)Z

    :cond_2
    return-void
.end method
