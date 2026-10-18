.class public Lcom/yftech/settings/avdc/DrivingModeFragment;
.super Lcom/yftech/settings/BaseFragment;
.source "DrivingModeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "DrivingModeFragment"

.field private static mInstance:Lcom/yftech/settings/avdc/DrivingModeFragment;


# instance fields
.field private COMFORT_VIDEO:[I

.field private COMFORT_VIDEO_NO_GAC:[I

.field private ECO_VIDEO:[I

.field private ECO_VIDEO_NO_GAC:[I

.field private EPS_STYLE:[Ljava/lang/String;

.field private ESP_STYLE:[Ljava/lang/String;

.field private NULL:I

.field private SPORT_PLUS_VIDEO:[I

.field private SPORT_PLUS_VIDEO_NO_GAC:[I

.field private SPORT_VIDEO:[I

.field private SPORT_VIDEO_NO_GAC:[I

.field private TCU_DRIVE_MODE:[Ljava/lang/String;

.field private btnComfort:Landroid/widget/Button;

.field private btnEco:Landroid/widget/Button;

.field private btnSport:Landroid/widget/Button;

.field private btnSportPlus:Landroid/widget/Button;

.field carPowerListener:Lcom/yftech/vehicle/sdk/CarPowerManager$CarPowerListener;

.field private checkBtn:Landroid/widget/Button;

.field private driveMode:[Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

.field private drivingMode:Landroid/widget/RelativeLayout;

.field private drivingModeTrackDialDialog:Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;

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

.field private mHandler:Landroid/os/Handler;

.field private modeSettingBg:Lcom/yftech/settings/widget/VideoView;

.field private mySoundPool:Lcom/yftech/settings/utils/MySoundPool;

.field private tempDriveMode:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

.field private tipToast:Landroid/widget/Toast;

.field private tvDirection:Landroid/widget/TextView;

.field private tvESPStyle:Landroid/widget/TextView;

.field private tvPower:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 40
    invoke-direct {p0}, Lcom/yftech/settings/BaseFragment;-><init>()V

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x4

    .line 79
    new-array v1, v0, [Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    sget-object v2, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->ECO_PRO_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->COMFORT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->SPORT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sget-object v2, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->SPORT_PLUS_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    iput-object v1, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->driveMode:[Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    const/4 v1, -0x1

    .line 81
    iput v1, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->NULL:I

    .line 82
    new-array v1, v0, [I

    iget v2, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->NULL:I

    aput v2, v1, v3

    const v2, 0x7f0c0007

    aput v2, v1, v4

    const v2, 0x7f0c0009

    aput v2, v1, v5

    const v2, 0x7f0c000b

    aput v2, v1, v6

    iput-object v1, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->ECO_VIDEO:[I

    .line 83
    new-array v1, v0, [I

    const/high16 v2, 0x7f0c0000

    aput v2, v1, v3

    iget v2, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->NULL:I

    aput v2, v1, v4

    const v2, 0x7f0c0002

    aput v2, v1, v5

    const v2, 0x7f0c0004

    aput v2, v1, v6

    iput-object v1, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->COMFORT_VIDEO:[I

    .line 84
    new-array v1, v0, [I

    const v2, 0x7f0c000f

    aput v2, v1, v3

    const v2, 0x7f0c000d

    aput v2, v1, v4

    iget v2, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->NULL:I

    aput v2, v1, v5

    const v2, 0x7f0c0017

    aput v2, v1, v6

    iput-object v1, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->SPORT_VIDEO:[I

    .line 85
    new-array v1, v0, [I

    const v2, 0x7f0c0013

    aput v2, v1, v3

    const v2, 0x7f0c0011

    aput v2, v1, v4

    const v2, 0x7f0c0015

    aput v2, v1, v5

    iget v2, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->NULL:I

    aput v2, v1, v6

    iput-object v1, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->SPORT_PLUS_VIDEO:[I

    .line 88
    new-array v1, v0, [I

    iget v2, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->NULL:I

    aput v2, v1, v3

    const v2, 0x7f0c0008

    aput v2, v1, v4

    const v2, 0x7f0c000a

    aput v2, v1, v5

    const v2, 0x7f0c000c

    aput v2, v1, v6

    iput-object v1, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->ECO_VIDEO_NO_GAC:[I

    .line 89
    new-array v1, v0, [I

    const v2, 0x7f0c0001

    aput v2, v1, v3

    iget v2, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->NULL:I

    aput v2, v1, v4

    const v2, 0x7f0c0003

    aput v2, v1, v5

    const v2, 0x7f0c0005

    aput v2, v1, v6

    iput-object v1, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->COMFORT_VIDEO_NO_GAC:[I

    .line 90
    new-array v1, v0, [I

    const v2, 0x7f0c0010

    aput v2, v1, v3

    const v2, 0x7f0c000e

    aput v2, v1, v4

    iget v2, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->NULL:I

    aput v2, v1, v5

    const v2, 0x7f0c0018

    aput v2, v1, v6

    iput-object v1, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->SPORT_VIDEO_NO_GAC:[I

    .line 91
    new-array v0, v0, [I

    const v1, 0x7f0c0014

    aput v1, v0, v3

    const v1, 0x7f0c0012

    aput v1, v0, v4

    const v1, 0x7f0c0016

    aput v1, v0, v5

    iget v1, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->NULL:I

    aput v1, v0, v6

    iput-object v0, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->SPORT_PLUS_VIDEO_NO_GAC:[I

    .line 95
    new-instance v0, Lcom/yftech/settings/avdc/DrivingModeFragment$1;

    invoke-direct {v0, p0}, Lcom/yftech/settings/avdc/DrivingModeFragment$1;-><init>(Lcom/yftech/settings/avdc/DrivingModeFragment;)V

    iput-object v0, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->carPowerListener:Lcom/yftech/vehicle/sdk/CarPowerManager$CarPowerListener;

    .line 112
    new-instance v0, Lcom/yftech/settings/avdc/DrivingModeFragment$2;

    invoke-direct {v0, p0}, Lcom/yftech/settings/avdc/DrivingModeFragment$2;-><init>(Lcom/yftech/settings/avdc/DrivingModeFragment;)V

    iput-object v0, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->mCarDriveModeModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;

    .line 172
    new-instance v0, Lcom/yftech/settings/avdc/DrivingModeFragment$3;

    invoke-direct {v0, p0}, Lcom/yftech/settings/avdc/DrivingModeFragment$3;-><init>(Lcom/yftech/settings/avdc/DrivingModeFragment;)V

    iput-object v0, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->mCarPartsModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 40
    sget-object v0, Lcom/yftech/settings/avdc/DrivingModeFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/yftech/settings/avdc/DrivingModeFragment;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/yftech/settings/avdc/DrivingModeFragment;->initViewData()V

    return-void
.end method

.method static synthetic access$1000(Lcom/yftech/settings/avdc/DrivingModeFragment;Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/yftech/settings/avdc/DrivingModeFragment;->updateView(Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;)V

    return-void
.end method

.method static synthetic access$200(Lcom/yftech/settings/avdc/DrivingModeFragment;)Landroid/os/Handler;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/yftech/settings/avdc/DrivingModeFragment;Lcom/yftech/settings/manager/CarDriveModeManager$Function;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/avdc/DrivingModeFragment;->setOptionText(Lcom/yftech/settings/manager/CarDriveModeManager$Function;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/yftech/settings/avdc/DrivingModeFragment;Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/yftech/settings/avdc/DrivingModeFragment;->play(Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;)V

    return-void
.end method

.method static synthetic access$502(Lcom/yftech/settings/avdc/DrivingModeFragment;Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;)Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->tempDriveMode:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    return-object p1
.end method

.method static synthetic access$600(Lcom/yftech/settings/avdc/DrivingModeFragment;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/yftech/settings/avdc/DrivingModeFragment;->initCarDriveModeViewData()V

    return-void
.end method

.method static synthetic access$700(Lcom/yftech/settings/avdc/DrivingModeFragment;Lcom/yftech/settings/manager/CarPartsManager$Function;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/avdc/DrivingModeFragment;->setOptionText(Lcom/yftech/settings/manager/CarPartsManager$Function;I)V

    return-void
.end method

.method static synthetic access$800(Lcom/yftech/settings/avdc/DrivingModeFragment;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/yftech/settings/avdc/DrivingModeFragment;->initCarPartsViewData()V

    return-void
.end method

.method static synthetic access$900(Lcom/yftech/settings/avdc/DrivingModeFragment;)Lcom/yftech/settings/widget/VideoView;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->modeSettingBg:Lcom/yftech/settings/widget/VideoView;

    return-object p0
.end method

.method private getFunctionStr(Lcom/yftech/settings/manager/CarDriveModeManager$Function;I)Ljava/lang/String;
    .locals 1

    .line 425
    sget-object v0, Lcom/yftech/settings/avdc/DrivingModeFragment$6;->$SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-ltz p2, :cond_1

    .line 427
    iget-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->EPS_STYLE:[Ljava/lang/String;

    array-length p1, p1

    if-ge p2, p1, :cond_1

    .line 428
    iget-object p0, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->EPS_STYLE:[Ljava/lang/String;

    aget-object p0, p0, p2

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method private getFunctionStr(Lcom/yftech/settings/manager/CarPartsManager$Function;I)Ljava/lang/String;
    .locals 0

    .line 436
    sget-object p0, Lcom/yftech/settings/avdc/DrivingModeFragment$6;->$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/CarPartsManager$Function;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const-string p0, ""

    return-object p0
.end method

.method public static getInstance()Lcom/yftech/settings/avdc/DrivingModeFragment;
    .locals 1

    .line 200
    sget-object v0, Lcom/yftech/settings/avdc/DrivingModeFragment;->mInstance:Lcom/yftech/settings/avdc/DrivingModeFragment;

    if-nez v0, :cond_0

    .line 201
    new-instance v0, Lcom/yftech/settings/avdc/DrivingModeFragment;

    invoke-direct {v0}, Lcom/yftech/settings/avdc/DrivingModeFragment;-><init>()V

    sput-object v0, Lcom/yftech/settings/avdc/DrivingModeFragment;->mInstance:Lcom/yftech/settings/avdc/DrivingModeFragment;

    .line 203
    :cond_0
    sget-object v0, Lcom/yftech/settings/avdc/DrivingModeFragment;->mInstance:Lcom/yftech/settings/avdc/DrivingModeFragment;

    return-object v0
.end method

.method private getVideoId(Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;)[I
    .locals 1

    .line 556
    invoke-static {}, Lcom/yftech/settings/utils/Utils;->isGACLogoPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 557
    invoke-direct {p0, p1}, Lcom/yftech/settings/avdc/DrivingModeFragment;->getVideoIdNoGac(Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;)[I

    move-result-object p0

    return-object p0

    .line 559
    :cond_0
    sget-object v0, Lcom/yftech/settings/avdc/DrivingModeFragment$6;->$SwitchMap$com$yftech$vehicle$internal$adapter$ICarDrive$DriveMode:[I

    invoke-virtual {p1}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x1

    .line 569
    new-array p0, p0, [I

    const/4 p1, 0x0

    aput p1, p0, p1

    return-object p0

    .line 567
    :pswitch_0
    iget-object p0, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->SPORT_PLUS_VIDEO:[I

    return-object p0

    .line 565
    :pswitch_1
    iget-object p0, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->SPORT_VIDEO:[I

    return-object p0

    .line 563
    :pswitch_2
    iget-object p0, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->COMFORT_VIDEO:[I

    return-object p0

    .line 561
    :pswitch_3
    iget-object p0, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->ECO_VIDEO:[I

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getVideoIdNoGac(Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;)[I
    .locals 1

    .line 579
    sget-object v0, Lcom/yftech/settings/avdc/DrivingModeFragment$6;->$SwitchMap$com$yftech$vehicle$internal$adapter$ICarDrive$DriveMode:[I

    invoke-virtual {p1}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x1

    .line 589
    new-array p0, p0, [I

    const/4 p1, 0x0

    aput p1, p0, p1

    return-object p0

    .line 587
    :pswitch_0
    iget-object p0, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->SPORT_PLUS_VIDEO_NO_GAC:[I

    return-object p0

    .line 585
    :pswitch_1
    iget-object p0, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->SPORT_VIDEO_NO_GAC:[I

    return-object p0

    .line 583
    :pswitch_2
    iget-object p0, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->COMFORT_VIDEO_NO_GAC:[I

    return-object p0

    .line 581
    :pswitch_3
    iget-object p0, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->ECO_VIDEO_NO_GAC:[I

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getVideoIndex(Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;)I
    .locals 3

    .line 593
    iget v0, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->NULL:I

    const/4 v1, 0x0

    .line 594
    :goto_0
    iget-object v2, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->driveMode:[Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 595
    iget-object v2, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->driveMode:[Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_0

    move v0, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private initCarDriveModeViewData()V
    .locals 3

    .line 290
    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->DRIVE_MODE_VALUE:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarDriveModeManager;->getValue(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    iput-object v0, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->tempDriveMode:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    .line 291
    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->DRIVE_MODE_VALUE:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarDriveModeManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    sget-object v0, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->DRIVE_MODE_VALUE:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->DRIVE_MODE_VALUE:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/CarDriveModeManager;->getValue(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/avdc/DrivingModeFragment;->setValueView(Lcom/yftech/settings/manager/CarDriveModeManager$Function;Ljava/lang/Object;)V

    .line 294
    :cond_0
    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->EPS_STYLE_OPTION:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarDriveModeManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    sget-object v0, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->EPS_STYLE_OPTION:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->EPS_STYLE_OPTION:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/CarDriveModeManager;->getOption(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/avdc/DrivingModeFragment;->setOptionText(Lcom/yftech/settings/manager/CarDriveModeManager$Function;I)V

    .line 298
    :cond_1
    sget-object v0, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->TCU_DRIVE_MODE_OPTION:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->TCU_DRIVE_MODE_OPTION:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/CarDriveModeManager;->getOption(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/avdc/DrivingModeFragment;->setOptionText(Lcom/yftech/settings/manager/CarDriveModeManager$Function;I)V

    return-void
.end method

.method private initCarPartsViewData()V
    .locals 3

    .line 302
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/CarPartsManager$Function;->AC_COMFORT_CURVE_MODE_OPTION:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->AC_COMFORT_CURVE_MODE_OPTION:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/CarPartsManager$Function;->AC_COMFORT_CURVE_MODE_OPTION:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/CarPartsManager;->getOption(Lcom/yftech/settings/manager/CarPartsManager$Function;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/avdc/DrivingModeFragment;->setOptionText(Lcom/yftech/settings/manager/CarPartsManager$Function;I)V

    :cond_0
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 2

    .line 223
    new-instance v0, Lcom/yftech/settings/utils/MySoundPool;

    invoke-static {}, Lcom/yftech/settings/SettingsApp;->getInstance()Lcom/yftech/settings/SettingsApp;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yftech/settings/utils/MySoundPool;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->mySoundPool:Lcom/yftech/settings/utils/MySoundPool;

    const v0, 0x7f080033

    .line 224
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->drivingMode:Landroid/widget/RelativeLayout;

    const v0, 0x7f0800b3

    .line 226
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yftech/settings/widget/VideoView;

    iput-object v0, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->modeSettingBg:Lcom/yftech/settings/widget/VideoView;

    const v0, 0x7f08003b

    .line 228
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->tvPower:Landroid/widget/TextView;

    const v0, 0x7f08003a

    .line 229
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->tvDirection:Landroid/widget/TextView;

    const v0, 0x7f080039

    .line 230
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->tvESPStyle:Landroid/widget/TextView;

    const v0, 0x7f080035

    .line 232
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->btnEco:Landroid/widget/Button;

    const v0, 0x7f080034

    .line 233
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->btnComfort:Landroid/widget/Button;

    const v0, 0x7f080036

    .line 234
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->btnSport:Landroid/widget/Button;

    const v0, 0x7f080037

    .line 235
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->btnSportPlus:Landroid/widget/Button;

    .line 237
    iget-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->btnSportPlus:Landroid/widget/Button;

    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isSportPlusPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 239
    iget-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->btnEco:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    iget-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->btnComfort:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    iget-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->btnSport:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    iget-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->btnSportPlus:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    iget-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->btnEco:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 245
    iget-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->btnComfort:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 246
    iget-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->btnSport:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 247
    iget-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->btnSportPlus:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private initViewData()V
    .locals 0

    .line 282
    invoke-direct {p0}, Lcom/yftech/settings/avdc/DrivingModeFragment;->initCarDriveModeViewData()V

    .line 283
    invoke-direct {p0}, Lcom/yftech/settings/avdc/DrivingModeFragment;->initCarPartsViewData()V

    return-void
.end method

.method private play(Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;)V
    .locals 2

    .line 490
    iget-object v0, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->btnEco:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 491
    iget-object v0, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->btnComfort:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 492
    iget-object v0, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->btnSport:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 493
    iget-object v0, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->btnSportPlus:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 495
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->ECO_PRO_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->btnEco:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_0

    .line 497
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->COMFORT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    if-ne p1, v0, :cond_1

    .line 498
    iget-object v0, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->btnComfort:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_0

    .line 499
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->SPORT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    if-ne p1, v0, :cond_2

    .line 500
    iget-object v0, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->btnSport:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_0

    .line 501
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->SPORT_PLUS_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    if-ne p1, v0, :cond_3

    .line 502
    iget-object v0, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->btnSportPlus:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 505
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->tempDriveMode:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    invoke-direct {p0, v0}, Lcom/yftech/settings/avdc/DrivingModeFragment;->getVideoId(Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;)[I

    move-result-object v0

    .line 506
    array-length v1, v0

    if-nez v1, :cond_4

    return-void

    .line 509
    :cond_4
    invoke-direct {p0, p1}, Lcom/yftech/settings/avdc/DrivingModeFragment;->getVideoIndex(Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;)I

    move-result p1

    aget p1, v0, p1

    .line 510
    iget v0, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->NULL:I

    if-ne p1, v0, :cond_5

    return-void

    .line 514
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://com.yftech.settings/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 515
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 516
    iget-object v0, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->modeSettingBg:Lcom/yftech/settings/widget/VideoView;

    invoke-virtual {v0, p1}, Lcom/yftech/settings/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 517
    iget-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->modeSettingBg:Lcom/yftech/settings/widget/VideoView;

    invoke-virtual {p1}, Lcom/yftech/settings/widget/VideoView;->start()V

    .line 518
    iget-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->modeSettingBg:Lcom/yftech/settings/widget/VideoView;

    new-instance v0, Lcom/yftech/settings/avdc/DrivingModeFragment$4;

    invoke-direct {v0, p0}, Lcom/yftech/settings/avdc/DrivingModeFragment$4;-><init>(Lcom/yftech/settings/avdc/DrivingModeFragment;)V

    invoke-virtual {p1, v0}, Lcom/yftech/settings/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 533
    iget-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->modeSettingBg:Lcom/yftech/settings/widget/VideoView;

    new-instance v0, Lcom/yftech/settings/avdc/DrivingModeFragment$5;

    invoke-direct {v0, p0}, Lcom/yftech/settings/avdc/DrivingModeFragment$5;-><init>(Lcom/yftech/settings/avdc/DrivingModeFragment;)V

    invoke-virtual {p1, v0}, Lcom/yftech/settings/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    return-void
.end method

.method private setOptionText(Lcom/yftech/settings/manager/CarDriveModeManager$Function;I)V
    .locals 2

    .line 447
    sget-object v0, Lcom/yftech/settings/avdc/DrivingModeFragment$6;->$SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 457
    :pswitch_0
    iget-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->tvESPStyle:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->ESP_STYLE:[Ljava/lang/String;

    aget-object p0, p0, p2

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 454
    :pswitch_1
    iget-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->tvPower:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->TCU_DRIVE_MODE:[Ljava/lang/String;

    aget-object p0, p0, p2

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 450
    :pswitch_2
    iget-object v0, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->tvDirection:Landroid/widget/TextView;

    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/avdc/DrivingModeFragment;->getFunctionStr(Lcom/yftech/settings/manager/CarDriveModeManager$Function;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setOptionText(Lcom/yftech/settings/manager/CarPartsManager$Function;I)V
    .locals 0

    .line 464
    sget-object p0, Lcom/yftech/settings/avdc/DrivingModeFragment$6;->$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/CarPartsManager$Function;->ordinal()I

    move-result p1

    aget p0, p0, p1

    return-void
.end method

.method private setValueView(Lcom/yftech/settings/manager/CarDriveModeManager$Function;Ljava/lang/Object;)V
    .locals 3

    .line 472
    sget-object v0, Lcom/yftech/settings/avdc/DrivingModeFragment$6;->$SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 474
    :cond_0
    sget-object v0, Lcom/yftech/settings/avdc/DrivingModeFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setValueView: function:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->modeSettingBg:Lcom/yftech/settings/widget/VideoView;

    invoke-virtual {p1}, Lcom/yftech/settings/widget/VideoView;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 476
    sget-object p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->TAG:Ljava/lang/String;

    const-string p1, "VideoView is playing \uff01\uff01"

    invoke-static {p0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 479
    :cond_1
    check-cast p2, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    invoke-direct {p0, p2}, Lcom/yftech/settings/avdc/DrivingModeFragment;->updateView(Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;)V

    :goto_0
    return-void
.end method

.method private updateView(Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;)V
    .locals 3

    .line 380
    sget-object v0, Lcom/yftech/settings/avdc/DrivingModeFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateView()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->btnEco:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 382
    iget-object v0, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->btnComfort:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 383
    iget-object v0, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->btnSport:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 384
    iget-object v0, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->btnSportPlus:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 385
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->ECO_PRO_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 386
    iget-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->btnEco:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 387
    invoke-static {}, Lcom/yftech/settings/utils/Utils;->isGACLogoPresent()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 388
    iget-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->modeSettingBg:Lcom/yftech/settings/widget/VideoView;

    const v0, 0x7f0b0062

    invoke-virtual {p1, v0}, Lcom/yftech/settings/widget/VideoView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 390
    :cond_0
    iget-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->modeSettingBg:Lcom/yftech/settings/widget/VideoView;

    const v0, 0x7f0b0063

    invoke-virtual {p1, v0}, Lcom/yftech/settings/widget/VideoView;->setBackgroundResource(I)V

    goto :goto_0

    .line 392
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->COMFORT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    if-ne p1, v0, :cond_3

    .line 393
    iget-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->btnComfort:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 394
    invoke-static {}, Lcom/yftech/settings/utils/Utils;->isGACLogoPresent()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 395
    iget-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->modeSettingBg:Lcom/yftech/settings/widget/VideoView;

    const v0, 0x7f0b0034

    invoke-virtual {p1, v0}, Lcom/yftech/settings/widget/VideoView;->setBackgroundResource(I)V

    goto :goto_0

    .line 397
    :cond_2
    iget-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->modeSettingBg:Lcom/yftech/settings/widget/VideoView;

    const v0, 0x7f0b0035

    invoke-virtual {p1, v0}, Lcom/yftech/settings/widget/VideoView;->setBackgroundResource(I)V

    goto :goto_0

    .line 399
    :cond_3
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->SPORT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    if-ne p1, v0, :cond_5

    .line 400
    iget-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->btnSport:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 401
    invoke-static {}, Lcom/yftech/settings/utils/Utils;->isGACLogoPresent()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 402
    iget-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->modeSettingBg:Lcom/yftech/settings/widget/VideoView;

    const v0, 0x7f0b006a

    invoke-virtual {p1, v0}, Lcom/yftech/settings/widget/VideoView;->setBackgroundResource(I)V

    goto :goto_0

    .line 404
    :cond_4
    iget-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->modeSettingBg:Lcom/yftech/settings/widget/VideoView;

    const v0, 0x7f0b006b

    invoke-virtual {p1, v0}, Lcom/yftech/settings/widget/VideoView;->setBackgroundResource(I)V

    goto :goto_0

    .line 413
    :cond_5
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->SPORT_PLUS_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    if-ne p1, v0, :cond_7

    .line 414
    iget-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->btnSportPlus:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 415
    invoke-static {}, Lcom/yftech/settings/utils/Utils;->isGACLogoPresent()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 416
    iget-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->modeSettingBg:Lcom/yftech/settings/widget/VideoView;

    const v0, 0x7f0b006c

    invoke-virtual {p1, v0}, Lcom/yftech/settings/widget/VideoView;->setBackgroundResource(I)V

    goto :goto_0

    .line 418
    :cond_6
    iget-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->modeSettingBg:Lcom/yftech/settings/widget/VideoView;

    const v0, 0x7f0b006d

    invoke-virtual {p1, v0}, Lcom/yftech/settings/widget/VideoView;->setBackgroundResource(I)V

    .line 421
    :cond_7
    :goto_0
    iget-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->tvESPStyle:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->ESP_STYLE:[Ljava/lang/String;

    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->ESP_STYLE_OPTION:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarDriveModeManager;->getOption(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)I

    move-result v0

    aget-object p0, p0, v0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected dismissAllDialog()V
    .locals 1

    .line 655
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->dismissAllDialog()V

    .line 656
    iget-object v0, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->drivingModeTrackDialDialog:Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->drivingModeTrackDialDialog:Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;

    invoke-virtual {v0}, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 657
    iget-object p0, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->drivingModeTrackDialDialog:Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;

    invoke-virtual {p0}, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NonConstantResourceId"
        }
    .end annotation

    .line 333
    iget-object v0, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->checkBtn:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->checkBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 336
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 369
    :pswitch_0
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->SPORT_PLUS_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    invoke-direct {p0, p1}, Lcom/yftech/settings/avdc/DrivingModeFragment;->play(Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;)V

    .line 370
    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object p1

    sget-object v0, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->DRIVE_MODE_VALUE:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->SPORT_PLUS_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    invoke-virtual {p1, v0, v1}, Lcom/yftech/settings/manager/CarDriveModeManager;->setValue(Lcom/yftech/settings/manager/CarDriveModeManager$Function;Ljava/lang/Object;)Z

    .line 371
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->SPORT_PLUS_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    iput-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->tempDriveMode:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    goto :goto_0

    .line 359
    :pswitch_1
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->SPORT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    invoke-direct {p0, p1}, Lcom/yftech/settings/avdc/DrivingModeFragment;->play(Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;)V

    .line 360
    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object p1

    sget-object v0, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->DRIVE_MODE_VALUE:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->SPORT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    invoke-virtual {p1, v0, v1}, Lcom/yftech/settings/manager/CarDriveModeManager;->setValue(Lcom/yftech/settings/manager/CarDriveModeManager$Function;Ljava/lang/Object;)Z

    .line 361
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->SPORT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    iput-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->tempDriveMode:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    goto :goto_0

    .line 343
    :pswitch_2
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->ECO_PRO_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    invoke-direct {p0, p1}, Lcom/yftech/settings/avdc/DrivingModeFragment;->play(Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;)V

    .line 344
    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object p1

    sget-object v0, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->DRIVE_MODE_VALUE:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->ECO_PRO_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    invoke-virtual {p1, v0, v1}, Lcom/yftech/settings/manager/CarDriveModeManager;->setValue(Lcom/yftech/settings/manager/CarDriveModeManager$Function;Ljava/lang/Object;)Z

    .line 345
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->ECO_PRO_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    iput-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->tempDriveMode:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    goto :goto_0

    .line 353
    :pswitch_3
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->COMFORT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    invoke-direct {p0, p1}, Lcom/yftech/settings/avdc/DrivingModeFragment;->play(Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;)V

    .line 354
    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object p1

    sget-object v0, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->DRIVE_MODE_VALUE:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->COMFORT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    invoke-virtual {p1, v0, v1}, Lcom/yftech/settings/manager/CarDriveModeManager;->setValue(Lcom/yftech/settings/manager/CarDriveModeManager$Function;Ljava/lang/Object;)Z

    .line 355
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->COMFORT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    iput-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->tempDriveMode:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f080034
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
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

    .line 209
    sget-object p3, Lcom/yftech/settings/avdc/DrivingModeFragment;->TAG:Ljava/lang/String;

    const-string v0, "onCreateView: "

    invoke-static {p3, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    sget-object p3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    const p3, 0x7f0a0034

    .line 212
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const p3, 0x7f0a0033

    .line 214
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 216
    :goto_0
    invoke-direct {p0, p1}, Lcom/yftech/settings/avdc/DrivingModeFragment;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 325
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onDestroy()V

    .line 326
    sget-object p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->TAG:Ljava/lang/String;

    const-string v0, "onDestroy: "

    invoke-static {p0, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 309
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onPause()V

    .line 311
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarPowerManager;->get()Lcom/yftech/vehicle/sdk/CarPowerManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->carPowerListener:Lcom/yftech/vehicle/sdk/CarPowerManager$CarPowerListener;

    invoke-virtual {v0, p0}, Lcom/yftech/vehicle/sdk/CarPowerManager;->unregisterListener(Lcom/yftech/vehicle/sdk/CarPowerManager$CarPowerListener;)V

    .line 312
    sget-object p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->TAG:Ljava/lang/String;

    const-string v0, "onPause: "

    invoke-static {p0, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 258
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onResume()V

    .line 262
    invoke-virtual {p0}, Lcom/yftech/settings/avdc/DrivingModeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->ESP_STYLE:[Ljava/lang/String;

    .line 263
    invoke-virtual {p0}, Lcom/yftech/settings/avdc/DrivingModeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->EPS_STYLE:[Ljava/lang/String;

    .line 264
    invoke-direct {p0}, Lcom/yftech/settings/avdc/DrivingModeFragment;->initViewData()V

    .line 265
    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->mCarDriveModeModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarDriveModeManager;->registerModelCallback(Lcom/yftech/settings/manager/BaseManager$ModelCallback;)V

    .line 266
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->mCarPartsModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarPartsManager;->registerModelCallback(Lcom/yftech/settings/manager/BaseManager$ModelCallback;)V

    .line 267
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarPowerManager;->get()Lcom/yftech/vehicle/sdk/CarPowerManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->carPowerListener:Lcom/yftech/vehicle/sdk/CarPowerManager$CarPowerListener;

    invoke-virtual {v0, p0}, Lcom/yftech/vehicle/sdk/CarPowerManager;->registerListener(Lcom/yftech/vehicle/sdk/CarPowerManager$CarPowerListener;)V

    .line 275
    sget-object p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->TAG:Ljava/lang/String;

    const-string v0, "onResume: "

    invoke-static {p0, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 252
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onStart()V

    .line 253
    invoke-virtual {p0}, Lcom/yftech/settings/avdc/DrivingModeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->TCU_DRIVE_MODE:[Ljava/lang/String;

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 317
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onStop()V

    .line 318
    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->mCarDriveModeModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarDriveModeManager;->unregisterModelCallback(Lcom/yftech/settings/manager/BaseManager$ModelCallback;)V

    .line 319
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->mCarPartsModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/manager/CarPartsManager;->unregisterModelCallback(Lcom/yftech/settings/manager/BaseManager$ModelCallback;)V

    .line 320
    sget-object p0, Lcom/yftech/settings/avdc/DrivingModeFragment;->TAG:Ljava/lang/String;

    const-string v0, "onStop: "

    invoke-static {p0, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
