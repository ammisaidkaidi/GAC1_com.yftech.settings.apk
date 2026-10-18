.class public Lcom/yftech/settings/widget/ImageViewExt;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "ImageViewExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/settings/widget/ImageViewExt$ScaleTypeMatrixExt;
    }
.end annotation


# static fields
.field public static final SCALE_TYPE_MATRIX_CENTER_CROP:I = 0x3

.field public static final SCALE_TYPE_MATRIX_LEFT_CROP:I = 0x1

.field public static final SCALE_TYPE_MATRIX_RIGHT_CROP:I = 0x2


# instance fields
.field private mScaleTypeMatrixExt:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, v0}, Lcom/yftech/settings/widget/ImageViewExt;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, p2, v0}, Lcom/yftech/settings/widget/ImageViewExt;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/yftech/settings/widget/ImageViewExt;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private handScaleTypeMatrixExt()V
    .locals 7

    .line 60
    invoke-virtual {p0}, Lcom/yftech/settings/widget/ImageViewExt;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/yftech/settings/widget/ImageViewExt;->mScaleTypeMatrixExt:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 62
    invoke-virtual {p0}, Lcom/yftech/settings/widget/ImageViewExt;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 63
    invoke-virtual {p0}, Lcom/yftech/settings/widget/ImageViewExt;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 65
    invoke-virtual {p0}, Lcom/yftech/settings/widget/ImageViewExt;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/yftech/settings/widget/ImageViewExt;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/yftech/settings/widget/ImageViewExt;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 66
    invoke-virtual {p0}, Lcom/yftech/settings/widget/ImageViewExt;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/yftech/settings/widget/ImageViewExt;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/yftech/settings/widget/ImageViewExt;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    mul-int v4, v0, v3

    mul-int v5, v2, v1

    const/4 v6, 0x0

    if-le v4, v5, :cond_0

    int-to-float v3, v3

    int-to-float v1, v1

    div-float/2addr v3, v1

    .line 71
    iget v1, p0, Lcom/yftech/settings/widget/ImageViewExt;->mScaleTypeMatrixExt:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    int-to-float v1, v2

    int-to-float v0, v0

    mul-float/2addr v0, v3

    sub-float/2addr v1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    goto :goto_1

    :pswitch_1
    int-to-float v1, v2

    int-to-float v0, v0

    mul-float/2addr v0, v3

    sub-float v0, v1, v0

    goto :goto_1

    :cond_0
    int-to-float v1, v2

    int-to-float v0, v0

    div-float v3, v1, v0

    :goto_0
    :pswitch_2
    move v0, v6

    .line 88
    :goto_1
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 89
    invoke-virtual {v1, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 90
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 91
    invoke-virtual {p0, v1}, Lcom/yftech/settings/widget/ImageViewExt;->setImageMatrix(Landroid/graphics/Matrix;)V

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


# virtual methods
.method protected init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 42
    sget-object v0, Lcom/yftech/settings/R$styleable;->ImageViewExt:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, -0x1

    .line 43
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/settings/widget/ImageViewExt;->mScaleTypeMatrixExt:I

    .line 44
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 49
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatImageView;->onSizeChanged(IIII)V

    .line 50
    invoke-direct {p0}, Lcom/yftech/settings/widget/ImageViewExt;->handScaleTypeMatrixExt()V

    return-void
.end method

.method public requestLayout()V
    .locals 0

    .line 55
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->requestLayout()V

    .line 56
    invoke-direct {p0}, Lcom/yftech/settings/widget/ImageViewExt;->handScaleTypeMatrixExt()V

    return-void
.end method

.method public setScaleTypeMatrixExt(I)V
    .locals 0
    .param p1    # I
        .annotation runtime Lcom/yftech/settings/widget/ImageViewExt$ScaleTypeMatrixExt;
        .end annotation
    .end param

    .line 96
    iput p1, p0, Lcom/yftech/settings/widget/ImageViewExt;->mScaleTypeMatrixExt:I

    .line 97
    invoke-virtual {p0}, Lcom/yftech/settings/widget/ImageViewExt;->requestLayout()V

    return-void
.end method
