.class public Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;
.super Lcom/yftech/settings/widget/dialog/BaseDialog;
.source "WallpaperSettingDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "WallpaperSettingDialog"

.field public static final WallPaperSettingAction:Ljava/lang/String; = "com.yftech.multimedia.action.wallpaper.setting"

.field public static final WallPaperSettingData:Ljava/lang/String; = "com.yftech.multimedia.data.wallpaper.setting"


# instance fields
.field private final RC_RESULT_FAILURE:I

.field private final RC_RESULT_SUCCESSFUL:I

.field private cancel:Landroid/widget/TextView;

.field private imagePath:Ljava/lang/String;

.field private isBroken:Z

.field private mClipImageView:Lcom/yftech/settings/widget/ClipImageView;

.field private mContext:Landroid/content/Context;

.field private mDegree:I

.field private mId:I

.field private mMaxWidth:I

.field private mSampleSize:I

.field private mSourceHeight:I

.field private mSourceWidth:I

.field private mToast:Landroid/widget/Toast;

.field private sure:Landroid/widget/TextView;

.field private wallpaper:Lcom/yftech/car/media/data/entity/MediaFile;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const v0, 0x7f0e0176

    .line 76
    invoke-direct {p0, p1, v0}, Lcom/yftech/settings/widget/dialog/BaseDialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->isBroken:Z

    const/16 v0, 0xa

    .line 72
    iput v0, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->RC_RESULT_SUCCESSFUL:I

    const/16 v0, 0x14

    .line 73
    iput v0, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->RC_RESULT_FAILURE:I

    .line 77
    iput-object p1, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->mMaxWidth:I

    return p0
.end method

.method static synthetic access$100(Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;)Lcom/yftech/settings/widget/ClipImageView;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->mClipImageView:Lcom/yftech/settings/widget/ClipImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->mDegree:I

    return p0
.end method

.method static synthetic access$202(Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;I)I
    .locals 0

    .line 40
    iput p1, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->mDegree:I

    return p1
.end method

.method static synthetic access$300(Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;)Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->imagePath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$402(Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;I)I
    .locals 0

    .line 40
    iput p1, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->mSourceWidth:I

    return p1
.end method

.method static synthetic access$502(Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;I)I
    .locals 0

    .line 40
    iput p1, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->mSourceHeight:I

    return p1
.end method

