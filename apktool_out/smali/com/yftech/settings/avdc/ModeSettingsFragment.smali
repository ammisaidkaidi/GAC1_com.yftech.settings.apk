.class public Lcom/yftech/settings/avdc/ModeSettingsFragment;
.super Lcom/yftech/settings/BaseFragment;
.source "ModeSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/yftech/settings/widget/SwitchMultiButton$OnSwitchListener;
.implements Lcom/yftech/settings/widget/SeekBarNumber$OnSeekChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final THROTTLE_SENSITIVITY_PROGRESS_MAX:I = 0x8

.field private static mInstance:Lcom/yftech/settings/avdc/ModeSettingsFragment;


# instance fields
.field private AC_COMFORT_CURVE:[I

.field private AC_COMFORT_CURVE_PLAY_TIME:[J

.field private AC_COMFORT_CURVE_VALUE:[Ljava/lang/String;

.field private DRIVE_SYSTEM_MODE:[Ljava/lang/String;

.field private ESP_STYLE:[Ljava/lang/String;

.field private IMG_DIRECTION_STEER_HAND:[I

.field private IMG_DIRECTION_STEER_HAND_NO_GAC:[I

.field private IMG_DIRECTION_STEER_HAND_RIGHT:[I

.field private SOUND_WAVES:[Ljava/lang/String;

.field private STEERING_HAND:[Ljava/lang/String;

.field private animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field private drivingModeSettingBg:Landroid/widget/RelativeLayout;

.field private ivBg:Landroid/widget/ImageView;

.field private ivWindLoop:Landroid/widget/ImageView;

.field private layoutAcComfortCurve:Landroid/view/View;

.field private layoutAcComfortCurveSportPlus:Landroid/widget/RelativeLayout;

.field private layoutEspStyle:Landroid/view/View;

.field private layoutEspStyleSportPlus:Landroid/widget/RelativeLayout;

.field private layoutModeReset:Landroid/view/View;

.field private layoutSoundWaves:Landroid/view/View;

.field private layoutSoundWavesSportPlus:Landroid/widget/RelativeLayout;

.field private layoutSteeringHand:Landroid/view/View;

.field private layoutSteeringHandSportPlus:Landroid/widget/RelativeLayout;

.field private mCarDriveModeModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yftech/settings/manager/BaseManager$ModelCallback<",
            "Lcom/yftech/settings/manager/CarDriveModeManager$Function;",
            ">;"
        }
    .end annotation
.end field

.field private mCarPartsModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yftech/settings/manager/BaseManager$ModelCallback<",
            "Lcom/yftech/settings/manager/CarPartsManager$Function;",
            ">;"
        }
    .end annotation
.end field

.field private mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

.field private resetIvBgHandler:Landroid/os/Handler;

.field private setImageViewRunnable:Ljava/lang/Runnable;

.field private smbAcComfortCurve:Lcom/yftech/settings/widget/SwitchMultiButton;

.field private smbEspStyle:Lcom/yftech/settings/widget/SwitchMultiButton;

.field private smbSteeringHand:Lcom/yftech/settings/widget/SwitchMultiButton;

.field private swSoundWave:Lcom/yftech/settings/widget/Switcher;

.field private tvAcComfortCurve:Landroid/widget/TextView;

.field private tvEspStyle:Landroid/widget/TextView;

.field private tvSoundWaves:Landroid/widget/TextView;

.field private tvSteeringHand:Landroid/widget/TextView;

.field private valueCurrentDrivingMode:Landroid/widget/TextView;

.field private valuePowerSystemValue:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Lcom/yftech/settings/BaseFragment;-><init>()V

    const/4 v0, 0x3

    .line 74
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->IMG_DIRECTION_STEER_HAND:[I

    .line 78
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->IMG_DIRECTION_STEER_HAND_NO_GAC:[I

    .line 83
    new-array v1, v0, [I

    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->IMG_DIRECTION_STEER_HAND_RIGHT:[I

    .line 88
    new-array v1, v0, [I

    fill-array-data v1, :array_3

    iput-object v1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->AC_COMFORT_CURVE:[I

    .line 93
    new-array v0, v0, [J

    fill-array-data v0, :array_4

    iput-object v0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->AC_COMFORT_CURVE_PLAY_TIME:[J

    .line 103
    new-instance v0, Lcom/yftech/settings/avdc/ModeSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/yftech/settings/avdc/ModeSettingsFragment$1;-><init>(Lcom/yftech/settings/avdc/ModeSettingsFragment;)V

    iput-object v0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->mCarDriveModeModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;

    .line 133
    new-instance v0, Lcom/yftech/settings/avdc/ModeSettingsFragment$2;

    invoke-direct {v0, p0}, Lcom/yftech/settings/avdc/ModeSettingsFragment$2;-><init>(Lcom/yftech/settings/avdc/ModeSettingsFragment;)V

    iput-object v0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->mCarPartsModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;

    .line 149
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->resetIvBgHandler:Landroid/os/Handler;

    .line 639
    new-instance v0, Lcom/yftech/settings/avdc/ModeSettingsFragment$3;

    invoke-direct {v0, p0}, Lcom/yftech/settings/avdc/ModeSettingsFragment$3;-><init>(Lcom/yftech/settings/avdc/ModeSettingsFragment;)V

    iput-object v0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->setImageViewRunnable:Ljava/lang/Runnable;

    return-void

    :array_0
    .array-data 4
        0x7f0b0051
        0x7f0b004e
        0x7f0b0054
    .end array-data

    :array_1
    .array-data 4
        0x7f0b0052
        0x7f0b004f
        0x7f0b0055
    .end array-data

    :array_2
    .array-data 4
        0x7f0b0053
        0x7f0b0050
        0x7f0b0056
    .end array-data

    :array_3
    .array-data 4
        0x7f070059
        0x7f070058
        0x7f070057
    .end array-data

    :array_4
    .array-data 8
        0x1770
        0xbb8
        0x5dc
    .end array-data
.end method

.method static synthetic access$000(Lcom/yftech/settings/avdc/ModeSettingsFragment;Lcom/yftech/settings/manager/CarDriveModeManager$Function;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/avdc/ModeSettingsFragment;->setSwitchMultiButtonView(Lcom/yftech/settings/manager/CarDriveModeManager$Function;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/yftech/settings/avdc/ModeSettingsFragment;Lcom/yftech/settings/manager/CarDriveModeManager$Function;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/avdc/ModeSettingsFragment;->setOptionText(Lcom/yftech/settings/manager/CarDriveModeManager$Function;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/yftech/settings/avdc/ModeSettingsFragment;)Ljava/lang/Runnable;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->setImageViewRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/yftech/settings/avdc/ModeSettingsFragment;)Landroid/os/Handler;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->resetIvBgHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/yftech/settings/avdc/ModeSettingsFragment;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/yftech/settings/avdc/ModeSettingsFragment;->updateCarBgNor()V

    return-void
.end method

.method static synthetic access$1300(Lcom/yftech/settings/avdc/ModeSettingsFragment;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/yftech/settings/avdc/ModeSettingsFragment;->stopAcComfortCurveView()V

    return-void
.end method

.method static synthetic access$1402(Lcom/yftech/settings/avdc/ModeSettingsFragment;Lcom/yftech/settings/widget/dialog/CommonDialog;)Lcom/yftech/settings/widget/dialog/CommonDialog;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/yftech/settings/avdc/ModeSettingsFragment;Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/yftech/settings/avdc/ModeSettingsFragment;->resetUpdateView(Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;)V

    return-void
.end method

.method static synthetic access$200(Lcom/yftech/settings/avdc/ModeSettingsFragment;Lcom/yftech/settings/manager/CarDriveModeManager$Function;Ljava/lang/Object;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/avdc/ModeSettingsFragment;->setValueView(Lcom/yftech/settings/manager/CarDriveModeManager$Function;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/yftech/settings/avdc/ModeSettingsFragment;Z)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/yftech/settings/avdc/ModeSettingsFragment;->updateSportPlusView(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/yftech/settings/avdc/ModeSettingsFragment;Lcom/yftech/settings/manager/CarDriveModeManager$Function;Z)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/avdc/ModeSettingsFragment;->setSoundWaveView(Lcom/yftech/settings/manager/CarDriveModeManager$Function;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/yftech/settings/avdc/ModeSettingsFragment;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/yftech/settings/avdc/ModeSettingsFragment;->initCarDriveModeViewData()V

    return-void
.end method

.method static synthetic access$600(Lcom/yftech/settings/avdc/ModeSettingsFragment;Lcom/yftech/settings/manager/CarDriveModeManager$Function;Z)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/avdc/ModeSettingsFragment;->setSwitcherView(Lcom/yftech/settings/manager/CarDriveModeManager$Function;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/yftech/settings/avdc/ModeSettingsFragment;Lcom/yftech/settings/manager/CarPartsManager$Function;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/avdc/ModeSettingsFragment;->setSwitchMultiButtonView(Lcom/yftech/settings/manager/CarPartsManager$Function;I)V

    return-void
.end method

.method static synthetic access$800(Lcom/yftech/settings/avdc/ModeSettingsFragment;Lcom/yftech/settings/manager/CarPartsManager$Function;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/avdc/ModeSettingsFragment;->updateAcComfortCurveSportPlus(Lcom/yftech/settings/manager/CarPartsManager$Function;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/yftech/settings/avdc/ModeSettingsFragment;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/yftech/settings/avdc/ModeSettingsFragment;->initCarPartsViewData()V

    return-void
.end method

.method public static getInstance()Lcom/yftech/settings/avdc/ModeSettingsFragment;
    .locals 1

    .line 154
    sget-object v0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->mInstance:Lcom/yftech/settings/avdc/ModeSettingsFragment;

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Lcom/yftech/settings/avdc/ModeSettingsFragment;

    invoke-direct {v0}, Lcom/yftech/settings/avdc/ModeSettingsFragment;-><init>()V

    sput-object v0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->mInstance:Lcom/yftech/settings/avdc/ModeSettingsFragment;

    .line 157
    :cond_0
    sget-object v0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->mInstance:Lcom/yftech/settings/avdc/ModeSettingsFragment;

    return-object v0
.end method

.method private initCarDriveModeViewData()V
    .locals 6

    .line 308
    invoke-virtual {p0}, Lcom/yftech/settings/avdc/ModeSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->DRIVE_SYSTEM_MODE:[Ljava/lang/String;

    .line 309
    invoke-virtual {p0}, Lcom/yftech/settings/avdc/ModeSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->STEERING_HAND:[Ljava/lang/String;

    .line 310
    invoke-virtual {p0}, Lcom/yftech/settings/avdc/ModeSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->ESP_STYLE:[Ljava/lang/String;

    .line 311
    invoke-virtual {p0}, Lcom/yftech/settings/avdc/ModeSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->SOUND_WAVES:[Ljava/lang/String;

    .line 312
    invoke-virtual {p0}, Lcom/yftech/settings/avdc/ModeSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->AC_COMFORT_CURVE_VALUE:[Ljava/lang/String;

    .line 314
    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->DRIVE_MODE_VALUE:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarDriveModeManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    sget-object v0, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->DRIVE_MODE_VALUE:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    .line 316
    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->DRIVE_MODE_VALUE:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/CarDriveModeManager;->getValue(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)Ljava/lang/Object;

    move-result-object v1

    .line 315
    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/avdc/ModeSettingsFragment;->setValueView(Lcom/yftech/settings/manager/CarDriveModeManager$Function;Ljava/lang/Object;)V

    .line 319
    :cond_0
    sget-object v0, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->DRIVE_SYSTEM_MODE_OPTION:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    .line 320
    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->DRIVE_SYSTEM_MODE_OPTION:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/CarDriveModeManager;->getOption(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)I

    move-result v1

    .line 319
    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/avdc/ModeSettingsFragment;->setOptionText(Lcom/yftech/settings/manager/CarDriveModeManager$Function;I)V

    .line 325
    iget-object v0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->tvSteeringHand:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->STEERING_HAND:[Ljava/lang/String;

    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v2

    sget-object v3, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->EPS_STYLE_OPTION:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    .line 326
    invoke-virtual {v2, v3}, Lcom/yftech/settings/manager/CarDriveModeManager;->getOption(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)I

    move-result v2

    aget-object v1, v1, v2

    .line 325
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->tvEspStyle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->ESP_STYLE:[Ljava/lang/String;

    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v2

    sget-object v3, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->ESP_STYLE_OPTION:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v2, v3}, Lcom/yftech/settings/manager/CarDriveModeManager;->getOption(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    iget-object v0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->tvSoundWaves:Landroid/widget/TextView;

    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->EMS_ENGINE_WAVE_ENABLE:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/CarDriveModeManager;->getEnabled(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->SOUND_WAVES:[Ljava/lang/String;

    aget-object v1, v1, v3

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->SOUND_WAVES:[Ljava/lang/String;

    aget-object v1, v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->EPS_STYLE_OPTION:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarDriveModeManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 331
    sget-object v0, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->EPS_STYLE_OPTION:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v1

    sget-object v4, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->EPS_STYLE_OPTION:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v1, v4}, Lcom/yftech/settings/manager/CarDriveModeManager;->getOption(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/avdc/ModeSettingsFragment;->setSwitchMultiButtonView(Lcom/yftech/settings/manager/CarDriveModeManager$Function;I)V

    .line 333
    :cond_2
    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->EMS_ENGINE_WAVE_ENABLE:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarDriveModeManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 334
    sget-object v0, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->EMS_ENGINE_WAVE_ENABLE:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v1

    sget-object v4, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->EMS_ENGINE_WAVE_ENABLE:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v1, v4}, Lcom/yftech/settings/manager/CarDriveModeManager;->getOption(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/avdc/ModeSettingsFragment;->setSwitchMultiButtonView(Lcom/yftech/settings/manager/CarDriveModeManager$Function;I)V

    .line 336
    :cond_3
    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->ESP_STYLE_OPTION:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarDriveModeManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 337
    iget-object v0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->tvEspStyle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->ESP_STYLE:[Ljava/lang/String;

    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v4

    sget-object v5, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->ESP_STYLE_OPTION:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v4, v5}, Lcom/yftech/settings/manager/CarDriveModeManager;->getOption(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)I

    move-result v4

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    :cond_4
    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->EMS_ENGINE_WAVE_ENABLE:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarDriveModeManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 341
    sget-object v0, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->EMS_ENGINE_WAVE_ENABLE:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    .line 342
    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v1

    sget-object v4, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->DRIVE_MODE_VALUE:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v1, v4}, Lcom/yftech/settings/manager/CarDriveModeManager;->getValue(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->ECO_PRO_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    if-eq v1, v4, :cond_5

    move v2, v3

    .line 341
    :cond_5
    invoke-direct {p0, v0, v2}, Lcom/yftech/settings/avdc/ModeSettingsFragment;->setSoundWaveView(Lcom/yftech/settings/manager/CarDriveModeManager$Function;Z)V

    .line 343
    sget-object v0, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->EMS_ENGINE_WAVE_ENABLE:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->EMS_ENGINE_WAVE_ENABLE:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/CarDriveModeManager;->getEnabled(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/avdc/ModeSettingsFragment;->setSwitcherView(Lcom/yftech/settings/manager/CarDriveModeManager$Function;Z)V

    :cond_6
    return-void
.end method

.method private initCarPartsViewData()V
    .locals 3

    .line 350
    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->DRIVE_MODE_VALUE:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarDriveModeManager;->getValue(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->SPORT_PLUS_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    if-ne v0, v1, :cond_0

    .line 352
    iget-object v0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->tvAcComfortCurve:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->AC_COMFORT_CURVE_VALUE:[Ljava/lang/String;

    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/CarPartsManager$Function;->AC_COMFORT_CURVE_MODE_OPTION:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/CarPartsManager;->getOption(Lcom/yftech/settings/manager/CarPartsManager$Function;)I

    move-result v1

    aget-object p0, p0, v1

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 354
    :cond_0
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/CarPartsManager$Function;->AC_COMFORT_CURVE_MODE_OPTION:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->AC_COMFORT_CURVE_MODE_OPTION:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/CarPartsManager$Function;->AC_COMFORT_CURVE_MODE_OPTION:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/CarPartsManager;->getOption(Lcom/yftech/settings/manager/CarPartsManager$Function;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/avdc/ModeSettingsFragment;->setSwitchMultiButtonView(Lcom/yftech/settings/manager/CarPartsManager$Function;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private initSportPlusView(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f080040

    .line 276
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->tvSteeringHand:Landroid/widget/TextView;

    const v0, 0x7f08003f

    .line 277
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->tvSoundWaves:Landroid/widget/TextView;

    const v0, 0x7f08003c

    .line 278
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->tvEspStyle:Landroid/widget/TextView;

    const v0, 0x7f080031

    .line 279
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->tvAcComfortCurve:Landroid/widget/TextView;

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 5

    const v0, 0x7f080102

    .line 169
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->ivBg:Landroid/widget/ImageView;

    const v0, 0x7f080100

    .line 170
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->ivWindLoop:Landroid/widget/ImageView;

    const v0, 0x7f080038

    .line 171
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->drivingModeSettingBg:Landroid/widget/RelativeLayout;

    const v0, 0x7f080032

    .line 172
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->valueCurrentDrivingMode:Landroid/widget/TextView;

    const v0, 0x7f08003e

    .line 173
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->valuePowerSystemValue:Landroid/widget/TextView;

    const v0, 0x7f08011b

    .line 180
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->layoutSteeringHand:Landroid/view/View;

    const v0, 0x7f080113

    .line 181
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->layoutEspStyle:Landroid/view/View;

    const v1, 0x7f080119

    .line 182
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->layoutSoundWaves:Landroid/view/View;

    const v1, 0x7f08010e

    .line 183
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->layoutAcComfortCurve:Landroid/view/View;

    const v1, 0x7f080115

    .line 184
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->layoutModeReset:Landroid/view/View;

    const v1, 0x7f08011c

    .line 186
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->layoutSteeringHandSportPlus:Landroid/widget/RelativeLayout;

    const v1, 0x7f08011a

    .line 187
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->layoutSoundWavesSportPlus:Landroid/widget/RelativeLayout;

    const v1, 0x7f08010f

    .line 188
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->layoutAcComfortCurveSportPlus:Landroid/widget/RelativeLayout;

    .line 189
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->layoutEspStyleSportPlus:Landroid/widget/RelativeLayout;

    .line 192
    invoke-direct {p0, p1}, Lcom/yftech/settings/avdc/ModeSettingsFragment;->initSportPlusView(Landroid/view/View;)V

    .line 196
    iget-object v0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->layoutSteeringHand:Landroid/view/View;

    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->EPS_STYLE_OPTION:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/CarDriveModeManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f080193

    .line 199
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yftech/settings/widget/SwitchMultiButton;

    iput-object v0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->smbSteeringHand:Lcom/yftech/settings/widget/SwitchMultiButton;

    .line 200
    iget-object v0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->smbSteeringHand:Lcom/yftech/settings/widget/SwitchMultiButton;

    invoke-virtual {p0}, Lcom/yftech/settings/avdc/ModeSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f02000d

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/SwitchMultiButton;->setText([Ljava/lang/String;)Lcom/yftech/settings/widget/SwitchMultiButton;

    .line 201
    iget-object v0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->smbSteeringHand:Lcom/yftech/settings/widget/SwitchMultiButton;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/widget/SwitchMultiButton;->setOnSwitchListener(Lcom/yftech/settings/widget/SwitchMultiButton$OnSwitchListener;)Lcom/yftech/settings/widget/SwitchMultiButton;

    .line 202
    iget-object v0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->smbSteeringHand:Lcom/yftech/settings/widget/SwitchMultiButton;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/widget/SwitchMultiButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 203
    iget-object v0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->smbSteeringHand:Lcom/yftech/settings/widget/SwitchMultiButton;

    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v1

    sget-object v4, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->EPS_STYLE_ENABLE_STATE:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v1, v4}, Lcom/yftech/settings/manager/CarDriveModeManager;->getEnabled(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/SwitchMultiButton;->setEnabled(Z)V

    .line 207
    iget-object v0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->layoutEspStyle:Landroid/view/View;

    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v1

    sget-object v4, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->EPS_STYLE_OPTION:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v1, v4}, Lcom/yftech/settings/manager/CarDriveModeManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f08003c

    .line 209
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->tvEspStyle:Landroid/widget/TextView;

    .line 213
    iget-object v0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->layoutSoundWaves:Landroid/view/View;

    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v1

    sget-object v4, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->EMS_ENGINE_WAVE_ENABLE:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v1, v4}, Lcom/yftech/settings/manager/CarDriveModeManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0801ba

    .line 216
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yftech/settings/widget/Switcher;

    iput-object v0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->swSoundWave:Lcom/yftech/settings/widget/Switcher;

    .line 217
    iget-object v0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->swSoundWave:Lcom/yftech/settings/widget/Switcher;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/widget/Switcher;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 218
    iget-object v0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->swSoundWave:Lcom/yftech/settings/widget/Switcher;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/widget/Switcher;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 223
    iget-object v0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->layoutAcComfortCurve:Landroid/view/View;

    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v1

    sget-object v4, Lcom/yftech/settings/manager/CarPartsManager$Function;->AC_COMFORT_CURVE_MODE_OPTION:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v1, v4}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    move v1, v3

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f080192

    .line 226
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yftech/settings/widget/SwitchMultiButton;

    iput-object v0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->smbAcComfortCurve:Lcom/yftech/settings/widget/SwitchMultiButton;

    .line 227
    iget-object v0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->smbAcComfortCurve:Lcom/yftech/settings/widget/SwitchMultiButton;

    invoke-virtual {p0}, Lcom/yftech/settings/avdc/ModeSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f020007

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/SwitchMultiButton;->setText([Ljava/lang/String;)Lcom/yftech/settings/widget/SwitchMultiButton;

    .line 228
    iget-object v0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->smbAcComfortCurve:Lcom/yftech/settings/widget/SwitchMultiButton;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/widget/SwitchMultiButton;->setOnSwitchListener(Lcom/yftech/settings/widget/SwitchMultiButton$OnSwitchListener;)Lcom/yftech/settings/widget/SwitchMultiButton;

    .line 229
    iget-object v0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->smbAcComfortCurve:Lcom/yftech/settings/widget/SwitchMultiButton;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/widget/SwitchMultiButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 233
    iget-object v0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->layoutModeReset:Landroid/view/View;

    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v1

    sget-object v4, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->RESET_ACTION:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v1, v4}, Lcom/yftech/settings/manager/CarDriveModeManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    goto :goto_4

    :cond_4
    move v1, v3

    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f08006a

    .line 237
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 243
    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object p1

    sget-object v0, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->DRIVE_MODE_VALUE:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {p1, v0}, Lcom/yftech/settings/manager/CarDriveModeManager;->getValue(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->SPORT_PLUS_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    if-ne p1, v0, :cond_9

    .line 244
    iget-object p1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->layoutSteeringHand:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 245
    iget-object p1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->layoutSoundWaves:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 246
    iget-object p1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->layoutAcComfortCurve:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 247
    iget-object p1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->layoutModeReset:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 249
    iget-object p1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->layoutSteeringHandSportPlus:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->EPS_STYLE_OPTION:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarDriveModeManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    goto :goto_5

    :cond_5
    move v0, v3

    :goto_5
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 252
    iget-object p1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->layoutEspStyleSportPlus:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->ESP_STYLE_OPTION:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarDriveModeManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v2

    goto :goto_6

    :cond_6
    move v0, v3

    :goto_6
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 255
    iget-object p1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->layoutSoundWavesSportPlus:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->EMS_ENGINE_WAVE_ENABLE:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarDriveModeManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v2

    goto :goto_7

    :cond_7
    move v0, v3

    :goto_7
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 259
    iget-object p0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->layoutAcComfortCurveSportPlus:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object p1

    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->AC_COMFORT_CURVE_MODE_OPTION:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {p1, v0}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_8

    :cond_8
    move v2, v3

    :goto_8
    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_9
    return-void
.end method

.method private initViewData()V
    .locals 0

    .line 302
    invoke-direct {p0}, Lcom/yftech/settings/avdc/ModeSettingsFragment;->updateCarBgNor()V

    .line 303
    invoke-direct {p0}, Lcom/yftech/settings/avdc/ModeSettingsFragment;->initCarDriveModeViewData()V

    .line 304
    invoke-direct {p0}, Lcom/yftech/settings/avdc/ModeSettingsFragment;->initCarPartsViewData()V

    return-void
.end method

.method private playAcComfortCurveView(I)V
    .locals 4

    .line 615
    invoke-static {}, Lcom/yftech/settings/utils/Utils;->isGACLogoPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->ivBg:Landroid/widget/ImageView;

    const v1, 0x7f0b004c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 618
    :cond_0
    iget-object v0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->ivBg:Landroid/widget/ImageView;

    const v1, 0x7f0b004d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 620
    :goto_0
    iget-object v0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->ivWindLoop:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->AC_COMFORT_CURVE:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 621
    iget-object v0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->ivWindLoop:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 622
    iget-object v0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->ivWindLoop:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 623
    iget-object v0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 624
    iget-object v0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 626
    :cond_1
    iget-object v0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 627
    iget-object v0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->resetIvBgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->setImageViewRunnable:Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->AC_COMFORT_CURVE_PLAY_TIME:[J

    aget-wide v2, p0, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private resetUpdateView(Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;)V
    .locals 5

    .line 720
    sget-object v0, Lcom/yftech/settings/avdc/ModeSettingsFragment$6;->$SwitchMap$com$yftech$vehicle$internal$adapter$ICarDrive$DriveMode:[I

    invoke-virtual {p1}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    move p1, v1

    move v0, p1

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x2

    move v2, v0

    goto :goto_0

    :pswitch_1
    move p1, v2

    goto :goto_0

    :pswitch_2
    move p1, v0

    move v0, v2

    :goto_0
    if-eq p1, v1, :cond_0

    .line 738
    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v3

    sget-object v4, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->EPS_STYLE_OPTION:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v3, v4}, Lcom/yftech/settings/manager/CarDriveModeManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 739
    sget-object v3, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->EPS_STYLE_OPTION:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-direct {p0, v3, p1}, Lcom/yftech/settings/avdc/ModeSettingsFragment;->setSwitchMultiButtonView(Lcom/yftech/settings/manager/CarDriveModeManager$Function;I)V

    .line 741
    :cond_0
    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object p1

    sget-object v3, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->EMS_ENGINE_WAVE_ENABLE:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {p1, v3}, Lcom/yftech/settings/manager/CarDriveModeManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 742
    sget-object p1, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->EMS_ENGINE_WAVE_ENABLE:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-direct {p0, p1, v2}, Lcom/yftech/settings/avdc/ModeSettingsFragment;->setSwitcherView(Lcom/yftech/settings/manager/CarDriveModeManager$Function;Z)V

    :cond_1
    if-eq v0, v1, :cond_2

    .line 744
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object p1

    sget-object v1, Lcom/yftech/settings/manager/CarPartsManager$Function;->AC_COMFORT_CURVE_MODE_OPTION:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {p1, v1}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 745
    sget-object p1, Lcom/yftech/settings/manager/CarPartsManager$Function;->AC_COMFORT_CURVE_MODE_OPTION:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-direct {p0, p1, v0}, Lcom/yftech/settings/avdc/ModeSettingsFragment;->setSwitchMultiButtonView(Lcom/yftech/settings/manager/CarPartsManager$Function;I)V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setImageView(Lcom/yftech/settings/manager/CarDriveModeManager$Function;I)V
    .locals 2

    .line 587
    sget-object v0, Lcom/yftech/settings/avdc/ModeSettingsFragment$6;->$SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 589
    :cond_0
    invoke-static {}, Lcom/yftech/settings/utils/Utils;->isGACLogoPresent()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 591
    invoke-static {}, Lcom/yftech/settings/utils/Utils;->isRightDrive()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 592
    iget-object p1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->ivBg:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->IMG_DIRECTION_STEER_HAND_RIGHT:[I

    aget p2, v0, p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 594
    :cond_1
    iget-object p1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->ivBg:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->IMG_DIRECTION_STEER_HAND:[I

    aget p2, v0, p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 597
    :cond_2
    iget-object p1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->ivBg:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->IMG_DIRECTION_STEER_HAND_NO_GAC:[I

    aget p2, v0, p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 599
    :goto_0
    iget-object p1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->resetIvBgHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->setImageViewRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void
.end method

.method private setOptionText(Lcom/yftech/settings/manager/CarDriveModeManager$Function;I)V
    .locals 1

    .line 444
    sget-object v0, Lcom/yftech/settings/avdc/ModeSettingsFragment$6;->$SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 449
    :pswitch_0
    iget-object p1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->tvEspStyle:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->ESP_STYLE:[Ljava/lang/String;

    aget-object p0, p0, p2

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 446
    :pswitch_1
    iget-object p1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->valuePowerSystemValue:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->DRIVE_SYSTEM_MODE:[Ljava/lang/String;

    aget-object p0, p0, p2

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setSoundWaveView(Lcom/yftech/settings/manager/CarDriveModeManager$Function;Z)V
    .locals 3

    .line 525
    sget-object v0, Lcom/yftech/settings/avdc/ModeSettingsFragment$6;->$SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 530
    :pswitch_0
    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object p1

    sget-object v0, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->EMS_ENGINE_WAVE_ENABLE:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {p1, v0}, Lcom/yftech/settings/manager/CarDriveModeManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 531
    iget-object p1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->layoutSoundWaves:Landroid/view/View;

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 532
    iget-object p1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->layoutSoundWavesSportPlus:Landroid/widget/RelativeLayout;

    if-nez p2, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 533
    iget-object p1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->tvSoundWaves:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->SOUND_WAVES:[Ljava/lang/String;

    aget-object p0, p0, v1

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setSwitchMultiButtonView(Lcom/yftech/settings/manager/CarDriveModeManager$Function;I)V
    .locals 1

    .line 464
    sget-object v0, Lcom/yftech/settings/avdc/ModeSettingsFragment$6;->$SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    .line 466
    :pswitch_0
    iget-object p0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->smbSteeringHand:Lcom/yftech/settings/widget/SwitchMultiButton;

    goto :goto_0

    .line 469
    :pswitch_1
    iget-object p0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->smbEspStyle:Lcom/yftech/settings/widget/SwitchMultiButton;

    :goto_0
    if-eqz p0, :cond_1

    .line 473
    invoke-virtual {p0}, Lcom/yftech/settings/widget/SwitchMultiButton;->getTabNum()I

    move-result p1

    if-ne p1, p2, :cond_0

    return-void

    .line 476
    :cond_0
    invoke-virtual {p0, p2}, Lcom/yftech/settings/widget/SwitchMultiButton;->setSelectedTab(I)Lcom/yftech/settings/widget/SwitchMultiButton;

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setSwitchMultiButtonView(Lcom/yftech/settings/manager/CarPartsManager$Function;I)V
    .locals 3

    const-string v0, "CarDriveModeManager"

    .line 482
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSwitchMultiButtonView: index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    sget-object v0, Lcom/yftech/settings/avdc/ModeSettingsFragment$6;->$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/CarPartsManager$Function;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 485
    :cond_0
    iget-object p0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->smbAcComfortCurve:Lcom/yftech/settings/widget/SwitchMultiButton;

    :goto_0
    if-eqz p0, :cond_2

    .line 489
    invoke-virtual {p0}, Lcom/yftech/settings/widget/SwitchMultiButton;->getTabNum()I

    move-result p1

    if-ne p1, p2, :cond_1

    return-void

    .line 492
    :cond_1
    invoke-virtual {p0, p2}, Lcom/yftech/settings/widget/SwitchMultiButton;->setSelectedTab(I)Lcom/yftech/settings/widget/SwitchMultiButton;

    :cond_2
    return-void
.end method

.method private setSwitcherView(Lcom/yftech/settings/manager/CarDriveModeManager$Function;Z)V
    .locals 1

    .line 541
    sget-object v0, Lcom/yftech/settings/avdc/ModeSettingsFragment$6;->$SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 547
    :pswitch_0
    iget-object p0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->smbSteeringHand:Lcom/yftech/settings/widget/SwitchMultiButton;

    invoke-virtual {p0, p2}, Lcom/yftech/settings/widget/SwitchMultiButton;->setEnabled(Z)V

    goto :goto_0

    .line 543
    :pswitch_1
    iget-object p0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->swSoundWave:Lcom/yftech/settings/widget/Switcher;

    invoke-virtual {p0, p2}, Lcom/yftech/settings/widget/Switcher;->setChecked(Z)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setValueView(Lcom/yftech/settings/manager/CarDriveModeManager$Function;Ljava/lang/Object;)V
    .locals 2

    .line 497
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 498
    sget-object v1, Lcom/yftech/settings/avdc/ModeSettingsFragment$6;->$SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->ordinal()I

    move-result p1

    aget p1, v1, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 508
    :pswitch_0
    new-instance p1, Ljava/util/Locale;

    const-string v1, "ar"

    invoke-direct {p1, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 509
    check-cast p2, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    invoke-direct {p0, p2}, Lcom/yftech/settings/avdc/ModeSettingsFragment;->updateViewByar(Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;)V

    goto :goto_0

    .line 511
    :cond_0
    check-cast p2, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    invoke-direct {p0, p2}, Lcom/yftech/settings/avdc/ModeSettingsFragment;->updateView(Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private showAvdcResetTipDialog()V
    .locals 5

    .line 659
    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->DRIVE_MODE_VALUE:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarDriveModeManager;->getValue(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    .line 660
    new-instance v1, Lcom/yftech/settings/widget/dialog/CommonDialog;

    invoke-virtual {p0}, Lcom/yftech/settings/avdc/ModeSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/yftech/settings/widget/dialog/CommonDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    .line 661
    iget-object v1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    invoke-virtual {v1}, Lcom/yftech/settings/widget/dialog/CommonDialog;->show()V

    .line 662
    iget-object v1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    new-instance v2, Lcom/yftech/settings/avdc/ModeSettingsFragment$4;

    invoke-direct {v2, p0}, Lcom/yftech/settings/avdc/ModeSettingsFragment$4;-><init>(Lcom/yftech/settings/avdc/ModeSettingsFragment;)V

    invoke-virtual {v1, v2}, Lcom/yftech/settings/widget/dialog/CommonDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 668
    iget-object v1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    const v2, 0x7f0d0060

    invoke-virtual {p0, v2}, Lcom/yftech/settings/avdc/ModeSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yftech/settings/widget/dialog/CommonDialog;->setContent(Ljava/lang/String;)Lcom/yftech/settings/widget/dialog/CommonDialog;

    .line 669
    iget-object v1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const v3, 0x7f0d00e1

    invoke-virtual {p0, v3}, Lcom/yftech/settings/avdc/ModeSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f0d00de

    invoke-virtual {p0, v3}, Lcom/yftech/settings/avdc/ModeSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/yftech/settings/widget/dialog/CommonDialog;->setButtonText([Ljava/lang/String;)Lcom/yftech/settings/widget/dialog/CommonDialog;

    .line 670
    iget-object v1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    new-instance v2, Lcom/yftech/settings/avdc/ModeSettingsFragment$5;

    invoke-direct {v2, p0, v0}, Lcom/yftech/settings/avdc/ModeSettingsFragment$5;-><init>(Lcom/yftech/settings/avdc/ModeSettingsFragment;Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;)V

    invoke-virtual {v1, v2}, Lcom/yftech/settings/widget/dialog/CommonDialog;->setOnBtnClickListener(Lcom/yftech/settings/widget/dialog/CommonDialog$OnBtnClickListener;)Lcom/yftech/settings/widget/dialog/CommonDialog;

    return-void
.end method

.method private stopAcComfortCurveView()V
    .locals 2

    .line 632
    iget-object v0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->ivWindLoop:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 633
    iget-object v0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->ivWindLoop:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 634
    iget-object v0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 635
    iget-object p0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_0
    return-void
.end method

.method private updateAcComfortCurveSportPlus(Lcom/yftech/settings/manager/CarPartsManager$Function;I)V
    .locals 1

    .line 455
    sget-object v0, Lcom/yftech/settings/avdc/ModeSettingsFragment$6;->$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/CarPartsManager$Function;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 457
    :cond_0
    iget-object p1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->tvAcComfortCurve:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->AC_COMFORT_CURVE_VALUE:[Ljava/lang/String;

    aget-object p0, p0, p2

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private updateCarBgNor()V
    .locals 1

    .line 648
    invoke-static {}, Lcom/yftech/settings/utils/Utils;->isGACLogoPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 649
    invoke-static {}, Lcom/yftech/settings/utils/Utils;->isRightDrive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 650
    iget-object p0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->ivBg:Landroid/widget/ImageView;

    const v0, 0x7f0b005b

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 652
    :cond_0
    iget-object p0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->ivBg:Landroid/widget/ImageView;

    const v0, 0x7f0b0059

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 655
    :cond_1
    iget-object p0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->ivBg:Landroid/widget/ImageView;

    const v0, 0x7f0b005a

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method private updateSportPlusView(Z)V
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_4

    .line 759
    iget-object p1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->layoutSteeringHand:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 760
    iget-object p1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->layoutSoundWaves:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 761
    iget-object p1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->layoutAcComfortCurve:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 762
    iget-object p1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->layoutModeReset:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 764
    iget-object p1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->layoutSteeringHandSportPlus:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v2

    sget-object v3, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->EPS_STYLE_OPTION:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v2, v3}, Lcom/yftech/settings/manager/CarDriveModeManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 767
    iget-object p1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->layoutEspStyleSportPlus:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v2

    sget-object v3, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->ESP_STYLE_OPTION:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v2, v3}, Lcom/yftech/settings/manager/CarDriveModeManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 770
    iget-object p1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->layoutSoundWavesSportPlus:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v2

    sget-object v3, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->EMS_ENGINE_WAVE_ENABLE:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v2, v3}, Lcom/yftech/settings/manager/CarDriveModeManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 774
    iget-object p1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->layoutAcComfortCurveSportPlus:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v2

    sget-object v3, Lcom/yftech/settings/manager/CarPartsManager$Function;->AC_COMFORT_CURVE_MODE_OPTION:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v2, v3}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_9

    .line 779
    :cond_4
    iget-object p1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->layoutSteeringHandSportPlus:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 780
    iget-object p1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->layoutSoundWavesSportPlus:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 781
    iget-object p1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->layoutAcComfortCurveSportPlus:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 782
    iget-object p1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->layoutEspStyleSportPlus:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 785
    iget-object p1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->layoutSteeringHand:Landroid/view/View;

    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v2

    sget-object v3, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->EPS_STYLE_OPTION:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v2, v3}, Lcom/yftech/settings/manager/CarDriveModeManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v0

    goto :goto_4

    :cond_5
    move v2, v1

    :goto_4
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 789
    iget-object p1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->layoutEspStyle:Landroid/view/View;

    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v2

    sget-object v3, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->EPS_STYLE_OPTION:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v2, v3}, Lcom/yftech/settings/manager/CarDriveModeManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v0

    goto :goto_5

    :cond_6
    move v2, v1

    :goto_5
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 793
    iget-object p1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->layoutSoundWaves:Landroid/view/View;

    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v2

    sget-object v3, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->EMS_ENGINE_WAVE_ENABLE:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v2, v3}, Lcom/yftech/settings/manager/CarDriveModeManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)Z

    move-result v2

    if-eqz v2, :cond_7

    move v2, v0

    goto :goto_6

    :cond_7
    move v2, v1

    :goto_6
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 797
    iget-object p1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->layoutAcComfortCurve:Landroid/view/View;

    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v2

    sget-object v3, Lcom/yftech/settings/manager/CarPartsManager$Function;->AC_COMFORT_CURVE_MODE_OPTION:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v2, v3}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v0

    goto :goto_7

    :cond_8
    move v2, v1

    :goto_7
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 801
    iget-object p1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->layoutModeReset:Landroid/view/View;

    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v2

    sget-object v3, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->RESET_ACTION:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v2, v3}, Lcom/yftech/settings/manager/CarDriveModeManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_8

    :cond_9
    move v0, v1

    :goto_8
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 805
    :goto_9
    invoke-direct {p0}, Lcom/yftech/settings/avdc/ModeSettingsFragment;->initViewData()V

    return-void
.end method

.method private updateView(Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;)V
    .locals 1

    .line 555
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->ECO_PRO_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    if-ne p1, v0, :cond_0

    .line 556
    iget-object p1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->drivingModeSettingBg:Landroid/widget/RelativeLayout;

    const v0, 0x7f0b0046

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 557
    iget-object p0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->valueCurrentDrivingMode:Landroid/widget/TextView;

    const-string p1, "ECO"

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 558
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->COMFORT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    if-ne p1, v0, :cond_1

    .line 559
    iget-object p1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->drivingModeSettingBg:Landroid/widget/RelativeLayout;

    const v0, 0x7f0b0044

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 560
    iget-object p0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->valueCurrentDrivingMode:Landroid/widget/TextView;

    const-string p1, "COMFORT"

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 561
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->SPORT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    if-ne p1, v0, :cond_2

    .line 562
    iget-object p1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->drivingModeSettingBg:Landroid/widget/RelativeLayout;

    const v0, 0x7f0b0048

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 563
    iget-object p0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->valueCurrentDrivingMode:Landroid/widget/TextView;

    const-string p1, "SPORT"

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 564
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->SPORT_PLUS_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    if-ne p1, v0, :cond_3

    .line 565
    iget-object p1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->drivingModeSettingBg:Landroid/widget/RelativeLayout;

    const v0, 0x7f0b004a

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 566
    iget-object p0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->valueCurrentDrivingMode:Landroid/widget/TextView;

    const-string p1, "SPORT+"

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private updateViewByar(Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;)V
    .locals 1

    .line 571
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->ECO_PRO_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    if-ne p1, v0, :cond_0

    .line 572
    iget-object p1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->drivingModeSettingBg:Landroid/widget/RelativeLayout;

    const v0, 0x7f0b0047

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 573
    iget-object p0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->valueCurrentDrivingMode:Landroid/widget/TextView;

    const-string p1, "ECO"

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 574
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->COMFORT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    if-ne p1, v0, :cond_1

    .line 575
    iget-object p1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->drivingModeSettingBg:Landroid/widget/RelativeLayout;

    const v0, 0x7f0b0045

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 576
    iget-object p0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->valueCurrentDrivingMode:Landroid/widget/TextView;

    const-string p1, "COMFORT"

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 577
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->SPORT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    if-ne p1, v0, :cond_2

    .line 578
    iget-object p1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->drivingModeSettingBg:Landroid/widget/RelativeLayout;

    const v0, 0x7f0b0049

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 579
    iget-object p0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->valueCurrentDrivingMode:Landroid/widget/TextView;

    const-string p1, "SPORT"

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 580
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->SPORT_PLUS_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    if-ne p1, v0, :cond_3

    .line 581
    iget-object p1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->drivingModeSettingBg:Landroid/widget/RelativeLayout;

    const v0, 0x7f0b004b

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 582
    iget-object p0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->valueCurrentDrivingMode:Landroid/widget/TextView;

    const-string p1, "SPORT+"

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NonConstantResourceId"
        }
    .end annotation

    .line 411
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isPressed()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 414
    :cond_0
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result p0

    const p1, 0x7f0801ba

    if-eq p0, p1, :cond_1

    goto :goto_0

    .line 416
    :cond_1
    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object p0

    sget-object p1, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->EMS_ENGINE_WAVE_ENABLE:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/settings/manager/CarDriveModeManager;->setEnabled(Lcom/yftech/settings/manager/CarDriveModeManager$Function;Z)Z

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 363
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f08006a

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 365
    :cond_0
    invoke-direct {p0}, Lcom/yftech/settings/avdc/ModeSettingsFragment;->showAvdcResetTipDialog()V

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

    const p3, 0x7f0a0035

    const/4 v0, 0x0

    .line 163
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 164
    invoke-direct {p0, p1}, Lcom/yftech/settings/avdc/ModeSettingsFragment;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method public onPause()V
    .locals 1

    .line 705
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onPause()V

    .line 706
    iget-object v0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->smbSteeringHand:Lcom/yftech/settings/widget/SwitchMultiButton;

    if-eqz v0, :cond_0

    .line 707
    iget-object v0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->smbSteeringHand:Lcom/yftech/settings/widget/SwitchMultiButton;

    iget-object p0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->setImageViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/widget/SwitchMultiButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onProgressChanged(Lcom/yftech/settings/widget/SeekBarNumber;I)V
    .locals 0

    .line 424
    invoke-virtual {p1}, Lcom/yftech/settings/widget/SeekBarNumber;->getId()I

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 285
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onStart()V

    .line 286
    invoke-direct {p0}, Lcom/yftech/settings/avdc/ModeSettingsFragment;->initViewData()V

    .line 287
    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->mCarDriveModeModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarDriveModeManager;->registerModelCallback(Lcom/yftech/settings/manager/BaseManager$ModelCallback;)V

    .line 288
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->mCarPartsModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/manager/CarPartsManager;->registerModelCallback(Lcom/yftech/settings/manager/BaseManager$ModelCallback;)V

    return-void
.end method

.method public onStartTrackingTouch(Lcom/yftech/settings/widget/SeekBarNumber;)V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 293
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onStop()V

    .line 294
    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->mCarDriveModeModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarDriveModeManager;->unregisterModelCallback(Lcom/yftech/settings/manager/BaseManager$ModelCallback;)V

    .line 295
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->mCarPartsModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarPartsManager;->unregisterModelCallback(Lcom/yftech/settings/manager/BaseManager$ModelCallback;)V

    .line 296
    iget-object v0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    if-eqz v0, :cond_0

    .line 297
    iget-object p0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->mCommonDialog:Lcom/yftech/settings/widget/dialog/CommonDialog;

    invoke-virtual {p0}, Lcom/yftech/settings/widget/dialog/CommonDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Lcom/yftech/settings/widget/SeekBarNumber;)V
    .locals 0

    return-void
.end method

.method public onSwitch(Lcom/yftech/settings/widget/SwitchMultiButton;ILjava/lang/String;Z)V
    .locals 0

    if-nez p4, :cond_0

    return-void

    .line 375
    :cond_0
    invoke-virtual {p1}, Lcom/yftech/settings/widget/SwitchMultiButton;->getId()I

    move-result p3

    const p4, 0x7f080192

    if-ne p3, p4, :cond_2

    .line 377
    sget-object p3, Lcom/yftech/settings/manager/CarPartsManager$Function;->UNKNOWN:Lcom/yftech/settings/manager/CarPartsManager$Function;

    .line 378
    invoke-virtual {p1}, Lcom/yftech/settings/widget/SwitchMultiButton;->getId()I

    move-result p1

    if-eq p1, p4, :cond_1

    goto :goto_0

    .line 380
    :cond_1
    sget-object p3, Lcom/yftech/settings/manager/CarPartsManager$Function;->AC_COMFORT_CURVE_MODE_OPTION:Lcom/yftech/settings/manager/CarPartsManager$Function;

    .line 381
    iget-object p1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->resetIvBgHandler:Landroid/os/Handler;

    iget-object p4, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->setImageViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 382
    invoke-direct {p0, p2}, Lcom/yftech/settings/avdc/ModeSettingsFragment;->playAcComfortCurveView(I)V

    .line 385
    :goto_0
    sget-object p0, Lcom/yftech/settings/manager/CarPartsManager$Function;->UNKNOWN:Lcom/yftech/settings/manager/CarPartsManager$Function;

    if-eq p3, p0, :cond_4

    .line 386
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object p0

    invoke-virtual {p0, p3, p2}, Lcom/yftech/settings/manager/CarPartsManager;->setOption(Lcom/yftech/settings/manager/CarPartsManager$Function;I)Z

    goto :goto_2

    .line 389
    :cond_2
    sget-object p3, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->UNKNOWN:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    .line 390
    invoke-virtual {p1}, Lcom/yftech/settings/widget/SwitchMultiButton;->getId()I

    move-result p1

    const p4, 0x7f080193

    if-eq p1, p4, :cond_3

    goto :goto_1

    .line 392
    :cond_3
    sget-object p3, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->EPS_STYLE_OPTION:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    .line 393
    iget-object p1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->resetIvBgHandler:Landroid/os/Handler;

    iget-object p4, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment;->setImageViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 394
    invoke-direct {p0, p3, p2}, Lcom/yftech/settings/avdc/ModeSettingsFragment;->setImageView(Lcom/yftech/settings/manager/CarDriveModeManager$Function;I)V

    .line 397
    :goto_1
    sget-object p0, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->UNKNOWN:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    if-eq p3, p0, :cond_4

    .line 398
    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object p0

    invoke-virtual {p0, p3, p2}, Lcom/yftech/settings/manager/CarDriveModeManager;->setOption(Lcom/yftech/settings/manager/CarDriveModeManager$Function;I)Z

    :cond_4
    :goto_2
    return-void
.end method
