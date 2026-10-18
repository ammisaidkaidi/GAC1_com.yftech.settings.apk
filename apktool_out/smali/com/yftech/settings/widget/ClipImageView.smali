.class public Lcom/yftech/settings/widget/ClipImageView;
.super Landroid/widget/ImageView;
.source "ClipImageView.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/settings/widget/ClipImageView$AutoScaleRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ClipImageView"


# instance fields
.field private isAutoScale:Z

.field private isCanDrag:Z

.field private lastPointerCount:I

.field private mAspectX:I

.field private mAspectY:I

.field private mClipBorder:Landroid/graphics/Rect;

.field private final mClipPadding:I

.field private mDrawCircleFlag:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mInitScale:F

.field private mLastX:F

.field private mLastY:F

.field private final mMaskColor:I

.field private final mMatrixValues:[F

.field private mMaxOutputWidth:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mRoundCorner:F

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private final mScaleMatrix:Landroid/graphics/Matrix;

.field private mScaleMax:F

.field private mScaleMin:F

.field private mTipText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1, v0}, Lcom/yftech/settings/widget/ClipImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 88
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x40800000    # 4.0f

    .line 46
    iput v0, p0, Lcom/yftech/settings/widget/ClipImageView;->mScaleMax:F

    const/high16 v0, 0x40000000    # 2.0f

    .line 47
    iput v0, p0, Lcom/yftech/settings/widget/ClipImageView;->mScaleMin:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 52
    iput v0, p0, Lcom/yftech/settings/widget/ClipImageView;->mInitScale:F

    const/16 v0, 0x9

    .line 57
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/yftech/settings/widget/ClipImageView;->mMatrixValues:[F

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/yftech/settings/widget/ClipImageView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 63
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/yftech/settings/widget/ClipImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    .line 77
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/yftech/settings/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 78
    iput v0, p0, Lcom/yftech/settings/widget/ClipImageView;->mMaxOutputWidth:I

    .line 90
    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v1}, Lcom/yftech/settings/widget/ClipImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 91
    new-instance v1, Landroid/view/GestureDetector;

    new-instance v2, Lcom/yftech/settings/widget/ClipImageView$1;

    invoke-direct {v2, p0}, Lcom/yftech/settings/widget/ClipImageView$1;-><init>(Lcom/yftech/settings/widget/ClipImageView;)V

    invoke-direct {v1, p1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/yftech/settings/widget/ClipImageView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 110
    new-instance v1, Landroid/view/ScaleGestureDetector;

    invoke-direct {v1, p1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lcom/yftech/settings/widget/ClipImageView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 111
    invoke-virtual {p0, p0}, Lcom/yftech/settings/widget/ClipImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 113
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/yftech/settings/widget/ClipImageView;->mPaint:Landroid/graphics/Paint;

    .line 114
    iget-object v1, p0, Lcom/yftech/settings/widget/ClipImageView;->mPaint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 116
    sget-object v1, Lcom/yftech/settings/R$styleable;->ClipImageView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x7

    .line 117
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/settings/widget/ClipImageView;->mAspectX:I

    const/4 p2, 0x3

    .line 118
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/settings/widget/ClipImageView;->mAspectY:I

    .line 119
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/settings/widget/ClipImageView;->mClipPadding:I

    const/4 p2, 0x5

    .line 120
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/yftech/settings/widget/ClipImageView;->mTipText:Ljava/lang/String;

    const/4 p2, 0x4

    const/high16 v1, -0x4e000000

    .line 121
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/settings/widget/ClipImageView;->mMaskColor:I

    .line 122
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/yftech/settings/widget/ClipImageView;->mDrawCircleFlag:Z

    const/4 p2, 0x2

    const/4 v0, 0x0

    .line 123
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/yftech/settings/widget/ClipImageView;->mRoundCorner:F

    const/4 p2, 0x6

    const/16 v0, 0x18

    .line 124
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    .line 125
    iget-object v0, p0, Lcom/yftech/settings/widget/ClipImageView;->mPaint:Landroid/graphics/Paint;

    int-to-float p2, p2

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 126
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 128
    iget-object p0, p0, Lcom/yftech/settings/widget/ClipImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/settings/widget/ClipImageView;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcom/yftech/settings/widget/ClipImageView;->isAutoScale:Z

    return p0
.end method

.method static synthetic access$002(Lcom/yftech/settings/widget/ClipImageView;Z)Z
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/yftech/settings/widget/ClipImageView;->isAutoScale:Z

    return p1
.end method

.method static synthetic access$100(Lcom/yftech/settings/widget/ClipImageView;)F
    .locals 0

    .line 33
    iget p0, p0, Lcom/yftech/settings/widget/ClipImageView;->mScaleMin:F

    return p0
.end method

.method static synthetic access$200(Lcom/yftech/settings/widget/ClipImageView;)F
    .locals 0

    .line 33
    iget p0, p0, Lcom/yftech/settings/widget/ClipImageView;->mInitScale:F

    return p0
.end method

.method static synthetic access$300(Lcom/yftech/settings/widget/ClipImageView;)Landroid/graphics/Matrix;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/yftech/settings/widget/ClipImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic access$400(Lcom/yftech/settings/widget/ClipImageView;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/yftech/settings/widget/ClipImageView;->checkBorder()V

    return-void
.end method

.method private checkBorder()V
    .locals 5

    .line 480
    invoke-direct {p0}, Lcom/yftech/settings/widget/ClipImageView;->getMatrixRectF()Landroid/graphics/RectF;

    move-result-object v0

    .line 485
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/yftech/settings/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    const/4 v2, 0x0

    if-ltz v1, :cond_1

    .line 486
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/yftech/settings/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_0

    .line 487
    iget v1, v0, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    iget-object v3, p0, Lcom/yftech/settings/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 490
    :goto_0
    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/yftech/settings/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    .line 491
    iget-object v1, p0, Lcom/yftech/settings/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v3, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 495
    :cond_2
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget-object v4, p0, Lcom/yftech/settings/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_4

    .line 496
    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/yftech/settings/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    .line 497
    iget v2, v0, Landroid/graphics/RectF;->top:F

    neg-float v2, v2

    iget-object v3, p0, Lcom/yftech/settings/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 500
    :cond_3
    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/yftech/settings/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4

    .line 501
    iget-object v2, p0, Lcom/yftech/settings/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v0

    .line 505
    :cond_4
    iget-object p0, p0, Lcom/yftech/settings/widget/ClipImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method private getMatrixRectF()Landroid/graphics/RectF;
    .locals 4

    .line 226
    iget-object v0, p0, Lcom/yftech/settings/widget/ClipImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    .line 227
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 228
    invoke-virtual {p0}, Lcom/yftech/settings/widget/ClipImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 230
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    int-to-float p0, p0

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v2, p0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 231
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_0
    return-object v1
.end method

.method private isCanDrag(FF)Z
    .locals 2

    mul-float/2addr p1, p1

    mul-float/2addr p2, p2

    add-float/2addr p1, p2

    float-to-double p0, p1

    .line 516
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmpl-double p0, p0, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private postResetImageMatrix()V
    .locals 1

    .line 375
    invoke-virtual {p0}, Lcom/yftech/settings/widget/ClipImageView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    invoke-virtual {p0}, Lcom/yftech/settings/widget/ClipImageView;->resetImageMatrix()V

    goto :goto_0

    .line 378
    :cond_0
    new-instance v0, Lcom/yftech/settings/widget/ClipImageView$2;

    invoke-direct {v0, p0}, Lcom/yftech/settings/widget/ClipImageView$2;-><init>(Lcom/yftech/settings/widget/ClipImageView;)V

    invoke-virtual {p0, v0}, Lcom/yftech/settings/widget/ClipImageView;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private updateBorder()V
    .locals 4

    .line 329
    invoke-virtual {p0}, Lcom/yftech/settings/widget/ClipImageView;->getWidth()I

    move-result v0

    .line 330
    invoke-virtual {p0}, Lcom/yftech/settings/widget/ClipImageView;->getHeight()I

    move-result v1

    .line 331
    iget-object v2, p0, Lcom/yftech/settings/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v3, p0, Lcom/yftech/settings/widget/ClipImageView;->mClipPadding:I

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 332
    iget-object v2, p0, Lcom/yftech/settings/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v3, p0, Lcom/yftech/settings/widget/ClipImageView;->mClipPadding:I

    sub-int/2addr v0, v3

    iput v0, v2, Landroid/graphics/Rect;->right:I

    .line 333
    iget-object v0, p0, Lcom/yftech/settings/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v2, p0, Lcom/yftech/settings/widget/ClipImageView;->mAspectY:I

    mul-int/2addr v0, v2

    iget v2, p0, Lcom/yftech/settings/widget/ClipImageView;->mAspectX:I

    div-int/2addr v0, v2

    .line 334
    iget-boolean v2, p0, Lcom/yftech/settings/widget/ClipImageView;->mDrawCircleFlag:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 335
    iget-object v0, p0, Lcom/yftech/settings/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    mul-int/2addr v0, v3

    div-int/2addr v0, v3

    .line 336
    iget-object v2, p0, Lcom/yftech/settings/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    iput v1, v2, Landroid/graphics/Rect;->top:I

    .line 337
    iget-object v1, p0, Lcom/yftech/settings/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/yftech/settings/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr p0, v0

    iput p0, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 339
    :cond_0
    iget-object v2, p0, Lcom/yftech/settings/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    iput v1, v2, Landroid/graphics/Rect;->top:I

    .line 340
    iget-object v1, p0, Lcom/yftech/settings/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/yftech/settings/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr p0, v0

    iput p0, v1, Landroid/graphics/Rect;->bottom:I

    :goto_0
    return-void
.end method


# virtual methods
.method public clip()Landroid/graphics/Bitmap;
    .locals 12

    const/4 v0, 0x0

    .line 435
    :try_start_0
    invoke-virtual {p0}, Lcom/yftech/settings/widget/ClipImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 436
    move-object v2, v1

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_0

    .line 438
    sget-object p0, Lcom/yftech/settings/widget/ClipImageView;->TAG:Ljava/lang/String;

    const-string v1, "clip: null!!!!!"

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    const/16 v2, 0x9

    .line 441
    new-array v2, v2, [F

    .line 442
    iget-object v4, p0, Lcom/yftech/settings/widget/ClipImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v2}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v4, 0x0

    .line 443
    aget v4, v2, v4

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v4, v1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v4, v1

    const/4 v1, 0x2

    .line 444
    aget v1, v2, v1

    const/4 v5, 0x5

    .line 445
    aget v2, v2, v5

    neg-float v1, v1

    .line 447
    iget-object v5, p0, Lcom/yftech/settings/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    add-float/2addr v1, v5

    div-float/2addr v1, v4

    neg-float v2, v2

    .line 448
    iget-object v5, p0, Lcom/yftech/settings/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    add-float/2addr v5, v2

    div-float/2addr v5, v4

    .line 449
    iget-object v6, p0, Lcom/yftech/settings/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v4

    .line 450
    iget-object v7, p0, Lcom/yftech/settings/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v4

    .line 453
    iget v8, p0, Lcom/yftech/settings/widget/ClipImageView;->mMaxOutputWidth:I

    if-lez v8, :cond_1

    iget v8, p0, Lcom/yftech/settings/widget/ClipImageView;->mMaxOutputWidth:I

    int-to-float v8, v8

    cmpl-float v8, v6, v8

    if-lez v8, :cond_1

    .line 454
    iget v8, p0, Lcom/yftech/settings/widget/ClipImageView;->mMaxOutputWidth:I

    int-to-float v8, v8

    div-float/2addr v8, v6

    .line 455
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 456
    invoke-virtual {v9, v8, v8}, Landroid/graphics/Matrix;->setScale(FF)V

    move-object v8, v9

    goto :goto_0

    :cond_1
    move-object v8, v0

    :goto_0
    const-string v9, "weichangjian"

    .line 458
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "clip: -transY = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " mClipBorder.top = "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yftech/settings/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " scale = "

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " cropY = "

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v9, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    float-to-int v4, v1

    float-to-int v5, v5

    float-to-int v6, v6

    float-to-int v7, v7

    const/4 v9, 0x0

    .line 459
    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 463
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public drawRectangleOrCircle(Landroid/graphics/Canvas;)V
    .locals 10

    .line 538
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 539
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 540
    new-instance v8, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v8, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 541
    new-instance v9, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    const/4 v1, 0x0

    .line 542
    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 543
    invoke-virtual {v7}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {v7}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, p0, Lcom/yftech/settings/widget/ClipImageView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 544
    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 545
    iget-boolean v1, p0, Lcom/yftech/settings/widget/ClipImageView;->mDrawCircleFlag:Z

    if-eqz v1, :cond_0

    .line 546
    iget-object v1, p0, Lcom/yftech/settings/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/yftech/settings/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 547
    iget-object v2, p0, Lcom/yftech/settings/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v4, p0, Lcom/yftech/settings/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    add-float/2addr v2, v4

    .line 548
    iget-object p0, p0, Lcom/yftech/settings/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v3

    .line 549
    invoke-virtual {v7, v1, v2, p0, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 551
    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/yftech/settings/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/yftech/settings/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/yftech/settings/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/yftech/settings/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 552
    iget v2, p0, Lcom/yftech/settings/widget/ClipImageView;->mRoundCorner:F

    iget p0, p0, Lcom/yftech/settings/widget/ClipImageView;->mRoundCorner:F

    invoke-virtual {v7, v1, v2, p0, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_0
    const/4 p0, 0x0

    const/4 v1, 0x0

    .line 554
    invoke-virtual {p1, v0, v1, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getClipBorder()Landroid/graphics/Rect;
    .locals 0

    .line 520
    iget-object p0, p0, Lcom/yftech/settings/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getClipMatrixValues()[F
    .locals 1

    const/16 v0, 0x9

    .line 528
    new-array v0, v0, [F

    .line 529
    iget-object p0, p0, Lcom/yftech/settings/widget/ClipImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->getValues([F)V

    return-object v0
.end method

.method public final getScale()F
    .locals 2

    .line 318
    iget-object v0, p0, Lcom/yftech/settings/widget/ClipImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/yftech/settings/widget/ClipImageView;->mMatrixValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 319
    iget-object p0, p0, Lcom/yftech/settings/widget/ClipImageView;->mMatrixValues:[F

    const/4 v0, 0x0

    aget p0, p0, v0

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 559
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 560
    invoke-virtual {p0}, Lcom/yftech/settings/widget/ClipImageView;->getWidth()I

    move-result v0

    .line 561
    invoke-virtual {p0}, Lcom/yftech/settings/widget/ClipImageView;->getHeight()I

    .line 563
    iget-object v1, p0, Lcom/yftech/settings/widget/ClipImageView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/yftech/settings/widget/ClipImageView;->mMaskColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 564
    iget-object v1, p0, Lcom/yftech/settings/widget/ClipImageView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 571
    iget-object v1, p0, Lcom/yftech/settings/widget/ClipImageView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 572
    invoke-virtual {p0, p1}, Lcom/yftech/settings/widget/ClipImageView;->drawRectangleOrCircle(Landroid/graphics/Canvas;)V

    .line 577
    iget-object v1, p0, Lcom/yftech/settings/widget/ClipImageView;->mTipText:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 578
    iget-object v1, p0, Lcom/yftech/settings/widget/ClipImageView;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/yftech/settings/widget/ClipImageView;->mTipText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    int-to-float v0, v0

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 580
    iget-object v2, p0, Lcom/yftech/settings/widget/ClipImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    .line 581
    iget-object v3, p0, Lcom/yftech/settings/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/yftech/settings/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, v2, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v4, v2

    div-float/2addr v4, v1

    sub-float/2addr v3, v4

    .line 582
    iget-object v1, p0, Lcom/yftech/settings/widget/ClipImageView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 583
    iget-object v1, p0, Lcom/yftech/settings/widget/ClipImageView;->mTipText:Ljava/lang/String;

    iget-object p0, p0, Lcom/yftech/settings/widget/ClipImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v3, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 324
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 325
    invoke-direct {p0}, Lcom/yftech/settings/widget/ClipImageView;->updateBorder()V

    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 5

    .line 189
    invoke-virtual {p0}, Lcom/yftech/settings/widget/ClipImageView;->getScale()F

    move-result v0

    .line 190
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    .line 192
    invoke-virtual {p0}, Lcom/yftech/settings/widget/ClipImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    return v3

    .line 198
    :cond_0
    iget v2, p0, Lcom/yftech/settings/widget/ClipImageView;->mScaleMax:F

    cmpg-float v2, v0, v2

    const/high16 v4, 0x3f800000    # 1.0f

    if-gez v2, :cond_1

    cmpl-float v2, v1, v4

    if-gtz v2, :cond_2

    :cond_1
    iget v2, p0, Lcom/yftech/settings/widget/ClipImageView;->mInitScale:F

    cmpl-float v2, v0, v2

    if-lez v2, :cond_5

    cmpg-float v2, v1, v4

    if-gez v2, :cond_5

    :cond_2
    mul-float v2, v1, v0

    .line 203
    iget v4, p0, Lcom/yftech/settings/widget/ClipImageView;->mInitScale:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_3

    .line 204
    iget v1, p0, Lcom/yftech/settings/widget/ClipImageView;->mInitScale:F

    div-float/2addr v1, v0

    :cond_3
    mul-float v2, v1, v0

    .line 206
    iget v4, p0, Lcom/yftech/settings/widget/ClipImageView;->mScaleMax:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_4

    .line 207
    iget v1, p0, Lcom/yftech/settings/widget/ClipImageView;->mScaleMax:F

    div-float/2addr v1, v0

    .line 212
    :cond_4
    iget-object v0, p0, Lcom/yftech/settings/widget/ClipImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    .line 213
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    .line 212
    invoke-virtual {v0, v1, v1, v2, p1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 214
    invoke-direct {p0}, Lcom/yftech/settings/widget/ClipImageView;->checkBorder()V

    .line 215
    iget-object p1, p0, Lcom/yftech/settings/widget/ClipImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Lcom/yftech/settings/widget/ClipImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_5
    return v3
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 247
    iget-object p1, p0, Lcom/yftech/settings/widget/ClipImageView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    .line 249
    :cond_0
    iget-object p1, p0, Lcom/yftech/settings/widget/ClipImageView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 253
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    move v4, v2

    move v5, v4

    :goto_0
    if-ge v3, p1, :cond_1

    .line 257
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    add-float/2addr v4, v6

    .line 258
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    add-float/2addr v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    int-to-float v3, p1

    div-float/2addr v4, v3

    div-float/2addr v5, v3

    .line 266
    iget v3, p0, Lcom/yftech/settings/widget/ClipImageView;->lastPointerCount:I

    if-eq p1, v3, :cond_2

    .line 267
    iput-boolean v1, p0, Lcom/yftech/settings/widget/ClipImageView;->isCanDrag:Z

    .line 268
    iput v4, p0, Lcom/yftech/settings/widget/ClipImageView;->mLastX:F

    .line 269
    iput v5, p0, Lcom/yftech/settings/widget/ClipImageView;->mLastY:F

    .line 272
    :cond_2
    iput p1, p0, Lcom/yftech/settings/widget/ClipImageView;->lastPointerCount:I

    .line 273
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 275
    :pswitch_0
    iget p1, p0, Lcom/yftech/settings/widget/ClipImageView;->mLastX:F

    sub-float p1, v4, p1

    .line 276
    iget p2, p0, Lcom/yftech/settings/widget/ClipImageView;->mLastY:F

    sub-float p2, v5, p2

    .line 278
    iget-boolean v1, p0, Lcom/yftech/settings/widget/ClipImageView;->isCanDrag:Z

    if-nez v1, :cond_3

    .line 279
    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/widget/ClipImageView;->isCanDrag(FF)Z

    move-result v1

    iput-boolean v1, p0, Lcom/yftech/settings/widget/ClipImageView;->isCanDrag:Z

    .line 281
    :cond_3
    iget-boolean v1, p0, Lcom/yftech/settings/widget/ClipImageView;->isCanDrag:Z

    if-eqz v1, :cond_6

    .line 282
    invoke-virtual {p0}, Lcom/yftech/settings/widget/ClipImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 284
    invoke-direct {p0}, Lcom/yftech/settings/widget/ClipImageView;->getMatrixRectF()Landroid/graphics/RectF;

    move-result-object v1

    .line 286
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v6, p0, Lcom/yftech/settings/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    cmpg-float v3, v3, v6

    if-gtz v3, :cond_4

    move p1, v2

    .line 291
    :cond_4
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget-object v3, p0, Lcom/yftech/settings/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_5

    move p2, v2

    .line 294
    :cond_5
    iget-object v1, p0, Lcom/yftech/settings/widget/ClipImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 295
    invoke-direct {p0}, Lcom/yftech/settings/widget/ClipImageView;->checkBorder()V

    .line 296
    iget-object p1, p0, Lcom/yftech/settings/widget/ClipImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Lcom/yftech/settings/widget/ClipImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 299
    :cond_6
    iput v4, p0, Lcom/yftech/settings/widget/ClipImageView;->mLastX:F

    .line 300
    iput v5, p0, Lcom/yftech/settings/widget/ClipImageView;->mLastY:F

    goto :goto_1

    .line 305
    :pswitch_1
    iput v1, p0, Lcom/yftech/settings/widget/ClipImageView;->lastPointerCount:I

    :goto_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public resetImageMatrix()V
    .locals 8

    .line 391
    invoke-virtual {p0}, Lcom/yftech/settings/widget/ClipImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 396
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 397
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 399
    iget-object v2, p0, Lcom/yftech/settings/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 400
    iget-object v3, p0, Lcom/yftech/settings/widget/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 402
    invoke-virtual {p0}, Lcom/yftech/settings/widget/ClipImageView;->getWidth()I

    move-result v4

    .line 403
    invoke-virtual {p0}, Lcom/yftech/settings/widget/ClipImageView;->getHeight()I

    move-result v5

    mul-int v6, v1, v3

    mul-int v7, v2, v0

    if-le v6, v7, :cond_1

    int-to-float v2, v3

    int-to-float v3, v0

    div-float/2addr v2, v3

    goto :goto_0

    :cond_1
    int-to-float v2, v2

    int-to-float v3, v1

    div-float/2addr v2, v3

    :goto_0
    int-to-float v3, v4

    int-to-float v1, v1

    mul-float/2addr v1, v2

    sub-float/2addr v3, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v3, v1

    int-to-float v4, v5

    int-to-float v0, v0

    mul-float/2addr v0, v2

    sub-float/2addr v4, v0

    mul-float/2addr v4, v1

    .line 418
    iget-object v0, p0, Lcom/yftech/settings/widget/ClipImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 419
    iget-object v0, p0, Lcom/yftech/settings/widget/ClipImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    add-float/2addr v3, v1

    float-to-int v3, v3

    int-to-float v3, v3

    add-float/2addr v4, v1

    float-to-int v1, v4

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 421
    iget-object v0, p0, Lcom/yftech/settings/widget/ClipImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/yftech/settings/widget/ClipImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 423
    iput v2, p0, Lcom/yftech/settings/widget/ClipImageView;->mInitScale:F

    .line 424
    iget v0, p0, Lcom/yftech/settings/widget/ClipImageView;->mInitScale:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/yftech/settings/widget/ClipImageView;->mScaleMin:F

    .line 425
    iget v0, p0, Lcom/yftech/settings/widget/ClipImageView;->mInitScale:F

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/yftech/settings/widget/ClipImageView;->mScaleMax:F

    return-void
.end method

.method public setAspect(II)V
    .locals 0

    .line 345
    iput p1, p0, Lcom/yftech/settings/widget/ClipImageView;->mAspectX:I

    .line 346
    iput p2, p0, Lcom/yftech/settings/widget/ClipImageView;->mAspectY:I

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 355
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 356
    invoke-direct {p0}, Lcom/yftech/settings/widget/ClipImageView;->postResetImageMatrix()V

    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .line 361
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 362
    invoke-direct {p0}, Lcom/yftech/settings/widget/ClipImageView;->postResetImageMatrix()V

    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    .line 367
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 368
    invoke-direct {p0}, Lcom/yftech/settings/widget/ClipImageView;->postResetImageMatrix()V

    return-void
.end method

.method public setMaxOutputWidth(I)V
    .locals 0

    .line 524
    iput p1, p0, Lcom/yftech/settings/widget/ClipImageView;->mMaxOutputWidth:I

    return-void
.end method

.method public setTip(Ljava/lang/String;)V
    .locals 0

    .line 350
    iput-object p1, p0, Lcom/yftech/settings/widget/ClipImageView;->mTipText:Ljava/lang/String;

    return-void
.end method

.method public snapShotForViewGroup()Landroid/graphics/Bitmap;
    .locals 3

    .line 470
    invoke-virtual {p0}, Lcom/yftech/settings/widget/ClipImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/yftech/settings/widget/ClipImageView;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 472
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1}, Lcom/yftech/settings/widget/ClipImageView;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method