.method static synthetic access$600(Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->mSampleSize:I

    return p0
.end method

.method static synthetic access$602(Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;I)I
    .locals 0

    .line 40
    iput p1, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->mSampleSize:I

    return p1
.end method

.method static synthetic access$700(II)I
    .locals 0

    .line 40
    invoke-static {p0, p1}, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->findBestSample(II)I

    move-result p0

    return p0
.end method

.method private clipImage()V
    .locals 6

    .line 301
    :try_start_0
    invoke-static {}, Lcom/yftech/settings/utils/WallpaperUtils;->getWallPaperOutputPath()Ljava/lang/String;

    move-result-object v0

    .line 308
    sget-object v1, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copy outPath:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 311
    invoke-direct {p0}, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->createClippedBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_0

    .line 313
    sget-object v0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->TAG:Ljava/lang/String;

    const-string v1, "clipImage() createClippedBitmap is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 314
    iput-boolean v0, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->isBroken:Z

    return-void

    :cond_0
    const/4 v3, 0x0

    .line 317
    iput-boolean v3, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->isBroken:Z

    .line 319
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 321
    iget-object v2, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->wallpaper:Lcom/yftech/car/media/data/entity/MediaFile;

    if-eqz v2, :cond_1

    .line 322
    iget-object v2, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wallpaper_original_path"

    iget-object v4, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->imagePath:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 323
    iget-object v2, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wallpaper_md5"

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->imagePath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/yftech/settings/utils/WallpaperUtils;->getFileMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 325
    :cond_1
    iget-object v2, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wallpaper_original_path"

    iget v4, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->mId:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 328
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.yftech.multimedia.action.wallpaper.setting"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.yftech.multimedia.data.wallpaper.setting"

    .line 329
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    invoke-virtual {p0}, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 334
    :cond_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 336
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private createClippedBitmap()Landroid/graphics/Bitmap;
    .locals 13

    .line 221
    iget v0, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->mSampleSize:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 222
    iget-object p0, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->mClipImageView:Lcom/yftech/settings/widget/ClipImageView;

    invoke-virtual {p0}, Lcom/yftech/settings/widget/ClipImageView;->snapShotForViewGroup()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->mClipImageView:Lcom/yftech/settings/widget/ClipImageView;

    invoke-virtual {v0}, Lcom/yftech/settings/widget/ClipImageView;->getClipMatrixValues()[F

    move-result-object v0

    const/4 v1, 0x0

    .line 227
    aget v2, v0, v1

    const/4 v3, 0x2

    .line 228
    aget v3, v0, v3

    const/4 v4, 0x5

    .line 229
    aget v0, v0, v4

    .line 232
    iget-object v4, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->mClipImageView:Lcom/yftech/settings/widget/ClipImageView;

    invoke-virtual {v4}, Lcom/yftech/settings/widget/ClipImageView;->getClipBorder()Landroid/graphics/Rect;

    move-result-object v4

    neg-float v3, v3

    .line 233
    iget v5, v4, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    add-float/2addr v3, v5

    div-float/2addr v3, v2

    iget v5, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->mSampleSize:I

    int-to-float v5, v5

    mul-float/2addr v3, v5

    neg-float v0, v0

    .line 234
    iget v5, v4, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    add-float/2addr v0, v5

    div-float/2addr v0, v2

    iget v5, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->mSampleSize:I

    int-to-float v5, v5

    mul-float/2addr v0, v5

    .line 235
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v2

    iget v6, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->mSampleSize:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    .line 236
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    iget v2, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->mSampleSize:I

    int-to-float v2, v2

    mul-float/2addr v4, v2

    .line 239
    new-instance v2, Landroid/graphics/RectF;

    add-float v6, v3, v5

    add-float/2addr v4, v0

    invoke-direct {v2, v3, v0, v6, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 240
    invoke-direct {p0, v2}, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->getRealRect(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object v0

    .line 242
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 243
    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    .line 245
    iget v3, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->mDegree:I

    int-to-float v3, v3

    invoke-virtual {v11, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 247
    iget v3, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->mMaxWidth:I

    if-lez v3, :cond_1

    iget v3, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->mMaxWidth:I

    int-to-float v3, v3

    cmpl-float v3, v5, v3

    if-lez v3, :cond_1

    float-to-int v3, v5

    .line 248
    iget v4, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->mMaxWidth:I

    invoke-static {v3, v4}, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->findBestSample(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 250
    iget v3, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->mMaxWidth:I

    int-to-float v3, v3

    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    int-to-float v4, v4

    div-float/2addr v5, v4

    div-float/2addr v3, v5

    .line 251
    invoke-virtual {v11, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    :cond_1
    const/4 v3, 0x0

    .line 257
    :try_start_0
    iget-object v4, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->imagePath:Ljava/lang/String;

    invoke-static {v4, v1}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 258
    :try_start_1
    invoke-virtual {v1, v0, v2}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 259
    invoke-direct {p0}, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->recycleImageViewBitmap()V

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 260
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    const/4 v12, 0x0

    invoke-static/range {v6 .. v12}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    .line 265
    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_2

    .line 266
    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    :cond_2
    return-object v0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-object v3, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v1, v3

    goto :goto_1

    .line 263
    :catch_1
    :goto_0
    :try_start_2
    iget-object p0, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->mClipImageView:Lcom/yftech/settings/widget/ClipImageView;

    invoke-virtual {p0}, Lcom/yftech/settings/widget/ClipImageView;->snapShotForViewGroup()Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_3

    .line 265
    invoke-virtual {v3}, Landroid/graphics/BitmapRegionDecoder;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 266
    invoke-virtual {v3}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    :cond_3
    return-object p0

    :goto_1
    if-eqz v1, :cond_4

    .line 265
    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 266
    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 268
    :cond_4
    throw p0
.end method

.method private static findBestSample(II)I
    .locals 1

    .line 214
    div-int/lit8 p0, p0, 0x2

    const/4 v0, 0x1

    :goto_0
    if-le p0, p1, :cond_0

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 p0, p0, 0x2

    goto :goto_0

    :cond_0
    return v0
.end method

.method private getFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 347
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    .line 348
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, "."

    .line 349
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    .line 350
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 351
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getRealRect(Landroid/graphics/RectF;)Landroid/graphics/Rect;
    .locals 5

    .line 272
    iget v0, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->mDegree:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_2

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_0

    .line 283
    new-instance p0, Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    iget v1, p1, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    iget v2, p1, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    float-to-int p1, p1

    invoke-direct {p0, v0, v1, v2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0

    .line 280
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->mSourceWidth:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p1, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget p0, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->mSourceWidth:I

    int-to-float p0, p0

    iget v3, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p0, v3

    float-to-int p0, p0

    iget p1, p1, Landroid/graphics/RectF;->right:F

    float-to-int p1, p1

    invoke-direct {v0, v1, v2, p0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0

    .line 277
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->mSourceWidth:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->mSourceHeight:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->mSourceWidth:I

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iget p0, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->mSourceHeight:I

    int-to-float p0, p0

    iget p1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p0, p1

    float-to-int p0, p0

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0

    .line 274
    :cond_2
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    iget v2, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->mSourceHeight:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    iget p0, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->mSourceHeight:I

    int-to-float p0, p0

    iget p1, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr p0, p1

    float-to-int p0, p0

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public static readPictureDegree(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    .line 186
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string p0, "Orientation"

    const/4 v2, 0x1

    .line 187
    invoke-virtual {v1, p0, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_2

    const/4 v1, 0x6

    if-eq p0, v1, :cond_1

    const/16 v1, 0x8

    if-eq p0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 p0, 0x10e

    goto :goto_0

    :cond_1
    const/16 p0, 0x5a

    goto :goto_0

    :cond_2
    const/16 p0, 0xb4

    :goto_0
    move v0, p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 200
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return v0
.end method

.method private recycleImageViewBitmap()V
    .locals 2

    .line 288
    iget-object v0, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->mClipImageView:Lcom/yftech/settings/widget/ClipImageView;

    new-instance v1, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog$2;

    invoke-direct {v1, p0}, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog$2;-><init>(Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;)V

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/ClipImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setImageAndClipParams()V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->mClipImageView:Lcom/yftech/settings/widget/ClipImageView;

    new-instance v1, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog$1;

    invoke-direct {v1, p0}, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog$1;-><init>(Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;)V

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/ClipImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 389
    invoke-super {p0}, Lcom/yftech/settings/widget/dialog/BaseDialog;->dismiss()V

    const/4 v0, 0x0

    .line 390
    iput-boolean v0, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->isBroken:Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 359
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f080063

    if-eq p1, v0, :cond_3

    const v0, 0x7f080066

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 361
    :cond_0
    invoke-direct {p0}, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->clipImage()V

    .line 362
    iget-boolean p1, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->isBroken:Z

    if-eqz p1, :cond_2

    .line 363
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->mToast:Landroid/widget/Toast;

    if-eqz p1, :cond_1

    .line 364
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->mToast:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->cancel()V

    const/4 p1, 0x0

    .line 365
    iput-object p1, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->mToast:Landroid/widget/Toast;

    .line 367
    :cond_1
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d0107

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->mToast:Landroid/widget/Toast;

    .line 368
    iget-object p0, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 370
    :cond_2
    new-instance p1, Lcom/yftech/settings/widget/dialog/LoadingDialog;

    invoke-virtual {p0}, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/yftech/settings/widget/dialog/LoadingDialog;-><init>(Landroid/content/Context;)V

    .line 371
    invoke-virtual {p0}, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d0106

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yftech/settings/widget/dialog/LoadingDialog;->setTextViewContent(Ljava/lang/String;)V

    .line 372
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog$3;

    invoke-direct {v1, p0}, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog$3;-><init>(Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 378
    invoke-virtual {p1}, Lcom/yftech/settings/widget/dialog/LoadingDialog;->show()V

    goto :goto_0

    .line 382
    :cond_3
    invoke-virtual {p0}, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->dismiss()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 82
    invoke-super {p0, p1}, Lcom/yftech/settings/widget/dialog/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0a002a

    .line 83
    invoke-virtual {p0, p1}, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->setContentView(I)V

    .line 85
    invoke-virtual {p0}, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 87
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x8

    .line 88
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v1, 0x11

    .line 89
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, -0x1

    .line 90
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 91
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v1, 0x803

    .line 92
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 93
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 95
    :cond_0
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 96
    invoke-virtual {p0}, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 97
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p1, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->mMaxWidth:I

    const p1, 0x7f080066

    .line 99
    invoke-virtual {p0, p1}, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->sure:Landroid/widget/TextView;

    const p1, 0x7f080063

    .line 100
    invoke-virtual {p0, p1}, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->cancel:Landroid/widget/TextView;

    const p1, 0x7f080091

    .line 102
    invoke-virtual {p0, p1}, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/yftech/settings/widget/ClipImageView;

    iput-object p1, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->mClipImageView:Lcom/yftech/settings/widget/ClipImageView;

    .line 104
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->sure:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->cancel:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 395
    invoke-super {p0, p1}, Lcom/yftech/settings/widget/dialog/BaseDialog;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public setImageById(I)V
    .locals 1

    .line 110
    iput p1, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->mId:I

    .line 111
    iget-object v0, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 112
    iget-object p0, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->mClipImageView:Lcom/yftech/settings/widget/ClipImageView;

    invoke-virtual {p0, p1}, Lcom/yftech/settings/widget/ClipImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setImagePath(Lcom/yftech/car/media/data/entity/MediaFile;)V
    .locals 1

    .line 116
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->imagePath:Ljava/lang/String;

    .line 117
    iput-object p1, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->wallpaper:Lcom/yftech/car/media/data/entity/MediaFile;

    return-void
.end method

.method public show()V
    .locals 1

    .line 122
    invoke-super {p0}, Lcom/yftech/settings/widget/dialog/BaseDialog;->show()V

    .line 123
    iget-object v0, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->imagePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 124
    invoke-direct {p0}, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->setImageAndClipParams()V

    :cond_0
    return-void
.end method
