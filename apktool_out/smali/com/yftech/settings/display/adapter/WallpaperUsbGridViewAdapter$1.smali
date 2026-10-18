.class Lcom/yftech/settings/display/adapter/WallpaperUsbGridViewAdapter$1;
.super Ljava/lang/Object;
.source "WallpaperUsbGridViewAdapter.java"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/settings/display/adapter/WallpaperUsbGridViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/RequestListener<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/display/adapter/WallpaperUsbGridViewAdapter;

.field final synthetic val$wallpaper:Lcom/yftech/car/media/data/entity/MediaFile;


# direct methods
.method constructor <init>(Lcom/yftech/settings/display/adapter/WallpaperUsbGridViewAdapter;Lcom/yftech/car/media/data/entity/MediaFile;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/yftech/settings/display/adapter/WallpaperUsbGridViewAdapter$1;->this$0:Lcom/yftech/settings/display/adapter/WallpaperUsbGridViewAdapter;

    iput-object p2, p0, Lcom/yftech/settings/display/adapter/WallpaperUsbGridViewAdapter$1;->val$wallpaper:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/GlideException;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/target/Target<",
            "Landroid/graphics/drawable/Drawable;",
            ">;Z)Z"
        }
    .end annotation

    .line 99
    iget-object p0, p0, Lcom/yftech/settings/display/adapter/WallpaperUsbGridViewAdapter$1;->val$wallpaper:Lcom/yftech/car/media/data/entity/MediaFile;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/yftech/car/media/data/entity/MediaFile;->setTab(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public onResourceReady(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/target/Target<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Z)Z"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0

    .line 96
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p5}, Lcom/yftech/settings/display/adapter/WallpaperUsbGridViewAdapter$1;->onResourceReady(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z

    move-result p0

    return p0
.end method
