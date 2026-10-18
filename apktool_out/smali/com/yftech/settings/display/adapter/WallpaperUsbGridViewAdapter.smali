.class public Lcom/yftech/settings/display/adapter/WallpaperUsbGridViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "WallpaperUsbGridViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/settings/display/adapter/WallpaperUsbGridViewAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WallpaperUsbGridViewAdapter"


# instance fields
.field private context:Landroid/content/Context;

.field private mSelectMd5:Ljava/lang/String;

.field private mSelectPath:Ljava/lang/String;

.field private photos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wallpaper_original_path"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/settings/display/adapter/WallpaperUsbGridViewAdapter;->mSelectPath:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wallpaper_md5"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/settings/display/adapter/WallpaperUsbGridViewAdapter;->mSelectMd5:Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lcom/yftech/settings/display/adapter/WallpaperUsbGridViewAdapter;->context:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/yftech/settings/display/adapter/WallpaperUsbGridViewAdapter;->photos:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/yftech/settings/display/adapter/WallpaperUsbGridViewAdapter;->photos:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 62
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    .line 74
    iget-object p2, p0, Lcom/yftech/settings/display/adapter/WallpaperUsbGridViewAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0a0067

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 75
    new-instance p3, Lcom/yftech/settings/display/adapter/WallpaperUsbGridViewAdapter$ViewHolder;

    invoke-direct {p3, p0, v0}, Lcom/yftech/settings/display/adapter/WallpaperUsbGridViewAdapter$ViewHolder;-><init>(Lcom/yftech/settings/display/adapter/WallpaperUsbGridViewAdapter;Lcom/yftech/settings/display/adapter/WallpaperUsbGridViewAdapter$1;)V

    const v0, 0x7f08017f

    .line 76
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p3, Lcom/yftech/settings/display/adapter/WallpaperUsbGridViewAdapter$ViewHolder;->ivWallpaper:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f08023d

    .line 77
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p3, Lcom/yftech/settings/display/adapter/WallpaperUsbGridViewAdapter$ViewHolder;->viewEdge:Landroid/view/View;

    .line 78
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/yftech/settings/display/adapter/WallpaperUsbGridViewAdapter$ViewHolder;

    .line 82
    :goto_0
    iget-object v0, p3, Lcom/yftech/settings/display/adapter/WallpaperUsbGridViewAdapter$ViewHolder;->viewEdge:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/yftech/settings/display/adapter/WallpaperUsbGridViewAdapter;->photos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/car/media/data/entity/MediaFile;

    if-eqz p1, :cond_1

    .line 87
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-static {v0}, Lcom/facebook/common/util/UriUtil;->getUriForFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/yftech/settings/display/adapter/WallpaperUsbGridViewAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 95
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    new-instance v2, Lcom/yftech/settings/display/adapter/WallpaperUsbGridViewAdapter$1;

    invoke-direct {v2, p0, p1}, Lcom/yftech/settings/display/adapter/WallpaperUsbGridViewAdapter$1;-><init>(Lcom/yftech/settings/display/adapter/WallpaperUsbGridViewAdapter;Lcom/yftech/car/media/data/entity/MediaFile;)V

    .line 96
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->addListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    const v1, 0x7f0b00f8

    .line 108
    invoke-virtual {p1, v1}, Lcom/bumptech/glide/RequestBuilder;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    iget-object v1, p3, Lcom/yftech/settings/display/adapter/WallpaperUsbGridViewAdapter$ViewHolder;->ivWallpaper:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 109
    invoke-virtual {p1, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 111
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/yftech/settings/display/adapter/WallpaperUsbGridViewAdapter;->mSelectPath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/io/File;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/yftech/settings/utils/WallpaperUtils;->getFileMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/settings/display/adapter/WallpaperUsbGridViewAdapter;->mSelectMd5:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 112
    iget-object p0, p3, Lcom/yftech/settings/display/adapter/WallpaperUsbGridViewAdapter$ViewHolder;->viewEdge:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-object p2
.end method

.method public notifySelect()V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/yftech/settings/display/adapter/WallpaperUsbGridViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wallpaper_original_path"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/settings/display/adapter/WallpaperUsbGridViewAdapter;->mSelectPath:Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcom/yftech/settings/display/adapter/WallpaperUsbGridViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wallpaper_md5"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/settings/display/adapter/WallpaperUsbGridViewAdapter;->mSelectMd5:Ljava/lang/String;

    .line 52
    invoke-virtual {p0}, Lcom/yftech/settings/display/adapter/WallpaperUsbGridViewAdapter;->notifyDataSetChanged()V

    return-void
.end method
