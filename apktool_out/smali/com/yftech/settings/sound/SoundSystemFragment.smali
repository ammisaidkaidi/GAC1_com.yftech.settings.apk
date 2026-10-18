.class public Lcom/yftech/settings/sound/SoundSystemFragment;
.super Lcom/yftech/settings/BaseFragment;
.source "SoundSystemFragment.java"

# interfaces
.implements Lcom/yftech/settings/widget/SeekBarNumber$OnSeekChangeListener;
.implements Lcom/yftech/settings/widget/SoundStage$OnThumbPositionChanged;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/yftech/settings/widget/MultiSelectView$OnSwitchListener;
.implements Lcom/yftech/settings/manager/SoundVolumeManager$SoundVolumeListener;


# static fields
.field private static final DTS_INDEX_BASS:I = 0x2

.field private static final DTS_INDEX_CLEAR:I = 0x1

.field private static final DTS_INDEX_NATURAL:I = 0x0

.field private static final DTS_INDEX_REST:I = 0x3

.field private static final EQ_INDEX_CLASSIC:I = 0x0

.field private static final EQ_INDEX_CUSTOM:I = 0x5

.field private static final EQ_INDEX_DEFAULT:I = 0x4

.field private static final EQ_INDEX_JAZZ:I = 0x2

.field private static final EQ_INDEX_POP:I = 0x1

.field private static final EQ_INDEX_ROCK:I = 0x3

.field private static final MIN_DB:I = -0xa

.field private static final MSG_UPDATE_STAGE_UI:I = 0x1

.field private static final SEEK_BAR_MAX:I = 0x14

.field private static final TAG:Ljava/lang/String; = "SoundSystemFragment"


# instance fields
.field private bandHighInterval:F

.field private bandLowInterval:F

.field private bandMidInterval:F

.field private mBtnDtsBass:Landroid/widget/Button;

.field private mBtnDtsClear:Landroid/widget/Button;

.field private mBtnDtsNatural:Landroid/widget/Button;

.field private mBtnDtsRest:Landroid/widget/Button;

.field private mBtnEqClassic:Landroid/widget/Button;

.field private mBtnEqCustom:Landroid/widget/Button;

.field private mBtnEqDefault:Landroid/widget/Button;

.field private mBtnEqJazz:Landroid/widget/Button;

.field private mBtnEqPop:Landroid/widget/Button;

.field private mBtnEqRock:Landroid/widget/Button;

.field private mCallVolumeSB:Lcom/yftech/settings/widget/SeekBarNumber;

.field private mCarPartsModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yftech/settings/manager/BaseManager$ModelCallback<",
            "Lcom/yftech/settings/manager/CarPartsManager$Function;",
            ">;"
        }
    .end annotation
.end field

.field private final mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mHandler:Landroid/os/Handler;

.field private mHighSB:Lcom/yftech/settings/widget/SeekBarNumber;

.field private mIvCallVolumeIcon:Landroid/widget/ImageView;

.field private mIvMediaVolumeIcon:Landroid/widget/ImageView;

.field private mIvNaviVolumeIcon:Landroid/widget/ImageView;

.field private mIvVoiceVolumeIcon:Landroid/widget/ImageView;

.field private mLastCallVolume:I

.field private mLastNaviVolume:I

.field private mLastVoiceVolume:I

.field private mLlEqEffect:Landroid/widget/LinearLayout;

.field private mLlSoundSystemDTSMode:Landroid/widget/LinearLayout;

.field private mLowSB:Lcom/yftech/settings/widget/SeekBarNumber;

.field private mMediaVolumeSB:Lcom/yftech/settings/widget/SeekBarNumber;

.field private mMidSB:Lcom/yftech/settings/widget/SeekBarNumber;

.field private mNaviVolumeSB:Lcom/yftech/settings/widget/SeekBarNumber;

.field private mSmbAidMediaSound:Lcom/yftech/settings/widget/MultiSelectView;

.field private mSmbBestEffectPosition:Lcom/yftech/settings/widget/MultiSelectView;

.field private mSmbVolumeByPower:Lcom/yftech/settings/widget/MultiSelectView;

.field private mSoundModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yftech/settings/manager/BaseManager$ModelCallback<",
            "Lcom/yftech/settings/manager/SoundManager$Function;",
            ">;"
        }
    .end annotation
.end field

.field private mSoundStageBg:Landroid/widget/ImageView;

.field private mStage:Lcom/yftech/settings/widget/SoundStage;

.field private mSwUnlockingLockSound:Lcom/yftech/settings/widget/Switcher;

.field private mSwVolumeBySpeed:Lcom/yftech/settings/widget/Switcher;

.field private mTvHighValue:Landroid/widget/TextView;

.field private mTvLowValue:Landroid/widget/TextView;

.field private mTvMidValue:Landroid/widget/TextView;

.field private mVoiceVolumeSB:Lcom/yftech/settings/widget/SeekBarNumber;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/yftech/settings/BaseFragment;-><init>()V

    const/4 v0, 0x3

    .line 99
    iput v0, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mLastCallVolume:I

    .line 100
    iput v0, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mLastVoiceVolume:I

    const/4 v0, 0x0

    .line 101
    iput v0, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mLastNaviVolume:I

    .line 103
    new-instance v0, Lcom/yftech/settings/sound/SoundSystemFragment$1;

    invoke-direct {v0, p0}, Lcom/yftech/settings/sound/SoundSystemFragment$1;-><init>(Lcom/yftech/settings/sound/SoundSystemFragment;)V

    iput-object v0, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 112
    new-instance v0, Lcom/yftech/settings/sound/SoundSystemFragment$2;

    invoke-direct {v0, p0}, Lcom/yftech/settings/sound/SoundSystemFragment$2;-><init>(Lcom/yftech/settings/sound/SoundSystemFragment;)V

    iput-object v0, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mHandler:Landroid/os/Handler;

    .line 124
    new-instance v0, Lcom/yftech/settings/sound/SoundSystemFragment$3;

    invoke-direct {v0, p0}, Lcom/yftech/settings/sound/SoundSystemFragment$3;-><init>(Lcom/yftech/settings/sound/SoundSystemFragment;)V

    iput-object v0, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mSoundModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;

    .line 147
    new-instance v0, Lcom/yftech/settings/sound/SoundSystemFragment$4;

    invoke-direct {v0, p0}, Lcom/yftech/settings/sound/SoundSystemFragment$4;-><init>(Lcom/yftech/settings/sound/SoundSystemFragment;)V

    iput-object v0, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mCarPartsModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/settings/sound/SoundSystemFragment;)Lcom/yftech/settings/widget/SoundStage;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mStage:Lcom/yftech/settings/widget/SoundStage;

    return-object p0
.end method

