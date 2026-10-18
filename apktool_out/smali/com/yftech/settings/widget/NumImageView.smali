.class public Lcom/yftech/settings/widget/NumImageView;
.super Landroid/widget/LinearLayout;
.source "NumImageView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NumImageView"


# instance fields
.field private IMG_NUM:[I

.field private IMG_NUM1:[I

.field private decimals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private img:[I

.field private imgType:I

.field private integers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private numImageViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private numberFigures:I

.field private numberFloat:F

.field private numberInt:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 86
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 58
    iput p1, p0, Lcom/yftech/settings/widget/NumImageView;->numberFigures:I

    .line 62
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yftech/settings/widget/NumImageView;->integers:Ljava/util/List;

    .line 67
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yftech/settings/widget/NumImageView;->decimals:Ljava/util/List;

    .line 71
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yftech/settings/widget/NumImageView;->numImageViews:Ljava/util/List;

    const/16 p1, 0xb

    .line 76
    new-array v0, p1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/yftech/settings/widget/NumImageView;->IMG_NUM:[I

    .line 80
    new-array p1, p1, [I

    fill-array-data p1, :array_1

    iput-object p1, p0, Lcom/yftech/settings/widget/NumImageView;->IMG_NUM1:[I

    return-void

    :array_0
    .array-data 4
        0x7f0b0131
        0x7f0b0132
        0x7f0b0133
        0x7f0b0134
        0x7f0b0135
        0x7f0b0136
        0x7f0b0137
        0x7f0b0138
        0x7f0b0139
        0x7f0b013a
        0x7f0b013b
    .end array-data

    :array_1
    .array-data 4
        0x7f0b00d6
        0x7f0b00d7
        0x7f0b00d8
        0x7f0b00d9
        0x7f0b00da
        0x7f0b00db
        0x7f0b00dc
        0x7f0b00dd
        0x7f0b00de
        0x7f0b00df
        0x7f0b00e0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 90
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lcom/yftech/settings/widget/NumImageView;->numberFigures:I

    .line 62
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/yftech/settings/widget/NumImageView;->integers:Ljava/util/List;

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/yftech/settings/widget/NumImageView;->decimals:Ljava/util/List;

    .line 71
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/yftech/settings/widget/NumImageView;->numImageViews:Ljava/util/List;

    const/16 v1, 0xb

    .line 76
    new-array v2, v1, [I

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/yftech/settings/widget/NumImageView;->IMG_NUM:[I

    .line 80
    new-array v1, v1, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/yftech/settings/widget/NumImageView;->IMG_NUM1:[I

    .line 91
    iput-object p1, p0, Lcom/yftech/settings/widget/NumImageView;->mContext:Landroid/content/Context;

    .line 92
    sget-object v1, Lcom/yftech/settings/R$styleable;->NumImageView:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x2

    .line 93
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/settings/widget/NumImageView;->numberInt:I

    const/4 p2, 0x1

    const/4 v1, 0x0

    .line 94
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/yftech/settings/widget/NumImageView;->numberFloat:F

    .line 95
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/yftech/settings/widget/NumImageView;->imgType:I

    .line 96
    sget-object p1, Lcom/yftech/settings/widget/NumImageView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NumImageView: imgType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yftech/settings/widget/NumImageView;->imgType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget p1, p0, Lcom/yftech/settings/widget/NumImageView;->imgType:I

    if-nez p1, :cond_0

    .line 98
    iget-object p1, p0, Lcom/yftech/settings/widget/NumImageView;->IMG_NUM:[I

    iput-object p1, p0, Lcom/yftech/settings/widget/NumImageView;->img:[I

    goto :goto_0

    .line 99
    :cond_0
    iget p1, p0, Lcom/yftech/settings/widget/NumImageView;->imgType:I

    if-ne p1, p2, :cond_1

    .line 100
    iget-object p1, p0, Lcom/yftech/settings/widget/NumImageView;->IMG_NUM1:[I

    iput-object p1, p0, Lcom/yftech/settings/widget/NumImageView;->img:[I

    :cond_1
    :goto_0
    return-void

    :array_0
    .array-data 4
        0x7f0b0131
        0x7f0b0132
        0x7f0b0133
        0x7f0b0134
        0x7f0b0135
        0x7f0b0136
        0x7f0b0137
        0x7f0b0138
        0x7f0b0139
        0x7f0b013a
        0x7f0b013b
    .end array-data

    :array_1
    .array-data 4
        0x7f0b00d6
        0x7f0b00d7
        0x7f0b00d8
        0x7f0b00d9
        0x7f0b00da
        0x7f0b00db
        0x7f0b00dc
        0x7f0b00dd
        0x7f0b00de
        0x7f0b00df
        0x7f0b00e0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 108
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 58
    iput p1, p0, Lcom/yftech/settings/widget/NumImageView;->numberFigures:I

    .line 62
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yftech/settings/widget/NumImageView;->integers:Ljava/util/List;

    .line 67
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yftech/settings/widget/NumImageView;->decimals:Ljava/util/List;

    .line 71
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yftech/settings/widget/NumImageView;->numImageViews:Ljava/util/List;

    const/16 p1, 0xb

    .line 76
    new-array p2, p1, [I

    fill-array-data p2, :array_0

    iput-object p2, p0, Lcom/yftech/settings/widget/NumImageView;->IMG_NUM:[I

    .line 80
    new-array p1, p1, [I

    fill-array-data p1, :array_1

    iput-object p1, p0, Lcom/yftech/settings/widget/NumImageView;->IMG_NUM1:[I

    return-void

    :array_0
    .array-data 4
        0x7f0b0131
        0x7f0b0132
        0x7f0b0133
        0x7f0b0134
        0x7f0b0135
        0x7f0b0136
        0x7f0b0137
        0x7f0b0138
        0x7f0b0139
        0x7f0b013a
        0x7f0b013b
    .end array-data

    :array_1
    .array-data 4
        0x7f0b00d6
        0x7f0b00d7
        0x7f0b00d8
        0x7f0b00d9
        0x7f0b00da
        0x7f0b00db
        0x7f0b00dc
        0x7f0b00dd
        0x7f0b00de
        0x7f0b00df
        0x7f0b00e0
    .end array-data
.end method

.method private decimalsSplit(I)V
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/yftech/settings/widget/NumImageView;->decimals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-nez p1, :cond_0

    .line 215
    sget-object v0, Lcom/yftech/settings/widget/NumImageView;->TAG:Ljava/lang/String;

    const-string v1, "decimalsSplit: number = 0"

    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object p0, p0, Lcom/yftech/settings/widget/NumImageView;->decimals:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 220
    rem-int/lit8 v0, p1, 0xa

    .line 221
    iget-object v1, p0, Lcom/yftech/settings/widget/NumImageView;->decimals:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    div-int/lit8 p1, p1, 0xa

    goto :goto_0

    .line 224
    :cond_1
    iget-object p1, p0, Lcom/yftech/settings/widget/NumImageView;->decimals:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 225
    sget-object p1, Lcom/yftech/settings/widget/NumImageView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "decimalsSplit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yftech/settings/widget/NumImageView;->decimals:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private decimalsSplit(Ljava/lang/String;)V
    .locals 3

    .line 170
    iget-object v0, p0, Lcom/yftech/settings/widget/NumImageView;->decimals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 171
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 172
    iget-object p1, p0, Lcom/yftech/settings/widget/NumImageView;->decimals:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    iget-object p0, p0, Lcom/yftech/settings/widget/NumImageView;->decimals:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 177
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 178
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v0

    .line 179
    iget-object v2, p0, Lcom/yftech/settings/widget/NumImageView;->decimals:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 181
    :cond_1
    iget-object p1, p0, Lcom/yftech/settings/widget/NumImageView;->decimals:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 182
    sget-object p1, Lcom/yftech/settings/widget/NumImageView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "decimalsSplit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yftech/settings/widget/NumImageView;->decimals:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initImageView()V
    .locals 5

    .line 232
    iget-object v0, p0, Lcom/yftech/settings/widget/NumImageView;->integers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yftech/settings/widget/NumImageView;->decimals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 233
    sget-object p0, Lcom/yftech/settings/widget/NumImageView;->TAG:Ljava/lang/String;

    const-string v0, "initImageView: numbers is null"

    invoke-static {p0, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/yftech/settings/widget/NumImageView;->numImageViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 238
    invoke-virtual {p0}, Lcom/yftech/settings/widget/NumImageView;->removeAllViews()V

    .line 240
    iget-object v0, p0, Lcom/yftech/settings/widget/NumImageView;->decimals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/yftech/settings/widget/NumImageView;->integers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/yftech/settings/widget/NumImageView;->decimals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/yftech/settings/widget/NumImageView;->integers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 246
    :goto_0
    iput v0, p0, Lcom/yftech/settings/widget/NumImageView;->numberFigures:I

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 248
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/yftech/settings/widget/NumImageView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 249
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 250
    iget-object v3, p0, Lcom/yftech/settings/widget/NumImageView;->numImageViews:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    invoke-virtual {p0, v2}, Lcom/yftech/settings/widget/NumImageView;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private integerSplit(I)V
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/yftech/settings/widget/NumImageView;->integers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    :goto_0
    if-eqz p1, :cond_1

    .line 195
    rem-int/lit8 v0, p1, 0xa

    .line 196
    iget-object v1, p0, Lcom/yftech/settings/widget/NumImageView;->integers:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    div-int/lit8 p1, p1, 0xa

    goto :goto_0

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/yftech/settings/widget/NumImageView;->integers:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    :cond_1
    iget-object p1, p0, Lcom/yftech/settings/widget/NumImageView;->integers:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 204
    sget-object p1, Lcom/yftech/settings/widget/NumImageView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numberSplit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yftech/settings/widget/NumImageView;->integers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateView()V
    .locals 4

    const/4 v0, 0x0

    .line 256
    :goto_0
    iget-object v1, p0, Lcom/yftech/settings/widget/NumImageView;->integers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 257
    iget-object v1, p0, Lcom/yftech/settings/widget/NumImageView;->numImageViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/yftech/settings/widget/NumImageView;->img:[I

    iget-object v3, p0, Lcom/yftech/settings/widget/NumImageView;->integers:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public setNumber(F)V
    .locals 5

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    move p1, v0

    .line 144
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%.2f"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 145
    sget-object v0, Lcom/yftech/settings/widget/NumImageView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setNumber: number-->"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\\."

    .line 146
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 147
    sget-object v0, Lcom/yftech/settings/widget/NumImageView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setNumber: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    aget-object v0, p1, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 149
    invoke-direct {p0, v0}, Lcom/yftech/settings/widget/NumImageView;->integerSplit(I)V

    .line 152
    aget-object p1, p1, v2

    invoke-direct {p0, p1}, Lcom/yftech/settings/widget/NumImageView;->decimalsSplit(Ljava/lang/String;)V

    .line 153
    iget p1, p0, Lcom/yftech/settings/widget/NumImageView;->numberFigures:I

    iget-object v0, p0, Lcom/yftech/settings/widget/NumImageView;->integers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/yftech/settings/widget/NumImageView;->decimals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    if-eq p1, v0, :cond_1

    .line 154
    invoke-direct {p0}, Lcom/yftech/settings/widget/NumImageView;->initImageView()V

    :cond_1
    move p1, v4

    .line 157
    :goto_0
    iget-object v0, p0, Lcom/yftech/settings/widget/NumImageView;->integers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 158
    iget-object v0, p0, Lcom/yftech/settings/widget/NumImageView;->numImageViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/yftech/settings/widget/NumImageView;->img:[I

    iget-object v3, p0, Lcom/yftech/settings/widget/NumImageView;->integers:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 161
    :cond_2
    iget-object p1, p0, Lcom/yftech/settings/widget/NumImageView;->numImageViews:Ljava/util/List;

    iget-object v0, p0, Lcom/yftech/settings/widget/NumImageView;->integers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/yftech/settings/widget/NumImageView;->img:[I

    const/16 v1, 0xa

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 163
    :goto_1
    iget-object p1, p0, Lcom/yftech/settings/widget/NumImageView;->decimals:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v4, p1, :cond_3

    .line 164
    iget-object p1, p0, Lcom/yftech/settings/widget/NumImageView;->numImageViews:Ljava/util/List;

    iget-object v0, p0, Lcom/yftech/settings/widget/NumImageView;->integers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v4

    add-int/2addr v0, v2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/yftech/settings/widget/NumImageView;->img:[I

    iget-object v1, p0, Lcom/yftech/settings/widget/NumImageView;->decimals:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public setNumber(I)V
    .locals 4

    const/4 v0, 0x0

    if-gez p1, :cond_0

    move p1, v0

    .line 124
    :cond_0
    invoke-direct {p0, p1}, Lcom/yftech/settings/widget/NumImageView;->integerSplit(I)V

    .line 125
    iget v1, p0, Lcom/yftech/settings/widget/NumImageView;->numberFigures:I

    iget-object v2, p0, Lcom/yftech/settings/widget/NumImageView;->integers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 126
    invoke-direct {p0}, Lcom/yftech/settings/widget/NumImageView;->initImageView()V

    .line 129
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/yftech/settings/widget/NumImageView;->integers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 130
    iget-object v1, p0, Lcom/yftech/settings/widget/NumImageView;->numImageViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/yftech/settings/widget/NumImageView;->img:[I

    iget-object v3, p0, Lcom/yftech/settings/widget/NumImageView;->integers:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    :cond_2
    sget-object v0, Lcom/yftech/settings/widget/NumImageView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNumber() number:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " integers-->"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/yftech/settings/widget/NumImageView;->integers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " \u6570\u5b57\u4f4d\u6570-->"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/yftech/settings/widget/NumImageView;->numberFigures:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " \u56fe\u7247\u6570\u91cf\uff1a"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/yftech/settings/widget/NumImageView;->numImageViews:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yftech/settings/widget/NumImageView;->integers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
