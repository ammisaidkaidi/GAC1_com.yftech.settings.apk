.class public Lcom/yftech/settings/avdc/AvdcDialog;
.super Landroid/app/Dialog;
.source "AvdcDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private acComfortCurveStr:[Ljava/lang/String;

.field private btnComfort:Landroid/widget/Button;

.field private btnDynamic:Landroid/widget/Button;

.field private btnEco:Landroid/widget/Button;

.field private energyRecoveryLeveltr:[Ljava/lang/String;

.field private ivBg:Landroid/widget/ImageView;

.field private ivCar:Landroid/widget/ImageView;

.field private ivLight:Landroid/widget/ImageView;

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

.field private mIsPower:Z

.field private mPowerToast:Landroid/widget/Toast;

.field private shadowDrivertr:[Ljava/lang/String;

.field private soundWavesStr:[Ljava/lang/String;

.field private steeringHandStr:[Ljava/lang/String;

.field private suspensionModeStr:[Ljava/lang/String;

.field private tvAcComfortCurve:Landroid/widget/TextView;

.field private tvEnergyRecoveryLevel:Landroid/widget/TextView;

.field private tvModeDescribe:Landroid/widget/TextView;

.field private tvModeName:Landroid/widget/TextView;

.field private tvShadowDriver:Landroid/widget/TextView;

.field private tvSoundWaves:Landroid/widget/TextView;

.field private tvSteeringHand:Landroid/widget/TextView;

.field private tvSuspensionMode:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 90
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 55
    new-instance p1, Lcom/yftech/settings/avdc/AvdcDialog$1;

    invoke-direct {p1, p0}, Lcom/yftech/settings/avdc/AvdcDialog$1;-><init>(Lcom/yftech/settings/avdc/AvdcDialog;)V

    iput-object p1, p0, Lcom/yftech/settings/avdc/AvdcDialog;->mCarDriveModeModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;

    .line 75
    new-instance p1, Lcom/yftech/settings/avdc/AvdcDialog$2;

    invoke-direct {p1, p0}, Lcom/yftech/settings/avdc/AvdcDialog$2;-><init>(Lcom/yftech/settings/avdc/AvdcDialog;)V

    iput-object p1, p0, Lcom/yftech/settings/avdc/AvdcDialog;->mCarPartsModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/settings/avdc/AvdcDialog;Lcom/yftech/settings/manager/CarDriveModeManager$Function;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/avdc/AvdcDialog;->setOptionText(Lcom/yftech/settings/manager/CarDriveModeManager$Function;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/yftech/settings/avdc/AvdcDialog;Lcom/yftech/settings/manager/CarDriveModeManager$Function;Ljava/lang/Object;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/avdc/AvdcDialog;->setValueView(Lcom/yftech/settings/manager/CarDriveModeManager$Function;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/yftech/settings/avdc/AvdcDialog;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/yftech/settings/avdc/AvdcDialog;->initCarDriveModeViewData()V

    return-void
.end method

.method static synthetic access$300(Lcom/yftech/settings/avdc/AvdcDialog;Lcom/yftech/settings/manager/CarPartsManager$Function;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/avdc/AvdcDialog;->setOptionText(Lcom/yftech/settings/manager/CarPartsManager$Function;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/yftech/settings/avdc/AvdcDialog;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/yftech/settings/avdc/AvdcDialog;->initCarPartsViewData()V

    return-void
.end method

.method private getFunctionStr(Lcom/yftech/settings/manager/CarDriveModeManager$Function;I)Ljava/lang/String;
    .locals 1

    .line 278
    sget-object v0, Lcom/yftech/settings/avdc/AvdcDialog$3;->$SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-ltz p2, :cond_0

    .line 300
    iget-object p1, p0, Lcom/yftech/settings/avdc/AvdcDialog;->energyRecoveryLeveltr:[Ljava/lang/String;

    array-length p1, p1

    if-ge p2, p1, :cond_0

    .line 301
    iget-object p0, p0, Lcom/yftech/settings/avdc/AvdcDialog;->energyRecoveryLeveltr:[Ljava/lang/String;

    aget-object p0, p0, p2

    return-object p0

    :pswitch_1
    if-ltz p2, :cond_0

    .line 295
    iget-object p1, p0, Lcom/yftech/settings/avdc/AvdcDialog;->soundWavesStr:[Ljava/lang/String;

    array-length p1, p1

    if-ge p2, p1, :cond_0

    .line 296
    iget-object p0, p0, Lcom/yftech/settings/avdc/AvdcDialog;->soundWavesStr:[Ljava/lang/String;

    aget-object p0, p0, p2

    return-object p0

    :pswitch_2
    if-ltz p2, :cond_0

    .line 290
    iget-object p1, p0, Lcom/yftech/settings/avdc/AvdcDialog;->shadowDrivertr:[Ljava/lang/String;

    array-length p1, p1

    if-ge p2, p1, :cond_0

    .line 291
    iget-object p0, p0, Lcom/yftech/settings/avdc/AvdcDialog;->shadowDrivertr:[Ljava/lang/String;

    aget-object p0, p0, p2

    return-object p0

    :pswitch_3
    if-ltz p2, :cond_0

    .line 285
    iget-object p1, p0, Lcom/yftech/settings/avdc/AvdcDialog;->suspensionModeStr:[Ljava/lang/String;

    array-length p1, p1

    if-ge p2, p1, :cond_0

    .line 286
    iget-object p0, p0, Lcom/yftech/settings/avdc/AvdcDialog;->suspensionModeStr:[Ljava/lang/String;

    aget-object p0, p0, p2

    return-object p0

    :pswitch_4
    if-ltz p2, :cond_0

    .line 280
    iget-object p1, p0, Lcom/yftech/settings/avdc/AvdcDialog;->steeringHandStr:[Ljava/lang/String;

    array-length p1, p1

    if-ge p2, p1, :cond_0

    .line 281
    iget-object p0, p0, Lcom/yftech/settings/avdc/AvdcDialog;->steeringHandStr:[Ljava/lang/String;

    aget-object p0, p0, p2

    return-object p0

    :cond_0
    :goto_0
    const-string p0, ""

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getFunctionStr(Lcom/yftech/settings/manager/CarPartsManager$Function;I)Ljava/lang/String;
    .locals 1

    .line 309
    sget-object v0, Lcom/yftech/settings/avdc/AvdcDialog$3;->$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/CarPartsManager$Function;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-ltz p2, :cond_1

    .line 311
    iget-object p1, p0, Lcom/yftech/settings/avdc/AvdcDialog;->acComfortCurveStr:[Ljava/lang/String;

    array-length p1, p1

    if-ge p2, p1, :cond_1

    .line 312
    iget-object p0, p0, Lcom/yftech/settings/avdc/AvdcDialog;->acComfortCurveStr:[Ljava/lang/String;

    aget-object p0, p0, p2

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method private initCarDriveModeViewData()V
    .locals 3

    .line 177
    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->DRIVE_MODE_VALUE:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarDriveModeManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    sget-object v0, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->DRIVE_MODE_VALUE:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->DRIVE_MODE_VALUE:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/CarDriveModeManager;->getValue(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/avdc/AvdcDialog;->setValueView(Lcom/yftech/settings/manager/CarDriveModeManager$Function;Ljava/lang/Object;)V

    .line 180
    :cond_0
    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->EPS_STYLE_OPTION:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarDriveModeManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    sget-object v0, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->EPS_STYLE_OPTION:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->EPS_STYLE_OPTION:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/CarDriveModeManager;->getOption(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/avdc/AvdcDialog;->setOptionText(Lcom/yftech/settings/manager/CarDriveModeManager$Function;I)V

    .line 183
    :cond_1
    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->SUSPENSION_MODE_OPTION:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarDriveModeManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 184
    sget-object v0, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->SUSPENSION_MODE_OPTION:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->SUSPENSION_MODE_OPTION:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/CarDriveModeManager;->getOption(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/avdc/AvdcDialog;->setOptionText(Lcom/yftech/settings/manager/CarDriveModeManager$Function;I)V

    .line 186
    :cond_2
    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->SHADOW_DRIVER_OPTION:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarDriveModeManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 187
    sget-object v0, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->SHADOW_DRIVER_OPTION:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->SHADOW_DRIVER_OPTION:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/CarDriveModeManager;->getOption(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/avdc/AvdcDialog;->setOptionText(Lcom/yftech/settings/manager/CarDriveModeManager$Function;I)V

    .line 189
    :cond_3
    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->EMS_ENGINE_WAVE_ENABLE:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarDriveModeManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 190
    sget-object v0, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->EMS_ENGINE_WAVE_ENABLE:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->EMS_ENGINE_WAVE_ENABLE:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/CarDriveModeManager;->getOption(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/avdc/AvdcDialog;->setOptionText(Lcom/yftech/settings/manager/CarDriveModeManager$Function;I)V

    .line 192
    :cond_4
    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->ENERGY_RECOVERY_LEVEL_OPTION:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarDriveModeManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 193
    sget-object v0, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->ENERGY_RECOVERY_LEVEL_OPTION:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->ENERGY_RECOVERY_LEVEL_OPTION:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/CarDriveModeManager;->getOption(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/avdc/AvdcDialog;->setOptionText(Lcom/yftech/settings/manager/CarDriveModeManager$Function;I)V

    :cond_5
    return-void
.end method

.method private initCarPartsViewData()V
    .locals 3

    .line 198
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/CarPartsManager$Function;->AC_COMFORT_CURVE_MODE_OPTION:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->AC_COMFORT_CURVE_MODE_OPTION:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/CarPartsManager$Function;->AC_COMFORT_CURVE_MODE_OPTION:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/CarPartsManager;->getOption(Lcom/yftech/settings/manager/CarPartsManager$Function;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/avdc/AvdcDialog;->setOptionText(Lcom/yftech/settings/manager/CarPartsManager$Function;I)V

    :cond_0
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 6

    const v0, 0x7f080102

    .line 125
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/settings/avdc/AvdcDialog;->ivBg:Landroid/widget/ImageView;

    const v0, 0x7f080104

    .line 126
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/settings/avdc/AvdcDialog;->ivCar:Landroid/widget/ImageView;

    const v0, 0x7f080106

    .line 127
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/settings/avdc/AvdcDialog;->ivLight:Landroid/widget/ImageView;

    const v0, 0x7f080069

    .line 128
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yftech/settings/avdc/AvdcDialog;->btnEco:Landroid/widget/Button;

    const v0, 0x7f080065

    .line 129
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yftech/settings/avdc/AvdcDialog;->btnComfort:Landroid/widget/Button;

    const v0, 0x7f080068

    .line 130
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yftech/settings/avdc/AvdcDialog;->btnDynamic:Landroid/widget/Button;

    const v0, 0x7f080225

    .line 131
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/settings/avdc/AvdcDialog;->tvModeName:Landroid/widget/TextView;

    const v0, 0x7f080224

    .line 132
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/settings/avdc/AvdcDialog;->tvModeDescribe:Landroid/widget/TextView;

    const v0, 0x7f08022b

    .line 133
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/settings/avdc/AvdcDialog;->tvSteeringHand:Landroid/widget/TextView;

    const v0, 0x7f08022c

    .line 134
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/settings/avdc/AvdcDialog;->tvSuspensionMode:Landroid/widget/TextView;

    const v0, 0x7f080228

    .line 135
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/settings/avdc/AvdcDialog;->tvShadowDriver:Landroid/widget/TextView;

    const v0, 0x7f080229

    .line 136
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/settings/avdc/AvdcDialog;->tvSoundWaves:Landroid/widget/TextView;

    const v0, 0x7f08021d

    .line 137
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/settings/avdc/AvdcDialog;->tvAcComfortCurve:Landroid/widget/TextView;

    const v0, 0x7f080222

    .line 138
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/settings/avdc/AvdcDialog;->tvEnergyRecoveryLevel:Landroid/widget/TextView;

    .line 139
    iget-object v0, p0, Lcom/yftech/settings/avdc/AvdcDialog;->btnEco:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/yftech/settings/avdc/AvdcDialog;->btnComfort:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v0, p0, Lcom/yftech/settings/avdc/AvdcDialog;->btnDynamic:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080064

    .line 142
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08006b

    .line 143
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v1, p0, Lcom/yftech/settings/avdc/AvdcDialog;->tvSteeringHand:Landroid/widget/TextView;

    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v2

    sget-object v3, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->EPS_STYLE_OPTION:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v2, v3}, Lcom/yftech/settings/manager/CarDriveModeManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)Z

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    iget-object v1, p0, Lcom/yftech/settings/avdc/AvdcDialog;->tvSoundWaves:Landroid/widget/TextView;

    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v2

    sget-object v5, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->EMS_ENGINE_WAVE_ENABLE:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v2, v5}, Lcom/yftech/settings/manager/CarDriveModeManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    iget-object v1, p0, Lcom/yftech/settings/avdc/AvdcDialog;->tvAcComfortCurve:Landroid/widget/TextView;

    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v2

    sget-object v5, Lcom/yftech/settings/manager/CarPartsManager$Function;->AC_COMFORT_CURVE_MODE_OPTION:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v2, v5}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v4

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    iget-object v1, p0, Lcom/yftech/settings/avdc/AvdcDialog;->tvEnergyRecoveryLevel:Landroid/widget/TextView;

    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v2

    sget-object v5, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->ENERGY_RECOVERY_LEVEL_OPTION:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v2, v5}, Lcom/yftech/settings/manager/CarDriveModeManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v4

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    iget-object v1, p0, Lcom/yftech/settings/avdc/AvdcDialog;->tvSuspensionMode:Landroid/widget/TextView;

    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v2

    sget-object v5, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->SUSPENSION_MODE_OPTION:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v2, v5}, Lcom/yftech/settings/manager/CarDriveModeManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v4

    goto :goto_4

    :cond_4
    move v2, v3

    :goto_4
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    iget-object v1, p0, Lcom/yftech/settings/avdc/AvdcDialog;->tvShadowDriver:Landroid/widget/TextView;

    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v2

    sget-object v5, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->SHADOW_DRIVER_OPTION:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v2, v5}, Lcom/yftech/settings/manager/CarDriveModeManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v3, v4

    :cond_5
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    iget-object v1, p0, Lcom/yftech/settings/avdc/AvdcDialog;->btnEco:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 158
    iget-object v1, p0, Lcom/yftech/settings/avdc/AvdcDialog;->btnComfort:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 159
    iget-object v1, p0, Lcom/yftech/settings/avdc/AvdcDialog;->btnDynamic:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 160
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private initViewData()V
    .locals 0

    .line 172
    invoke-direct {p0}, Lcom/yftech/settings/avdc/AvdcDialog;->initCarDriveModeViewData()V

    .line 173
    invoke-direct {p0}, Lcom/yftech/settings/avdc/AvdcDialog;->initCarPartsViewData()V

    return-void
.end method

.method private isPower()Z
    .locals 1

    .line 381
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarPowerManager;->get()Lcom/yftech/vehicle/sdk/CarPowerManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarPowerManager;->getPowerMode()Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerMode;

    move-result-object p0

    .line 382
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerMode;->ON:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerMode;->CRANK:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerMode;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private setOptionText(Lcom/yftech/settings/manager/CarDriveModeManager$Function;I)V
    .locals 4

    .line 320
    sget-object v0, Lcom/yftech/settings/avdc/AvdcDialog$3;->$SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 334
    :pswitch_0
    iget-object v0, p0, Lcom/yftech/settings/avdc/AvdcDialog;->tvEnergyRecoveryLevel:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/yftech/settings/avdc/AvdcDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d006c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/avdc/AvdcDialog;->getFunctionStr(Lcom/yftech/settings/manager/CarDriveModeManager$Function;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 331
    :pswitch_1
    iget-object v0, p0, Lcom/yftech/settings/avdc/AvdcDialog;->tvSoundWaves:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/yftech/settings/avdc/AvdcDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d0071

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/avdc/AvdcDialog;->getFunctionStr(Lcom/yftech/settings/manager/CarDriveModeManager$Function;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 328
    :pswitch_2
    iget-object v0, p0, Lcom/yftech/settings/avdc/AvdcDialog;->tvShadowDriver:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/yftech/settings/avdc/AvdcDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d0070

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/avdc/AvdcDialog;->getFunctionStr(Lcom/yftech/settings/manager/CarDriveModeManager$Function;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 325
    :pswitch_3
    iget-object v0, p0, Lcom/yftech/settings/avdc/AvdcDialog;->tvSuspensionMode:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/yftech/settings/avdc/AvdcDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d0076

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/avdc/AvdcDialog;->getFunctionStr(Lcom/yftech/settings/manager/CarDriveModeManager$Function;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 322
    :pswitch_4
    iget-object v0, p0, Lcom/yftech/settings/avdc/AvdcDialog;->tvSteeringHand:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/yftech/settings/avdc/AvdcDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d0073

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/avdc/AvdcDialog;->getFunctionStr(Lcom/yftech/settings/manager/CarDriveModeManager$Function;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
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

.method private setOptionText(Lcom/yftech/settings/manager/CarPartsManager$Function;I)V
    .locals 4

    .line 340
    sget-object v0, Lcom/yftech/settings/avdc/AvdcDialog$3;->$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/CarPartsManager$Function;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/yftech/settings/avdc/AvdcDialog;->tvAcComfortCurve:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/yftech/settings/avdc/AvdcDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d006a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/avdc/AvdcDialog;->getFunctionStr(Lcom/yftech/settings/manager/CarPartsManager$Function;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private setValueView(Lcom/yftech/settings/manager/CarDriveModeManager$Function;Ljava/lang/Object;)V
    .locals 1

    .line 348
    sget-object v0, Lcom/yftech/settings/avdc/AvdcDialog$3;->$SwitchMap$com$yftech$settings$manager$CarDriveModeManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 350
    :cond_0
    check-cast p2, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    invoke-direct {p0, p2}, Lcom/yftech/settings/avdc/AvdcDialog;->updateView(Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;)V

    :goto_0
    return-void
.end method

.method private showPowerToast()V
    .locals 3

    .line 372
    iget-object v0, p0, Lcom/yftech/settings/avdc/AvdcDialog;->mPowerToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/yftech/settings/avdc/AvdcDialog;->mPowerToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    const/4 v0, 0x0

    .line 374
    iput-object v0, p0, Lcom/yftech/settings/avdc/AvdcDialog;->mPowerToast:Landroid/widget/Toast;

    .line 376
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/settings/avdc/AvdcDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yftech/settings/avdc/AvdcDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d01ba

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/settings/avdc/AvdcDialog;->mPowerToast:Landroid/widget/Toast;

    .line 377
    iget-object p0, p0, Lcom/yftech/settings/avdc/AvdcDialog;->mPowerToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private updateView(Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;)V
    .locals 3

    .line 241
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->ECO_PRO_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    .line 242
    iget-object p1, p0, Lcom/yftech/settings/avdc/AvdcDialog;->btnEco:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 243
    iget-object p1, p0, Lcom/yftech/settings/avdc/AvdcDialog;->btnComfort:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 244
    iget-object p1, p0, Lcom/yftech/settings/avdc/AvdcDialog;->btnDynamic:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 246
    iget-object p1, p0, Lcom/yftech/settings/avdc/AvdcDialog;->ivBg:Landroid/widget/ImageView;

    const v0, 0x7f0b0062

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 247
    iget-object p1, p0, Lcom/yftech/settings/avdc/AvdcDialog;->ivCar:Landroid/widget/ImageView;

    const v0, 0x7f0b0064

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 248
    iget-object p1, p0, Lcom/yftech/settings/avdc/AvdcDialog;->ivLight:Landroid/widget/ImageView;

    const v0, 0x7f0b0065

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 254
    iget-object p1, p0, Lcom/yftech/settings/avdc/AvdcDialog;->tvModeName:Landroid/widget/TextView;

    const v0, 0x7f0d0065

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 255
    iget-object p0, p0, Lcom/yftech/settings/avdc/AvdcDialog;->tvModeDescribe:Landroid/widget/TextView;

    const p1, 0x7f0d0066

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 256
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->COMFORT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    if-ne p1, v0, :cond_1

    .line 257
    iget-object p1, p0, Lcom/yftech/settings/avdc/AvdcDialog;->btnEco:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 258
    iget-object p1, p0, Lcom/yftech/settings/avdc/AvdcDialog;->btnComfort:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 259
    iget-object p1, p0, Lcom/yftech/settings/avdc/AvdcDialog;->btnDynamic:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 260
    iget-object p1, p0, Lcom/yftech/settings/avdc/AvdcDialog;->ivBg:Landroid/widget/ImageView;

    const v0, 0x7f0b0034

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 261
    iget-object p1, p0, Lcom/yftech/settings/avdc/AvdcDialog;->ivCar:Landroid/widget/ImageView;

    const v0, 0x7f0b0036

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 262
    iget-object p1, p0, Lcom/yftech/settings/avdc/AvdcDialog;->ivLight:Landroid/widget/ImageView;

    const v0, 0x7f0b0037

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 263
    iget-object p1, p0, Lcom/yftech/settings/avdc/AvdcDialog;->tvModeName:Landroid/widget/TextView;

    const v0, 0x7f0d0061

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 264
    iget-object p0, p0, Lcom/yftech/settings/avdc/AvdcDialog;->tvModeDescribe:Landroid/widget/TextView;

    const p1, 0x7f0d0062

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 265
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->SPORT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    if-ne p1, v0, :cond_2

    .line 266
    iget-object p1, p0, Lcom/yftech/settings/avdc/AvdcDialog;->btnEco:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 267
    iget-object p1, p0, Lcom/yftech/settings/avdc/AvdcDialog;->btnComfort:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 268
    iget-object p1, p0, Lcom/yftech/settings/avdc/AvdcDialog;->btnDynamic:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 269
    iget-object p1, p0, Lcom/yftech/settings/avdc/AvdcDialog;->ivBg:Landroid/widget/ImageView;

    const v0, 0x7f0b005f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 270
    iget-object p1, p0, Lcom/yftech/settings/avdc/AvdcDialog;->ivCar:Landroid/widget/ImageView;

    const v0, 0x7f0b0060

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 271
    iget-object p1, p0, Lcom/yftech/settings/avdc/AvdcDialog;->ivLight:Landroid/widget/ImageView;

    const v0, 0x7f0b0061

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 272
    iget-object p1, p0, Lcom/yftech/settings/avdc/AvdcDialog;->tvModeName:Landroid/widget/TextView;

    const v0, 0x7f0d0063

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 273
    iget-object p0, p0, Lcom/yftech/settings/avdc/AvdcDialog;->tvModeDescribe:Landroid/widget/TextView;

    const p1, 0x7f0d0064

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 214
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 228
    :pswitch_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.yftech.intent.action.start.settings.avdc"

    .line 229
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "activity"

    const-string v1, "mode_settings"

    .line 230
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    invoke-virtual {p0}, Lcom/yftech/settings/avdc/AvdcDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 232
    invoke-virtual {p0}, Lcom/yftech/settings/avdc/AvdcDialog;->dismiss()V

    goto :goto_0

    .line 216
    :pswitch_2
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->ECO_PRO_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    invoke-direct {p0, p1}, Lcom/yftech/settings/avdc/AvdcDialog;->updateView(Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;)V

    .line 217
    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object p0

    sget-object p1, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->DRIVE_MODE_VALUE:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->ECO_PRO_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    invoke-virtual {p0, p1, v0}, Lcom/yftech/settings/manager/CarDriveModeManager;->setValue(Lcom/yftech/settings/manager/CarDriveModeManager$Function;Ljava/lang/Object;)Z

    goto :goto_0

    .line 224
    :pswitch_3
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->SPORT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    invoke-direct {p0, p1}, Lcom/yftech/settings/avdc/AvdcDialog;->updateView(Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;)V

    .line 225
    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object p0

    sget-object p1, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->DRIVE_MODE_VALUE:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->SPORT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    invoke-virtual {p0, p1, v0}, Lcom/yftech/settings/manager/CarDriveModeManager;->setValue(Lcom/yftech/settings/manager/CarDriveModeManager$Function;Ljava/lang/Object;)Z

    goto :goto_0

    .line 220
    :pswitch_4
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->COMFORT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    invoke-direct {p0, p1}, Lcom/yftech/settings/avdc/AvdcDialog;->updateView(Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;)V

    .line 221
    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object p0

    sget-object p1, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->DRIVE_MODE_VALUE:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->COMFORT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    invoke-virtual {p0, p1, v0}, Lcom/yftech/settings/manager/CarDriveModeManager;->setValue(Lcom/yftech/settings/manager/CarDriveModeManager$Function;Ljava/lang/Object;)Z

    goto :goto_0

    .line 235
    :pswitch_5
    invoke-virtual {p0}, Lcom/yftech/settings/avdc/AvdcDialog;->dismiss()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f080064
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 95
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 96
    invoke-virtual {p0, p1}, Lcom/yftech/settings/avdc/AvdcDialog;->requestWindowFeature(I)Z

    .line 97
    invoke-virtual {p0}, Lcom/yftech/settings/avdc/AvdcDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a0020

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 98
    invoke-virtual {p0, v0}, Lcom/yftech/settings/avdc/AvdcDialog;->setContentView(Landroid/view/View;)V

    .line 99
    invoke-virtual {p0}, Lcom/yftech/settings/avdc/AvdcDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 101
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 102
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    const/16 v4, 0x802

    .line 103
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v4, 0x11

    .line 105
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 106
    iput p1, v3, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 p1, 0x4d8

    .line 107
    iput p1, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 p1, 0x25a

    .line 108
    iput p1, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 p1, 0x7f6

    .line 109
    iput p1, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 110
    invoke-virtual {v1, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const p1, 0x7f05006f

    .line 111
    invoke-virtual {v1, p1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 113
    :cond_0
    invoke-virtual {p0, v2}, Lcom/yftech/settings/avdc/AvdcDialog;->setCanceledOnTouchOutside(Z)V

    .line 114
    invoke-virtual {p0, v2}, Lcom/yftech/settings/avdc/AvdcDialog;->setCancelable(Z)V

    .line 115
    invoke-virtual {p0}, Lcom/yftech/settings/avdc/AvdcDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f02000e

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/settings/avdc/AvdcDialog;->steeringHandStr:[Ljava/lang/String;

    .line 116
    invoke-virtual {p0}, Lcom/yftech/settings/avdc/AvdcDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f02000b

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/settings/avdc/AvdcDialog;->soundWavesStr:[Ljava/lang/String;

    .line 117
    invoke-virtual {p0}, Lcom/yftech/settings/avdc/AvdcDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f020006

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/settings/avdc/AvdcDialog;->acComfortCurveStr:[Ljava/lang/String;

    .line 118
    invoke-virtual {p0}, Lcom/yftech/settings/avdc/AvdcDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f020009

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/settings/avdc/AvdcDialog;->energyRecoveryLeveltr:[Ljava/lang/String;

    .line 119
    invoke-virtual {p0}, Lcom/yftech/settings/avdc/AvdcDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f02000f

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/settings/avdc/AvdcDialog;->suspensionModeStr:[Ljava/lang/String;

    .line 120
    invoke-virtual {p0}, Lcom/yftech/settings/avdc/AvdcDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f02000a

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/settings/avdc/AvdcDialog;->shadowDrivertr:[Ljava/lang/String;

    .line 121
    invoke-direct {p0, v0}, Lcom/yftech/settings/avdc/AvdcDialog;->initView(Landroid/view/View;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 165
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 166
    invoke-direct {p0}, Lcom/yftech/settings/avdc/AvdcDialog;->initViewData()V

    .line 167
    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/settings/avdc/AvdcDialog;->mCarDriveModeModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarDriveModeManager;->registerModelCallback(Lcom/yftech/settings/manager/BaseManager$ModelCallback;)V

    .line 168
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/settings/avdc/AvdcDialog;->mCarPartsModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/manager/CarPartsManager;->registerModelCallback(Lcom/yftech/settings/manager/BaseManager$ModelCallback;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 205
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 206
    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/settings/avdc/AvdcDialog;->mCarDriveModeModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarDriveModeManager;->unregisterModelCallback(Lcom/yftech/settings/manager/BaseManager$ModelCallback;)V

    .line 207
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/settings/avdc/AvdcDialog;->mCarPartsModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/manager/CarPartsManager;->unregisterModelCallback(Lcom/yftech/settings/manager/BaseManager$ModelCallback;)V

    .line 208
    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->STOP_TIMEOUT_ACTION:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {p0, v0}, Lcom/yftech/settings/manager/CarDriveModeManager;->setAction(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)Z

    .line 209
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->STOP_TIMEOUT_ACTION:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {p0, v0}, Lcom/yftech/settings/manager/CarPartsManager;->setAction(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 357
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 358
    invoke-direct {p0}, Lcom/yftech/settings/avdc/AvdcDialog;->isPower()Z

    move-result p1

    iput-boolean p1, p0, Lcom/yftech/settings/avdc/AvdcDialog;->mIsPower:Z

    .line 359
    iget-boolean p1, p0, Lcom/yftech/settings/avdc/AvdcDialog;->mIsPower:Z

    if-nez p1, :cond_2

    .line 360
    invoke-direct {p0}, Lcom/yftech/settings/avdc/AvdcDialog;->showPowerToast()V

    return v0

    .line 363
    :cond_0
    iget-boolean p1, p0, Lcom/yftech/settings/avdc/AvdcDialog;->mIsPower:Z

    if-nez p1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    return v0

    .line 365
    :cond_1
    iget-boolean p0, p0, Lcom/yftech/settings/avdc/AvdcDialog;->mIsPower:Z

    if-nez p0, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    if-ne p0, v0, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