.method static synthetic access$100(Lcom/yftech/settings/sound/SoundSystemFragment;)Landroid/os/Handler;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yftech/settings/sound/SoundSystemFragment;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/yftech/settings/sound/SoundSystemFragment;Lcom/yftech/settings/manager/SoundManager$Function;Ljava/lang/Object;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/sound/SoundSystemFragment;->setValueView(Lcom/yftech/settings/manager/SoundManager$Function;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/yftech/settings/sound/SoundSystemFragment;Lcom/yftech/settings/manager/SoundManager$Function;Z)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/sound/SoundSystemFragment;->setSwitcherView(Lcom/yftech/settings/manager/SoundManager$Function;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/yftech/settings/sound/SoundSystemFragment;Lcom/yftech/settings/manager/SoundManager$Function;Z)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/sound/SoundSystemFragment;->updateDtsView(Lcom/yftech/settings/manager/SoundManager$Function;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/yftech/settings/sound/SoundSystemFragment;Lcom/yftech/settings/manager/SoundManager$Function;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/sound/SoundSystemFragment;->setSwitchMultiButtonView(Lcom/yftech/settings/manager/SoundManager$Function;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/yftech/settings/sound/SoundSystemFragment;Lcom/yftech/settings/manager/CarPartsManager$Function;Z)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/sound/SoundSystemFragment;->setSwitcherView(Lcom/yftech/settings/manager/CarPartsManager$Function;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/yftech/settings/sound/SoundSystemFragment;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/yftech/settings/sound/SoundSystemFragment;->initCarPartsViewData()V

    return-void
.end method

.method private changeToOriginalBand(Lcom/yftech/settings/manager/SoundManager$Function;I)F
    .locals 0

    add-int/lit8 p2, p2, -0xa

    int-to-float p2, p2

    .line 561
    invoke-direct {p0, p1}, Lcom/yftech/settings/sound/SoundSystemFragment;->getDbInterval(Lcom/yftech/settings/manager/SoundManager$Function;)F

    move-result p0

    const/high16 p1, 0x41a00000    # 20.0f

    div-float/2addr p0, p1

    mul-float/2addr p2, p0

    return p2
.end method

.method private changeToProgress(Lcom/yftech/settings/manager/SoundManager$Function;F)I
    .locals 0

    .line 557
    invoke-direct {p0, p1}, Lcom/yftech/settings/sound/SoundSystemFragment;->getDbInterval(Lcom/yftech/settings/manager/SoundManager$Function;)F

    move-result p0

    const/high16 p1, 0x41a00000    # 20.0f

    div-float/2addr p0, p1

    div-float/2addr p2, p0

    float-to-int p0, p2

    add-int/lit8 p0, p0, 0xa

    return p0
.end method

.method private getDbInterval(Lcom/yftech/settings/manager/SoundManager$Function;)F
    .locals 1

    .line 565
    sget-object v0, Lcom/yftech/settings/sound/SoundSystemFragment$5;->$SwitchMap$com$yftech$settings$manager$SoundManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/SoundManager$Function;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/high16 p0, 0x41a00000    # 20.0f

    return p0

    .line 571
    :pswitch_0
    iget p0, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->bandLowInterval:F

    return p0

    .line 569
    :pswitch_1
    iget p0, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->bandMidInterval:F

    return p0

    .line 567
    :pswitch_2
    iget p0, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->bandHighInterval:F

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getVolumeIcon(II)I
    .locals 4

    const p0, 0x7f0b0101

    const v0, 0x7f0b0102

    const v1, 0x7f0b0100

    const v2, 0x7f0b00ff

    const/4 v3, 0x3

    if-ne p1, v3, :cond_3

    if-gtz p2, :cond_0

    return v2

    :cond_0
    const/16 p1, 0xd

    if-gt p2, p1, :cond_1

    if-lez p2, :cond_1

    return v1

    :cond_1
    const/16 v1, 0x1a

    if-gt p2, v1, :cond_2

    if-le p2, p1, :cond_2

    return p0

    :cond_2
    return v0

    :cond_3
    if-gtz p2, :cond_4

    return v2

    :cond_4
    if-gt p2, v3, :cond_5

    if-lez p2, :cond_5

    return v1

    :cond_5
    const/4 p1, 0x6

    if-gt p2, p1, :cond_6

    if-le p2, v3, :cond_6

    return p0

    :cond_6
    return v0
.end method

.method private handleBandsChanged(Lcom/yftech/settings/manager/SoundManager$Function;I)V
    .locals 1

    .line 578
    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/sound/SoundSystemFragment;->setBandsProgress(Lcom/yftech/settings/manager/SoundManager$Function;I)V

    .line 579
    invoke-static {}, Lcom/yftech/settings/manager/SoundManager;->getInstance()Lcom/yftech/settings/manager/SoundManager;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/sound/SoundSystemFragment;->changeToOriginalBand(Lcom/yftech/settings/manager/SoundManager$Function;I)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/yftech/settings/manager/SoundManager;->setValue(Lcom/yftech/settings/manager/SoundManager$Function;Ljava/lang/Object;)Z

    return-void
.end method

.method private handleVolumeChanged(II)V
    .locals 4

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mIvMediaVolumeIcon:Landroid/widget/ImageView;

    goto :goto_1

    :cond_0
    const/4 v2, 0x6

    if-ne p1, v2, :cond_1

    .line 467
    iget-object v1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mIvCallVolumeIcon:Landroid/widget/ImageView;

    :goto_0
    move-object v3, v1

    move v1, v0

    move-object v0, v3

    goto :goto_1

    :cond_1
    const/16 v2, 0x9

    if-ne p1, v2, :cond_2

    .line 470
    iget-object v1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mIvVoiceVolumeIcon:Landroid/widget/ImageView;

    goto :goto_0

    :cond_2
    const/16 v0, 0xb

    if-ne p1, v0, :cond_3

    .line 473
    iget-object v0, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mIvNaviVolumeIcon:Landroid/widget/ImageView;

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-ge p2, v1, :cond_4

    .line 477
    invoke-direct {p0, p1, v1}, Lcom/yftech/settings/sound/SoundSystemFragment;->setVolumeProgress(II)V

    .line 478
    invoke-static {}, Lcom/yftech/settings/manager/SoundVolumeManager;->getInstance()Lcom/yftech/settings/manager/SoundVolumeManager;

    move-result-object p0

    invoke-virtual {p0, p1, v1}, Lcom/yftech/settings/manager/SoundVolumeManager;->slideVolume(II)V

    return-void

    .line 481
    :cond_4
    invoke-static {}, Lcom/yftech/settings/manager/SoundVolumeManager;->getInstance()Lcom/yftech/settings/manager/SoundVolumeManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/yftech/settings/manager/SoundVolumeManager;->slideVolume(II)V

    if-eqz v0, :cond_5

    .line 483
    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/sound/SoundSystemFragment;->getVolumeIcon(II)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_5
    return-void
.end method

.method private initBands()V
    .locals 8

    .line 536
    invoke-static {}, Lcom/yftech/settings/manager/SoundManager;->getInstance()Lcom/yftech/settings/manager/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/SoundManager$Function;->BAND_HIGH_INTERVAL_VALUE:Lcom/yftech/settings/manager/SoundManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/SoundManager;->getValue(Lcom/yftech/settings/manager/SoundManager$Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->bandHighInterval:F

    .line 537
    invoke-static {}, Lcom/yftech/settings/manager/SoundManager;->getInstance()Lcom/yftech/settings/manager/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/SoundManager$Function;->BAND_MID_INTERVAL_VALUE:Lcom/yftech/settings/manager/SoundManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/SoundManager;->getValue(Lcom/yftech/settings/manager/SoundManager$Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->bandMidInterval:F

    .line 538
    invoke-static {}, Lcom/yftech/settings/manager/SoundManager;->getInstance()Lcom/yftech/settings/manager/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/SoundManager$Function;->BAND_LOW_INTERVAL_VALUE:Lcom/yftech/settings/manager/SoundManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/SoundManager;->getValue(Lcom/yftech/settings/manager/SoundManager$Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->bandLowInterval:F

    .line 540
    invoke-static {}, Lcom/yftech/settings/manager/SoundManager;->getInstance()Lcom/yftech/settings/manager/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/SoundManager$Function;->BAND_HIGH_VALUE:Lcom/yftech/settings/manager/SoundManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/SoundManager;->getValue(Lcom/yftech/settings/manager/SoundManager$Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 541
    sget-object v1, Lcom/yftech/settings/manager/SoundManager$Function;->BAND_HIGH_VALUE:Lcom/yftech/settings/manager/SoundManager$Function;

    invoke-direct {p0, v1, v0}, Lcom/yftech/settings/sound/SoundSystemFragment;->changeToProgress(Lcom/yftech/settings/manager/SoundManager$Function;F)I

    move-result v1

    .line 542
    sget-object v2, Lcom/yftech/settings/manager/SoundManager$Function;->BAND_HIGH_VALUE:Lcom/yftech/settings/manager/SoundManager$Function;

    invoke-direct {p0, v2, v1}, Lcom/yftech/settings/sound/SoundSystemFragment;->setBandsProgress(Lcom/yftech/settings/manager/SoundManager$Function;I)V

    .line 544
    invoke-static {}, Lcom/yftech/settings/manager/SoundManager;->getInstance()Lcom/yftech/settings/manager/SoundManager;

    move-result-object v2

    sget-object v3, Lcom/yftech/settings/manager/SoundManager$Function;->BAND_MID_VALUE:Lcom/yftech/settings/manager/SoundManager$Function;

    invoke-virtual {v2, v3}, Lcom/yftech/settings/manager/SoundManager;->getValue(Lcom/yftech/settings/manager/SoundManager$Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 545
    sget-object v3, Lcom/yftech/settings/manager/SoundManager$Function;->BAND_MID_VALUE:Lcom/yftech/settings/manager/SoundManager$Function;

    invoke-direct {p0, v3, v2}, Lcom/yftech/settings/sound/SoundSystemFragment;->changeToProgress(Lcom/yftech/settings/manager/SoundManager$Function;F)I

    move-result v3

    .line 546
    sget-object v4, Lcom/yftech/settings/manager/SoundManager$Function;->BAND_MID_VALUE:Lcom/yftech/settings/manager/SoundManager$Function;

    invoke-direct {p0, v4, v3}, Lcom/yftech/settings/sound/SoundSystemFragment;->setBandsProgress(Lcom/yftech/settings/manager/SoundManager$Function;I)V

    .line 548
    invoke-static {}, Lcom/yftech/settings/manager/SoundManager;->getInstance()Lcom/yftech/settings/manager/SoundManager;

    move-result-object v4

    sget-object v5, Lcom/yftech/settings/manager/SoundManager$Function;->BAND_LOW_VALUE:Lcom/yftech/settings/manager/SoundManager$Function;

    invoke-virtual {v4, v5}, Lcom/yftech/settings/manager/SoundManager;->getValue(Lcom/yftech/settings/manager/SoundManager$Function;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 549
    sget-object v5, Lcom/yftech/settings/manager/SoundManager$Function;->BAND_LOW_VALUE:Lcom/yftech/settings/manager/SoundManager$Function;

    invoke-direct {p0, v5, v4}, Lcom/yftech/settings/sound/SoundSystemFragment;->changeToProgress(Lcom/yftech/settings/manager/SoundManager$Function;F)I

    move-result v5

    .line 550
    sget-object v6, Lcom/yftech/settings/manager/SoundManager$Function;->BAND_LOW_VALUE:Lcom/yftech/settings/manager/SoundManager$Function;

    invoke-direct {p0, v6, v5}, Lcom/yftech/settings/sound/SoundSystemFragment;->setBandsProgress(Lcom/yftech/settings/manager/SoundManager$Function;I)V

    const-string p0, "SoundSystemFragment"

    .line 552
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initBands bandCurValueHigh:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", bandCurValueMid:"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", bandCurValueLow:"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", progressHigh:"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", progressMid:"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", progressLow:"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initCarPartsViewData()V
    .locals 3

    .line 415
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/CarPartsManager$Function;->LOCK_UNLOCK_SOUND_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->LOCK_UNLOCK_SOUND_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/CarPartsManager$Function;->LOCK_UNLOCK_SOUND_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/CarPartsManager;->getEnabled(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/sound/SoundSystemFragment;->setSwitcherView(Lcom/yftech/settings/manager/CarPartsManager$Function;Z)V

    :cond_0
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 12

    const v0, 0x7f08019e

    .line 180
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x7f080218

    .line 181
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0d0172

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    const v3, 0x7f0800eb

    .line 182
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mIvMediaVolumeIcon:Landroid/widget/ImageView;

    .line 183
    iget-object v4, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mIvMediaVolumeIcon:Landroid/widget/ImageView;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 184
    iget-object v4, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mIvMediaVolumeIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f08018b

    .line 185
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yftech/settings/widget/SeekBarNumber;

    iput-object v1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mMediaVolumeSB:Lcom/yftech/settings/widget/SeekBarNumber;

    .line 186
    iget-object v1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mMediaVolumeSB:Lcom/yftech/settings/widget/SeekBarNumber;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yftech/settings/widget/SeekBarNumber;->setTag(Ljava/lang/Object;)V

    .line 187
    iget-object v0, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mMediaVolumeSB:Lcom/yftech/settings/widget/SeekBarNumber;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/widget/SeekBarNumber;->setOnSeekChangeListener(Lcom/yftech/settings/widget/SeekBarNumber$OnSeekChangeListener;)V

    const v0, 0x7f0801a0

    .line 190
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 191
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0d0175

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 192
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mIvCallVolumeIcon:Landroid/widget/ImageView;

    .line 193
    iget-object v5, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mIvCallVolumeIcon:Landroid/widget/ImageView;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 194
    iget-object v5, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mIvCallVolumeIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yftech/settings/widget/SeekBarNumber;

    iput-object v1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mCallVolumeSB:Lcom/yftech/settings/widget/SeekBarNumber;

    .line 196
    iget-object v1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mCallVolumeSB:Lcom/yftech/settings/widget/SeekBarNumber;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yftech/settings/widget/SeekBarNumber;->setTag(Ljava/lang/Object;)V

    .line 197
    iget-object v0, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mCallVolumeSB:Lcom/yftech/settings/widget/SeekBarNumber;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/widget/SeekBarNumber;->setOnSeekChangeListener(Lcom/yftech/settings/widget/SeekBarNumber$OnSeekChangeListener;)V

    const v0, 0x7f0801a3

    .line 200
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 201
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0d0178

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 202
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mIvVoiceVolumeIcon:Landroid/widget/ImageView;

    .line 203
    iget-object v5, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mIvVoiceVolumeIcon:Landroid/widget/ImageView;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 204
    iget-object v5, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mIvVoiceVolumeIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/yftech/settings/widget/SeekBarNumber;

    iput-object v5, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mVoiceVolumeSB:Lcom/yftech/settings/widget/SeekBarNumber;

    .line 206
    iget-object v5, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mVoiceVolumeSB:Lcom/yftech/settings/widget/SeekBarNumber;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/yftech/settings/widget/SeekBarNumber;->setTag(Ljava/lang/Object;)V

    .line 207
    iget-object v0, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mVoiceVolumeSB:Lcom/yftech/settings/widget/SeekBarNumber;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/widget/SeekBarNumber;->setOnSeekChangeListener(Lcom/yftech/settings/widget/SeekBarNumber$OnSeekChangeListener;)V

    const/16 v0, 0x8

    .line 208
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v1, 0x7f08019f

    .line 211
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 212
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0d0173

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 213
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mIvNaviVolumeIcon:Landroid/widget/ImageView;

    .line 214
    iget-object v3, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mIvNaviVolumeIcon:Landroid/widget/ImageView;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 215
    iget-object v3, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mIvNaviVolumeIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/yftech/settings/widget/SeekBarNumber;

    iput-object v3, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mNaviVolumeSB:Lcom/yftech/settings/widget/SeekBarNumber;

    .line 217
    iget-object v3, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mNaviVolumeSB:Lcom/yftech/settings/widget/SeekBarNumber;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/yftech/settings/widget/SeekBarNumber;->setTag(Ljava/lang/Object;)V

    .line 218
    iget-object v1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mNaviVolumeSB:Lcom/yftech/settings/widget/SeekBarNumber;

    invoke-virtual {v1, p0}, Lcom/yftech/settings/widget/SeekBarNumber;->setOnSeekChangeListener(Lcom/yftech/settings/widget/SeekBarNumber$OnSeekChangeListener;)V

    .line 219
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v1, 0x7f080198

    .line 222
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 223
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v5, 0x7f0d016e

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    const v3, 0x7f080158

    .line 224
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/yftech/settings/widget/MultiSelectView;

    iput-object v5, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mSmbBestEffectPosition:Lcom/yftech/settings/widget/MultiSelectView;

    .line 225
    iget-object v5, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mSmbBestEffectPosition:Lcom/yftech/settings/widget/MultiSelectView;

    const v6, 0x7f080198

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/yftech/settings/widget/MultiSelectView;->setTag(Ljava/lang/Object;)V

    .line 226
    iget-object v5, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mSmbBestEffectPosition:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-virtual {p0}, Lcom/yftech/settings/sound/SoundSystemFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020020

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/yftech/settings/widget/MultiSelectView;->setText([Ljava/lang/String;)Lcom/yftech/settings/widget/MultiSelectView;

    .line 227
    iget-object v5, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mSmbBestEffectPosition:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-virtual {v5, p0}, Lcom/yftech/settings/widget/MultiSelectView;->setOnSwitchListener(Lcom/yftech/settings/widget/MultiSelectView$OnSwitchListener;)Lcom/yftech/settings/widget/MultiSelectView;

    .line 229
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->getLoudspeakerNumber()Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerNumber;

    move-result-object v5

    sget-object v6, Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerNumber;->TWO:Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerNumber;

    const/4 v7, 0x0

    if-eq v5, v6, :cond_1

    .line 230
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->getLoudspeakerNumber()Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerNumber;

    move-result-object v5

    sget-object v6, Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerNumber;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerNumber;

    if-ne v5, v6, :cond_0

    goto :goto_0

    :cond_0
    move v5, v7

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v0

    .line 229
    :goto_1
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v1, 0x7f080199

    .line 234
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mLlSoundSystemDTSMode:Landroid/widget/LinearLayout;

    const v1, 0x7f08005a

    .line 235
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mBtnDtsNatural:Landroid/widget/Button;

    .line 236
    iget-object v1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mBtnDtsNatural:Landroid/widget/Button;

    const v5, 0x7f08005a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    const v1, 0x7f080059

    .line 237
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mBtnDtsClear:Landroid/widget/Button;

    .line 238
    iget-object v1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mBtnDtsClear:Landroid/widget/Button;

    const v5, 0x7f080059

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    const v1, 0x7f080058

    .line 239
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mBtnDtsBass:Landroid/widget/Button;

    .line 240
    iget-object v1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mBtnDtsBass:Landroid/widget/Button;

    const v5, 0x7f080058

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    const v1, 0x7f08005b

    .line 241
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mBtnDtsRest:Landroid/widget/Button;

    .line 242
    iget-object v1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mBtnDtsRest:Landroid/widget/Button;

    const v5, 0x7f08005b

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 243
    iget-object v1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mBtnDtsNatural:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    iget-object v1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mBtnDtsClear:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    iget-object v1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mBtnDtsBass:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    iget-object v1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mBtnDtsRest:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f08013e

    .line 248
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mLlEqEffect:Landroid/widget/LinearLayout;

    .line 251
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 252
    new-instance v5, Ljava/util/Locale;

    const-string v6, "ru"

    invoke-direct {v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 253
    iget-object v1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mBtnDtsNatural:Landroid/widget/Button;

    const/high16 v5, 0x41d00000    # 26.0f

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setTextSize(F)V

    .line 254
    iget-object v1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mBtnDtsClear:Landroid/widget/Button;

    const/high16 v6, 0x41c80000    # 25.0f

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setTextSize(F)V

    .line 255
    iget-object v1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mBtnDtsBass:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setTextSize(F)V

    .line 256
    iget-object v1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mBtnDtsRest:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setTextSize(F)V

    :cond_2
    const v1, 0x7f08005c

    .line 260
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mBtnEqClassic:Landroid/widget/Button;

    .line 261
    iget-object v1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mBtnEqClassic:Landroid/widget/Button;

    const v5, 0x7f08005c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    const v1, 0x7f080060

    .line 262
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mBtnEqPop:Landroid/widget/Button;

    .line 263
    iget-object v1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mBtnEqPop:Landroid/widget/Button;

    const v5, 0x7f080060

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    const v1, 0x7f08005f

    .line 264
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mBtnEqJazz:Landroid/widget/Button;

    .line 265
    iget-object v1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mBtnEqJazz:Landroid/widget/Button;

    const v5, 0x7f08005f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    const v1, 0x7f080061

    .line 266
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mBtnEqRock:Landroid/widget/Button;

    .line 267
    iget-object v1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mBtnEqRock:Landroid/widget/Button;

    const v5, 0x7f080061

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    const v1, 0x7f08005e

    .line 268
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mBtnEqDefault:Landroid/widget/Button;

    .line 269
    iget-object v1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mBtnEqDefault:Landroid/widget/Button;

    const v5, 0x7f08005e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    const v1, 0x7f08005d

    .line 270
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mBtnEqCustom:Landroid/widget/Button;

    .line 271
    iget-object v1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mBtnEqCustom:Landroid/widget/Button;

    const v5, 0x7f08005d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 272
    iget-object v1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mBtnEqClassic:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    iget-object v1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mBtnEqPop:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    iget-object v1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mBtnEqJazz:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    iget-object v1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mBtnEqRock:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    iget-object v1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mBtnEqDefault:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    iget-object v1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mBtnEqCustom:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f08019b

    .line 280
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 281
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0d0162

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    const v5, 0x7f0801fd

    .line 282
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mTvHighValue:Landroid/widget/TextView;

    .line 283
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yftech/settings/widget/SeekBarNumber;

    iput-object v1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mHighSB:Lcom/yftech/settings/widget/SeekBarNumber;

    .line 284
    iget-object v1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mHighSB:Lcom/yftech/settings/widget/SeekBarNumber;

    const v6, 0x7f08019b

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/yftech/settings/widget/SeekBarNumber;->setTag(Ljava/lang/Object;)V

    .line 285
    iget-object v1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mHighSB:Lcom/yftech/settings/widget/SeekBarNumber;

    const/16 v6, -0xa

    invoke-virtual {v1, v6}, Lcom/yftech/settings/widget/SeekBarNumber;->setNumberMin(I)V

    .line 286
    iget-object v1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mHighSB:Lcom/yftech/settings/widget/SeekBarNumber;

    const/16 v8, 0x14

    invoke-virtual {v1, v8}, Lcom/yftech/settings/widget/SeekBarNumber;->setMax(I)V

    .line 287
    iget-object v1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mHighSB:Lcom/yftech/settings/widget/SeekBarNumber;

    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Lcom/yftech/settings/widget/SeekBarNumber;->setPaintProgress(Z)V

    .line 288
    iget-object v1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mHighSB:Lcom/yftech/settings/widget/SeekBarNumber;

    invoke-virtual {v1, p0}, Lcom/yftech/settings/widget/SeekBarNumber;->setOnSeekChangeListener(Lcom/yftech/settings/widget/SeekBarNumber$OnSeekChangeListener;)V

    const v1, 0x7f08019d

    .line 291
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 292
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v11, 0x7f0d0164

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 293
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mTvMidValue:Landroid/widget/TextView;

    .line 294
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yftech/settings/widget/SeekBarNumber;

    iput-object v1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mMidSB:Lcom/yftech/settings/widget/SeekBarNumber;

    .line 295
    iget-object v1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mMidSB:Lcom/yftech/settings/widget/SeekBarNumber;

    const v10, 0x7f08019d

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/yftech/settings/widget/SeekBarNumber;->setTag(Ljava/lang/Object;)V

    .line 296
    iget-object v1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mMidSB:Lcom/yftech/settings/widget/SeekBarNumber;

    invoke-virtual {v1, v6}, Lcom/yftech/settings/widget/SeekBarNumber;->setNumberMin(I)V

    .line 297
    iget-object v1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mMidSB:Lcom/yftech/settings/widget/SeekBarNumber;

    invoke-virtual {v1, v8}, Lcom/yftech/settings/widget/SeekBarNumber;->setMax(I)V

    .line 298
    iget-object v1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mMidSB:Lcom/yftech/settings/widget/SeekBarNumber;

    invoke-virtual {v1, v9}, Lcom/yftech/settings/widget/SeekBarNumber;->setPaintProgress(Z)V

    .line 299
    iget-object v1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mMidSB:Lcom/yftech/settings/widget/SeekBarNumber;

    invoke-virtual {v1, p0}, Lcom/yftech/settings/widget/SeekBarNumber;->setOnSeekChangeListener(Lcom/yftech/settings/widget/SeekBarNumber$OnSeekChangeListener;)V

    const v1, 0x7f08019c

    .line 302
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 303
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v11, 0x7f0d0163

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 304
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mTvLowValue:Landroid/widget/TextView;

    .line 305
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yftech/settings/widget/SeekBarNumber;

    iput-object v1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mLowSB:Lcom/yftech/settings/widget/SeekBarNumber;

    .line 306
    iget-object v1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mLowSB:Lcom/yftech/settings/widget/SeekBarNumber;

    const v4, 0x7f08019c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/yftech/settings/widget/SeekBarNumber;->setTag(Ljava/lang/Object;)V

    .line 307
    iget-object v1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mLowSB:Lcom/yftech/settings/widget/SeekBarNumber;

    invoke-virtual {v1, v6}, Lcom/yftech/settings/widget/SeekBarNumber;->setNumberMin(I)V

    .line 308
    iget-object v1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mLowSB:Lcom/yftech/settings/widget/SeekBarNumber;

    invoke-virtual {v1, v8}, Lcom/yftech/settings/widget/SeekBarNumber;->setMax(I)V

    .line 309
    iget-object v1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mLowSB:Lcom/yftech/settings/widget/SeekBarNumber;

    invoke-virtual {v1, v9}, Lcom/yftech/settings/widget/SeekBarNumber;->setPaintProgress(Z)V

    .line 310
    iget-object v1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mLowSB:Lcom/yftech/settings/widget/SeekBarNumber;

    invoke-virtual {v1, p0}, Lcom/yftech/settings/widget/SeekBarNumber;->setOnSeekChangeListener(Lcom/yftech/settings/widget/SeekBarNumber$OnSeekChangeListener;)V

    const v1, 0x7f0801a1

    .line 313
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 315
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->getLoudspeakerNumber()Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerNumber;

    move-result-object v4

    sget-object v5, Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerNumber;->TWO:Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerNumber;

    if-eq v4, v5, :cond_4

    .line 316
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->getLoudspeakerNumber()Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerNumber;

    move-result-object v4

    sget-object v5, Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerNumber;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerNumber;

    if-ne v4, v5, :cond_3

    goto :goto_2

    :cond_3
    move v4, v7

    goto :goto_3

    :cond_4
    :goto_2
    move v4, v0

    .line 315
    :goto_3
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v4, 0x7f080070

    .line 319
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    const v5, 0x7f0801a1

    .line 320
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 321
    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f0801ae

    .line 322
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/yftech/settings/widget/SoundStage;

    iput-object v4, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mStage:Lcom/yftech/settings/widget/SoundStage;

    .line 323
    iget-object v4, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mStage:Lcom/yftech/settings/widget/SoundStage;

    invoke-virtual {v4, v8}, Lcom/yftech/settings/widget/SoundStage;->setMaxX(I)V

    .line 324
    iget-object v4, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mStage:Lcom/yftech/settings/widget/SoundStage;

    invoke-virtual {v4, v8}, Lcom/yftech/settings/widget/SoundStage;->setMaxY(I)V

    .line 325
    iget-object v4, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mStage:Lcom/yftech/settings/widget/SoundStage;

    invoke-virtual {v4, p0}, Lcom/yftech/settings/widget/SoundStage;->setPositionChangedListener(Lcom/yftech/settings/widget/SoundStage$OnThumbPositionChanged;)V

    .line 326
    iget-object v4, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mStage:Lcom/yftech/settings/widget/SoundStage;

    invoke-virtual {v4}, Lcom/yftech/settings/widget/SoundStage;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    iget-object v5, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v4, v5}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 327
    iget-object v4, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mStage:Lcom/yftech/settings/widget/SoundStage;

    invoke-virtual {v4, v9}, Lcom/yftech/settings/widget/SoundStage;->changeToTouchMode(Z)V

    const v4, 0x7f080196

    .line 328
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mSoundStageBg:Landroid/widget/ImageView;

    .line 330
    invoke-static {}, Lcom/yftech/settings/utils/Utils;->isRightDrive()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 331
    iget-object v1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mSoundStageBg:Landroid/widget/ImageView;

    const v4, 0x7f0b013d

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 333
    :cond_5
    iget-object v1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mSoundStageBg:Landroid/widget/ImageView;

    const v4, 0x7f0b013c

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_4
    const v1, 0x7f0801a5

    .line 337
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 338
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0d017b

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    const v4, 0x7f0801ff

    .line 339
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0d017c

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    const v4, 0x7f0801bb

    .line 340
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yftech/settings/widget/Switcher;

    iput-object v1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mSwVolumeBySpeed:Lcom/yftech/settings/widget/Switcher;

    .line 341
    iget-object v1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mSwVolumeBySpeed:Lcom/yftech/settings/widget/Switcher;

    const v4, 0x7f0801a5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/yftech/settings/widget/Switcher;->setTag(Ljava/lang/Object;)V

    .line 342
    iget-object v1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mSwVolumeBySpeed:Lcom/yftech/settings/widget/Switcher;

    invoke-virtual {v1, p0}, Lcom/yftech/settings/widget/Switcher;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v1, 0x7f0801a4

    .line 345
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 346
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0d0179

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    const v4, 0x7f0801ff

    .line 347
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0d017a

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 348
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yftech/settings/widget/MultiSelectView;

    iput-object v1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mSmbVolumeByPower:Lcom/yftech/settings/widget/MultiSelectView;

    .line 349
    iget-object v1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mSmbVolumeByPower:Lcom/yftech/settings/widget/MultiSelectView;

    const v4, 0x7f0801a4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/yftech/settings/widget/MultiSelectView;->setTag(Ljava/lang/Object;)V

    .line 350
    iget-object v1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mSmbVolumeByPower:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-virtual {p0}, Lcom/yftech/settings/sound/SoundSystemFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020021

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/yftech/settings/widget/MultiSelectView;->setText([Ljava/lang/String;)Lcom/yftech/settings/widget/MultiSelectView;

    .line 351
    iget-object v1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mSmbVolumeByPower:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-virtual {v1, p0}, Lcom/yftech/settings/widget/MultiSelectView;->setOnSwitchListener(Lcom/yftech/settings/widget/MultiSelectView$OnSwitchListener;)Lcom/yftech/settings/widget/MultiSelectView;

    const v1, 0x7f080197

    .line 354
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 355
    invoke-static {}, Lcom/yftech/settings/manager/SoundManager;->getInstance()Lcom/yftech/settings/manager/SoundManager;

    move-result-object v4

    sget-object v5, Lcom/yftech/settings/manager/SoundManager$Function;->KEEP_MUTE_WARNING_OPTION:Lcom/yftech/settings/manager/SoundManager$Function;

    invoke-virtual {v4, v5}, Lcom/yftech/settings/manager/SoundManager;->getFunctionPresent(Lcom/yftech/settings/manager/SoundManager$Function;)Z

    move-result v4

    if-eqz v4, :cond_6

    move v4, v7

    goto :goto_5

    :cond_6
    move v4, v0

    :goto_5
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 357
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_7

    .line 358
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0d016b

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    const v4, 0x7f0801ff

    .line 359
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0d016c

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 360
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yftech/settings/widget/MultiSelectView;

    iput-object v1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mSmbAidMediaSound:Lcom/yftech/settings/widget/MultiSelectView;

    .line 361
    iget-object v1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mSmbAidMediaSound:Lcom/yftech/settings/widget/MultiSelectView;

    const v3, 0x7f080197

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/yftech/settings/widget/MultiSelectView;->setTag(Ljava/lang/Object;)V

    .line 362
    iget-object v1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mSmbAidMediaSound:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-virtual {p0}, Lcom/yftech/settings/sound/SoundSystemFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02001f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/yftech/settings/widget/MultiSelectView;->setText([Ljava/lang/String;)Lcom/yftech/settings/widget/MultiSelectView;

    .line 363
    iget-object v1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mSmbAidMediaSound:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-virtual {v1, p0}, Lcom/yftech/settings/widget/MultiSelectView;->setOnSwitchListener(Lcom/yftech/settings/widget/MultiSelectView$OnSwitchListener;)Lcom/yftech/settings/widget/MultiSelectView;

    :cond_7
    const v1, 0x7f0801a2

    .line 367
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 368
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v1

    sget-object v3, Lcom/yftech/settings/manager/CarPartsManager$Function;->LOCK_UNLOCK_SOUND_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v1, v3}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v0, v7

    :cond_8
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 370
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_9

    .line 371
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0d0177

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0801bb

    .line 372
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/yftech/settings/widget/Switcher;

    iput-object p1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mSwUnlockingLockSound:Lcom/yftech/settings/widget/Switcher;

    .line 373
    iget-object p1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mSwUnlockingLockSound:Lcom/yftech/settings/widget/Switcher;

    const v0, 0x7f0801a2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yftech/settings/widget/Switcher;->setTag(Ljava/lang/Object;)V

    .line 374
    iget-object p1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mSwUnlockingLockSound:Lcom/yftech/settings/widget/Switcher;

    invoke-virtual {p1, p0}, Lcom/yftech/settings/widget/Switcher;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_9
    return-void
.end method

.method private initViewData()V
    .locals 3

    .line 401
    invoke-direct {p0}, Lcom/yftech/settings/sound/SoundSystemFragment;->initVolume()V

    .line 402
    invoke-direct {p0}, Lcom/yftech/settings/sound/SoundSystemFragment;->initBands()V

    .line 403
    sget-object v0, Lcom/yftech/settings/manager/SoundManager$Function;->DTS_SOUND_POSITION_OPTION:Lcom/yftech/settings/manager/SoundManager$Function;

    invoke-static {}, Lcom/yftech/settings/manager/SoundManager;->getInstance()Lcom/yftech/settings/manager/SoundManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/SoundManager$Function;->DTS_SOUND_POSITION_OPTION:Lcom/yftech/settings/manager/SoundManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/SoundManager;->getOption(Lcom/yftech/settings/manager/SoundManager$Function;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/sound/SoundSystemFragment;->setSwitchMultiButtonView(Lcom/yftech/settings/manager/SoundManager$Function;I)V

    .line 404
    sget-object v0, Lcom/yftech/settings/manager/SoundManager$Function;->DTS_TYEP_OPTION:Lcom/yftech/settings/manager/SoundManager$Function;

    invoke-static {}, Lcom/yftech/settings/manager/SoundManager;->getInstance()Lcom/yftech/settings/manager/SoundManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/SoundManager$Function;->DTS_TYEP_OPTION:Lcom/yftech/settings/manager/SoundManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/SoundManager;->getOption(Lcom/yftech/settings/manager/SoundManager$Function;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/sound/SoundSystemFragment;->setSwitchMultiButtonView(Lcom/yftech/settings/manager/SoundManager$Function;I)V

    .line 405
    sget-object v0, Lcom/yftech/settings/manager/SoundManager$Function;->SPEED_GAIN_ENABLE:Lcom/yftech/settings/manager/SoundManager$Function;

    invoke-static {}, Lcom/yftech/settings/manager/SoundManager;->getInstance()Lcom/yftech/settings/manager/SoundManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/SoundManager$Function;->SPEED_GAIN_ENABLE:Lcom/yftech/settings/manager/SoundManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/SoundManager;->getEnabled(Lcom/yftech/settings/manager/SoundManager$Function;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/sound/SoundSystemFragment;->setSwitcherView(Lcom/yftech/settings/manager/SoundManager$Function;Z)V

    .line 406
    sget-object v0, Lcom/yftech/settings/manager/SoundManager$Function;->BOOT_VOLUME_OPTION:Lcom/yftech/settings/manager/SoundManager$Function;

    invoke-static {}, Lcom/yftech/settings/manager/SoundManager;->getInstance()Lcom/yftech/settings/manager/SoundManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/SoundManager$Function;->BOOT_VOLUME_OPTION:Lcom/yftech/settings/manager/SoundManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/SoundManager;->getOption(Lcom/yftech/settings/manager/SoundManager$Function;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/sound/SoundSystemFragment;->setSwitchMultiButtonView(Lcom/yftech/settings/manager/SoundManager$Function;I)V

    .line 407
    invoke-static {}, Lcom/yftech/settings/manager/SoundManager;->getInstance()Lcom/yftech/settings/manager/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/SoundManager$Function;->KEEP_MUTE_WARNING_OPTION:Lcom/yftech/settings/manager/SoundManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/SoundManager;->getFunctionPresent(Lcom/yftech/settings/manager/SoundManager$Function;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    sget-object v0, Lcom/yftech/settings/manager/SoundManager$Function;->KEEP_MUTE_WARNING_OPTION:Lcom/yftech/settings/manager/SoundManager$Function;

    invoke-static {}, Lcom/yftech/settings/manager/SoundManager;->getInstance()Lcom/yftech/settings/manager/SoundManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/SoundManager$Function;->KEEP_MUTE_WARNING_OPTION:Lcom/yftech/settings/manager/SoundManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/SoundManager;->getOption(Lcom/yftech/settings/manager/SoundManager$Function;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/sound/SoundSystemFragment;->setSwitchMultiButtonView(Lcom/yftech/settings/manager/SoundManager$Function;I)V

    .line 410
    :cond_0
    sget-object v0, Lcom/yftech/settings/manager/SoundManager$Function;->EQ_TYPE_OPTION:Lcom/yftech/settings/manager/SoundManager$Function;

    invoke-static {}, Lcom/yftech/settings/manager/SoundManager;->getInstance()Lcom/yftech/settings/manager/SoundManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/SoundManager$Function;->EQ_TYPE_OPTION:Lcom/yftech/settings/manager/SoundManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/SoundManager;->getOption(Lcom/yftech/settings/manager/SoundManager$Function;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/sound/SoundSystemFragment;->setSwitchMultiButtonView(Lcom/yftech/settings/manager/SoundManager$Function;I)V

    .line 411
    invoke-direct {p0}, Lcom/yftech/settings/sound/SoundSystemFragment;->initCarPartsViewData()V

    return-void
.end method

.method private initVolume()V
    .locals 13

    .line 421
    invoke-static {}, Lcom/yftech/settings/manager/SoundVolumeManager;->getInstance()Lcom/yftech/settings/manager/SoundVolumeManager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/SoundVolumeManager;->getMaxVolume(I)I

    move-result v0

    .line 422
    iget-object v2, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mMediaVolumeSB:Lcom/yftech/settings/widget/SeekBarNumber;

    invoke-virtual {v2, v0}, Lcom/yftech/settings/widget/SeekBarNumber;->setMax(I)V

    .line 423
    iget-object v2, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mMediaVolumeSB:Lcom/yftech/settings/widget/SeekBarNumber;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/yftech/settings/widget/SeekBarNumber;->setShowWarn(Z)V

    .line 424
    iget-object v2, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mMediaVolumeSB:Lcom/yftech/settings/widget/SeekBarNumber;

    int-to-double v4, v0

    const-wide v6, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-virtual {v2, v4}, Lcom/yftech/settings/widget/SeekBarNumber;->setWarnMax(I)V

    .line 425
    invoke-static {}, Lcom/yftech/settings/manager/SoundVolumeManager;->getInstance()Lcom/yftech/settings/manager/SoundVolumeManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/yftech/settings/manager/SoundVolumeManager;->getVolume(I)I

    move-result v2

    .line 426
    invoke-static {}, Lcom/yftech/settings/manager/SoundVolumeManager;->getInstance()Lcom/yftech/settings/manager/SoundVolumeManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/yftech/settings/manager/SoundVolumeManager;->isMute(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v5, 0x0

    .line 428
    invoke-direct {p0, v1, v5}, Lcom/yftech/settings/sound/SoundSystemFragment;->setVolumeProgress(II)V

    goto :goto_0

    .line 430
    :cond_0
    invoke-direct {p0, v1, v2}, Lcom/yftech/settings/sound/SoundSystemFragment;->setVolumeProgress(II)V

    :goto_0
    const-string v1, "SoundSystemFragment"

    .line 432
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isMuteMusic: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " mediaVolume: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    invoke-static {}, Lcom/yftech/settings/manager/SoundVolumeManager;->getInstance()Lcom/yftech/settings/manager/SoundVolumeManager;

    move-result-object v1

    const/4 v5, 0x6

    invoke-virtual {v1, v5}, Lcom/yftech/settings/manager/SoundVolumeManager;->getMaxVolume(I)I

    move-result v1

    .line 435
    iget-object v8, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mCallVolumeSB:Lcom/yftech/settings/widget/SeekBarNumber;

    invoke-virtual {v8, v1}, Lcom/yftech/settings/widget/SeekBarNumber;->setMax(I)V

    .line 436
    iget-object v8, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mCallVolumeSB:Lcom/yftech/settings/widget/SeekBarNumber;

    invoke-virtual {v8, v3}, Lcom/yftech/settings/widget/SeekBarNumber;->setShowWarn(Z)V

    .line 437
    iget-object v8, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mCallVolumeSB:Lcom/yftech/settings/widget/SeekBarNumber;

    int-to-double v9, v1

    mul-double/2addr v9, v6

    double-to-int v9, v9

    invoke-virtual {v8, v9}, Lcom/yftech/settings/widget/SeekBarNumber;->setWarnMax(I)V

    .line 438
    invoke-static {}, Lcom/yftech/settings/manager/SoundVolumeManager;->getInstance()Lcom/yftech/settings/manager/SoundVolumeManager;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/yftech/settings/manager/SoundVolumeManager;->getVolume(I)I

    move-result v8

    .line 439
    invoke-direct {p0, v5, v8}, Lcom/yftech/settings/sound/SoundSystemFragment;->setVolumeProgress(II)V

    .line 441
    invoke-static {}, Lcom/yftech/settings/manager/SoundVolumeManager;->getInstance()Lcom/yftech/settings/manager/SoundVolumeManager;

    move-result-object v5

    const/16 v9, 0x9

    invoke-virtual {v5, v9}, Lcom/yftech/settings/manager/SoundVolumeManager;->getMaxVolume(I)I

    move-result v5

    .line 442
    iget-object v10, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mVoiceVolumeSB:Lcom/yftech/settings/widget/SeekBarNumber;

    invoke-virtual {v10, v5}, Lcom/yftech/settings/widget/SeekBarNumber;->setMax(I)V

    .line 443
    iget-object v10, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mVoiceVolumeSB:Lcom/yftech/settings/widget/SeekBarNumber;

    invoke-virtual {v10, v3}, Lcom/yftech/settings/widget/SeekBarNumber;->setShowWarn(Z)V

    .line 444
    iget-object v10, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mVoiceVolumeSB:Lcom/yftech/settings/widget/SeekBarNumber;

    int-to-double v11, v5

    mul-double/2addr v11, v6

    double-to-int v5, v11

    invoke-virtual {v10, v5}, Lcom/yftech/settings/widget/SeekBarNumber;->setWarnMax(I)V

    .line 445
    invoke-static {}, Lcom/yftech/settings/manager/SoundVolumeManager;->getInstance()Lcom/yftech/settings/manager/SoundVolumeManager;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/yftech/settings/manager/SoundVolumeManager;->getVolume(I)I

    move-result v5

    .line 446
    invoke-direct {p0, v9, v5}, Lcom/yftech/settings/sound/SoundSystemFragment;->setVolumeProgress(II)V

    .line 448
    invoke-static {}, Lcom/yftech/settings/manager/SoundVolumeManager;->getInstance()Lcom/yftech/settings/manager/SoundVolumeManager;

    move-result-object v5

    const/16 v9, 0xb

    invoke-virtual {v5, v9}, Lcom/yftech/settings/manager/SoundVolumeManager;->getMaxVolume(I)I

    move-result v5

    .line 449
    iget-object v10, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mNaviVolumeSB:Lcom/yftech/settings/widget/SeekBarNumber;

    invoke-virtual {v10, v5}, Lcom/yftech/settings/widget/SeekBarNumber;->setMax(I)V

    .line 450
    iget-object v10, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mNaviVolumeSB:Lcom/yftech/settings/widget/SeekBarNumber;

    invoke-virtual {v10, v3}, Lcom/yftech/settings/widget/SeekBarNumber;->setShowWarn(Z)V

    .line 451
    iget-object v3, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mNaviVolumeSB:Lcom/yftech/settings/widget/SeekBarNumber;

    int-to-double v10, v5

    mul-double/2addr v10, v6

    double-to-int v6, v10

    invoke-virtual {v3, v6}, Lcom/yftech/settings/widget/SeekBarNumber;->setWarnMax(I)V

    .line 452
    invoke-static {}, Lcom/yftech/settings/manager/SoundVolumeManager;->getInstance()Lcom/yftech/settings/manager/SoundVolumeManager;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/yftech/settings/manager/SoundVolumeManager;->getVolume(I)I

    move-result v3

    .line 453
    invoke-direct {p0, v9, v3}, Lcom/yftech/settings/sound/SoundSystemFragment;->setVolumeProgress(II)V

    const-string p0, "SoundSystemFragment"

    .line 455
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initVolume mediaVolumeMax:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", callVolumeMax:"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", naviVolumeMax:"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mediaVolume:"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", callVolume:"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", naviVolume:"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", isMuteMusic:"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yftech/settings/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setBandsProgress(Lcom/yftech/settings/manager/SoundManager$Function;I)V
    .locals 1

    .line 945
    sget-object v0, Lcom/yftech/settings/sound/SoundSystemFragment$5;->$SwitchMap$com$yftech$settings$manager$SoundManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/SoundManager$Function;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    move-object p0, v0

    goto :goto_0

    .line 955
    :pswitch_0
    iget-object v0, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mLowSB:Lcom/yftech/settings/widget/SeekBarNumber;

    .line 956
    iget-object p0, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mTvLowValue:Landroid/widget/TextView;

    goto :goto_0

    .line 951
    :pswitch_1
    iget-object v0, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mMidSB:Lcom/yftech/settings/widget/SeekBarNumber;

    .line 952
    iget-object p0, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mTvMidValue:Landroid/widget/TextView;

    goto :goto_0

    .line 947
    :pswitch_2
    iget-object v0, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mHighSB:Lcom/yftech/settings/widget/SeekBarNumber;

    .line 948
    iget-object p0, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mTvHighValue:Landroid/widget/TextView;

    :goto_0
    if-eqz v0, :cond_0

    .line 961
    invoke-virtual {v0}, Lcom/yftech/settings/widget/SeekBarNumber;->getProgress()I

    move-result p1

    if-eq p2, p1, :cond_0

    .line 962
    invoke-virtual {v0, p2}, Lcom/yftech/settings/widget/SeekBarNumber;->setProgress(I)V

    :cond_0
    if-eqz p0, :cond_1

    add-int/lit8 p2, p2, -0xa

    .line 965
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setDtsMode(I)V
    .locals 1

    .line 970
    invoke-static {}, Lcom/yftech/settings/manager/SoundManager;->getInstance()Lcom/yftech/settings/manager/SoundManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/settings/manager/SoundManager$Function;->DTS_TYEP_OPTION:Lcom/yftech/settings/manager/SoundManager$Function;

    invoke-virtual {p0, v0, p1}, Lcom/yftech/settings/manager/SoundManager;->setOption(Lcom/yftech/settings/manager/SoundManager$Function;I)Z

    return-void
.end method

.method private setDtsModeView(I)V
    .locals 3

    const-string v0, "SoundSystemFragment"

    .line 974
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDtsModeView() index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    iget-object v0, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mBtnDtsNatural:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 976
    iget-object v0, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mBtnDtsClear:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 977
    iget-object v0, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mBtnDtsBass:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 978
    iget-object v0, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mBtnDtsRest:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 990
    :pswitch_0
    iget-object p0, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mBtnDtsRest:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_0

    .line 987
    :pswitch_1
    iget-object p0, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mBtnDtsBass:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_0

    .line 984
    :pswitch_2
    iget-object p0, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mBtnDtsClear:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_0

    .line 981
    :pswitch_3
    iget-object p0, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mBtnDtsNatural:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setSelected(Z)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setEqMode(I)V
    .locals 1

    .line 1003
    invoke-static {}, Lcom/yftech/settings/manager/SoundManager;->getInstance()Lcom/yftech/settings/manager/SoundManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/settings/manager/SoundManager$Function;->EQ_TYPE_OPTION:Lcom/yftech/settings/manager/SoundManager$Function;

    invoke-virtual {p0, v0, p1}, Lcom/yftech/settings/manager/SoundManager;->setOption(Lcom/yftech/settings/manager/SoundManager$Function;I)Z

    return-void
.end method

.method private setEqModeView(I)V
    .locals 3

    const-string v0, "SoundSystemFragment"

    .line 1007
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEqModeView() index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    iget-object v0, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mBtnEqClassic:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 1009
    iget-object v0, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mBtnEqPop:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 1010
    iget-object v0, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mBtnEqJazz:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 1011
    iget-object v0, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mBtnEqRock:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 1012
    iget-object v0, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mBtnEqDefault:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 1013
    iget-object v0, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mBtnEqCustom:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1031
    :pswitch_0
    iget-object p0, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mBtnEqCustom:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_0

    .line 1028
    :pswitch_1
    iget-object p0, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mBtnEqDefault:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_0

    .line 1025
    :pswitch_2
    iget-object p0, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mBtnEqRock:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_0

    .line 1022
    :pswitch_3
    iget-object p0, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mBtnEqJazz:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_0

    .line 1019
    :pswitch_4
    iget-object p0, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mBtnEqPop:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_0

    .line 1016
    :pswitch_5
    iget-object p0, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mBtnEqClassic:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setSelected(Z)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setSwitchMultiButtonView(Lcom/yftech/settings/manager/SoundManager$Function;I)V
    .locals 2

    .line 851
    sget-object v0, Lcom/yftech/settings/sound/SoundSystemFragment$5;->$SwitchMap$com$yftech$settings$manager$SoundManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/SoundManager$Function;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 866
    :pswitch_0
    iget-object p0, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mSmbAidMediaSound:Lcom/yftech/settings/widget/MultiSelectView;

    goto :goto_1

    .line 863
    :pswitch_1
    iget-object p0, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mSmbVolumeByPower:Lcom/yftech/settings/widget/MultiSelectView;

    goto :goto_1

    .line 860
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/yftech/settings/sound/SoundSystemFragment;->setEqModeView(I)V

    goto :goto_0

    .line 856
    :pswitch_3
    iget-object v0, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mSmbBestEffectPosition:Lcom/yftech/settings/widget/MultiSelectView;

    .line 857
    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/sound/SoundSystemFragment;->updateDtsView(Lcom/yftech/settings/manager/SoundManager$Function;I)V

    move-object p0, v0

    goto :goto_1

    .line 853
    :pswitch_4
    invoke-direct {p0, p2}, Lcom/yftech/settings/sound/SoundSystemFragment;->setDtsModeView(I)V

    :goto_0
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_1

    .line 872
    invoke-virtual {p0}, Lcom/yftech/settings/widget/MultiSelectView;->getTabNum()I

    move-result p1

    if-ne p1, p2, :cond_0

    return-void

    .line 875
    :cond_0
    invoke-virtual {p0, p2}, Lcom/yftech/settings/widget/MultiSelectView;->setSelectedTab(I)Lcom/yftech/settings/widget/MultiSelectView;

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setSwitcherView(Lcom/yftech/settings/manager/CarPartsManager$Function;Z)V
    .locals 1

    .line 834
    sget-object v0, Lcom/yftech/settings/sound/SoundSystemFragment$5;->$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/CarPartsManager$Function;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 836
    :cond_0
    iget-object p0, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mSwUnlockingLockSound:Lcom/yftech/settings/widget/Switcher;

    :goto_0
    if-eqz p0, :cond_2

    .line 842
    invoke-virtual {p0}, Lcom/yftech/settings/widget/Switcher;->isChecked()Z

    move-result p1

    if-ne p1, p2, :cond_1

    return-void

    .line 845
    :cond_1
    invoke-virtual {p0, p2}, Lcom/yftech/settings/widget/Switcher;->setChecked(Z)V

    :cond_2
    return-void
.end method

.method private setSwitcherView(Lcom/yftech/settings/manager/SoundManager$Function;Z)V
    .locals 1

    .line 817
    sget-object v0, Lcom/yftech/settings/sound/SoundSystemFragment$5;->$SwitchMap$com$yftech$settings$manager$SoundManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/SoundManager$Function;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 819
    :cond_0
    iget-object p0, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mSwVolumeBySpeed:Lcom/yftech/settings/widget/Switcher;

    :goto_0
    if-eqz p0, :cond_2

    .line 825
    invoke-virtual {p0}, Lcom/yftech/settings/widget/Switcher;->isChecked()Z

    move-result p1

    if-ne p1, p2, :cond_1

    return-void

    .line 828
    :cond_1
    invoke-virtual {p0, p2}, Lcom/yftech/settings/widget/Switcher;->setChecked(Z)V

    :cond_2
    return-void
.end method

.method private setValueView(Lcom/yftech/settings/manager/SoundManager$Function;Ljava/lang/Object;)V
    .locals 2

    .line 880
    sget-object v0, Lcom/yftech/settings/sound/SoundSystemFragment$5;->$SwitchMap$com$yftech$settings$manager$SoundManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/SoundManager$Function;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 894
    :pswitch_0
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/sound/SoundSystemFragment;->changeToProgress(Lcom/yftech/settings/manager/SoundManager$Function;F)I

    move-result p2

    .line 895
    iget-object v0, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mLowSB:Lcom/yftech/settings/widget/SeekBarNumber;

    invoke-virtual {v0}, Lcom/yftech/settings/widget/SeekBarNumber;->getProgress()I

    move-result v0

    if-eq p2, v0, :cond_1

    .line 896
    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/sound/SoundSystemFragment;->setBandsProgress(Lcom/yftech/settings/manager/SoundManager$Function;I)V

    goto :goto_0

    .line 888
    :pswitch_1
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/sound/SoundSystemFragment;->changeToProgress(Lcom/yftech/settings/manager/SoundManager$Function;F)I

    move-result p2

    .line 889
    iget-object v0, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mMidSB:Lcom/yftech/settings/widget/SeekBarNumber;

    invoke-virtual {v0}, Lcom/yftech/settings/widget/SeekBarNumber;->getProgress()I

    move-result v0

    if-eq p2, v0, :cond_1

    .line 890
    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/sound/SoundSystemFragment;->setBandsProgress(Lcom/yftech/settings/manager/SoundManager$Function;I)V

    goto :goto_0

    .line 882
    :pswitch_2
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/sound/SoundSystemFragment;->changeToProgress(Lcom/yftech/settings/manager/SoundManager$Function;F)I

    move-result p2

    .line 883
    iget-object v0, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mHighSB:Lcom/yftech/settings/widget/SeekBarNumber;

    invoke-virtual {v0}, Lcom/yftech/settings/widget/SeekBarNumber;->getProgress()I

    move-result v0

    if-eq p2, v0, :cond_1

    .line 884
    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/sound/SoundSystemFragment;->setBandsProgress(Lcom/yftech/settings/manager/SoundManager$Function;I)V

    goto :goto_0

    .line 900
    :cond_0
    check-cast p2, [I

    if-eqz p2, :cond_1

    .line 901
    array-length p1, p2

    const/4 v0, 0x2

    if-lt p1, v0, :cond_1

    const/4 p1, 0x0

    .line 902
    aget p1, p2, p1

    const/4 v0, 0x1

    .line 903
    aget p2, p2, v0

    .line 904
    iget-object v0, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mStage:Lcom/yftech/settings/widget/SoundStage;

    invoke-virtual {v0, p1}, Lcom/yftech/settings/widget/SoundStage;->setThumbX(I)V

    .line 905
    iget-object p0, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mStage:Lcom/yftech/settings/widget/SoundStage;

    invoke-virtual {p0, p2}, Lcom/yftech/settings/widget/SoundStage;->setThumbY(I)V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setVolumeProgress(II)V
    .locals 2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mNaviVolumeSB:Lcom/yftech/settings/widget/SeekBarNumber;

    invoke-virtual {v0, p2}, Lcom/yftech/settings/widget/SeekBarNumber;->setProgress(I)V

    .line 504
    iget-object v0, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mIvNaviVolumeIcon:Landroid/widget/ImageView;

    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/sound/SoundSystemFragment;->getVolumeIcon(II)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 499
    :cond_1
    iget-object v0, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mVoiceVolumeSB:Lcom/yftech/settings/widget/SeekBarNumber;

    invoke-virtual {v0, p2}, Lcom/yftech/settings/widget/SeekBarNumber;->setProgress(I)V

    .line 500
    iget-object v0, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mIvVoiceVolumeIcon:Landroid/widget/ImageView;

    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/sound/SoundSystemFragment;->getVolumeIcon(II)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 495
    :cond_2
    iget-object v0, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mCallVolumeSB:Lcom/yftech/settings/widget/SeekBarNumber;

    invoke-virtual {v0, p2}, Lcom/yftech/settings/widget/SeekBarNumber;->setProgress(I)V

    .line 496
    iget-object v0, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mIvCallVolumeIcon:Landroid/widget/ImageView;

    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/sound/SoundSystemFragment;->getVolumeIcon(II)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 490
    :cond_3
    iget-object v0, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mMediaVolumeSB:Lcom/yftech/settings/widget/SeekBarNumber;

    invoke-virtual {v0, p2}, Lcom/yftech/settings/widget/SeekBarNumber;->setProgress(I)V

    .line 491
    iget-object v0, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mIvMediaVolumeIcon:Landroid/widget/ImageView;

    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/sound/SoundSystemFragment;->getVolumeIcon(II)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string p0, "SoundSystemFragment"

    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "progress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " streamType: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private updateDtsView(Lcom/yftech/settings/manager/SoundManager$Function;I)V
    .locals 3

    .line 915
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->getLoudspeakerNumber()Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerNumber;

    move-result-object v0

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerNumber;->TWO:Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerNumber;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->getLoudspeakerNumber()Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerNumber;

    move-result-object v0

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerNumber;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerNumber;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 920
    :cond_0
    invoke-static {}, Lcom/yftech/settings/manager/SoundManager;->getInstance()Lcom/yftech/settings/manager/SoundManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/settings/manager/SoundManager;->getDtsSoundPosition()[I

    move-result-object v0

    aget p2, v0, p2

    invoke-static {}, Lcom/yftech/settings/manager/SoundManager;->getInstance()Lcom/yftech/settings/manager/SoundManager;

    move-result-object v0

    iget v0, v0, Lcom/yftech/settings/manager/SoundManager;->DTS_CLOSE:I

    if-ne p2, v0, :cond_1

    .line 921
    invoke-direct {p0, p1, v2}, Lcom/yftech/settings/sound/SoundSystemFragment;->updateDtsView(Lcom/yftech/settings/manager/SoundManager$Function;Z)V

    goto :goto_1

    :cond_1
    const/4 p2, 0x1

    .line 923
    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/sound/SoundSystemFragment;->updateDtsView(Lcom/yftech/settings/manager/SoundManager$Function;Z)V

    goto :goto_1

    .line 917
    :cond_2
    :goto_0
    sget-object p1, Lcom/yftech/settings/manager/SoundManager$Function;->DTS_SOUND_POSITION_OPTION:Lcom/yftech/settings/manager/SoundManager$Function;

    invoke-direct {p0, p1, v2}, Lcom/yftech/settings/sound/SoundSystemFragment;->updateDtsView(Lcom/yftech/settings/manager/SoundManager$Function;Z)V

    :goto_1
    return-void
.end method

.method private updateDtsView(Lcom/yftech/settings/manager/SoundManager$Function;Z)V
    .locals 2

    const/16 p1, 0x8

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 931
    iget-object p2, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mLlSoundSystemDTSMode:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 932
    iget-object p0, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mLlEqEffect:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 934
    :cond_0
    iget-object p2, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mLlSoundSystemDTSMode:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 935
    iget-object p1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mLlEqEffect:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    .line 936
    iget-object p1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mLlEqEffect:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 937
    iget-object p0, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x1

    const-wide/16 v0, 0xa

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onChangedVolume(IIIZI)V
    .locals 1

    const/4 p3, 0x3

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    if-le p2, p3, :cond_0

    .line 797
    iput p2, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mLastCallVolume:I

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    if-le p2, p3, :cond_1

    .line 799
    iput p2, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mLastVoiceVolume:I

    goto :goto_0

    :cond_1
    const/16 v0, 0xb

    if-ne p1, v0, :cond_2

    if-lez p2, :cond_2

    .line 801
    iput p2, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mLastNaviVolume:I

    :cond_2
    :goto_0
    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, p5

    if-lez v0, :cond_3

    const/4 v0, -0x1

    if-eq p5, v0, :cond_3

    const-string p0, "SoundSystemFragment"

    const-string p1, "onChangedVolume, adjust by self"

    .line 804
    invoke-static {p0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    if-ne p1, p3, :cond_4

    if-eqz p4, :cond_4

    const/4 p3, 0x0

    .line 808
    invoke-direct {p0, p1, p3}, Lcom/yftech/settings/sound/SoundSystemFragment;->setVolumeProgress(II)V

    goto :goto_1

    .line 810
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/sound/SoundSystemFragment;->setVolumeProgress(II)V

    :goto_1
    const-string p0, "SoundSystemFragment"

    .line 812
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "streamType: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " curValue: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 671
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isPressed()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 674
    :cond_0
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const v0, 0x7f0801a2

    if-ne p0, v0, :cond_2

    .line 676
    sget-object p0, Lcom/yftech/settings/manager/CarPartsManager$Function;->UNKNOWN:Lcom/yftech/settings/manager/CarPartsManager$Function;

    .line 677
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 679
    :cond_1
    sget-object p0, Lcom/yftech/settings/manager/CarPartsManager$Function;->LOCK_UNLOCK_SOUND_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    .line 684
    :goto_0
    sget-object p1, Lcom/yftech/settings/manager/CarPartsManager$Function;->UNKNOWN:Lcom/yftech/settings/manager/CarPartsManager$Function;

    if-eq p0, p1, :cond_4

    .line 685
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/yftech/settings/manager/CarPartsManager;->setEnabled(Lcom/yftech/settings/manager/CarPartsManager$Function;Z)Z

    goto :goto_2

    .line 688
    :cond_2
    sget-object p0, Lcom/yftech/settings/manager/SoundManager$Function;->UNKNOWN:Lcom/yftech/settings/manager/SoundManager$Function;

    .line 689
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v0, 0x7f0801a5

    if-eq p1, v0, :cond_3

    goto :goto_1

    .line 691
    :cond_3
    sget-object p0, Lcom/yftech/settings/manager/SoundManager$Function;->SPEED_GAIN_ENABLE:Lcom/yftech/settings/manager/SoundManager$Function;

    .line 696
    :goto_1
    sget-object p1, Lcom/yftech/settings/manager/SoundManager$Function;->UNKNOWN:Lcom/yftech/settings/manager/SoundManager$Function;

    if-eq p0, p1, :cond_4

    .line 697
    invoke-static {}, Lcom/yftech/settings/manager/SoundManager;->getInstance()Lcom/yftech/settings/manager/SoundManager;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/yftech/settings/manager/SoundManager;->setEnabled(Lcom/yftech/settings/manager/SoundManager$Function;Z)Z

    :cond_4
    :goto_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 589
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v0, 0x7f0801a3

    const/4 v1, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_0

    .line 593
    :pswitch_0
    iget-object p1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mStage:Lcom/yftech/settings/widget/SoundStage;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/yftech/settings/widget/SoundStage;->setThumbX(I)V

    .line 594
    iget-object p0, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mStage:Lcom/yftech/settings/widget/SoundStage;

    invoke-virtual {p0, v0}, Lcom/yftech/settings/widget/SoundStage;->setThumbY(I)V

    .line 595
    invoke-static {}, Lcom/yftech/settings/manager/SoundManager;->getInstance()Lcom/yftech/settings/manager/SoundManager;

    move-result-object p0

    sget-object p1, Lcom/yftech/settings/manager/SoundManager$Function;->SOUND_DELAY_VALUE:Lcom/yftech/settings/manager/SoundManager$Function;

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    invoke-virtual {p0, p1, v0}, Lcom/yftech/settings/manager/SoundManager;->setValue(Lcom/yftech/settings/manager/SoundManager$Function;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 608
    :pswitch_1
    iget-object p1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mCallVolumeSB:Lcom/yftech/settings/widget/SeekBarNumber;

    invoke-virtual {p1}, Lcom/yftech/settings/widget/SeekBarNumber;->getProgress()I

    move-result p1

    const/4 v0, 0x6

    if-le p1, v1, :cond_0

    .line 610
    iput p1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mLastCallVolume:I

    .line 611
    invoke-static {}, Lcom/yftech/settings/manager/SoundVolumeManager;->getInstance()Lcom/yftech/settings/manager/SoundVolumeManager;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Lcom/yftech/settings/manager/SoundVolumeManager;->setVolume(II)V

    goto/16 :goto_0

    .line 613
    :cond_0
    invoke-static {}, Lcom/yftech/settings/manager/SoundVolumeManager;->getInstance()Lcom/yftech/settings/manager/SoundVolumeManager;

    move-result-object p1

    iget p0, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mLastCallVolume:I

    invoke-virtual {p1, v0, p0}, Lcom/yftech/settings/manager/SoundVolumeManager;->setVolume(II)V

    goto/16 :goto_0

    .line 626
    :pswitch_2
    iget-object p1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mNaviVolumeSB:Lcom/yftech/settings/widget/SeekBarNumber;

    invoke-virtual {p1}, Lcom/yftech/settings/widget/SeekBarNumber;->getProgress()I

    move-result p1

    const/16 v1, 0xb

    if-lez p1, :cond_1

    .line 628
    iput p1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mLastNaviVolume:I

    .line 629
    invoke-static {}, Lcom/yftech/settings/manager/SoundVolumeManager;->getInstance()Lcom/yftech/settings/manager/SoundVolumeManager;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Lcom/yftech/settings/manager/SoundVolumeManager;->setVolume(II)V

    goto/16 :goto_0

    .line 631
    :cond_1
    invoke-static {}, Lcom/yftech/settings/manager/SoundVolumeManager;->getInstance()Lcom/yftech/settings/manager/SoundVolumeManager;

    move-result-object p1

    iget p0, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mLastNaviVolume:I

    invoke-virtual {p1, v1, p0}, Lcom/yftech/settings/manager/SoundVolumeManager;->setVolume(II)V

    goto/16 :goto_0

    .line 598
    :pswitch_3
    iget-object p0, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mMediaVolumeSB:Lcom/yftech/settings/widget/SeekBarNumber;

    invoke-virtual {p0}, Lcom/yftech/settings/widget/SeekBarNumber;->getProgress()I

    .line 599
    invoke-static {}, Lcom/yftech/settings/manager/SoundVolumeManager;->getInstance()Lcom/yftech/settings/manager/SoundVolumeManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/yftech/settings/manager/SoundVolumeManager;->isMute(I)Z

    move-result p0

    const-string p1, "SoundSystemFragment"

    .line 600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "soundSystemMediaVolume isMuteMusic:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    invoke-static {}, Lcom/yftech/settings/manager/SoundVolumeManager;->getInstance()Lcom/yftech/settings/manager/SoundVolumeManager;

    move-result-object p1

    xor-int/2addr p0, v2

    invoke-virtual {p1, v1, p0}, Lcom/yftech/settings/manager/SoundVolumeManager;->setMute(IZ)V

    goto :goto_0

    .line 656
    :pswitch_4
    invoke-direct {p0, v1}, Lcom/yftech/settings/sound/SoundSystemFragment;->setEqMode(I)V

    goto :goto_0

    .line 650
    :pswitch_5
    invoke-direct {p0, v2}, Lcom/yftech/settings/sound/SoundSystemFragment;->setEqMode(I)V

    goto :goto_0

    .line 653
    :pswitch_6
    invoke-direct {p0, v3}, Lcom/yftech/settings/sound/SoundSystemFragment;->setEqMode(I)V

    goto :goto_0

    :pswitch_7
    const/4 p1, 0x4

    .line 659
    invoke-direct {p0, p1}, Lcom/yftech/settings/sound/SoundSystemFragment;->setEqMode(I)V

    goto :goto_0

    :pswitch_8
    const/4 p1, 0x5

    .line 662
    invoke-direct {p0, p1}, Lcom/yftech/settings/sound/SoundSystemFragment;->setEqMode(I)V

    goto :goto_0

    .line 647
    :pswitch_9
    invoke-direct {p0, v0}, Lcom/yftech/settings/sound/SoundSystemFragment;->setEqMode(I)V

    goto :goto_0

    .line 644
    :pswitch_a
    invoke-direct {p0, v1}, Lcom/yftech/settings/sound/SoundSystemFragment;->setDtsMode(I)V

    goto :goto_0

    .line 635
    :pswitch_b
    invoke-direct {p0, v0}, Lcom/yftech/settings/sound/SoundSystemFragment;->setDtsMode(I)V

    goto :goto_0

    .line 638
    :pswitch_c
    invoke-direct {p0, v2}, Lcom/yftech/settings/sound/SoundSystemFragment;->setDtsMode(I)V

    goto :goto_0

    .line 641
    :pswitch_d
    invoke-direct {p0, v3}, Lcom/yftech/settings/sound/SoundSystemFragment;->setDtsMode(I)V

    goto :goto_0

    .line 617
    :cond_2
    iget-object p1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mVoiceVolumeSB:Lcom/yftech/settings/widget/SeekBarNumber;

    invoke-virtual {p1}, Lcom/yftech/settings/widget/SeekBarNumber;->getProgress()I

    move-result p1

    const/16 v0, 0x9

    if-le p1, v1, :cond_3

    .line 619
    iput p1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mLastVoiceVolume:I

    .line 620
    invoke-static {}, Lcom/yftech/settings/manager/SoundVolumeManager;->getInstance()Lcom/yftech/settings/manager/SoundVolumeManager;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Lcom/yftech/settings/manager/SoundVolumeManager;->setVolume(II)V

    goto :goto_0

    .line 622
    :cond_3
    invoke-static {}, Lcom/yftech/settings/manager/SoundVolumeManager;->getInstance()Lcom/yftech/settings/manager/SoundVolumeManager;

    move-result-object p1

    iget p0, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mLastVoiceVolume:I

    invoke-virtual {p1, v0, p0}, Lcom/yftech/settings/manager/SoundVolumeManager;->setVolume(II)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f080058
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f08019e
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0xa
        0xa
    .end array-data
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const p3, 0x7f0a0047

    const/4 v0, 0x0

    .line 173
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 174
    invoke-direct {p0, p1}, Lcom/yftech/settings/sound/SoundSystemFragment;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method public onPause()V
    .locals 2

    .line 391
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onPause()V

    .line 393
    invoke-static {}, Lcom/yftech/settings/manager/SoundVolumeManager;->getInstance()Lcom/yftech/settings/manager/SoundVolumeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yftech/settings/manager/SoundVolumeManager;->removeSoundVolumeListener(Lcom/yftech/settings/manager/SoundVolumeManager$SoundVolumeListener;)V

    .line 394
    invoke-static {}, Lcom/yftech/settings/manager/SoundManager;->getInstance()Lcom/yftech/settings/manager/SoundManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mSoundModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/SoundManager;->unregisterModelCallback(Lcom/yftech/settings/manager/BaseManager$ModelCallback;)V

    .line 395
    invoke-static {}, Lcom/yftech/settings/manager/SoundManager;->getInstance()Lcom/yftech/settings/manager/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/SoundManager$Function;->SOUND_DELAY_CANCEL_ACTION:Lcom/yftech/settings/manager/SoundManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/SoundManager;->setAction(Lcom/yftech/settings/manager/SoundManager$Function;)Z

    .line 396
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mCarPartsModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/manager/CarPartsManager;->unregisterModelCallback(Lcom/yftech/settings/manager/BaseManager$ModelCallback;)V

    .line 397
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->STOP_TIMEOUT_ACTION:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {p0, v0}, Lcom/yftech/settings/manager/CarPartsManager;->setAction(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    return-void
.end method

.method public onPositionChanged(II)V
    .locals 3

    .line 584
    invoke-static {}, Lcom/yftech/settings/manager/SoundManager;->getInstance()Lcom/yftech/settings/manager/SoundManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/settings/manager/SoundManager$Function;->SOUND_DELAY_VALUE:Lcom/yftech/settings/manager/SoundManager$Function;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/yftech/settings/manager/SoundManager;->setValue(Lcom/yftech/settings/manager/SoundManager$Function;Ljava/lang/Object;)Z

    return-void
.end method

.method public onProgressChanged(Lcom/yftech/settings/widget/SeekBarNumber;I)V
    .locals 1

    .line 734
    invoke-virtual {p1}, Lcom/yftech/settings/widget/SeekBarNumber;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v0, 0x7f0801a3

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x6

    .line 746
    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/sound/SoundSystemFragment;->handleVolumeChanged(II)V

    goto :goto_0

    :pswitch_1
    const/16 p1, 0xb

    .line 760
    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/sound/SoundSystemFragment;->handleVolumeChanged(II)V

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x3

    .line 739
    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/sound/SoundSystemFragment;->handleVolumeChanged(II)V

    goto :goto_0

    .line 774
    :pswitch_3
    sget-object p1, Lcom/yftech/settings/manager/SoundManager$Function;->BAND_MID_VALUE:Lcom/yftech/settings/manager/SoundManager$Function;

    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/sound/SoundSystemFragment;->handleBandsChanged(Lcom/yftech/settings/manager/SoundManager$Function;I)V

    goto :goto_0

    .line 781
    :pswitch_4
    sget-object p1, Lcom/yftech/settings/manager/SoundManager$Function;->BAND_LOW_VALUE:Lcom/yftech/settings/manager/SoundManager$Function;

    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/sound/SoundSystemFragment;->handleBandsChanged(Lcom/yftech/settings/manager/SoundManager$Function;I)V

    goto :goto_0

    .line 767
    :pswitch_5
    sget-object p1, Lcom/yftech/settings/manager/SoundManager$Function;->BAND_HIGH_VALUE:Lcom/yftech/settings/manager/SoundManager$Function;

    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/sound/SoundSystemFragment;->handleBandsChanged(Lcom/yftech/settings/manager/SoundManager$Function;I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x9

    .line 753
    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/sound/SoundSystemFragment;->handleVolumeChanged(II)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f08019b
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 2

    .line 380
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onResume()V

    .line 381
    invoke-direct {p0}, Lcom/yftech/settings/sound/SoundSystemFragment;->initViewData()V

    .line 383
    invoke-static {}, Lcom/yftech/settings/manager/SoundVolumeManager;->getInstance()Lcom/yftech/settings/manager/SoundVolumeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yftech/settings/manager/SoundVolumeManager;->addSoundVolumeListener(Lcom/yftech/settings/manager/SoundVolumeManager$SoundVolumeListener;)V

    .line 384
    invoke-static {}, Lcom/yftech/settings/manager/SoundManager;->getInstance()Lcom/yftech/settings/manager/SoundManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mSoundModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/SoundManager;->registerModelCallback(Lcom/yftech/settings/manager/BaseManager$ModelCallback;)V

    .line 385
    invoke-static {}, Lcom/yftech/settings/manager/SoundManager;->getInstance()Lcom/yftech/settings/manager/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/SoundManager$Function;->SOUND_DELAY_START_ACTION:Lcom/yftech/settings/manager/SoundManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/SoundManager;->setAction(Lcom/yftech/settings/manager/SoundManager$Function;)Z

    .line 386
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/settings/sound/SoundSystemFragment;->mCarPartsModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/manager/CarPartsManager;->registerModelCallback(Lcom/yftech/settings/manager/BaseManager$ModelCallback;)V

    return-void
.end method

.method public onStartTrackingTouch(Lcom/yftech/settings/widget/SeekBarNumber;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Lcom/yftech/settings/widget/SeekBarNumber;)V
    .locals 0

    return-void
.end method

.method public onSwitch(Lcom/yftech/settings/widget/MultiSelectView;ILjava/lang/String;Z)V
    .locals 0

    if-nez p4, :cond_0

    return-void

    .line 707
    :cond_0
    sget-object p0, Lcom/yftech/settings/manager/SoundManager$Function;->UNKNOWN:Lcom/yftech/settings/manager/SoundManager$Function;

    .line 708
    invoke-virtual {p1}, Lcom/yftech/settings/widget/MultiSelectView;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const p3, 0x7f0801a4

    if-eq p1, p3, :cond_1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 710
    :pswitch_0
    sget-object p0, Lcom/yftech/settings/manager/SoundManager$Function;->DTS_SOUND_POSITION_OPTION:Lcom/yftech/settings/manager/SoundManager$Function;

    goto :goto_0

    .line 716
    :pswitch_1
    sget-object p0, Lcom/yftech/settings/manager/SoundManager$Function;->KEEP_MUTE_WARNING_OPTION:Lcom/yftech/settings/manager/SoundManager$Function;

    goto :goto_0

    .line 713
    :cond_1
    sget-object p0, Lcom/yftech/settings/manager/SoundManager$Function;->BOOT_VOLUME_OPTION:Lcom/yftech/settings/manager/SoundManager$Function;

    :goto_0
    const-string p1, "SoundSystemFragment"

    .line 721
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Function:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, " position:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    sget-object p1, Lcom/yftech/settings/manager/SoundManager$Function;->UNKNOWN:Lcom/yftech/settings/manager/SoundManager$Function;

    if-eq p0, p1, :cond_2

    .line 723
    invoke-static {}, Lcom/yftech/settings/manager/SoundManager;->getInstance()Lcom/yftech/settings/manager/SoundManager;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/yftech/settings/manager/SoundManager;->setOption(Lcom/yftech/settings/manager/SoundManager$Function;I)Z

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x7f080197
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
