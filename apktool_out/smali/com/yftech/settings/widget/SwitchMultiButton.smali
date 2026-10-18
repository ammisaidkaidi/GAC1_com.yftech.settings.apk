.class public Lcom/yftech/settings/widget/SwitchMultiButton;
.super Landroid/view/View;
.source "SwitchMultiButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/settings/widget/SwitchMultiButton$OnSwitchListener;
    }
.end annotation


# static fields
.field private static final BG_COLOR:I = -0xb0aca6

.field private static final DISABLE_COLOR:I = -0x333334

.field private static final ENABLE_COLOR:I = -0x1

.field private static final FONTS_DIR:Ljava/lang/String; = "fonts/"

.field private static final SELECTED_COLOR:I = -0xa09a8c

.field private static final SELECTED_TAB:I = -0x1

.field private static final SELECTED_TEXT_COLOR:I = -0x1

.field private static final STROKE_RADIUS:F = 0.0f

.field private static final TAG:Ljava/lang/String; = "SwitchMultiButton"

.field private static final TEXT_SIZE:F = 14.0f

.field private static final UNSELECTED_TEXT_COLOR:I = -0x4c000001


# instance fields
.field private mBgColor:I

.field private mBgResource:I

.field private mDisableColor:I

.field private mEnable:Z

.field private mFillPaint:Landroid/graphics/Paint;

.field private mFontMetrics:Landroid/graphics/Paint$FontMetrics;

.field private mHeight:I

.field private mPaddingText:F

.field private mSelectedBgNinePatch:Landroid/graphics/NinePatch;

.field private mSelectedBgResource:I

.field private mSelectedColor:I

.field private mSelectedTab:I

.field private mSelectedTextColor:I

.field private mSelectedTextPaint:Landroid/text/TextPaint;

.field private mSelectedTypeface:Landroid/graphics/Typeface;

.field private mStrokePaint:Landroid/graphics/Paint;

.field private mStrokeRadius:F

.field private mTabNum:I

