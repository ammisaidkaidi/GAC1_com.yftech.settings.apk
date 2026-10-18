.class public Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;
.super Lcom/yftech/settings/widget/dialog/CommonDialog;
.source "DrivingModeTrackDialDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DrivingModeTrackDialDialog"


# instance fields
.field private animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field private final carInfoListener:Lcom/yftech/vehicle/sdk/CarInfoManager$CarInfoListener;

.field private ivAnimation:Landroid/widget/ImageView;

.field private final mMainHandler:Landroid/os/Handler;

.field modelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yftech/settings/manager/BaseManager$ModelCallback<",
            "Lcom/yftech/settings/manager/CarDriveModeManager$Function;",
            ">;"
        }
    .end annotation
.end field

.field private numIvAirTemp:Lcom/yftech/settings/widget/NumImageView;

.field private numIvOilPress:Lcom/yftech/settings/widget/NumImageView;

.field private numIvOilTemp:Lcom/yftech/settings/widget/NumImageView;

.field private numIvWaterTemp:Lcom/yftech/settings/widget/NumImageView;

.field private numTurbo:Lcom/yftech/settings/widget/NumImageView;

.field private seekBarAirTemp:Landroidx/appcompat/widget/AppCompatSeekBar;

.field private seekBarOilPress:Landroidx/appcompat/widget/AppCompatSeekBar;

.field private seekBarOilTemp:Landroidx/appcompat/widget/AppCompatSeekBar;

.field private seekBarTurboLeftBottom:Landroidx/appcompat/widget/AppCompatSeekBar;

.field private seekBarTurboLeftTop:Landroidx/appcompat/widget/AppCompatSeekBar;

.field private seekBarTurboRightBottom:Landroidx/appcompat/widget/AppCompatSeekBar;

.field private seekBarTurboRightTop:Landroidx/appcompat/widget/AppCompatSeekBar;

.field private seekBarWaterTemp:Landroidx/appcompat/widget/AppCompatSeekBar;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 145
    invoke-direct {p0, p1}, Lcom/yftech/settings/widget/dialog/CommonDialog;-><init>(Landroid/content/Context;)V

    .line 56
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->mMainHandler:Landroid/os/Handler;

    .line 58
    new-instance p1, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog$1;

    invoke-direct {p1, p0}, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog$1;-><init>(Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;)V

    iput-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->carInfoListener:Lcom/yftech/vehicle/sdk/CarInfoManager$CarInfoListener;

    .line 132
    new-instance p1, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog$2;

    invoke-direct {p1, p0}, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog$2;-><init>(Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;)V

    iput-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->modelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 32
    sget-object v0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;)Lcom/yftech/settings/widget/NumImageView;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->numIvWaterTemp:Lcom/yftech/settings/widget/NumImageView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;)Lcom/yftech/settings/widget/NumImageView;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->numTurbo:Lcom/yftech/settings/widget/NumImageView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;)Landroidx/appcompat/widget/AppCompatSeekBar;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->seekBarTurboLeftTop:Landroidx/appcompat/widget/AppCompatSeekBar;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;)Landroidx/appcompat/widget/AppCompatSeekBar;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->seekBarTurboLeftBottom:Landroidx/appcompat/widget/AppCompatSeekBar;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;)Landroidx/appcompat/widget/AppCompatSeekBar;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->seekBarTurboRightTop:Landroidx/appcompat/widget/AppCompatSeekBar;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;)Landroidx/appcompat/widget/AppCompatSeekBar;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->seekBarTurboRightBottom:Landroidx/appcompat/widget/AppCompatSeekBar;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;)Landroid/widget/ImageView;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->ivAnimation:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;)Landroidx/appcompat/widget/AppCompatSeekBar;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->seekBarWaterTemp:Landroidx/appcompat/widget/AppCompatSeekBar;

    return-object p0
.end method

