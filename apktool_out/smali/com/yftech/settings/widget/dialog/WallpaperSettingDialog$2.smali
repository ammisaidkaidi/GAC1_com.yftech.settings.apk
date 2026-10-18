.class Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog$2;
.super Ljava/lang/Object;
.source "WallpaperSettingDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->recycleImageViewBitmap()V
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

    .line 288
    iput-object p1, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog$2;->this$0:Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 291
    iget-object p0, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog$2;->this$0:Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;

    invoke-static {p0}, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->access$100(Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;)Lcom/yftech/settings/widget/ClipImageView;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yftech/settings/widget/ClipImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