.field private mTabTexts:[Ljava/lang/String;

.field private mTabWidth:I

.field private mTextHeightOffset:F

.field private mTextSize:F

.field private mUnSelectedTextColor:I

.field private mUnSelectedTypeface:Landroid/graphics/Typeface;

.field private mUnselectedTextPaint:Landroid/text/TextPaint;

.field private mWidth:I

.field private maxTabWidth:F

.field private onSwitchListener:Lcom/yftech/settings/widget/SwitchMultiButton$OnSwitchListener;

.field private playSoundEffect:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, v0}, Lcom/yftech/settings/widget/SwitchMultiButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, p2, v0}, Lcom/yftech/settings/widget/SwitchMultiButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p3, "L"

    const-string v0, "R"

    .line 30
    filled-new-array {p3, v0}, [Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mTabTexts:[Ljava/lang/String;

    .line 31
    iget-object p3, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mTabTexts:[Ljava/lang/String;

    array-length p3, p3

    iput p3, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mTabNum:I

    const/4 p3, 0x1

    .line 62
    iput-boolean p3, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mEnable:Z

    .line 66
    iput-boolean p3, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->playSoundEffect:Z

    const/16 p3, 0xc8

    .line 69
    iput p3, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mTabWidth:I

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/widget/SwitchMultiButton;->initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    invoke-direct {p0}, Lcom/yftech/settings/widget/SwitchMultiButton;->initPaint()V

    return-void
.end method

.method private checkAttrs()V
    .locals 3

    .line 294
    iget v0, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mStrokeRadius:F

    iget v1, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mHeight:I

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 295
    iget v0, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mStrokeRadius:F

    :cond_0
    return-void
.end method

.method private getDefaultHeight()I
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget-object v1, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/yftech/settings/widget/SwitchMultiButton;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yftech/settings/widget/SwitchMultiButton;->getPaddingBottom()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private getDefaultWidth()I
    .locals 5

    .line 180
    iget-object v0, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mTabTexts:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 182
    iget-object v3, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mSelectedTextPaint:Landroid/text/TextPaint;

    iget-object v4, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mTabTexts:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    add-float/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 184
    :cond_0
    iget v2, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mPaddingText:F

    int-to-float v0, v0

    mul-float/2addr v2, v0

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    .line 186
    iget v0, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->maxTabWidth:F

    cmpl-float v0, v1, v0

    if-lez v0, :cond_1

    .line 187
    iget v1, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->maxTabWidth:F

    :cond_1
    float-to-int p0, v1

    return p0
.end method

.method private getExpectSize(II)I
    .locals 1

    .line 202
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p0

    .line 203
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_1

    if-eqz p0, :cond_2

    const/high16 v0, 0x40000000    # 2.0f

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    goto :goto_0

    .line 212
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_2
    :goto_0
    return p1
.end method

.method private getTabText(I)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-lez p1, :cond_0

    .line 474
    iget-object v1, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mTabTexts:[Ljava/lang/String;

    array-length v1, v1

    if-ge p1, v1, :cond_0

    .line 475
    iget-object p1, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mTabTexts:[Ljava/lang/String;

    iget p0, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mSelectedTab:I

    aget-object v0, p1, p0

    :cond_0
    return-object v0
.end method

.method private getTextWidth(F)F
    .locals 1

    const/high16 p0, 0x42f00000    # 120.0f

    cmpg-float v0, p1, p0

    if-gez v0, :cond_0

    return p0

    :cond_0
    return p1
.end method

.method private initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 92
    sget-object v0, Lcom/yftech/settings/R$styleable;->SwitchMultiButton:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0xa

    const/4 v0, 0x0

    .line 93
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mStrokeRadius:F

    const/16 p2, 0xd

    const/high16 v0, 0x41600000    # 14.0f

    .line 94
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mTextSize:F

    const/4 p2, 0x6

    const v0, -0xa09a8c

    .line 95
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mSelectedColor:I

    const/4 p2, 0x1

    const v0, -0xb0aca6

    .line 96
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mBgColor:I

    const/4 p2, -0x1

    const/16 v0, 0x8

    .line 97
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mSelectedTextColor:I

    const/16 v0, 0xe

    const v1, -0x4c000001

    .line 98
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mUnSelectedTextColor:I

    const/4 v0, 0x2

    const v1, -0x333334

    .line 99
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mDisableColor:I

    const/4 v0, 0x7

    .line 100
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mSelectedTab:I

    const/4 p2, 0x0

    .line 101
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mBgResource:I

    const/4 v0, 0x4

    const/high16 v1, 0x41f00000    # 30.0f

    .line 102
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mPaddingText:F

    const/4 v0, 0x3

    const/high16 v1, 0x44160000    # 600.0f

    .line 103
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->maxTabWidth:F

    const/4 v0, 0x5

    .line 104
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mSelectedBgResource:I

    const/16 v0, 0x9

    .line 105
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xf

    .line 106
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    .line 107
    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/yftech/settings/widget/SwitchMultiButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mTabTexts:[Ljava/lang/String;

    .line 110
    iget-object v2, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mTabTexts:[Ljava/lang/String;

    array-length v2, v2

    iput v2, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mTabNum:I

    .line 112
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 113
    invoke-static {v0, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mSelectedTypeface:Landroid/graphics/Typeface;

    .line 115
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 116
    invoke-static {v1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p2

    iput-object p2, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mUnSelectedTypeface:Landroid/graphics/Typeface;

    .line 118
    :cond_2
    iget p2, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mSelectedBgResource:I

    if-eqz p2, :cond_3

    .line 119
    invoke-virtual {p0}, Lcom/yftech/settings/widget/SwitchMultiButton;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget v0, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mSelectedBgResource:I

    invoke-static {p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 120
    new-instance v0, Landroid/graphics/NinePatch;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p2, v1, v2}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    iput-object v0, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mSelectedBgNinePatch:Landroid/graphics/NinePatch;

    .line 122
    :cond_3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private initPaint()V
    .locals 3

    .line 130
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mStrokePaint:Landroid/graphics/Paint;

    .line 131
    iget-object v0, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mStrokePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mBgColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 132
    iget-object v0, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 133
    iget-object v0, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mStrokePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 135
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mFillPaint:Landroid/graphics/Paint;

    .line 136
    iget-object v0, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mFillPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mSelectedColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 137
    iget-object v0, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mFillPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 138
    iget-object v0, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 140
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mSelectedTextPaint:Landroid/text/TextPaint;

    .line 141
    iget-object v0, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mSelectedTextPaint:Landroid/text/TextPaint;

    iget v2, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mTextSize:F

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 142
    iget-object v0, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mSelectedTextPaint:Landroid/text/TextPaint;

    iget v2, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mSelectedTextColor:I

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 143
    iget-object v0, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mSelectedTypeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mSelectedTextPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mSelectedTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mSelectedTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 148
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mUnselectedTextPaint:Landroid/text/TextPaint;

    .line 149
    iget-object v0, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mUnselectedTextPaint:Landroid/text/TextPaint;

    iget v2, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mTextSize:F

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 150
    iget-object v0, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mUnselectedTextPaint:Landroid/text/TextPaint;

    iget v2, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mUnSelectedTextColor:I

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 151
    iget-object v0, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mUnSelectedTypeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mUnselectedTextPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mUnSelectedTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mUnselectedTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 156
    iget-object v0, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mSelectedTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    iget-object v1, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mSelectedTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v1

    add-float/2addr v0, v1

    neg-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mTextHeightOffset:F

    .line 157
    iget-object v0, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mSelectedTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    return-void
.end method

.method private playKeySoundEffect()V
    .locals 3

    .line 485
    invoke-virtual {p0}, Lcom/yftech/settings/widget/SwitchMultiButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sound_effects_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 487
    invoke-virtual {p0}, Lcom/yftech/settings/widget/SwitchMultiButton;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    .line 488
    invoke-virtual {p0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public clearSelection()V
    .locals 1

    const/4 v0, -0x1

    .line 405
    iput v0, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mSelectedTab:I

    .line 406
    invoke-virtual {p0}, Lcom/yftech/settings/widget/SwitchMultiButton;->invalidate()V

    return-void
.end method

.method public getSelectedTab()I
    .locals 0

    .line 386
    iget p0, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mSelectedTab:I

    return p0
.end method

.method public getTabNum()I
    .locals 0

    .line 469
    iget p0, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mTabNum:I

    return p0
.end method

.method public isEnabled()Z
    .locals 0

    .line 364
    iget-boolean p0, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mEnable:Z

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 222
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 223
    iget-boolean v0, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mEnable:Z

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mStrokePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mDisableColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 225
    iget-object v0, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mFillPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mDisableColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 226
    iget-object v0, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mSelectedTextPaint:Landroid/text/TextPaint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_0

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mStrokePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mBgColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 230
    iget-object v0, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mFillPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mSelectedColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 234
    :goto_0
    iget v0, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mWidth:I

    int-to-float v0, v0

    .line 235
    iget v1, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mHeight:I

    int-to-float v1, v1

    .line 238
    iget v2, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mBgResource:I

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 239
    iget v0, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mBgResource:I

    invoke-virtual {p0, v0}, Lcom/yftech/settings/widget/SwitchMultiButton;->setBackgroundResource(I)V

    goto :goto_1

    .line 241
    :cond_1
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v3, v3, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v0, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mStrokeRadius:F

    iget v4, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mStrokeRadius:F

    iget-object v5, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_1
    const/4 v0, 0x0

    .line 246
    :goto_2
    iget v2, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mTabNum:I

    if-ge v0, v2, :cond_4

    .line 247
    iget-object v2, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mTabTexts:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 248
    iget-object v4, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mSelectedTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    .line 251
    iget v5, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mTabWidth:I

    int-to-float v5, v5

    int-to-float v6, v0

    mul-float/2addr v5, v6

    .line 253
    iget v6, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mTabWidth:I

    int-to-float v6, v6

    add-float/2addr v6, v5

    .line 255
    iget v7, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mSelectedTab:I

    const/high16 v8, 0x3f000000    # 0.5f

    const/high16 v9, 0x40000000    # 2.0f

    if-ne v0, v7, :cond_3

    .line 257
    iget-object v7, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mSelectedBgNinePatch:Landroid/graphics/NinePatch;

    if-eqz v7, :cond_2

    .line 258
    iget-object v7, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mSelectedBgNinePatch:Landroid/graphics/NinePatch;

    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10, v5, v3, v6, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v7, p1, v10}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    goto :goto_3

    .line 260
    :cond_2
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7, v5, v3, v6, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v10, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mStrokeRadius:F

    iget v11, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mStrokeRadius:F

    iget-object v12, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v10, v11, v12}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_3
    sub-float/2addr v6, v5

    sub-float/2addr v6, v4

    div-float/2addr v6, v9

    add-float/2addr v5, v6

    .line 263
    iget v4, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v8

    iget v6, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mTextHeightOffset:F

    add-float/2addr v4, v6

    iget-object v6, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mSelectedTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v5, v4, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_4

    :cond_3
    sub-float/2addr v6, v5

    sub-float/2addr v6, v4

    div-float/2addr v6, v9

    add-float/2addr v5, v6

    .line 267
    iget v4, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v8

    iget v6, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mTextHeightOffset:F

    add-float/2addr v4, v6

    iget-object v6, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mSelectedTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v5, v4, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 162
    invoke-direct {p0}, Lcom/yftech/settings/widget/SwitchMultiButton;->getDefaultWidth()I

    move-result v0

    .line 163
    invoke-direct {p0}, Lcom/yftech/settings/widget/SwitchMultiButton;->getDefaultHeight()I

    move-result v1

    .line 164
    invoke-direct {p0, v0, p1}, Lcom/yftech/settings/widget/SwitchMultiButton;->getExpectSize(II)I

    move-result p1

    invoke-direct {p0, v1, p2}, Lcom/yftech/settings/widget/SwitchMultiButton;->getExpectSize(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/yftech/settings/widget/SwitchMultiButton;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 284
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 285
    invoke-virtual {p0}, Lcom/yftech/settings/widget/SwitchMultiButton;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mWidth:I

    .line 286
    invoke-virtual {p0}, Lcom/yftech/settings/widget/SwitchMultiButton;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mHeight:I

    .line 287
    invoke-direct {p0}, Lcom/yftech/settings/widget/SwitchMultiButton;->checkAttrs()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 307
    iget-boolean v0, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mEnable:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 310
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 311
    iget-boolean v0, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->playSoundEffect:Z

    if-eqz v0, :cond_1

    .line 312
    invoke-direct {p0}, Lcom/yftech/settings/widget/SwitchMultiButton;->playKeySoundEffect()V

    .line 314
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 315
    iget v0, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mTabWidth:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    float-to-int p1, p1

    .line 316
    iget-object v0, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mTabTexts:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_2

    const-string p0, "SwitchMultiButton"

    const-string p1, "selectedTab array index out of bounds"

    .line 317
    invoke-static {p0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 320
    :cond_2
    iget v0, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mSelectedTab:I

    if-ne v0, p1, :cond_3

    const-string p0, "SwitchMultiButton"

    const-string p1, "selectedTab same"

    .line 321
    invoke-static {p0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 324
    :cond_3
    iput p1, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mSelectedTab:I

    .line 325
    iget-object v0, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->onSwitchListener:Lcom/yftech/settings/widget/SwitchMultiButton$OnSwitchListener;

    if-eqz v0, :cond_4

    .line 326
    iget-object v0, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->onSwitchListener:Lcom/yftech/settings/widget/SwitchMultiButton$OnSwitchListener;

    iget-object v2, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mTabTexts:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-interface {v0, p0, p1, v2, v1}, Lcom/yftech/settings/widget/SwitchMultiButton$OnSwitchListener;->onSwitch(Lcom/yftech/settings/widget/SwitchMultiButton;ILjava/lang/String;Z)V

    .line 328
    :cond_4
    invoke-virtual {p0}, Lcom/yftech/settings/widget/SwitchMultiButton;->invalidate()V

    :cond_5
    return v1
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 355
    invoke-virtual {p0}, Lcom/yftech/settings/widget/SwitchMultiButton;->isEnabled()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 358
    :cond_0
    iput-boolean p1, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mEnable:Z

    .line 359
    invoke-virtual {p0}, Lcom/yftech/settings/widget/SwitchMultiButton;->invalidate()V

    return-void
.end method

.method public setOnSwitchListener(Lcom/yftech/settings/widget/SwitchMultiButton$OnSwitchListener;)Lcom/yftech/settings/widget/SwitchMultiButton;
    .locals 0

    .line 376
    iput-object p1, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->onSwitchListener:Lcom/yftech/settings/widget/SwitchMultiButton$OnSwitchListener;

    return-object p0
.end method

.method public setPaddingText(I)V
    .locals 0

    int-to-float p1, p1

    .line 432
    iput p1, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mPaddingText:F

    .line 433
    invoke-virtual {p0}, Lcom/yftech/settings/widget/SwitchMultiButton;->invalidate()V

    return-void
.end method

.method public setPlaySoundEffect(Z)V
    .locals 0

    .line 481
    iput-boolean p1, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->playSoundEffect:Z

    return-void
.end method

.method public setSelectedTab(I)Lcom/yftech/settings/widget/SwitchMultiButton;
    .locals 3

    .line 396
    iput p1, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mSelectedTab:I

    .line 397
    invoke-virtual {p0}, Lcom/yftech/settings/widget/SwitchMultiButton;->invalidate()V

    .line 398
    iget-object v0, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->onSwitchListener:Lcom/yftech/settings/widget/SwitchMultiButton$OnSwitchListener;

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->onSwitchListener:Lcom/yftech/settings/widget/SwitchMultiButton$OnSwitchListener;

    invoke-direct {p0, p1}, Lcom/yftech/settings/widget/SwitchMultiButton;->getTabText(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, p0, p1, v1, v2}, Lcom/yftech/settings/widget/SwitchMultiButton$OnSwitchListener;->onSwitch(Lcom/yftech/settings/widget/SwitchMultiButton;ILjava/lang/String;Z)V

    :cond_0
    return-object p0
.end method

.method public varargs setText([Ljava/lang/String;)Lcom/yftech/settings/widget/SwitchMultiButton;
    .locals 0

    .line 425
    iput-object p1, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mTabTexts:[Ljava/lang/String;

    .line 426
    array-length p1, p1

    iput p1, p0, Lcom/yftech/settings/widget/SwitchMultiButton;->mTabNum:I

    .line 427
    invoke-virtual {p0}, Lcom/yftech/settings/widget/SwitchMultiButton;->requestLayout()V

    return-object p0
.end method
