.class public Lcom/yftech/settings/widget/wheelview/WheelView;
.super Landroid/view/View;
.source "WheelView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/settings/widget/wheelview/WheelView$OnItemSelectedListener;,
        Lcom/yftech/settings/widget/wheelview/WheelView$ACTION;
    }
.end annotation


# static fields
.field public static final SCROLL_HORIZONTAL:I = 0x1

.field public static final SCROLL_VERTICAL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WheelView"

.field public static final WHEEL_CENTER:I = 0x162

.field public static final WHEEL_LEFT:I = 0xea

.field public static final WHEEL_RIGHT:I = 0x37e


# instance fields
.field change:I

.field context:Landroid/content/Context;

.field private currentItem:I

.field private gestureDetector:Landroid/view/GestureDetector;

.field halfCircumference:I

.field handler:Landroid/os/Handler;

.field private heightMeasureSpec:I

.field initPosition:I

.field isLoop:Z

.field public itemHeightCenter:F

.field public itemHeightOuter:F

.field public itemWidthCenter:F

.field public itemWidthOuter:F

.field items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field itemsVisible:I

.field lineColor:I

.field lineSpaceingDimens:F

.field private mBaselineCenterX:I

.field private mBaselineCenterY:I

.field private mBaselineOuterX:I

.field private mBaselineOuterY:I

.field private mBottom:F

.field mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field mFirstLineX:I

.field mFirstLineY:I

.field private mFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private mLeft:F

.field private mOffsetX:I

.field private mOffsetY:I

.field private mPreviousX:F

.field private mPreviousY:F

.field private mRight:F

.field private mScrollOrientation:I

.field mSecondLineX:I

.field mSecondLineY:I

.field private mTop:F

.field private mWheelGravity:I

.field maxTextHeight:I

.field maxTextHeightCenter:I

.field maxTextHeightOuter:I

.field maxTextWidth:I

.field maxTextWidthCenter:I

.field maxTextWidthOuter:I

.field measuredHeight:I

.field measuredWidth:I

.field public oldIndex:I

.field onItemSelectedListener:Lcom/yftech/settings/widget/wheelview/WheelView$OnItemSelectedListener;

.field paintCenterText:Landroid/graphics/Paint;

.field paintIndicatorLine:Landroid/graphics/Paint;

.field paintOuterText:Landroid/graphics/Paint;

.field preCurrentIndex:I

.field radius:I

.field private scaleX:F

.field private selectedItem:I

.field startTime:J

.field private tempRect:Landroid/graphics/Rect;

.field textColorCenter:I

.field textColorOuter:I

.field textSizeCenter:F

.field textSizeOuter:F

.field totalScrollX:I

.field totalScrollY:I

.field private widthMeasureSpec:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 135
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 30
    iput v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->oldIndex:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 31
    iput v1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->scaleX:F

    const/4 v1, 0x0

    .line 32
    iput v1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->widthMeasureSpec:I

    .line 33
    iput v1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->heightMeasureSpec:I

    const/16 v2, 0x162

    .line 49
    iput v2, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mWheelGravity:I

    .line 52
    iput v1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mScrollOrientation:I

    .line 55
    iput v1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->currentItem:I

    .line 71
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    iput-object v2, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v2, 0x3

    .line 89
    iput v2, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemsVisible:I

    const/high16 v2, 0x42a00000    # 80.0f

    .line 90
    iput v2, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->textSizeCenter:F

    const/high16 v2, 0x428c0000    # 70.0f

    .line 91
    iput v2, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->textSizeOuter:F

    const v2, -0x333334

    .line 92
    iput v2, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->textColorOuter:I

    .line 93
    iput v2, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->textColorCenter:I

    .line 94
    iput v1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->lineColor:I

    .line 95
    iput-boolean v1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->isLoop:Z

    .line 114
    iput v1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->totalScrollY:I

    .line 115
    iput v1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->totalScrollX:I

    .line 116
    iput v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->initPosition:I

    .line 126
    iput v1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mOffsetY:I

    .line 127
    iput v1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mOffsetX:I

    const-wide/16 v0, 0x0

    .line 130
    iput-wide v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->startTime:J

    .line 132
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->tempRect:Landroid/graphics/Rect;

    .line 136
    invoke-direct {p0, p1}, Lcom/yftech/settings/widget/wheelview/WheelView;->initWheelView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 140
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 30
    iput v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->oldIndex:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 31
    iput v1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->scaleX:F

    const/4 v1, 0x0

    .line 32
    iput v1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->widthMeasureSpec:I

    .line 33
    iput v1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->heightMeasureSpec:I

    const/16 v2, 0x162

    .line 49
    iput v2, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mWheelGravity:I

    .line 52
    iput v1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mScrollOrientation:I

    .line 55
    iput v1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->currentItem:I

    .line 71
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    iput-object v2, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v2, 0x3

    .line 89
    iput v2, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemsVisible:I

    const/high16 v2, 0x42a00000    # 80.0f

    .line 90
    iput v2, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->textSizeCenter:F

    const/high16 v2, 0x428c0000    # 70.0f

    .line 91
    iput v2, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->textSizeOuter:F

    const v2, -0x333334

    .line 92
    iput v2, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->textColorOuter:I

    .line 93
    iput v2, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->textColorCenter:I

    .line 94
    iput v1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->lineColor:I

    .line 95
    iput-boolean v1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->isLoop:Z

    .line 114
    iput v1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->totalScrollY:I

    .line 115
    iput v1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->totalScrollX:I

    .line 116
    iput v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->initPosition:I

    .line 126
    iput v1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mOffsetY:I

    .line 127
    iput v1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mOffsetX:I

    const-wide/16 v0, 0x0

    .line 130
    iput-wide v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->startTime:J

    .line 132
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->tempRect:Landroid/graphics/Rect;

    .line 141
    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/widget/wheelview/WheelView;->initWheelView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 145
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, -0x1

    .line 30
    iput p3, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->oldIndex:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 31
    iput v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->scaleX:F

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->widthMeasureSpec:I

    .line 33
    iput v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->heightMeasureSpec:I

    const/16 v1, 0x162

    .line 49
    iput v1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mWheelGravity:I

    .line 52
    iput v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mScrollOrientation:I

    .line 55
    iput v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->currentItem:I

    .line 71
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v1, 0x3

    .line 89
    iput v1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemsVisible:I

    const/high16 v1, 0x42a00000    # 80.0f

    .line 90
    iput v1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->textSizeCenter:F

    const/high16 v1, 0x428c0000    # 70.0f

    .line 91
    iput v1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->textSizeOuter:F

    const v1, -0x333334

    .line 92
    iput v1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->textColorOuter:I

    .line 93
    iput v1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->textColorCenter:I

    .line 94
    iput v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->lineColor:I

    .line 95
    iput-boolean v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->isLoop:Z

    .line 114
    iput v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->totalScrollY:I

    .line 115
    iput v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->totalScrollX:I

    .line 116
    iput p3, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->initPosition:I

    .line 126
    iput v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mOffsetY:I

    .line 127
    iput v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mOffsetX:I

    const-wide/16 v0, 0x0

    .line 130
    iput-wide v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->startTime:J

    .line 132
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->tempRect:Landroid/graphics/Rect;

    .line 146
    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/widget/wheelview/WheelView;->initWheelView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getCenterTextX(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Rect;)I
    .locals 2

    .line 647
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1, v0, p3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 649
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    .line 651
    iget p2, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->scaleX:F

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 652
    iget p2, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mWheelGravity:I

    const/16 p3, 0x37e

    if-ne p2, p3, :cond_0

    .line 653
    iget p2, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->maxTextWidthCenter:I

    div-int/lit8 p2, p2, 0x2

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr p2, p1

    iget p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->measuredWidth:I

    iget p0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->maxTextWidthCenter:I

    sub-int/2addr p1, p0

    add-int/2addr p2, p1

    return p2

    .line 654
    :cond_0
    iget p2, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mWheelGravity:I

    const/16 p3, 0xea

    if-ne p2, p3, :cond_1

    .line 655
    iget p0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->maxTextWidthCenter:I

    div-int/lit8 p0, p0, 0x2

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr p0, p1

    return p0

    .line 657
    :cond_1
    iget p0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->maxTextWidthCenter:I

    sub-int/2addr p0, p1

    div-int/lit8 p0, p0, 0x2

    return p0
.end method

.method private getFixedItemsVisible(I)I
    .locals 0

    const/4 p0, 0x3

    if-ge p1, p0, :cond_0

    return p0

    .line 167
    :cond_0
    rem-int/lit8 p0, p1, 0x2

    if-nez p0, :cond_1

    add-int/lit8 p1, p1, 0x1

    return p1

    :cond_1
    return p1
