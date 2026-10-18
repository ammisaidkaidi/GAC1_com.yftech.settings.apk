.class Lcom/yftech/settings/display/adapter/WallpaperDefaultGridViewAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "WallpaperDefaultGridViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/display/adapter/WallpaperDefaultGridViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field public ivWallpaper:Lcom/facebook/drawee/view/SimpleDraweeView;

.field final synthetic this$0:Lcom/yftech/settings/display/adapter/WallpaperDefaultGridViewAdapter;

.field public viewEdge:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcom/yftech/settings/display/adapter/WallpaperDefaultGridViewAdapter;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/yftech/settings/display/adapter/WallpaperDefaultGridViewAdapter$ViewHolder;->this$0:Lcom/yftech/settings/display/adapter/WallpaperDefaultGridViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yftech/settings/display/adapter/WallpaperDefaultGridViewAdapter;Lcom/yftech/settings/display/adapter/WallpaperDefaultGridViewAdapter$1;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/yftech/settings/display/adapter/WallpaperDefaultGridViewAdapter$ViewHolder;-><init>(Lcom/yftech/settings/display/adapter/WallpaperDefaultGridViewAdapter;)V

    return-void
.end method