.method static synthetic access$300(Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;)Landroid/os/Handler;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;)Lcom/yftech/settings/widget/NumImageView;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->numIvOilTemp:Lcom/yftech/settings/widget/NumImageView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;)Landroidx/appcompat/widget/AppCompatSeekBar;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->seekBarOilTemp:Landroidx/appcompat/widget/AppCompatSeekBar;

    return-object p0
.end method

.method static synthetic access$600(Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;)Lcom/yftech/settings/widget/NumImageView;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->numIvOilPress:Lcom/yftech/settings/widget/NumImageView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;)Landroidx/appcompat/widget/AppCompatSeekBar;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->seekBarOilPress:Landroidx/appcompat/widget/AppCompatSeekBar;

    return-object p0
.end method

.method static synthetic access$800(Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;)Lcom/yftech/settings/widget/NumImageView;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->numIvAirTemp:Lcom/yftech/settings/widget/NumImageView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;)Landroidx/appcompat/widget/AppCompatSeekBar;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->seekBarAirTemp:Landroidx/appcompat/widget/AppCompatSeekBar;

    return-object p0
.end method

.method private initData()V
    .locals 7

    .line 251
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarInfoManager;->get()Lcom/yftech/vehicle/sdk/CarInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarInfoManager;->getTemperatureOfEngineWater()I

    move-result v0

    .line 252
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarInfoManager;->get()Lcom/yftech/vehicle/sdk/CarInfoManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/vehicle/sdk/CarInfoManager;->getTemperatureOfTransmissionOil()I

    move-result v1

    .line 253
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarInfoManager;->get()Lcom/yftech/vehicle/sdk/CarInfoManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yftech/vehicle/sdk/CarInfoManager;->getPressureOfOil()I

    move-result v2

    .line 254
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarInfoManager;->get()Lcom/yftech/vehicle/sdk/CarInfoManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yftech/vehicle/sdk/CarInfoManager;->getTemperatureOfIntakeAir()F

    move-result v3

    .line 255
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarInfoManager;->get()Lcom/yftech/vehicle/sdk/CarInfoManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yftech/vehicle/sdk/CarInfoManager;->getPressureOfTurbine()I

    move-result v4

    .line 257
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "initData: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v6, " CarInfoManager.get().getTemperatureOfEngineWater() -- > "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, " CarInfoManager.get().getTemperatureOfTransmissionOil() --> "

    .line 258
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, " CarInfoManager.get().getPressureOfOil() --> "

    .line 259
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, " CarInfoManager.get().getTemperatureOfIntakeAir() --> "

    .line 260
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, " CarInfoManager.get().getPressureOfTurbine() --> "

    .line 261
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 262
    sget-object v6, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->TAG:Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v5, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->numIvWaterTemp:Lcom/yftech/settings/widget/NumImageView;

    invoke-virtual {v5, v0}, Lcom/yftech/settings/widget/NumImageView;->setNumber(I)V

    .line 265
    iget-object v5, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->seekBarWaterTemp:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {v5, v0}, Landroidx/appcompat/widget/AppCompatSeekBar;->setProgress(I)V

    .line 267
    iget-object v0, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->numIvOilTemp:Lcom/yftech/settings/widget/NumImageView;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/NumImageView;->setNumber(I)V

    .line 268
    iget-object v0, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->seekBarOilTemp:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatSeekBar;->setProgress(I)V

    .line 270
    iget-object v0, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->numIvOilPress:Lcom/yftech/settings/widget/NumImageView;

    invoke-virtual {v0, v2}, Lcom/yftech/settings/widget/NumImageView;->setNumber(I)V

    .line 271
    iget-object v0, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->seekBarOilPress:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatSeekBar;->setProgress(I)V

    .line 273
    iget-object v0, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->numIvAirTemp:Lcom/yftech/settings/widget/NumImageView;

    invoke-virtual {v0, v3}, Lcom/yftech/settings/widget/NumImageView;->setNumber(F)V

    .line 274
    iget-object v0, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->seekBarAirTemp:Landroidx/appcompat/widget/AppCompatSeekBar;

    float-to-int v1, v3

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatSeekBar;->setProgress(I)V

    .line 277
    iget-object v0, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->numTurbo:Lcom/yftech/settings/widget/NumImageView;

    invoke-virtual {v0, v4}, Lcom/yftech/settings/widget/NumImageView;->setNumber(I)V

    .line 278
    iget-object v0, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->seekBarTurboLeftTop:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/AppCompatSeekBar;->setProgress(I)V

    .line 279
    iget-object v0, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->seekBarTurboLeftBottom:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/AppCompatSeekBar;->setProgress(I)V

    .line 280
    iget-object v0, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->seekBarTurboRightTop:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/AppCompatSeekBar;->setProgress(I)V

    .line 281
    iget-object p0, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->seekBarTurboRightBottom:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {p0, v4}, Landroidx/appcompat/widget/AppCompatSeekBar;->setProgress(I)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 150
    invoke-super {p0, p1}, Lcom/yftech/settings/widget/dialog/CommonDialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0a0021

    .line 151
    invoke-virtual {p0, p1}, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->setContentView(I)V

    .line 153
    invoke-virtual {p0}, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 155
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x8

    .line 156
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v1, 0x11

    .line 157
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, -0x1

    .line 158
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 159
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v1, 0x803

    .line 160
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 161
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    const p1, 0x7f080101

    .line 164
    invoke-virtual {p0, p1}, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->ivAnimation:Landroid/widget/ImageView;

    .line 165
    iget-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->ivAnimation:Landroid/widget/ImageView;

    const v0, 0x7f070056

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 166
    iget-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->ivAnimation:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 167
    iget-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 168
    iget-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 170
    :cond_1
    iget-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 171
    iget-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog$3;

    invoke-direct {v0, p0}, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog$3;-><init>(Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const p1, 0x7f080164

    .line 178
    invoke-virtual {p0, p1}, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/yftech/settings/widget/NumImageView;

    iput-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->numIvWaterTemp:Lcom/yftech/settings/widget/NumImageView;

    const p1, 0x7f080163

    .line 179
    invoke-virtual {p0, p1}, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/yftech/settings/widget/NumImageView;

    iput-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->numIvOilTemp:Lcom/yftech/settings/widget/NumImageView;

    const p1, 0x7f080162

    .line 180
    invoke-virtual {p0, p1}, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/yftech/settings/widget/NumImageView;

    iput-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->numIvOilPress:Lcom/yftech/settings/widget/NumImageView;

    const p1, 0x7f080160

    .line 181
    invoke-virtual {p0, p1}, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/yftech/settings/widget/NumImageView;

    iput-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->numIvAirTemp:Lcom/yftech/settings/widget/NumImageView;

    const p1, 0x7f080161

    .line 182
    invoke-virtual {p0, p1}, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/yftech/settings/widget/NumImageView;

    iput-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->numTurbo:Lcom/yftech/settings/widget/NumImageView;

    const p1, 0x7f08023c

    .line 184
    invoke-virtual {p0, p1}, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatSeekBar;

    iput-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->seekBarWaterTemp:Landroidx/appcompat/widget/AppCompatSeekBar;

    const p1, 0x7f080236

    .line 185
    invoke-virtual {p0, p1}, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatSeekBar;

    iput-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->seekBarOilPress:Landroidx/appcompat/widget/AppCompatSeekBar;

    const p1, 0x7f080237

    .line 186
    invoke-virtual {p0, p1}, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatSeekBar;

    iput-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->seekBarOilTemp:Landroidx/appcompat/widget/AppCompatSeekBar;

    const p1, 0x7f080235

    .line 187
    invoke-virtual {p0, p1}, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatSeekBar;

    iput-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->seekBarAirTemp:Landroidx/appcompat/widget/AppCompatSeekBar;

    const p1, 0x7f080239

    .line 189
    invoke-virtual {p0, p1}, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatSeekBar;

    iput-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->seekBarTurboLeftTop:Landroidx/appcompat/widget/AppCompatSeekBar;

    const p1, 0x7f080238

    .line 190
    invoke-virtual {p0, p1}, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatSeekBar;

    iput-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->seekBarTurboLeftBottom:Landroidx/appcompat/widget/AppCompatSeekBar;

    const p1, 0x7f08023b

    .line 191
    invoke-virtual {p0, p1}, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatSeekBar;

    iput-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->seekBarTurboRightTop:Landroidx/appcompat/widget/AppCompatSeekBar;

    const p1, 0x7f08023a

    .line 192
    invoke-virtual {p0, p1}, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatSeekBar;

    iput-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->seekBarTurboRightBottom:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 194
    iget-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->seekBarWaterTemp:Landroidx/appcompat/widget/AppCompatSeekBar;

    const/16 v0, 0xd6

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatSeekBar;->setMax(I)V

    .line 195
    iget-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->seekBarWaterTemp:Landroidx/appcompat/widget/AppCompatSeekBar;

    const/16 v1, -0x28

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/AppCompatSeekBar;->setMin(I)V

    .line 200
    iget-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->seekBarOilTemp:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatSeekBar;->setMax(I)V

    .line 201
    iget-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->seekBarOilTemp:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/AppCompatSeekBar;->setMin(I)V

    .line 215
    iget-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->seekBarWaterTemp:Landroidx/appcompat/widget/AppCompatSeekBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatSeekBar;->setEnabled(Z)V

    .line 216
    iget-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->seekBarOilPress:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatSeekBar;->setEnabled(Z)V

    .line 217
    iget-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->seekBarOilTemp:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatSeekBar;->setEnabled(Z)V

    .line 218
    iget-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->seekBarAirTemp:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatSeekBar;->setEnabled(Z)V

    .line 219
    iget-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->seekBarTurboLeftTop:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatSeekBar;->setEnabled(Z)V

    .line 220
    iget-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->seekBarTurboLeftBottom:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatSeekBar;->setEnabled(Z)V

    .line 221
    iget-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->seekBarTurboRightTop:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatSeekBar;->setEnabled(Z)V

    .line 222
    iget-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->seekBarTurboRightBottom:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatSeekBar;->setEnabled(Z)V

    const p1, 0x7f080103

    .line 224
    invoke-virtual {p0, p1}, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    .line 226
    new-instance v0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog$4;

    invoke-direct {v0, p0}, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog$4;-><init>(Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 236
    invoke-super {p0}, Lcom/yftech/settings/widget/dialog/CommonDialog;->onStart()V

    .line 237
    invoke-direct {p0}, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->initData()V

    .line 238
    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->modelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarDriveModeManager;->registerModelCallback(Lcom/yftech/settings/manager/BaseManager$ModelCallback;)V

    .line 239
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarInfoManager;->get()Lcom/yftech/vehicle/sdk/CarInfoManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->carInfoListener:Lcom/yftech/vehicle/sdk/CarInfoManager$CarInfoListener;

    invoke-virtual {v0, p0}, Lcom/yftech/vehicle/sdk/CarInfoManager;->registerListener(Lcom/yftech/vehicle/sdk/CarInfoManager$CarInfoListener;)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 244
    invoke-super {p0}, Lcom/yftech/settings/widget/dialog/CommonDialog;->onStop()V

    .line 245
    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->modelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarDriveModeManager;->unregisterModelCallback(Lcom/yftech/settings/manager/BaseManager$ModelCallback;)V

    .line 246
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarInfoManager;->get()Lcom/yftech/vehicle/sdk/CarInfoManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->carInfoListener:Lcom/yftech/vehicle/sdk/CarInfoManager$CarInfoListener;

    invoke-virtual {v0, p0}, Lcom/yftech/vehicle/sdk/CarInfoManager;->unregisterListener(Lcom/yftech/vehicle/sdk/CarInfoManager$CarInfoListener;)V

    return-void
.end method

.method public setNumIvWaterTempText(F)V
    .locals 0

    return-void
.end method