.end method

.method private getOuterTextX(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Rect;)I
    .locals 2

    .line 662
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1, v0, p3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 664
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    .line 666
    iget p2, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->scaleX:F

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 667
    iget p2, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mWheelGravity:I

    const/16 p3, 0x37e

    if-ne p2, p3, :cond_0

    .line 668
    iget p2, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->maxTextWidthOuter:I

    div-int/lit8 p2, p2, 0x2

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr p2, p1

    iget p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->measuredWidth:I

    iget p0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->maxTextWidthOuter:I

    sub-int/2addr p1, p0

    add-int/2addr p2, p1

    return p2

    .line 669
    :cond_0
    iget p2, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mWheelGravity:I

    const/16 p3, 0xea

    if-ne p2, p3, :cond_1

    .line 670
    iget p0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->maxTextWidthOuter:I

    div-int/lit8 p0, p0, 0x2

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr p0, p1

    return p0

    .line 672
    :cond_1
    iget p0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->maxTextWidthOuter:I

    sub-int/2addr p0, p1

    div-int/lit8 p0, p0, 0x2

    return p0
.end method

.method private getTextX(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Rect;)I
    .locals 2

    .line 632
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1, v0, p3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 634
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    .line 636
    iget p2, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->scaleX:F

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 637
    iget p2, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mWheelGravity:I

    const/16 p3, 0x37e

    if-ne p2, p3, :cond_0

    .line 638
    iget p2, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->maxTextWidth:I

    div-int/lit8 p2, p2, 0x2

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr p2, p1

    iget p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->measuredWidth:I

    iget p0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->maxTextWidth:I

    sub-int/2addr p1, p0

    add-int/2addr p2, p1

    return p2

    .line 639
    :cond_0
    iget p2, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mWheelGravity:I

    const/16 p3, 0xea

    if-ne p2, p3, :cond_1

    .line 640
    iget p0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->maxTextWidth:I

    div-int/lit8 p0, p0, 0x2

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr p0, p1

    return p0

    .line 642
    :cond_1
    iget p0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->measuredWidth:I

    sub-int/2addr p0, p1

    div-int/lit8 p0, p0, 0x2

    return p0
.end method

.method private getTranslateX(II)I
    .locals 1

    .line 611
    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->totalScrollX:I

    if-ltz v0, :cond_2

    .line 612
    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemsVisible:I

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    if-gt p1, v0, :cond_0

    .line 613
    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemWidthOuter:F

    int-to-float p1, p1

    mul-float/2addr v0, p1

    iget p0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemWidthOuter:F

    sub-float/2addr v0, p0

    int-to-float p0, p2

    sub-float/2addr v0, p0

    float-to-int p0, v0

    return p0

    .line 614
    :cond_0
    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemsVisible:I

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    if-ne p1, v0, :cond_1

    .line 615
    iget p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemWidthOuter:F

    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemsVisible:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    mul-float/2addr p1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemWidthCenter:F

    add-float/2addr p1, v0

    int-to-float p2, p2

    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemWidthCenter:F

    mul-float/2addr p2, v0

    iget p0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemWidthOuter:F

    div-float/2addr p2, p0

    sub-float/2addr p1, p2

    float-to-int p0, p1

    return p0

    .line 617
    :cond_1
    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemWidthOuter:F

    int-to-float p1, p1

    mul-float/2addr v0, p1

    iget p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemWidthOuter:F

    sub-float/2addr v0, p1

    int-to-float p1, p2

    sub-float/2addr v0, p1

    iget p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemWidthCenter:F

    iget p0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemWidthOuter:F

    sub-float/2addr p1, p0

    add-float/2addr v0, p1

    float-to-int p0, v0

    return p0

    .line 620
    :cond_2
    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemsVisible:I

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    if-ge p1, v0, :cond_3

    .line 621
    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemWidthOuter:F

    int-to-float p1, p1

    mul-float/2addr v0, p1

    iget p0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemWidthOuter:F

    sub-float/2addr v0, p0

    int-to-float p0, p2

    sub-float/2addr v0, p0

    float-to-int p0, v0

    return p0

    .line 622
    :cond_3
    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemsVisible:I

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    if-ne p1, v0, :cond_4

    .line 623
    iget p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemWidthOuter:F

    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemsVisible:I

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    mul-float/2addr p1, v0

    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemWidthOuter:F

    sub-float/2addr p1, v0

    int-to-float p2, p2

    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemWidthCenter:F

    mul-float/2addr p2, v0

    iget p0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemWidthOuter:F

    div-float/2addr p2, p0

    sub-float/2addr p1, p2

    float-to-int p0, p1

    return p0

    .line 625
    :cond_4
    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemWidthOuter:F

    int-to-float p1, p1

    mul-float/2addr v0, p1

    iget p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemWidthOuter:F

    sub-float/2addr v0, p1

    int-to-float p1, p2

    sub-float/2addr v0, p1

    iget p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemWidthCenter:F

    iget p0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemWidthOuter:F

    sub-float/2addr p1, p0

    add-float/2addr v0, p1

    float-to-int p0, v0

    return p0
.end method

.method private getTranslateY(II)I
    .locals 1

    .line 591
    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->totalScrollY:I

    if-ltz v0, :cond_2

    .line 592
    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemsVisible:I

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    if-gt p1, v0, :cond_0

    .line 593
    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemHeightOuter:F

    int-to-float p1, p1

    mul-float/2addr v0, p1

    iget p0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemHeightOuter:F

    sub-float/2addr v0, p0

    int-to-float p0, p2

    sub-float/2addr v0, p0

    float-to-int p0, v0

    return p0

    .line 594
    :cond_0
    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemsVisible:I

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    if-ne p1, v0, :cond_1

    .line 595
    iget p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemHeightOuter:F

    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemsVisible:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    mul-float/2addr p1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemHeightCenter:F

    add-float/2addr p1, v0

    int-to-float p2, p2

    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemHeightCenter:F

    mul-float/2addr p2, v0

    iget p0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemHeightOuter:F

    div-float/2addr p2, p0

    sub-float/2addr p1, p2

    float-to-int p0, p1

    return p0

    .line 597
    :cond_1
    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemHeightOuter:F

    int-to-float p1, p1

    mul-float/2addr v0, p1

    iget p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemHeightOuter:F

    sub-float/2addr v0, p1

    int-to-float p1, p2

    sub-float/2addr v0, p1

    iget p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemHeightCenter:F

    iget p0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemHeightOuter:F

    sub-float/2addr p1, p0

    add-float/2addr v0, p1

    float-to-int p0, v0

    return p0

    .line 600
    :cond_2
    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemsVisible:I

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    if-ge p1, v0, :cond_3

    .line 601
    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemHeightOuter:F

    int-to-float p1, p1

    mul-float/2addr v0, p1

    iget p0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemHeightOuter:F

    sub-float/2addr v0, p0

    int-to-float p0, p2

    sub-float/2addr v0, p0

    float-to-int p0, v0

    return p0

    .line 602
    :cond_3
    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemsVisible:I

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    if-ne p1, v0, :cond_4

    .line 603
    iget p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemHeightOuter:F

    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemsVisible:I

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    mul-float/2addr p1, v0

    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemHeightOuter:F

    sub-float/2addr p1, v0

    int-to-float p2, p2

    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemHeightCenter:F

    mul-float/2addr p2, v0

    iget p0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemHeightOuter:F

    div-float/2addr p2, p0

    sub-float/2addr p1, p2

    float-to-int p0, p1

    return p0

    .line 605
    :cond_4
    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemHeightOuter:F

    int-to-float p1, p1

    mul-float/2addr v0, p1

    iget p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemHeightOuter:F

    sub-float/2addr v0, p1

    int-to-float p1, p2

    sub-float/2addr v0, p1

    iget p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemHeightCenter:F

    iget p0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemHeightOuter:F

    sub-float/2addr p1, p0

    add-float/2addr v0, p1

    float-to-int p0, v0

    return p0
.end method

