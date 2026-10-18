.class Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog$1;
.super Ljava/lang/Object;
.source "WallpaperSettingDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->setImageAndClipParams()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;


# direct methods
.method constructor <init>(Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog$1;->this$0:Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 135
    iget-object v0, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog$1;->this$0:Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;

    invoke-static {v0}, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->access$100(Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;)Lcom/yftech/settings/widget/ClipImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog$1;->this$0:Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;

    invoke-static {v1}, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->access$000(Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/ClipImageView;->setMaxOutputWidth(I)V

    .line 137
    iget-object v0, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog$1;->this$0:Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;

    iget-object v1, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog$1;->this$0:Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;

    invoke-static {v1}, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->access$300(Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->readPictureDegree(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->access$202(Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;I)I

    .line 139
    iget-object v0, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog$1;->this$0:Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;

    invoke-static {v0}, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->access$200(Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x5a

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog$1;->this$0:Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;

    invoke-static {v0}, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->access$200(Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;)I

    move-result v0

    const/16 v3, 0x10e

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 141
    :goto_1
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 142
    iput-boolean v2, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 143
    iget-object v2, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog$1;->this$0:Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;

    invoke-static {v2}, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->access$300(Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 145
    iget-object v2, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog$1;->this$0:Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;

    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v2, v4}, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->access$402(Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;I)I

    .line 146
    iget-object v2, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog$1;->this$0:Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;

    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v2, v4}, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->access$502(Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;I)I

    if-eqz v0, :cond_2

    .line 149
    iget v0, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    goto :goto_2

    :cond_2
    iget v0, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 152
    :goto_2
    iget-object v2, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog$1;->this$0:Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;

    iget-object v4, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog$1;->this$0:Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;

    invoke-static {v4}, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->access$100(Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;)Lcom/yftech/settings/widget/ClipImageView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yftech/settings/widget/ClipImageView;->getClipBorder()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-static {v0, v4}, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->access$700(II)I

    move-result v0

    invoke-static {v2, v0}, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->access$602(Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;I)I

    .line 154
    iput-boolean v1, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 155
    iget-object v0, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog$1;->this$0:Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;

    invoke-static {v0}, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->access$600(Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;)I

    move-result v0

    iput v0, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 156
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v0, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 157
    iget-object v0, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog$1;->this$0:Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;

    invoke-static {v0}, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->access$300(Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 161
    iget-object v1, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog$1;->this$0:Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;

    invoke-static {v1}, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->access$200(Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;)I

    move-result v1

    if-nez v1, :cond_3

    goto :goto_3

    .line 164
    :cond_3
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 165
    iget-object v1, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog$1;->this$0:Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;

    invoke-static {v1}, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->access$200(Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v9, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 166
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v10, 0x0

    move-object v4, v0

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eq v1, v0, :cond_4

    .line 167
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_4

    .line 168
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    move-object v0, v1

    .line 171
    :goto_3
    iget-object p0, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog$1;->this$0:Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;

    invoke-static {p0}, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->access$100(Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;)Lcom/yftech/settings/widget/ClipImageView;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/yftech/settings/widget/ClipImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
