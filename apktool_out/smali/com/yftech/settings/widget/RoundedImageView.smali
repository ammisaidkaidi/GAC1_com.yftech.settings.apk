.class public Lcom/yftech/settings/widget/RoundedImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "RoundedImageView.java"


# instance fields
.field private borderColor:I

.field private borderRadii:[F

.field private borderRectF:Landroid/graphics/RectF;

.field private borderWidth:I

.field private context:Landroid/content/Context;

.field private cornerBottomLeftRadius:I

.field private cornerBottomRightRadius:I

.field private cornerRadius:I

.field private cornerTopLeftRadius:I

.field private cornerTopRightRadius:I

.field private height:I

.field private innerBorderColor:I

.field private innerBorderWidth:I

.field private isCircle:Z

.field private isCoverSrc:Z

.field private maskColor:I

.field private paint:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;

.field private radius:F

.field private srcPath:Landroid/graphics/Path;

.field private srcRadii:[F

.field private srcRectF:Landroid/graphics/RectF;

.field private width:I

.field private xfermode:Landroid/graphics/Xfermode;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, v0}, Lcom/yftech/settings/widget/RoundedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, p2, v0}, Lcom/yftech/settings/widget/RoundedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, -0x1

    .line 29
    iput p3, p0, Lcom/yftech/settings/widget/RoundedImageView;->borderColor:I

    .line 31
    iput p3, p0, Lcom/yftech/settings/widget/RoundedImageView;->innerBorderColor:I

    .line 68
    iput-object p1, p0, Lcom/yftech/settings/widget/RoundedImageView;->context:Landroid/content/Context;

    .line 70
    sget-object p3, Lcom/yftech/settings/R$styleable;->RoundedImageView:[I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 71
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/16 p3, 0x8

    if-ge v0, p2, :cond_c

    .line 72
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result p2

    const/16 v1, 0xa

    if-ne p2, v1, :cond_0

    .line 74
    iget-boolean p3, p0, Lcom/yftech/settings/widget/RoundedImageView;->isCoverSrc:Z

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/yftech/settings/widget/RoundedImageView;->isCoverSrc:Z

    goto/16 :goto_1

    :cond_0
    const/16 v1, 0x9

    if-ne p2, v1, :cond_1

    .line 76
    iget-boolean p3, p0, Lcom/yftech/settings/widget/RoundedImageView;->isCircle:Z

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/yftech/settings/widget/RoundedImageView;->isCircle:Z

    goto/16 :goto_1

    :cond_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    .line 78
    iget p3, p0, Lcom/yftech/settings/widget/RoundedImageView;->borderWidth:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/settings/widget/RoundedImageView;->borderWidth:I

    goto/16 :goto_1

    :cond_2
    if-nez p2, :cond_3

    .line 80
    iget p3, p0, Lcom/yftech/settings/widget/RoundedImageView;->borderColor:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/settings/widget/RoundedImageView;->borderColor:I

    goto :goto_1

    :cond_3
    if-ne p2, p3, :cond_4

    .line 82
    iget p3, p0, Lcom/yftech/settings/widget/RoundedImageView;->innerBorderWidth:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/settings/widget/RoundedImageView;->innerBorderWidth:I

    goto :goto_1

    :cond_4
    const/4 p3, 0x7

    if-ne p2, p3, :cond_5

    .line 84
    iget p3, p0, Lcom/yftech/settings/widget/RoundedImageView;->innerBorderColor:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/settings/widget/RoundedImageView;->innerBorderColor:I

    goto :goto_1

    :cond_5
    const/4 p3, 0x4

    if-ne p2, p3, :cond_6

    .line 86
    iget p3, p0, Lcom/yftech/settings/widget/RoundedImageView;->cornerRadius:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/settings/widget/RoundedImageView;->cornerRadius:I

    goto :goto_1

    :cond_6
    const/4 p3, 0x5

    if-ne p2, p3, :cond_7

    .line 88
    iget p3, p0, Lcom/yftech/settings/widget/RoundedImageView;->cornerTopLeftRadius:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/settings/widget/RoundedImageView;->cornerTopLeftRadius:I

    goto :goto_1

    :cond_7
    const/4 p3, 0x6

    if-ne p2, p3, :cond_8

    .line 90
    iget p3, p0, Lcom/yftech/settings/widget/RoundedImageView;->cornerTopRightRadius:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/settings/widget/RoundedImageView;->cornerTopRightRadius:I

    goto :goto_1

    :cond_8
    const/4 p3, 0x2

    if-ne p2, p3, :cond_9

    .line 92
    iget p3, p0, Lcom/yftech/settings/widget/RoundedImageView;->cornerBottomLeftRadius:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/settings/widget/RoundedImageView;->cornerBottomLeftRadius:I

    goto :goto_1

    :cond_9
    const/4 p3, 0x3

    if-ne p2, p3, :cond_a

    .line 94
    iget p3, p0, Lcom/yftech/settings/widget/RoundedImageView;->cornerBottomRightRadius:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/settings/widget/RoundedImageView;->cornerBottomRightRadius:I

    goto :goto_1

    :cond_a
    const/16 p3, 0xb

    if-ne p2, p3, :cond_b

    .line 96
    iget p3, p0, Lcom/yftech/settings/widget/RoundedImageView;->maskColor:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/settings/widget/RoundedImageView;->maskColor:I

    :cond_b
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 99
    :cond_c
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 101
    new-array p1, p3, [F

    iput-object p1, p0, Lcom/yftech/settings/widget/RoundedImageView;->borderRadii:[F

    .line 102
    new-array p1, p3, [F

    iput-object p1, p0, Lcom/yftech/settings/widget/RoundedImageView;->srcRadii:[F

    .line 104
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/yftech/settings/widget/RoundedImageView;->borderRectF:Landroid/graphics/RectF;

    .line 105
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/yftech/settings/widget/RoundedImageView;->srcRectF:Landroid/graphics/RectF;

    .line 107
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/yftech/settings/widget/RoundedImageView;->paint:Landroid/graphics/Paint;

    .line 108
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/yftech/settings/widget/RoundedImageView;->path:Landroid/graphics/Path;

    .line 110
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1b

    if-gt p1, p2, :cond_d

    .line 111
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lcom/yftech/settings/widget/RoundedImageView;->xfermode:Landroid/graphics/Xfermode;

    goto :goto_2

    .line 113
    :cond_d
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lcom/yftech/settings/widget/RoundedImageView;->xfermode:Landroid/graphics/Xfermode;

    .line 114
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/yftech/settings/widget/RoundedImageView;->srcPath:Landroid/graphics/Path;

    .line 117
    :goto_2
    invoke-direct {p0}, Lcom/yftech/settings/widget/RoundedImageView;->calculateRadii()V

    .line 118
    invoke-direct {p0}, Lcom/yftech/settings/widget/RoundedImageView;->clearInnerBorderWidth()V

    return-void
.end method

.method private calculateRadii()V
    .locals 13

    .line 236
    iget-boolean v0, p0, Lcom/yftech/settings/widget/RoundedImageView;->isCircle:Z

    if-eqz v0, :cond_0

    return-void

    .line 239
    :cond_0
    iget v0, p0, Lcom/yftech/settings/widget/RoundedImageView;->cornerRadius:I

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    if-lez v0, :cond_1

    .line 240
    :goto_0
    iget-object v0, p0, Lcom/yftech/settings/widget/RoundedImageView;->borderRadii:[F

    array-length v0, v0

    if-ge v1, v0, :cond_2

    .line 241
    iget-object v0, p0, Lcom/yftech/settings/widget/RoundedImageView;->borderRadii:[F

    iget v3, p0, Lcom/yftech/settings/widget/RoundedImageView;->cornerRadius:I

    int-to-float v3, v3

    aput v3, v0, v1

    .line 242
    iget-object v0, p0, Lcom/yftech/settings/widget/RoundedImageView;->srcRadii:[F

    iget v3, p0, Lcom/yftech/settings/widget/RoundedImageView;->cornerRadius:I

    int-to-float v3, v3

    iget v4, p0, Lcom/yftech/settings/widget/RoundedImageView;->borderWidth:I

    int-to-float v4, v4

    div-float/2addr v4, v2

    sub-float/2addr v3, v4

    aput v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/yftech/settings/widget/RoundedImageView;->borderRadii:[F

    iget-object v3, p0, Lcom/yftech/settings/widget/RoundedImageView;->borderRadii:[F

    iget v4, p0, Lcom/yftech/settings/widget/RoundedImageView;->cornerTopLeftRadius:I

    int-to-float v4, v4

    const/4 v5, 0x1

    aput v4, v3, v5

    aput v4, v0, v1

    .line 246
    iget-object v0, p0, Lcom/yftech/settings/widget/RoundedImageView;->borderRadii:[F

    iget-object v3, p0, Lcom/yftech/settings/widget/RoundedImageView;->borderRadii:[F

    iget v4, p0, Lcom/yftech/settings/widget/RoundedImageView;->cornerTopRightRadius:I

    int-to-float v4, v4

    const/4 v6, 0x3

    aput v4, v3, v6

    const/4 v3, 0x2

    aput v4, v0, v3

    .line 247
    iget-object v0, p0, Lcom/yftech/settings/widget/RoundedImageView;->borderRadii:[F

    iget-object v4, p0, Lcom/yftech/settings/widget/RoundedImageView;->borderRadii:[F

    iget v7, p0, Lcom/yftech/settings/widget/RoundedImageView;->cornerBottomRightRadius:I

    int-to-float v7, v7

    const/4 v8, 0x5

    aput v7, v4, v8

    const/4 v4, 0x4

    aput v7, v0, v4

    .line 248
    iget-object v0, p0, Lcom/yftech/settings/widget/RoundedImageView;->borderRadii:[F

    iget-object v7, p0, Lcom/yftech/settings/widget/RoundedImageView;->borderRadii:[F

    iget v9, p0, Lcom/yftech/settings/widget/RoundedImageView;->cornerBottomLeftRadius:I

    int-to-float v9, v9

    const/4 v10, 0x7

    aput v9, v7, v10

    const/4 v7, 0x6

    aput v9, v0, v7

    .line 250
    iget-object v0, p0, Lcom/yftech/settings/widget/RoundedImageView;->srcRadii:[F

    iget-object v9, p0, Lcom/yftech/settings/widget/RoundedImageView;->srcRadii:[F

    iget v11, p0, Lcom/yftech/settings/widget/RoundedImageView;->cornerTopLeftRadius:I

    int-to-float v11, v11

    iget v12, p0, Lcom/yftech/settings/widget/RoundedImageView;->borderWidth:I

    int-to-float v12, v12

    div-float/2addr v12, v2

    sub-float/2addr v11, v12

    aput v11, v9, v5

    aput v11, v0, v1

    .line 251
    iget-object v0, p0, Lcom/yftech/settings/widget/RoundedImageView;->srcRadii:[F

    iget-object v1, p0, Lcom/yftech/settings/widget/RoundedImageView;->srcRadii:[F

    iget v5, p0, Lcom/yftech/settings/widget/RoundedImageView;->cornerTopRightRadius:I

    int-to-float v5, v5

    iget v9, p0, Lcom/yftech/settings/widget/RoundedImageView;->borderWidth:I

    int-to-float v9, v9

    div-float/2addr v9, v2

    sub-float/2addr v5, v9

    aput v5, v1, v6

    aput v5, v0, v3

    .line 252
    iget-object v0, p0, Lcom/yftech/settings/widget/RoundedImageView;->srcRadii:[F

    iget-object v1, p0, Lcom/yftech/settings/widget/RoundedImageView;->srcRadii:[F

    iget v3, p0, Lcom/yftech/settings/widget/RoundedImageView;->cornerBottomRightRadius:I

    int-to-float v3, v3

    iget v5, p0, Lcom/yftech/settings/widget/RoundedImageView;->borderWidth:I

    int-to-float v5, v5

    div-float/2addr v5, v2

    sub-float/2addr v3, v5

    aput v3, v1, v8

    aput v3, v0, v4

    .line 253
    iget-object v0, p0, Lcom/yftech/settings/widget/RoundedImageView;->srcRadii:[F

    iget-object v1, p0, Lcom/yftech/settings/widget/RoundedImageView;->srcRadii:[F

    iget v3, p0, Lcom/yftech/settings/widget/RoundedImageView;->cornerBottomLeftRadius:I

    int-to-float v3, v3

    iget p0, p0, Lcom/yftech/settings/widget/RoundedImageView;->borderWidth:I

    int-to-float p0, p0

    div-float/2addr p0, v2

    sub-float/2addr v3, p0

    aput v3, v1, v10

    aput v3, v0, v7

    :cond_2
    return-void
.end method

.method private calculateRadiiAndRectF(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 259
    iput p1, p0, Lcom/yftech/settings/widget/RoundedImageView;->cornerRadius:I

    .line 261
    :cond_0
    invoke-direct {p0}, Lcom/yftech/settings/widget/RoundedImageView;->calculateRadii()V

    .line 262
    invoke-direct {p0}, Lcom/yftech/settings/widget/RoundedImageView;->initBorderRectF()V

    .line 263
    invoke-virtual {p0}, Lcom/yftech/settings/widget/RoundedImageView;->invalidate()V

    return-void
.end method

.method private clearInnerBorderWidth()V
    .locals 1

    .line 270
    iget-boolean v0, p0, Lcom/yftech/settings/widget/RoundedImageView;->isCircle:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 271
    iput v0, p0, Lcom/yftech/settings/widget/RoundedImageView;->innerBorderWidth:I

    :cond_0
    return-void
.end method

.method private drawBorders(Landroid/graphics/Canvas;)V
    .locals 7

    .line 175
    iget-boolean v0, p0, Lcom/yftech/settings/widget/RoundedImageView;->isCircle:Z

    if-eqz v0, :cond_1

    .line 176
    iget v0, p0, Lcom/yftech/settings/widget/RoundedImageView;->borderWidth:I

    const/high16 v1, 0x40000000    # 2.0f

    if-lez v0, :cond_0

    .line 177
    iget v0, p0, Lcom/yftech/settings/widget/RoundedImageView;->borderWidth:I

    iget v2, p0, Lcom/yftech/settings/widget/RoundedImageView;->borderColor:I

    iget v3, p0, Lcom/yftech/settings/widget/RoundedImageView;->radius:F

    iget v4, p0, Lcom/yftech/settings/widget/RoundedImageView;->borderWidth:I

    int-to-float v4, v4

    div-float/2addr v4, v1

    sub-float/2addr v3, v4

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/yftech/settings/widget/RoundedImageView;->drawCircleBorder(Landroid/graphics/Canvas;IIF)V

    .line 179
    :cond_0
    iget v0, p0, Lcom/yftech/settings/widget/RoundedImageView;->innerBorderWidth:I

    if-lez v0, :cond_2

    .line 180
    iget v0, p0, Lcom/yftech/settings/widget/RoundedImageView;->innerBorderWidth:I

    iget v2, p0, Lcom/yftech/settings/widget/RoundedImageView;->innerBorderColor:I

    iget v3, p0, Lcom/yftech/settings/widget/RoundedImageView;->radius:F

    iget v4, p0, Lcom/yftech/settings/widget/RoundedImageView;->borderWidth:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/yftech/settings/widget/RoundedImageView;->innerBorderWidth:I

    int-to-float v4, v4

    div-float/2addr v4, v1

    sub-float/2addr v3, v4

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/yftech/settings/widget/RoundedImageView;->drawCircleBorder(Landroid/graphics/Canvas;IIF)V

    goto :goto_0

    .line 183
    :cond_1
    iget v0, p0, Lcom/yftech/settings/widget/RoundedImageView;->borderWidth:I

    if-lez v0, :cond_2

    .line 184
    iget v3, p0, Lcom/yftech/settings/widget/RoundedImageView;->borderWidth:I

    iget v4, p0, Lcom/yftech/settings/widget/RoundedImageView;->borderColor:I

    iget-object v5, p0, Lcom/yftech/settings/widget/RoundedImageView;->borderRectF:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/yftech/settings/widget/RoundedImageView;->borderRadii:[F

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/yftech/settings/widget/RoundedImageView;->drawRectFBorder(Landroid/graphics/Canvas;IILandroid/graphics/RectF;[F)V

    :cond_2
    :goto_0
    return-void
.end method

.method private drawCircleBorder(Landroid/graphics/Canvas;IIF)V
    .locals 2

    .line 190
    invoke-direct {p0, p2, p3}, Lcom/yftech/settings/widget/RoundedImageView;->initBorderPaint(II)V

    .line 191
    iget-object p2, p0, Lcom/yftech/settings/widget/RoundedImageView;->path:Landroid/graphics/Path;

    iget p3, p0, Lcom/yftech/settings/widget/RoundedImageView;->width:I

    int-to-float p3, p3

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p3, v0

    iget v1, p0, Lcom/yftech/settings/widget/RoundedImageView;->height:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    sget-object v0, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {p2, p3, v1, p4, v0}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 192
    iget-object p2, p0, Lcom/yftech/settings/widget/RoundedImageView;->path:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/yftech/settings/widget/RoundedImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawRectFBorder(Landroid/graphics/Canvas;IILandroid/graphics/RectF;[F)V
    .locals 0

    .line 196
    invoke-direct {p0, p2, p3}, Lcom/yftech/settings/widget/RoundedImageView;->initBorderPaint(II)V

    .line 197
    iget-object p2, p0, Lcom/yftech/settings/widget/RoundedImageView;->path:Landroid/graphics/Path;

    sget-object p3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {p2, p4, p5, p3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 198
    iget-object p2, p0, Lcom/yftech/settings/widget/RoundedImageView;->path:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/yftech/settings/widget/RoundedImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private initBorderPaint(II)V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/yftech/settings/widget/RoundedImageView;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 203
    iget-object v0, p0, Lcom/yftech/settings/widget/RoundedImageView;->paint:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 204
    iget-object p1, p0, Lcom/yftech/settings/widget/RoundedImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 205
    iget-object p0, p0, Lcom/yftech/settings/widget/RoundedImageView;->paint:Landroid/graphics/Paint;

    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private initBorderRectF()V
    .locals 6

    .line 212
    iget-boolean v0, p0, Lcom/yftech/settings/widget/RoundedImageView;->isCircle:Z

    if-nez v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/yftech/settings/widget/RoundedImageView;->borderRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/yftech/settings/widget/RoundedImageView;->borderWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v3, p0, Lcom/yftech/settings/widget/RoundedImageView;->borderWidth:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    iget v4, p0, Lcom/yftech/settings/widget/RoundedImageView;->width:I

    int-to-float v4, v4

    iget v5, p0, Lcom/yftech/settings/widget/RoundedImageView;->borderWidth:I

    int-to-float v5, v5

    div-float/2addr v5, v2

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/yftech/settings/widget/RoundedImageView;->height:I

    int-to-float v5, v5

    iget p0, p0, Lcom/yftech/settings/widget/RoundedImageView;->borderWidth:I

    int-to-float p0, p0

    div-float/2addr p0, v2

    sub-float/2addr v5, p0

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_0
    return-void
.end method

.method private initSrcRectF()V
    .locals 6

    .line 221
    iget-boolean v0, p0, Lcom/yftech/settings/widget/RoundedImageView;->isCircle:Z

    if-eqz v0, :cond_0

    .line 222
    iget v0, p0, Lcom/yftech/settings/widget/RoundedImageView;->width:I

    iget v1, p0, Lcom/yftech/settings/widget/RoundedImageView;->height:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/yftech/settings/widget/RoundedImageView;->radius:F

    .line 223
    iget-object v0, p0, Lcom/yftech/settings/widget/RoundedImageView;->srcRectF:Landroid/graphics/RectF;

    iget v2, p0, Lcom/yftech/settings/widget/RoundedImageView;->width:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    iget v3, p0, Lcom/yftech/settings/widget/RoundedImageView;->radius:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/yftech/settings/widget/RoundedImageView;->height:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    iget v4, p0, Lcom/yftech/settings/widget/RoundedImageView;->radius:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/yftech/settings/widget/RoundedImageView;->width:I

    int-to-float v4, v4

    div-float/2addr v4, v1

    iget v5, p0, Lcom/yftech/settings/widget/RoundedImageView;->radius:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/yftech/settings/widget/RoundedImageView;->height:I

    int-to-float v5, v5

    div-float/2addr v5, v1

    iget p0, p0, Lcom/yftech/settings/widget/RoundedImageView;->radius:F

    add-float/2addr v5, p0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/yftech/settings/widget/RoundedImageView;->srcRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/yftech/settings/widget/RoundedImageView;->width:I

    int-to-float v1, v1

    iget v2, p0, Lcom/yftech/settings/widget/RoundedImageView;->height:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 226
    iget-boolean v0, p0, Lcom/yftech/settings/widget/RoundedImageView;->isCoverSrc:Z

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/yftech/settings/widget/RoundedImageView;->borderRectF:Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/yftech/settings/widget/RoundedImageView;->srcRectF:Landroid/graphics/RectF;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public isCircle(Z)V
    .locals 0

    .line 282
    iput-boolean p1, p0, Lcom/yftech/settings/widget/RoundedImageView;->isCircle:Z

    .line 283
    invoke-direct {p0}, Lcom/yftech/settings/widget/RoundedImageView;->clearInnerBorderWidth()V

    .line 284
    invoke-direct {p0}, Lcom/yftech/settings/widget/RoundedImageView;->initSrcRectF()V

    .line 285
    invoke-virtual {p0}, Lcom/yftech/settings/widget/RoundedImageView;->invalidate()V

    return-void
.end method

.method public isCoverSrc(Z)V
    .locals 0

    .line 276
    iput-boolean p1, p0, Lcom/yftech/settings/widget/RoundedImageView;->isCoverSrc:Z

    .line 277
    invoke-direct {p0}, Lcom/yftech/settings/widget/RoundedImageView;->initSrcRectF()V

    .line 278
    invoke-virtual {p0}, Lcom/yftech/settings/widget/RoundedImageView;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 134
    iget-object v0, p0, Lcom/yftech/settings/widget/RoundedImageView;->srcRectF:Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/16 v2, 0x1f

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 135
    iget-boolean v0, p0, Lcom/yftech/settings/widget/RoundedImageView;->isCoverSrc:Z

    const/high16 v2, 0x40000000    # 2.0f

    if-nez v0, :cond_0

    .line 136
    iget v0, p0, Lcom/yftech/settings/widget/RoundedImageView;->width:I

    iget v3, p0, Lcom/yftech/settings/widget/RoundedImageView;->borderWidth:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/yftech/settings/widget/RoundedImageView;->innerBorderWidth:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    int-to-float v0, v0

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v0, v3

    iget v4, p0, Lcom/yftech/settings/widget/RoundedImageView;->width:I

    int-to-float v4, v4

    div-float/2addr v0, v4

    .line 137
    iget v4, p0, Lcom/yftech/settings/widget/RoundedImageView;->height:I

    iget v5, p0, Lcom/yftech/settings/widget/RoundedImageView;->borderWidth:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/yftech/settings/widget/RoundedImageView;->innerBorderWidth:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, v3

    iget v3, p0, Lcom/yftech/settings/widget/RoundedImageView;->height:I

    int-to-float v3, v3

    div-float/2addr v4, v3

    .line 139
    iget v3, p0, Lcom/yftech/settings/widget/RoundedImageView;->width:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    iget v5, p0, Lcom/yftech/settings/widget/RoundedImageView;->height:I

    int-to-float v5, v5

    div-float/2addr v5, v2

    invoke-virtual {p1, v0, v4, v3, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 141
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 142
    iget-object v0, p0, Lcom/yftech/settings/widget/RoundedImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 143
    iget-object v0, p0, Lcom/yftech/settings/widget/RoundedImageView;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 144
    iget-boolean v0, p0, Lcom/yftech/settings/widget/RoundedImageView;->isCircle:Z

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/yftech/settings/widget/RoundedImageView;->path:Landroid/graphics/Path;

    iget v3, p0, Lcom/yftech/settings/widget/RoundedImageView;->width:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    iget v4, p0, Lcom/yftech/settings/widget/RoundedImageView;->height:I

    int-to-float v4, v4

    div-float/2addr v4, v2

    iget v2, p0, Lcom/yftech/settings/widget/RoundedImageView;->radius:F

    sget-object v5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v3, v4, v2, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    goto :goto_0

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/yftech/settings/widget/RoundedImageView;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/yftech/settings/widget/RoundedImageView;->srcRectF:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/yftech/settings/widget/RoundedImageView;->srcRadii:[F

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 150
    :goto_0
    iget-object v0, p0, Lcom/yftech/settings/widget/RoundedImageView;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 151
    iget-object v0, p0, Lcom/yftech/settings/widget/RoundedImageView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 152
    iget-object v0, p0, Lcom/yftech/settings/widget/RoundedImageView;->paint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/yftech/settings/widget/RoundedImageView;->xfermode:Landroid/graphics/Xfermode;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 153
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-gt v0, v2, :cond_2

    .line 154
    iget-object v0, p0, Lcom/yftech/settings/widget/RoundedImageView;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/yftech/settings/widget/RoundedImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 156
    :cond_2
    iget-object v0, p0, Lcom/yftech/settings/widget/RoundedImageView;->srcPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/yftech/settings/widget/RoundedImageView;->srcRectF:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 158
    iget-object v0, p0, Lcom/yftech/settings/widget/RoundedImageView;->srcPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/yftech/settings/widget/RoundedImageView;->path:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 159
    iget-object v0, p0, Lcom/yftech/settings/widget/RoundedImageView;->srcPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/yftech/settings/widget/RoundedImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 161
    :goto_1
    iget-object v0, p0, Lcom/yftech/settings/widget/RoundedImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 164
    iget v0, p0, Lcom/yftech/settings/widget/RoundedImageView;->maskColor:I

    if-eqz v0, :cond_3

    .line 165
    iget-object v0, p0, Lcom/yftech/settings/widget/RoundedImageView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/yftech/settings/widget/RoundedImageView;->maskColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 166
    iget-object v0, p0, Lcom/yftech/settings/widget/RoundedImageView;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/yftech/settings/widget/RoundedImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 169
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 171
    invoke-direct {p0, p1}, Lcom/yftech/settings/widget/RoundedImageView;->drawBorders(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 123
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatImageView;->onSizeChanged(IIII)V

    .line 124
    iput p1, p0, Lcom/yftech/settings/widget/RoundedImageView;->width:I

    .line 125
    iput p2, p0, Lcom/yftech/settings/widget/RoundedImageView;->height:I

    .line 127
    invoke-direct {p0}, Lcom/yftech/settings/widget/RoundedImageView;->initBorderRectF()V

    .line 128
    invoke-direct {p0}, Lcom/yftech/settings/widget/RoundedImageView;->initSrcRectF()V

    return-void
.end method

.method public setBorderColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 294
    iput p1, p0, Lcom/yftech/settings/widget/RoundedImageView;->borderColor:I

    .line 295
    invoke-virtual {p0}, Lcom/yftech/settings/widget/RoundedImageView;->invalidate()V

    return-void
.end method

.method public setBorderWidth(I)V
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/yftech/settings/widget/RoundedImageView;->context:Landroid/content/Context;

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/yftech/settings/utils/Utils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/yftech/settings/widget/RoundedImageView;->borderWidth:I

    const/4 p1, 0x0

    .line 290
    invoke-direct {p0, p1}, Lcom/yftech/settings/widget/RoundedImageView;->calculateRadiiAndRectF(Z)V

    return-void
.end method

.method public setCornerBottomLeftRadius(I)V
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/yftech/settings/widget/RoundedImageView;->context:Landroid/content/Context;

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/yftech/settings/utils/Utils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/yftech/settings/widget/RoundedImageView;->cornerBottomLeftRadius:I

    const/4 p1, 0x1

    .line 326
    invoke-direct {p0, p1}, Lcom/yftech/settings/widget/RoundedImageView;->calculateRadiiAndRectF(Z)V

    return-void
.end method

.method public setCornerBottomRightRadius(I)V
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/yftech/settings/widget/RoundedImageView;->context:Landroid/content/Context;

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/yftech/settings/utils/Utils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/yftech/settings/widget/RoundedImageView;->cornerBottomRightRadius:I

    const/4 p1, 0x1

    .line 331
    invoke-direct {p0, p1}, Lcom/yftech/settings/widget/RoundedImageView;->calculateRadiiAndRectF(Z)V

    return-void
.end method

.method public setCornerRadius(I)V
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/yftech/settings/widget/RoundedImageView;->context:Landroid/content/Context;

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/yftech/settings/utils/Utils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/yftech/settings/widget/RoundedImageView;->cornerRadius:I

    const/4 p1, 0x0

    .line 311
    invoke-direct {p0, p1}, Lcom/yftech/settings/widget/RoundedImageView;->calculateRadiiAndRectF(Z)V

    return-void
.end method

.method public setCornerTopLeftRadius(I)V
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/yftech/settings/widget/RoundedImageView;->context:Landroid/content/Context;

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/yftech/settings/utils/Utils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/yftech/settings/widget/RoundedImageView;->cornerTopLeftRadius:I

    const/4 p1, 0x1

    .line 316
    invoke-direct {p0, p1}, Lcom/yftech/settings/widget/RoundedImageView;->calculateRadiiAndRectF(Z)V

    return-void
.end method

.method public setCornerTopRightRadius(I)V
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/yftech/settings/widget/RoundedImageView;->context:Landroid/content/Context;

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/yftech/settings/utils/Utils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/yftech/settings/widget/RoundedImageView;->cornerTopRightRadius:I

    const/4 p1, 0x1

    .line 321
    invoke-direct {p0, p1}, Lcom/yftech/settings/widget/RoundedImageView;->calculateRadiiAndRectF(Z)V

    return-void
.end method

.method public setInnerBorderColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 305
    iput p1, p0, Lcom/yftech/settings/widget/RoundedImageView;->innerBorderColor:I

    .line 306
    invoke-virtual {p0}, Lcom/yftech/settings/widget/RoundedImageView;->invalidate()V

    return-void
.end method

.method public setInnerBorderWidth(I)V
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/yftech/settings/widget/RoundedImageView;->context:Landroid/content/Context;

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/yftech/settings/utils/Utils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/yftech/settings/widget/RoundedImageView;->innerBorderWidth:I

    .line 300
    invoke-direct {p0}, Lcom/yftech/settings/widget/RoundedImageView;->clearInnerBorderWidth()V

    .line 301
    invoke-virtual {p0}, Lcom/yftech/settings/widget/RoundedImageView;->invalidate()V

    return-void
.end method

.method public setMaskColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 335
    iput p1, p0, Lcom/yftech/settings/widget/RoundedImageView;->maskColor:I

    .line 336
    invoke-virtual {p0}, Lcom/yftech/settings/widget/RoundedImageView;->invalidate()V

    return-void
.end method