.method private initPaints()V
    .locals 4

    .line 188
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->paintOuterText:Landroid/graphics/Paint;

    .line 189
    iget-object v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->paintOuterText:Landroid/graphics/Paint;

    iget v1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->textColorOuter:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 190
    iget-object v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->paintOuterText:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 191
    iget-object v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->paintOuterText:Landroid/graphics/Paint;

    const-string v2, "sans-serif"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 192
    iget-object v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->paintOuterText:Landroid/graphics/Paint;

    iget v2, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->textSizeOuter:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 194
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->paintCenterText:Landroid/graphics/Paint;

    .line 195
    iget-object v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->paintCenterText:Landroid/graphics/Paint;

    iget v2, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->textColorCenter:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 196
    iget-object v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->paintCenterText:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 197
    iget-object v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->paintCenterText:Landroid/graphics/Paint;

    const-string v2, "sans-serif-bold"

    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 198
    iget-object v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->paintCenterText:Landroid/graphics/Paint;

    iget v2, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->textSizeCenter:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 200
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->paintIndicatorLine:Landroid/graphics/Paint;

    .line 201
    iget-object v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->paintIndicatorLine:Landroid/graphics/Paint;

    iget v2, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->lineColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 202
    iget-object v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->paintIndicatorLine:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 204
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_0

    const/4 v0, 0x0

    .line 205
    invoke-virtual {p0, v1, v0}, Lcom/yftech/settings/widget/wheelview/WheelView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private initWheelView(Landroid/content/Context;)V
    .locals 2

    .line 175
    iput-object p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->context:Landroid/content/Context;

    .line 176
    new-instance v0, Lcom/yftech/settings/widget/wheelview/MessageHandler;

    invoke-direct {v0, p0}, Lcom/yftech/settings/widget/wheelview/MessageHandler;-><init>(Lcom/yftech/settings/widget/wheelview/WheelView;)V

    iput-object v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->handler:Landroid/os/Handler;

    .line 177
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/yftech/settings/widget/wheelview/WheelViewGestureListener;

    invoke-direct {v1, p0}, Lcom/yftech/settings/widget/wheelview/WheelViewGestureListener;-><init>(Lcom/yftech/settings/widget/wheelview/WheelView;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->gestureDetector:Landroid/view/GestureDetector;

    .line 178
    iget-object p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->gestureDetector:Landroid/view/GestureDetector;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 179
    invoke-direct {p0}, Lcom/yftech/settings/widget/wheelview/WheelView;->initPaints()V

    return-void
.end method

.method private initWheelView(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 150
    sget-object v0, Lcom/yftech/settings/R$styleable;->WheelView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 151
    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->lineColor:I

    const/4 v1, 0x2

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->lineColor:I

    .line 152
    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemsVisible:I

    const/4 v1, 0x1

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/yftech/settings/widget/wheelview/WheelView;->getFixedItemsVisible(I)I

    move-result v0

    iput v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemsVisible:I

    .line 153
    iget-boolean v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->isLoop:Z

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->isLoop:Z

    .line 154
    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->textColorCenter:I

    const/4 v1, 0x4

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->textColorCenter:I

    .line 155
    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->textColorOuter:I

    const/4 v1, 0x5

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->textColorOuter:I

    const/high16 v0, 0x41900000    # 18.0f

    .line 156
    invoke-static {p1, v0}, Lcom/yftech/settings/utils/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x6

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->textSizeCenter:F

    const/high16 v0, 0x41500000    # 13.0f

    .line 157
    invoke-static {p1, v0}, Lcom/yftech/settings/utils/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x7

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->textSizeOuter:F

    const/high16 v0, 0x40c00000    # 6.0f

    .line 158
    invoke-static {p1, v0}, Lcom/yftech/settings/utils/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x3

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->lineSpaceingDimens:F

    .line 159
    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mWheelGravity:I

    const/16 v1, 0x8

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mWheelGravity:I

    .line 160
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 161
    invoke-direct {p0, p1}, Lcom/yftech/settings/widget/wheelview/WheelView;->initWheelView(Landroid/content/Context;)V

    return-void
.end method

.method private log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private measureTextWidthHeight()V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 264
    :goto_0
    iget-object v2, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 265
    iget-object v2, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->items:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 266
    iget-object v3, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->paintCenterText:Landroid/graphics/Paint;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->tempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v2, v0, v4, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 268
    iget-object v2, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->tempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 269
    iget v3, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->maxTextWidth:I

    if-le v2, v3, :cond_0

    .line 270
    iput v2, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->maxTextWidth:I

    .line 272
    :cond_0
    iget-object v2, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->tempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 273
    iget v3, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->maxTextHeight:I

    if-le v2, v3, :cond_1

    .line 274
    iput v2, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->maxTextHeight:I

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string v1, "WheelView"

    .line 277
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "measureTextWidthHeight: maxTextWidth = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->maxTextWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", maxTextHeight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->maxTextHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/yftech/settings/widget/wheelview/WheelView;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object v1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->paintCenterText:Landroid/graphics/Paint;

    const-string v2, "\u661f\u661f\u661f\u661f\u661f\u661f"

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->tempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 280
    iget-object v1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->tempRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->maxTextHeightCenter:I

    .line 282
    iget v1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->maxTextWidth:I

    iput v1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->maxTextWidthCenter:I

    const-string v1, "WheelView"

    .line 283
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "measureTextWidthHeight: maxTextWidthCenter = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->maxTextWidthCenter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", maxTextHeightCenter = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->maxTextHeightCenter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/yftech/settings/widget/wheelview/WheelView;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object v1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->paintOuterText:Landroid/graphics/Paint;

    const-string v2, "\u661f\u661f\u661f"

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->tempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 286
    iget-object v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->tempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->maxTextHeightOuter:I

    .line 287
    iget-object v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->tempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->maxTextWidthOuter:I

    const-string v0, "WheelView"

    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "measureTextWidthHeight: maxTextWidthOuter = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->maxTextWidthOuter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", maxTextHeightOuter = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->maxTextHeightOuter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/widget/wheelview/WheelView;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->maxTextHeightCenter:I

    int-to-float v0, v0

    iget v1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->lineSpaceingDimens:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemHeightCenter:F

    .line 291
    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->maxTextWidthCenter:I

    int-to-float v0, v0

    iget v1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->lineSpaceingDimens:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemWidthCenter:F

    const-string v0, "WheelView"

    .line 292
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "measureTextWidthHeight: itemWidthCenter = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemWidthCenter:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", itemHeightCenter = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemHeightCenter:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/widget/wheelview/WheelView;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->maxTextHeightOuter:I

    int-to-float v0, v0

    iget v1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->lineSpaceingDimens:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemHeightOuter:F

    .line 295
    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->maxTextWidthOuter:I

    int-to-float v0, v0

    iget v1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->lineSpaceingDimens:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemWidthOuter:F

    const-string v0, "WheelView"

    .line 296
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "measureTextWidthHeight: itemWidthOuter = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemWidthOuter:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", itemHeightOuter = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemHeightOuter:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/widget/wheelview/WheelView;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->paintOuterText:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 299
    iget v1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemHeightOuter:F

    iget v3, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget v3, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    div-float/2addr v1, v2

    iget v3, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mBaselineOuterY:I

    .line 300
    iget v1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemHeightOuter:F

    iget v3, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget v3, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    div-float/2addr v1, v2

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v0, v0

    sub-float/2addr v1, v0

    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemHeightOuter:F

    div-float/2addr v0, v2

    add-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mBaselineOuterX:I

    .line 301
    iget-object v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->paintCenterText:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 302
    iget v1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemHeightCenter:F

    iget v3, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget v3, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    div-float/2addr v1, v2

    iget v3, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mBaselineCenterY:I

    .line 303
    iget v1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemHeightCenter:F

    iget v3, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget v3, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    div-float/2addr v1, v2

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v0, v0

    sub-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mBaselineCenterX:I

    return-void
.end method

.method private remeasure(II)V
    .locals 9

    .line 210
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 211
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 212
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 213
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    .line 214
    iget-object v2, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->items:Ljava/util/List;

    if-nez v2, :cond_0

    return-void

    .line 218
    :cond_0
    invoke-direct {p0}, Lcom/yftech/settings/widget/wheelview/WheelView;->measureTextWidthHeight()V

    .line 220
    iget v2, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mScrollOrientation:I

    const/high16 v3, 0x40000000    # 2.0f

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    const/high16 v6, 0x40000000    # 2.0f

    if-nez v2, :cond_1

    .line 221
    iget p2, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemHeightCenter:F

    iget v1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemsVisible:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    mul-float/2addr p2, v1

    float-to-int p2, p2

    iput p2, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->halfCircumference:I

    .line 222
    iget p2, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->halfCircumference:I

    mul-int/lit8 p2, p2, 0x2

    int-to-double v1, p2

    div-double/2addr v1, v4

    double-to-int p2, v1

    iput p2, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->measuredHeight:I

    .line 223
    iget p2, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemHeightCenter:F

    iget v1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemHeightOuter:F

    iget v2, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemsVisible:I

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr p2, v1

    iget v1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->lineSpaceingDimens:F

    mul-float/2addr v1, v6

    add-float/2addr p2, v1

    float-to-int p2, p2

    iput p2, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->measuredHeight:I

    .line 224
    iget p2, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->halfCircumference:I

    int-to-double v1, p2

    div-double/2addr v1, v4

    double-to-int p2, v1

    iput p2, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->radius:I

    .line 225
    iget p2, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->maxTextWidth:I

    iput p2, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->measuredWidth:I

    if-ne p1, v3, :cond_2

    .line 227
    iput v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->measuredWidth:I

    goto :goto_0

    .line 230
    :cond_1
    iget p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemWidthCenter:F

    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemsVisible:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->halfCircumference:I

    .line 231
    iget p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->halfCircumference:I

    mul-int/lit8 p1, p1, 0x2

    int-to-double v7, p1

    div-double/2addr v7, v4

    double-to-int p1, v7

    iput p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->measuredWidth:I

    .line 232
    iget p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemWidthCenter:F

    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemWidthOuter:F

    iget v2, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemsVisible:I

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    mul-float/2addr v0, v2

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->measuredWidth:I

    .line 233
    iget p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->halfCircumference:I

    int-to-double v7, p1

    div-double/2addr v7, v4

    double-to-int p1, v7

    iput p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->radius:I

    .line 234
    iget p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->maxTextHeight:I

    iput p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->measuredHeight:I

    if-ne p2, v3, :cond_2

    .line 236
    iput v1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->measuredHeight:I

    :cond_2
    :goto_0
    const-string p1, "WheelView"

    .line 239
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "remeasure: measuredWidth = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->measuredWidth:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", measuredHeight = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->measuredHeight:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/widget/wheelview/WheelView;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemHeightOuter:F

    iget p2, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemsVisible:I

    add-int/lit8 p2, p2, -0x1

    int-to-float p2, p2

    mul-float/2addr p1, p2

    div-float/2addr p1, v6

    float-to-int p1, p1

    iput p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mFirstLineY:I

    .line 241
    iget p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemHeightOuter:F

    iget p2, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemsVisible:I

    add-int/lit8 p2, p2, -0x1

    int-to-float p2, p2

    mul-float/2addr p1, p2

    div-float/2addr p1, v6

    iget p2, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemHeightCenter:F

    add-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mSecondLineY:I

    .line 242
    iget p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemWidthOuter:F

    iget p2, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemsVisible:I

    add-int/lit8 p2, p2, -0x1

    int-to-float p2, p2

    mul-float/2addr p1, p2

    div-float/2addr p1, v6

    float-to-int p1, p1

    iput p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mFirstLineX:I

    .line 243
    iget p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemWidthOuter:F

    iget p2, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemsVisible:I

    add-int/lit8 p2, p2, -0x1

    int-to-float p2, p2

    mul-float/2addr p1, p2

    div-float/2addr p1, v6

    iget p2, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemWidthCenter:F

    add-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mSecondLineX:I

    const-string p1, "WheelView"

    .line 244
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "remeasure: mFirstLineY = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mFirstLineY:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mSecondLineY = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mSecondLineY:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/widget/wheelview/WheelView;->log(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "WheelView"

    .line 245
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "remeasure: mFirstLineX = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mFirstLineX:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mSecondLineX = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mSecondLineX:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/widget/wheelview/WheelView;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->initPosition:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_4

    .line 247
    iget-boolean p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->isLoop:Z

    if-eqz p1, :cond_3

    .line 248
    iget-object p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->items:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->initPosition:I

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 250
    iput p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->initPosition:I

    .line 253
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->items:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iget p2, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->initPosition:I

    sub-int/2addr p1, p2

    int-to-float p1, p1

    iget p2, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemHeightOuter:F

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mBottom:F

    .line 254
    iget p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->initPosition:I

    neg-int p1, p1

    int-to-float p1, p1

    iget p2, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemHeightOuter:F

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mTop:F

    .line 255
    iget-object p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->items:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iget p2, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->initPosition:I

    sub-int/2addr p1, p2

    int-to-float p1, p1

    iget p2, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemWidthOuter:F

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mRight:F

    .line 256
    iget p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->initPosition:I

    neg-int p1, p1

    int-to-float p1, p1

    iget p2, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemWidthOuter:F

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mLeft:F

    const-string p1, "WheelView"

    .line 257
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "remeasure: mTop = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mTop:F

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", mBottom = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mBottom:F

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/widget/wheelview/WheelView;->log(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "WheelView"

    .line 258
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "remeasure: mLeft = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mLeft:F

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", mRight = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mRight:F

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/widget/wheelview/WheelView;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->initPosition:I

    iput p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->preCurrentIndex:I

    return-void
.end method


# virtual methods
.method public cancelFuture()V
    .locals 2

    .line 340
    iget-object v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    .line 342
    iput-object v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method

.method public getCurrentItem()I
    .locals 0

    .line 809
    iget p0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->currentItem:I

    return p0
.end method

.method public getItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object p0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->items:Ljava/util/List;

    return-object p0
.end method

.method public getScrollOrientation()I
    .locals 0

    .line 821
    iget p0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mScrollOrientation:I

    return p0
.end method

.method public final getSelectedItem()Ljava/lang/String;
    .locals 2

    .line 383
    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->selectedItem:I

    iget-object v1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->selectedItem:I

    if-gez v0, :cond_0

    goto :goto_0

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->items:Ljava/util/List;

    iget p0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->selectedItem:I

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public final getSelectedPosition()I
    .locals 0

    .line 389
    iget p0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->selectedItem:I

    return p0
.end method

.method public getSize()I
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->items:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 400
    iget-object v1, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->items:Ljava/util/List;

    if-nez v1, :cond_0

    return-void

    .line 404
    :cond_0
    iget v1, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->mScrollOrientation:I

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v8, 0x0

    if-nez v1, :cond_1

    .line 405
    iget v1, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->lineSpaceingDimens:F

    invoke-virtual {v7, v8, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 406
    iget v1, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->measuredWidth:I

    int-to-float v1, v1

    iget v3, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->measuredHeight:I

    int-to-float v3, v3

    iget v4, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->lineSpaceingDimens:F

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    invoke-virtual {v7, v8, v8, v1, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    goto :goto_0

    .line 408
    :cond_1
    iget v1, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->lineSpaceingDimens:F

    invoke-virtual {v7, v1, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 409
    iget v1, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->measuredWidth:I

    int-to-float v1, v1

    iget v3, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->lineSpaceingDimens:F

    mul-float/2addr v3, v2

    sub-float/2addr v1, v3

    iget v2, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->measuredHeight:I

    int-to-float v2, v2

    invoke-virtual {v7, v8, v8, v1, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 411
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 413
    iget v1, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->mScrollOrientation:I

    if-nez v1, :cond_2

    .line 414
    iget v1, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->totalScrollY:I

    int-to-float v1, v1

    iget v2, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemHeightOuter:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->change:I

    goto :goto_1

    .line 416
    :cond_2
    iget v1, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->totalScrollX:I

    int-to-float v1, v1

    iget v2, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemWidthOuter:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->change:I

    .line 419
    :goto_1
    iget v1, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->initPosition:I

    iget v2, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->change:I

    iget-object v3, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    rem-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->preCurrentIndex:I

    .line 421
    iget-boolean v1, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->isLoop:Z

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez v1, :cond_4

    .line 422
    iget v1, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->preCurrentIndex:I

    if-gez v1, :cond_3

    .line 423
    iput v10, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->preCurrentIndex:I

    .line 425
    :cond_3
    iget v1, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->preCurrentIndex:I

    iget-object v2, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v9

    if-le v1, v2, :cond_6

    .line 426
    iget-object v1, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v9

    iput v1, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->preCurrentIndex:I

    goto :goto_2

    .line 429
    :cond_4
    iget v1, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->preCurrentIndex:I

    if-gez v1, :cond_5

    .line 430
    iget-object v1, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->preCurrentIndex:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->preCurrentIndex:I

    .line 432
    :cond_5
    iget v1, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->preCurrentIndex:I

    iget-object v2, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v9

    if-le v1, v2, :cond_6

    .line 433
    iget v1, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->preCurrentIndex:I

    iget-object v2, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->preCurrentIndex:I

    .line 438
    :cond_6
    :goto_2
    iget v1, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->mScrollOrientation:I

    if-nez v1, :cond_7

    .line 439
    iget v1, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->totalScrollY:I

    int-to-float v1, v1

    iget v2, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemHeightOuter:F

    rem-float/2addr v1, v2

    float-to-int v11, v1

    const/4 v2, 0x0

    .line 440
    iget v1, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->mFirstLineY:I

    int-to-float v3, v1

    iget v1, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->measuredWidth:I

    int-to-float v4, v1

    iget v1, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->mFirstLineY:I

    int-to-float v5, v1

    iget-object v6, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->paintIndicatorLine:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 441
    iget v1, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->mSecondLineY:I

    int-to-float v3, v1

    iget v1, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->measuredWidth:I

    int-to-float v4, v1

    iget v1, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->mSecondLineY:I

    int-to-float v5, v1

    iget-object v6, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->paintIndicatorLine:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 443
    :cond_7
    iget v1, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->totalScrollX:I

    int-to-float v1, v1

    iget v2, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemWidthOuter:F

    rem-float/2addr v1, v2

    float-to-int v11, v1

    .line 444
    iget v1, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->mFirstLineX:I

    int-to-float v2, v1

    const/4 v3, 0x0

    iget v1, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->mFirstLineX:I

    int-to-float v4, v1

    iget v1, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->measuredHeight:I

    int-to-float v5, v1

    iget-object v6, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->paintIndicatorLine:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 445
    iget v1, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->mSecondLineX:I

    int-to-float v2, v1

    iget v1, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->mSecondLineX:I

    int-to-float v4, v1

    iget v1, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->measuredHeight:I

    int-to-float v5, v1

    iget-object v6, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->paintIndicatorLine:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 452
    :goto_3
    invoke-direct {v0, v10, v11}, Lcom/yftech/settings/widget/wheelview/WheelView;->getTranslateY(II)I

    move-result v1

    .line 453
    invoke-direct {v0, v9, v11}, Lcom/yftech/settings/widget/wheelview/WheelView;->getTranslateY(II)I

    move-result v2

    .line 457
    invoke-direct {v0, v10, v11}, Lcom/yftech/settings/widget/wheelview/WheelView;->getTranslateX(II)I

    move-result v3

    .line 458
    invoke-direct {v0, v9, v11}, Lcom/yftech/settings/widget/wheelview/WheelView;->getTranslateX(II)I

    move-result v4

    move v5, v4

    move v4, v2

    move v2, v1

    move v1, v10

    .line 460
    :goto_4
    iget v6, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemsVisible:I

    add-int/lit8 v6, v6, 0x2

    if-ge v1, v6, :cond_20

    .line 462
    iget v6, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->preCurrentIndex:I

    iget v12, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemsVisible:I

    div-int/lit8 v12, v12, 0x2

    sub-int/2addr v12, v1

    sub-int/2addr v6, v12

    sub-int/2addr v6, v9

    .line 463
    iget-boolean v12, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->isLoop:Z

    if-eqz v12, :cond_9

    .line 464
    iget-object v12, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->items:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    rem-int/2addr v6, v12

    if-gez v6, :cond_8

    .line 466
    iget-object v12, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->items:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    add-int/2addr v6, v12

    .line 468
    :cond_8
    iget-object v12, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->items:Ljava/util/List;

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    goto :goto_5

    :cond_9
    if-gez v6, :cond_a

    const-string v12, ""

    goto :goto_5

    .line 471
    :cond_a
    iget-object v12, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->items:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v9

    if-le v6, v12, :cond_b

    const-string v12, ""

    goto :goto_5

    .line 474
    :cond_b
    iget-object v12, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->items:Ljava/util/List;

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 477
    :goto_5
    iget v13, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->mScrollOrientation:I

    if-nez v13, :cond_15

    .line 478
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v13, v2

    .line 479
    invoke-virtual {v7, v8, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 480
    iget v13, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->mFirstLineY:I

    if-ge v2, v13, :cond_d

    iget v13, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->mFirstLineY:I

    if-le v4, v13, :cond_d

    const-string v13, "\u2103"

    .line 483
    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_c

    const-string v13, "\u2103"

    const-string v14, ""

    .line 484
    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    goto :goto_6

    :cond_c
    move-object v13, v12

    .line 486
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 487
    iget v14, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->measuredWidth:I

    iget v15, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->mFirstLineY:I

    sub-int/2addr v15, v2

    invoke-virtual {v7, v10, v10, v14, v15}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 489
    iget-object v14, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->paintOuterText:Landroid/graphics/Paint;

    iget-object v15, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->tempRect:Landroid/graphics/Rect;

    invoke-direct {v0, v13, v14, v15}, Lcom/yftech/settings/widget/wheelview/WheelView;->getTextX(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result v14

    int-to-float v14, v14

    iget v15, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->mBaselineOuterY:I

    int-to-float v15, v15

    iget-object v9, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->paintOuterText:Landroid/graphics/Paint;

    invoke-virtual {v7, v13, v14, v15, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 490
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 491
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 492
    iget v9, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->mFirstLineY:I

    sub-int/2addr v9, v2

    iget v13, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->measuredWidth:I

    iget v14, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemHeightCenter:F

    float-to-int v14, v14

    invoke-virtual {v7, v10, v9, v13, v14}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 493
    iget-object v9, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->paintCenterText:Landroid/graphics/Paint;

    iget-object v13, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->tempRect:Landroid/graphics/Rect;

    invoke-direct {v0, v12, v9, v13}, Lcom/yftech/settings/widget/wheelview/WheelView;->getTextX(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result v9

    int-to-float v9, v9

    iget v13, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->mBaselineCenterY:I

    int-to-float v13, v13

    iget-object v14, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->paintCenterText:Landroid/graphics/Paint;

    invoke-virtual {v7, v12, v9, v13, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 494
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_7

    .line 495
    :cond_d
    iget v9, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->mSecondLineY:I

    if-ge v2, v9, :cond_f

    iget v9, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->mSecondLineY:I

    if-le v4, v9, :cond_f

    .line 497
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 498
    iget v9, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->measuredWidth:I

    iget v13, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->mSecondLineY:I

    sub-int/2addr v13, v2

    invoke-virtual {v7, v10, v10, v9, v13}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 499
    iget-object v9, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->paintCenterText:Landroid/graphics/Paint;

    iget-object v13, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->tempRect:Landroid/graphics/Rect;

    invoke-direct {v0, v12, v9, v13}, Lcom/yftech/settings/widget/wheelview/WheelView;->getTextX(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result v9

    int-to-float v9, v9

    iget v13, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->mBaselineCenterY:I

    int-to-float v13, v13

    iget-object v14, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->paintCenterText:Landroid/graphics/Paint;

    invoke-virtual {v7, v12, v9, v13, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 500
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    const-string v9, "\u2103"

    .line 502
    invoke-virtual {v12, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_e

    const-string v9, "\u2103"

    const-string v13, ""

    .line 503
    invoke-virtual {v12, v9, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    .line 505
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 506
    iget v9, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->mSecondLineY:I

    sub-int/2addr v9, v2

    iget v13, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->measuredWidth:I

    iget v14, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemHeightCenter:F

    float-to-int v14, v14

    invoke-virtual {v7, v10, v9, v13, v14}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 507
    iget-object v9, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->paintOuterText:Landroid/graphics/Paint;

    iget-object v13, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->tempRect:Landroid/graphics/Rect;

    invoke-direct {v0, v12, v9, v13}, Lcom/yftech/settings/widget/wheelview/WheelView;->getTextX(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result v9

    int-to-float v9, v9

    iget v13, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->mBaselineOuterY:I

    sub-int v14, v4, v2

    add-int/2addr v13, v14

    int-to-float v13, v13

    iget v14, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemHeightOuter:F

    sub-float/2addr v13, v14

    iget-object v14, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->paintOuterText:Landroid/graphics/Paint;

    invoke-virtual {v7, v12, v9, v13, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 508
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_7

    .line 509
    :cond_f
    iget v9, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->mFirstLineY:I

    if-lt v2, v9, :cond_10

    iget v9, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->mSecondLineY:I

    if-gt v4, v9, :cond_10

    .line 511
    iget v9, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->measuredWidth:I

    iget v13, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemHeightCenter:F

    float-to-int v13, v13

    invoke-virtual {v7, v10, v10, v9, v13}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 512
    iget-object v9, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->paintCenterText:Landroid/graphics/Paint;

    iget-object v13, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->tempRect:Landroid/graphics/Rect;

    invoke-direct {v0, v12, v9, v13}, Lcom/yftech/settings/widget/wheelview/WheelView;->getTextX(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result v9

    int-to-float v9, v9

    iget v13, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->mBaselineCenterY:I

    int-to-float v13, v13

    iget-object v14, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->paintCenterText:Landroid/graphics/Paint;

    invoke-virtual {v7, v12, v9, v13, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_7

    :cond_10
    const-string v9, "\u2103"

    .line 515
    invoke-virtual {v12, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_11

    const-string v9, "\u2103"

    const-string v13, ""

    .line 516
    invoke-virtual {v12, v9, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    .line 518
    :cond_11
    iget v9, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->measuredWidth:I

    iget v13, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemHeightOuter:F

    float-to-int v13, v13

    invoke-virtual {v7, v10, v10, v9, v13}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 519
    iget-object v9, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->paintOuterText:Landroid/graphics/Paint;

    iget-object v13, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->tempRect:Landroid/graphics/Rect;

    invoke-direct {v0, v12, v9, v13}, Lcom/yftech/settings/widget/wheelview/WheelView;->getTextX(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result v9

    int-to-float v9, v9

    iget v13, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->mBaselineOuterY:I

    int-to-float v13, v13

    iget-object v14, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->paintOuterText:Landroid/graphics/Paint;

    invoke-virtual {v7, v12, v9, v13, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 522
    :goto_7
    iget v9, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->mFirstLineY:I

    if-lt v2, v9, :cond_12

    iget v9, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->mFirstLineY:I

    iget v12, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->mSecondLineY:I

    add-int/2addr v9, v12

    div-int/lit8 v9, v9, 0x2

    if-lt v2, v9, :cond_13

    :cond_12
    iget v2, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->mFirstLineY:I

    iget v9, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->mSecondLineY:I

    add-int/2addr v2, v9

    div-int/lit8 v2, v2, 0x2

    if-le v4, v2, :cond_14

    iget v2, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->mSecondLineY:I

    if-gt v4, v2, :cond_14

    .line 524
    :cond_13
    iput v6, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->selectedItem:I

    .line 526
    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v1, 0x1

    .line 529
    invoke-direct {v0, v2, v11}, Lcom/yftech/settings/widget/wheelview/WheelView;->getTranslateY(II)I

    move-result v2

    move/from16 v16, v4

    move v4, v2

    move/from16 v2, v16

    goto/16 :goto_a

    .line 531
    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v9, v3

    .line 532
    invoke-virtual {v7, v9, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 533
    iget v13, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->mFirstLineX:I

    if-ge v3, v13, :cond_17

    iget v13, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->mFirstLineX:I

    if-le v5, v13, :cond_17

    const-string v13, "\u2103"

    .line 536
    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_16

    const-string v13, "\u2103"

    const-string v14, ""

    .line 537
    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    goto :goto_8

    :cond_16
    move-object v13, v12

    .line 539
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 540
    iget v14, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->mFirstLineX:I

    sub-int/2addr v14, v3

    iget v15, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->measuredHeight:I

    invoke-virtual {v7, v10, v10, v14, v15}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 542
    iget-object v14, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->paintOuterText:Landroid/graphics/Paint;

    iget-object v15, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->tempRect:Landroid/graphics/Rect;

    invoke-direct {v0, v13, v14, v15}, Lcom/yftech/settings/widget/wheelview/WheelView;->getOuterTextX(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result v14

    int-to-float v14, v14

    iget v15, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->mBaselineOuterX:I

    int-to-float v15, v15

    iget-object v8, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->paintOuterText:Landroid/graphics/Paint;

    invoke-virtual {v7, v13, v14, v15, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 543
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 545
    iget v8, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemWidthCenter:F

    iget v13, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemWidthOuter:F

    sub-float/2addr v8, v13

    cmpl-float v8, v9, v8

    if-lez v8, :cond_1c

    .line 546
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 547
    iget v8, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->mFirstLineX:I

    sub-int/2addr v8, v3

    iget v9, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemWidthCenter:F

    float-to-int v9, v9

    iget v13, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->measuredHeight:I

    invoke-virtual {v7, v8, v10, v9, v13}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 548
    iget-object v8, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->paintCenterText:Landroid/graphics/Paint;

    iget-object v9, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->tempRect:Landroid/graphics/Rect;

    invoke-direct {v0, v12, v8, v9}, Lcom/yftech/settings/widget/wheelview/WheelView;->getCenterTextX(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result v8

    int-to-float v8, v8

    iget v9, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->mBaselineCenterX:I

    int-to-float v9, v9

    iget-object v13, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->paintCenterText:Landroid/graphics/Paint;

    invoke-virtual {v7, v12, v8, v9, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 549
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_9

    .line 551
    :cond_17
    iget v8, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->mSecondLineX:I

    if-ge v3, v8, :cond_19

    iget v8, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->mSecondLineX:I

    if-le v5, v8, :cond_19

    .line 553
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 554
    iget v8, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->mSecondLineX:I

    sub-int/2addr v8, v3

    iget v9, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->measuredHeight:I

    invoke-virtual {v7, v10, v10, v8, v9}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 555
    iget-object v8, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->paintCenterText:Landroid/graphics/Paint;

    iget-object v9, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->tempRect:Landroid/graphics/Rect;

    invoke-direct {v0, v12, v8, v9}, Lcom/yftech/settings/widget/wheelview/WheelView;->getCenterTextX(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result v8

    int-to-float v8, v8

    iget v9, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->mBaselineCenterX:I

    int-to-float v9, v9

    iget-object v13, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->paintCenterText:Landroid/graphics/Paint;

    invoke-virtual {v7, v12, v8, v9, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 556
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    const-string v8, "\u2103"

    .line 558
    invoke-virtual {v12, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_18

    const-string v8, "\u2103"

    const-string v9, ""

    .line 559
    invoke-virtual {v12, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    .line 561
    :cond_18
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 562
    iget v8, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->mSecondLineX:I

    sub-int/2addr v8, v3

    iget v9, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemWidthCenter:F

    float-to-int v9, v9

    iget v13, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->measuredHeight:I

    invoke-virtual {v7, v8, v10, v9, v13}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 563
    iget-object v8, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->paintOuterText:Landroid/graphics/Paint;

    iget-object v9, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->tempRect:Landroid/graphics/Rect;

    invoke-direct {v0, v12, v8, v9}, Lcom/yftech/settings/widget/wheelview/WheelView;->getOuterTextX(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result v8

    int-to-float v8, v8

    iget v9, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->mBaselineOuterX:I

    int-to-float v9, v9

    iget-object v13, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->paintOuterText:Landroid/graphics/Paint;

    invoke-virtual {v7, v12, v8, v9, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 564
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_9

    .line 565
    :cond_19
    iget v8, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->mFirstLineX:I

    if-lt v3, v8, :cond_1a

    iget v8, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->mSecondLineX:I

    if-gt v5, v8, :cond_1a

    .line 567
    iget v8, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemWidthCenter:F

    float-to-int v8, v8

    iget v9, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->measuredHeight:I

    invoke-virtual {v7, v10, v10, v8, v9}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 568
    iget-object v8, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->paintCenterText:Landroid/graphics/Paint;

    iget-object v9, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->tempRect:Landroid/graphics/Rect;

    invoke-direct {v0, v12, v8, v9}, Lcom/yftech/settings/widget/wheelview/WheelView;->getCenterTextX(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result v8

    int-to-float v8, v8

    iget v9, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->mBaselineCenterX:I

    int-to-float v9, v9

    iget-object v13, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->paintCenterText:Landroid/graphics/Paint;

    invoke-virtual {v7, v12, v8, v9, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_9

    :cond_1a
    const-string v8, "\u2103"

    .line 571
    invoke-virtual {v12, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1b

    const-string v8, "\u2103"

    const-string v9, ""

    .line 572
    invoke-virtual {v12, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    .line 574
    :cond_1b
    iget v8, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemWidthOuter:F

    float-to-int v8, v8

    iget v9, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->measuredHeight:I

    invoke-virtual {v7, v10, v10, v8, v9}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 575
    iget-object v8, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->paintOuterText:Landroid/graphics/Paint;

    iget-object v9, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->tempRect:Landroid/graphics/Rect;

    invoke-direct {v0, v12, v8, v9}, Lcom/yftech/settings/widget/wheelview/WheelView;->getOuterTextX(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result v8

    int-to-float v8, v8

    iget v9, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->mBaselineOuterX:I

    int-to-float v9, v9

    iget-object v13, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->paintOuterText:Landroid/graphics/Paint;

    invoke-virtual {v7, v12, v8, v9, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 578
    :cond_1c
    :goto_9
    iget v8, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->mFirstLineX:I

    if-lt v3, v8, :cond_1d

    iget v8, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->mFirstLineX:I

    iget v9, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->mSecondLineX:I

    add-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    if-lt v3, v8, :cond_1e

    :cond_1d
    iget v3, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->mFirstLineX:I

    iget v8, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->mSecondLineX:I

    add-int/2addr v3, v8

    div-int/lit8 v3, v3, 0x2

    if-le v5, v3, :cond_1f

    iget v3, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->mSecondLineX:I

    if-gt v5, v3, :cond_1f

    .line 580
    :cond_1e
    iput v6, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->selectedItem:I

    .line 582
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v1, 0x1

    .line 585
    invoke-direct {v0, v3, v11}, Lcom/yftech/settings/widget/wheelview/WheelView;->getTranslateX(II)I

    move-result v3

    move/from16 v16, v5

    move v5, v3

    move/from16 v3, v16

    :goto_a
    const/4 v8, 0x0

    const/4 v9, 0x1

    goto/16 :goto_4

    :cond_20
    return-void
.end method

.method protected final onItemSelected()V
    .locals 3

    .line 393
    iget-object v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->onItemSelectedListener:Lcom/yftech/settings/widget/wheelview/WheelView$OnItemSelectedListener;

    if-eqz v0, :cond_0

    .line 394
    new-instance v0, Lcom/yftech/settings/widget/wheelview/OnItemSelectedRunnable;

    invoke-direct {v0, p0}, Lcom/yftech/settings/widget/wheelview/OnItemSelectedRunnable;-><init>(Lcom/yftech/settings/widget/wheelview/WheelView;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Lcom/yftech/settings/widget/wheelview/WheelView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 678
    iput p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->widthMeasureSpec:I

    .line 679
    iput p2, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->heightMeasureSpec:I

    .line 680
    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/widget/wheelview/WheelView;->remeasure(II)V

    .line 681
    iget p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->measuredWidth:I

    iget p2, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->measuredHeight:I

    invoke-virtual {p0, p1, p2}, Lcom/yftech/settings/widget/wheelview/WheelView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 686
    invoke-virtual {p0}, Lcom/yftech/settings/widget/wheelview/WheelView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "WheelView"

    const-string v0, "onTouchEvent: isEnabled() = false"

    .line 687
    invoke-direct {p0, p1, v0}, Lcom/yftech/settings/widget/wheelview/WheelView;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 691
    :cond_0
    iget-object v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 692
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_10

    const/4 v3, 0x2

    if-eq v1, v3, :cond_c

    if-nez v0, :cond_11

    .line 727
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 729
    iget v1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->radius:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iget v4, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->radius:I

    int-to-float v4, v4

    div-float/2addr v1, v4

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->acos(D)D

    move-result-wide v4

    iget v1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->radius:I

    int-to-double v6, v1

    mul-double/2addr v4, v6

    .line 731
    iget v1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemHeightCenter:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v1, v6

    float-to-double v7, v1

    add-double/2addr v4, v7

    iget v1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemHeightCenter:F

    float-to-double v7, v1

    div-double/2addr v4, v7

    double-to-int v1, v4

    .line 733
    iget v4, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->totalScrollY:I

    int-to-float v4, v4

    iget v5, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemHeightOuter:F

    rem-float/2addr v4, v5

    iget v5, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemHeightOuter:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemHeightOuter:F

    rem-float/2addr v4, v5

    .line 734
    iget v5, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemsVisible:I

    div-int/2addr v5, v3

    sub-int/2addr v1, v5

    int-to-float v1, v1

    iget v5, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemHeightCenter:F

    mul-float/2addr v1, v5

    sub-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mOffsetY:I

    .line 738
    iget v1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mFirstLineY:I

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    const/high16 v5, 0x3f800000    # 1.0f

    if-gtz v1, :cond_1

    .line 739
    iget v1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemHeightOuter:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0

    .line 740
    :cond_1
    iget v1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mSecondLineY:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_2

    .line 741
    iget v1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemHeightCenter:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemHeightOuter:F

    div-float/2addr v0, v1

    add-float/2addr v0, v5

    float-to-int v0, v0

    .line 742
    iget v1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemsVisible:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_3

    .line 743
    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemsVisible:I

    sub-int/2addr v0, v2

    goto :goto_0

    .line 746
    :cond_2
    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemsVisible:I

    div-int/2addr v0, v3

    .line 749
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 751
    iget v1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->radius:I

    int-to-float v1, v1

    sub-float/2addr v1, p1

    iget v7, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->radius:I

    int-to-float v7, v7

    div-float/2addr v1, v7

    float-to-double v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->acos(D)D

    move-result-wide v7

    iget v1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->radius:I

    int-to-double v9, v1

    mul-double/2addr v7, v9

    .line 753
    iget v1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemWidthCenter:F

    div-float/2addr v1, v6

    float-to-double v9, v1

    add-double/2addr v7, v9

    iget v1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemWidthCenter:F

    float-to-double v9, v1

    div-double/2addr v7, v9

    double-to-int v1, v7

    .line 755
    iget v6, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->totalScrollX:I

    int-to-float v6, v6

    iget v7, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemWidthOuter:F

    rem-float/2addr v6, v7

    iget v7, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemWidthOuter:F

    add-float/2addr v6, v7

    iget v7, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemWidthOuter:F

    rem-float/2addr v6, v7

    .line 756
    iget v7, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemsVisible:I

    div-int/2addr v7, v3

    sub-int/2addr v1, v7

    int-to-float v1, v1

    iget v7, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemWidthCenter:F

    mul-float/2addr v1, v7

    sub-float/2addr v1, v6

    float-to-int v1, v1

    iput v1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mOffsetX:I

    .line 760
    iget v1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mFirstLineX:I

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_4

    .line 761
    iget v1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemWidthOuter:F

    div-float/2addr p1, v1

    float-to-int p1, p1

    goto :goto_1

    .line 762
    :cond_4
    iget v1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mSecondLineX:I

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_5

    .line 763
    iget v1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemWidthCenter:F

    sub-float/2addr p1, v1

    float-to-int p1, p1

    int-to-float p1, p1

    iget v1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemWidthOuter:F

    div-float/2addr p1, v1

    add-float/2addr p1, v5

    float-to-int p1, p1

    .line 764
    iget v1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemsVisible:I

    sub-int/2addr v1, v2

    if-le p1, v1, :cond_6

    .line 765
    iget p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemsVisible:I

    sub-int/2addr p1, v2

    goto :goto_1

    .line 768
    :cond_5
    iget p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemsVisible:I

    div-int/2addr p1, v3

    .line 771
    :cond_6
    :goto_1
    iget v1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemsVisible:I

    div-int/2addr v1, v3

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemHeightOuter:F

    mul-float/2addr v0, v1

    sub-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mOffsetY:I

    .line 772
    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemsVisible:I

    div-int/2addr v0, v3

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemWidthOuter:F

    mul-float/2addr p1, v0

    sub-float/2addr p1, v6

    float-to-int p1, p1

    iput p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mOffsetX:I

    .line 774
    iget-boolean p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->isLoop:Z

    if-nez p1, :cond_a

    .line 775
    iget p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->totalScrollY:I

    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mOffsetY:I

    add-int/2addr p1, v0

    int-to-float p1, p1

    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mBottom:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_7

    .line 776
    iget p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mBottom:F

    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->totalScrollY:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mOffsetY:I

    .line 779
    :cond_7
    iget p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->totalScrollY:I

    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mOffsetY:I

    add-int/2addr p1, v0

    int-to-float p1, p1

    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mTop:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_8

    .line 780
    iget p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mTop:F

    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->totalScrollY:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mOffsetY:I

    .line 783
    :cond_8
    iget p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->totalScrollX:I

    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mOffsetX:I

    add-int/2addr p1, v0

    int-to-float p1, p1

    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mRight:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_9

    .line 784
    iget p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mRight:F

    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->totalScrollX:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mOffsetX:I

    .line 787
    :cond_9
    iget p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->totalScrollX:I

    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mOffsetX:I

    add-int/2addr p1, v0

    int-to-float p1, p1

    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mLeft:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_a

    .line 788
    iget p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mLeft:F

    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->totalScrollX:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mOffsetX:I

    .line 793
    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->startTime:J

    sub-long/2addr v0, v3

    const-wide/16 v3, 0x78

    cmp-long p1, v0, v3

    if-lez p1, :cond_b

    .line 795
    sget-object p1, Lcom/yftech/settings/widget/wheelview/WheelView$ACTION;->DAGGLE:Lcom/yftech/settings/widget/wheelview/WheelView$ACTION;

    invoke-virtual {p0, p1}, Lcom/yftech/settings/widget/wheelview/WheelView;->smoothScroll(Lcom/yftech/settings/widget/wheelview/WheelView$ACTION;)V

    goto/16 :goto_3

    .line 798
    :cond_b
    sget-object p1, Lcom/yftech/settings/widget/wheelview/WheelView$ACTION;->CLICK:Lcom/yftech/settings/widget/wheelview/WheelView$ACTION;

    invoke-virtual {p0, p1}, Lcom/yftech/settings/widget/wheelview/WheelView;->smoothScroll(Lcom/yftech/settings/widget/wheelview/WheelView$ACTION;)V

    goto/16 :goto_3

    .line 700
    :cond_c
    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mPreviousY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    sub-float/2addr v0, v1

    .line 701
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mPreviousY:F

    .line 702
    iget v1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->totalScrollY:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->totalScrollY:I

    .line 704
    iget-boolean v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->isLoop:Z

    if-nez v0, :cond_e

    .line 705
    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->totalScrollY:I

    int-to-float v0, v0

    iget v1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mTop:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_d

    .line 706
    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mTop:F

    float-to-int v0, v0

    iput v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->totalScrollY:I

    goto :goto_2

    .line 707
    :cond_d
    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->totalScrollY:I

    int-to-float v0, v0

    iget v1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mBottom:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_e

    .line 708
    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mBottom:F

    float-to-int v0, v0

    iput v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->totalScrollY:I

    .line 712
    :cond_e
    :goto_2
    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mPreviousX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    sub-float/2addr v0, v1

    .line 713
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mPreviousX:F

    .line 714
    iget p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->totalScrollX:I

    int-to-float p1, p1

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->totalScrollX:I

    .line 716
    iget-boolean p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->isLoop:Z

    if-nez p1, :cond_11

    .line 717
    iget p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->totalScrollX:I

    int-to-float p1, p1

    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mLeft:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_f

    .line 718
    iget p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mLeft:F

    float-to-int p1, p1

    iput p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->totalScrollX:I

    goto :goto_3

    .line 719
    :cond_f
    iget p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->totalScrollX:I

    int-to-float p1, p1

    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mRight:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_11

    .line 720
    iget p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mRight:F

    float-to-int p1, p1

    iput p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->totalScrollX:I

    goto :goto_3

    .line 694
    :cond_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->startTime:J

    .line 695
    invoke-virtual {p0}, Lcom/yftech/settings/widget/wheelview/WheelView;->cancelFuture()V

    .line 696
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mPreviousY:F

    .line 697
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mPreviousX:F

    .line 804
    :cond_11
    :goto_3
    invoke-virtual {p0}, Lcom/yftech/settings/widget/wheelview/WheelView;->invalidate()V

    return v2
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 183
    iput v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->totalScrollY:I

    .line 184
    iput v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->totalScrollX:I

    return-void
.end method

.method protected final scrollBy(F)V
    .locals 7

    .line 333
    invoke-virtual {p0}, Lcom/yftech/settings/widget/wheelview/WheelView;->cancelFuture()V

    .line 336
    iget-object v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/yftech/settings/widget/wheelview/InertiaTimerTask;

    invoke-direct {v1, p0, p1}, Lcom/yftech/settings/widget/wheelview/InertiaTimerTask;-><init>(Lcom/yftech/settings/widget/wheelview/WheelView;F)V

    const/16 p1, 0xf

    int-to-long v4, p1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x0

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public final setInitPosition(I)V
    .locals 1

    if-gez p1, :cond_0

    const/4 v0, 0x0

    .line 352
    iput v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->initPosition:I

    goto :goto_0

    .line 354
    :cond_0
    iput p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->initPosition:I

    .line 356
    :goto_0
    iput p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->oldIndex:I

    .line 357
    iput p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->selectedItem:I

    return-void
.end method

.method public final setIsLoop(Z)V
    .locals 0

    .line 347
    iput-boolean p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->isLoop:Z

    return-void
.end method

.method public final setItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 365
    invoke-virtual {p0}, Lcom/yftech/settings/widget/wheelview/WheelView;->reset()V

    if-nez p1, :cond_0

    const-string p1, "--"

    .line 367
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 368
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->items:Ljava/util/List;

    goto :goto_0

    .line 370
    :cond_0
    iput-object p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->items:Ljava/util/List;

    .line 373
    :goto_0
    iget p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->widthMeasureSpec:I

    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->heightMeasureSpec:I

    invoke-direct {p0, p1, v0}, Lcom/yftech/settings/widget/wheelview/WheelView;->remeasure(II)V

    .line 374
    invoke-virtual {p0}, Lcom/yftech/settings/widget/wheelview/WheelView;->invalidate()V

    return-void
.end method

.method public final setItems(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 378
    invoke-virtual {p0, p2}, Lcom/yftech/settings/widget/wheelview/WheelView;->setInitPosition(I)V

    .line 379
    invoke-virtual {p0, p1}, Lcom/yftech/settings/widget/wheelview/WheelView;->setItems(Ljava/util/List;)V

    return-void
.end method

.method public final setOnItemSelectedListener(Lcom/yftech/settings/widget/wheelview/WheelView$OnItemSelectedListener;)V
    .locals 0

    .line 361
    iput-object p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->onItemSelectedListener:Lcom/yftech/settings/widget/wheelview/WheelView$OnItemSelectedListener;

    return-void
.end method

.method public setScrollOrientation(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    return-void

    .line 817
    :cond_0
    iput p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mScrollOrientation:I

    return-void
.end method

.method public setWheelGravity(I)V
    .locals 0

    .line 58
    iput p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mWheelGravity:I

    return-void
.end method

.method smoothScroll(Lcom/yftech/settings/widget/wheelview/WheelView$ACTION;)V
    .locals 7

    const-string v0, "WheelView"

    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "smoothScroll: measuredWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->measuredWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", measuredHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->measuredHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/widget/wheelview/WheelView;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 309
    invoke-virtual {p0, v0}, Lcom/yftech/settings/widget/wheelview/WheelView;->playSoundEffect(I)V

    .line 310
    invoke-virtual {p0}, Lcom/yftech/settings/widget/wheelview/WheelView;->cancelFuture()V

    .line 311
    sget-object v0, Lcom/yftech/settings/widget/wheelview/WheelView$ACTION;->FLING:Lcom/yftech/settings/widget/wheelview/WheelView$ACTION;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/yftech/settings/widget/wheelview/WheelView$ACTION;->DAGGLE:Lcom/yftech/settings/widget/wheelview/WheelView$ACTION;

    if-ne p1, v0, :cond_3

    .line 312
    :cond_0
    iget p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->totalScrollY:I

    int-to-float p1, p1

    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemHeightOuter:F

    rem-float/2addr p1, v0

    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemHeightOuter:F

    add-float/2addr p1, v0

    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemHeightOuter:F

    rem-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mOffsetY:I

    .line 313
    iget p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mOffsetY:I

    int-to-float p1, p1

    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemHeightOuter:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    .line 314
    iget p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemHeightOuter:F

    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mOffsetY:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mOffsetY:I

    goto :goto_0

    .line 316
    :cond_1
    iget p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mOffsetY:I

    neg-int p1, p1

    iput p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mOffsetY:I

    .line 318
    :goto_0
    iget p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->totalScrollX:I

    int-to-float p1, p1

    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemWidthOuter:F

    rem-float/2addr p1, v0

    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemWidthOuter:F

    add-float/2addr p1, v0

    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemWidthOuter:F

    rem-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mOffsetX:I

    .line 319
    iget p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mOffsetX:I

    int-to-float p1, p1

    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemWidthOuter:F

    div-float/2addr v0, v1

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    .line 320
    iget p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->itemWidthOuter:F

    iget v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mOffsetX:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mOffsetX:I

    goto :goto_1

    .line 322
    :cond_2
    iget p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mOffsetX:I

    neg-int p1, p1

    iput p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mOffsetX:I

    .line 325
    :cond_3
    :goto_1
    iget p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mScrollOrientation:I

    if-nez p1, :cond_4

    .line 326
    iget-object v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/yftech/settings/widget/wheelview/SmoothScrollTimerTask;

    iget p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mOffsetY:I

    invoke-direct {v1, p0, p1}, Lcom/yftech/settings/widget/wheelview/SmoothScrollTimerTask;-><init>(Lcom/yftech/settings/widget/wheelview/WheelView;I)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_2

    .line 328
    :cond_4
    iget-object v0, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/yftech/settings/widget/wheelview/SmoothScrollTimerTask;

    iget p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mOffsetX:I

    invoke-direct {v1, p0, p1}, Lcom/yftech/settings/widget/wheelview/SmoothScrollTimerTask;-><init>(Lcom/yftech/settings/widget/wheelview/WheelView;I)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/settings/widget/wheelview/WheelView;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    :goto_2
    return-void
.end method
