.class public Lcom/yftech/settings/display/adapter/WallpaperDefaultGridViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "WallpaperDefaultGridViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/settings/display/adapter/WallpaperDefaultGridViewAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private defaultWallpaper:[I

.field private mSelectPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;[I)V
    .locals 3

    .line 19
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wallpaper_original_path"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/settings/display/adapter/WallpaperDefaultGridViewAdapter;->mSelectPath:Ljava/lang/String;

    .line 24
    iget-object v0, p0, Lcom/yftech/settings/display/adapter/WallpaperDefaultGridViewAdapter;->mSelectPath:Ljava/lang/String;

    const v1, 0x7f0b0146

    if-nez v0, :cond_0

    const-string v0, "WallpaperDefaultGridViewAdapter: "

    const-string v2, "mSelectPath=null"

    .line 25
    invoke-static {v0, v2}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/settings/display/adapter/WallpaperDefaultGridViewAdapter;->mSelectPath:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "WallpaperDefaultGridViewAdapter: "

    .line 28
    iget-object v2, p0, Lcom/yftech/settings/display/adapter/WallpaperDefaultGridViewAdapter;->mSelectPath:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/yftech/settings/display/adapter/WallpaperDefaultGridViewAdapter;->mSelectPath:Ljava/lang/String;

    invoke-static {}, Lcom/yftech/settings/utils/WallpaperUtils;->getWallPaperOutputPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/settings/display/adapter/WallpaperDefaultGridViewAdapter;->mSelectPath:Ljava/lang/String;

    .line 33
    :cond_1
    :goto_0
    iput-object p2, p0, Lcom/yftech/settings/display/adapter/WallpaperDefaultGridViewAdapter;->defaultWallpaper:[I

    .line 34
    iput-object p1, p0, Lcom/yftech/settings/display/adapter/WallpaperDefaultGridViewAdapter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/yftech/settings/display/adapter/WallpaperDefaultGridViewAdapter;->defaultWallpaper:[I

    array-length p0, p0

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 55
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
    .locals 4

    if-nez p2, :cond_0

    .line 65
    new-instance p2, Lcom/yftech/settings/display/adapter/WallpaperDefaultGridViewAdapter$ViewHolder;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/yftech/settings/display/adapter/WallpaperDefaultGridViewAdapter$ViewHolder;-><init>(Lcom/yftech/settings/display/adapter/WallpaperDefaultGridViewAdapter;Lcom/yftech/settings/display/adapter/WallpaperDefaultGridViewAdapter$1;)V

    .line 66
    iget-object v0, p0, Lcom/yftech/settings/display/adapter/WallpaperDefaultGridViewAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a0067

    invoke-virtual {v0, v1, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f08017f

    .line 67
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p2, Lcom/yftech/settings/display/adapter/WallpaperDefaultGridViewAdapter$ViewHolder;->ivWallpaper:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f08023d

    .line 68
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p2, Lcom/yftech/settings/display/adapter/WallpaperDefaultGridViewAdapter$ViewHolder;->viewEdge:Landroid/view/View;

    .line 69
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/yftech/settings/display/adapter/WallpaperDefaultGridViewAdapter$ViewHolder;

    move-object v3, p3

    move-object p3, p2

    move-object p2, v3

    .line 73
    :goto_0
    iget-object v0, p2, Lcom/yftech/settings/display/adapter/WallpaperDefaultGridViewAdapter$ViewHolder;->viewEdge:Landroid/view/View;

    iget-object v1, p0, Lcom/yftech/settings/display/adapter/WallpaperDefaultGridViewAdapter;->defaultWallpaper:[I

    aget v1, v1, p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yftech/settings/display/adapter/WallpaperDefaultGridViewAdapter;->mSelectPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 74
    iget-object p2, p2, Lcom/yftech/settings/display/adapter/WallpaperDefaultGridViewAdapter$ViewHolder;->ivWallpaper:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object p0, p0, Lcom/yftech/settings/display/adapter/WallpaperDefaultGridViewAdapter;->defaultWallpaper:[I

    aget p0, p0, p1

    invoke-virtual {p2, p0}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageResource(I)V

    return-object p3
.end method

.method public notifySelect()V
    .locals 3

    .line 37
    iget-object v0, p0, Lcom/yftech/settings/display/adapter/WallpaperDefaultGridViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wallpaper_original_path"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/settings/display/adapter/WallpaperDefaultGridViewAdapter;->mSelectPath:Ljava/lang/String;

    .line 38
    iget-object v0, p0, Lcom/yftech/settings/display/adapter/WallpaperDefaultGridViewAdapter;->mSelectPath:Ljava/lang/String;

    const v1, 0x7f0b0146

    if-nez v0, :cond_0

    const-string v0, "WallpaperDefaultGridViewAdapter:notifySelect:"

    const-string v2, "mSelectPath= null"

    .line 39
    invoke-static {v0, v2}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/settings/display/adapter/WallpaperDefaultGridViewAdapter;->mSelectPath:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "WallpaperDefaultGridViewAdapter:notifySelect:"

    .line 42
    iget-object v2, p0, Lcom/yftech/settings/display/adapter/WallpaperDefaultGridViewAdapter;->mSelectPath:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/yftech/settings/display/adapter/WallpaperDefaultGridViewAdapter;->mSelectPath:Ljava/lang/String;

    invoke-static {}, Lcom/yftech/settings/utils/WallpaperUtils;->getWallPaperOutputPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/settings/display/adapter/WallpaperDefaultGridViewAdapter;->mSelectPath:Ljava/lang/String;

    .line 47
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/yftech/settings/display/adapter/WallpaperDefaultGridViewAdapter;->notifyDataSetChanged()V

    return-void
.end method
