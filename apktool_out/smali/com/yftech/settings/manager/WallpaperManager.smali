.class public Lcom/yftech/settings/manager/WallpaperManager;
.super Ljava/lang/Object;
.source "WallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/settings/manager/WallpaperManager$onWallpaperListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WallpaperManager"

.field private static mInstance:Lcom/yftech/settings/manager/WallpaperManager;


# instance fields
.field private defaultWallpaper:[I

.field private defaultWallpapers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/yftech/settings/manager/WallpaperManager$onWallpaperListener;

.field private mediaDataCallback:Lcom/yftech/car/media/data/CarMediaDataManager$OnDataChangeCallback;

.field private usbIndexes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    .line 24
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/yftech/settings/manager/WallpaperManager;->defaultWallpaper:[I

    .line 39
    new-instance v0, Lcom/yftech/settings/manager/WallpaperManager$1;

    invoke-direct {v0, p0}, Lcom/yftech/settings/manager/WallpaperManager$1;-><init>(Lcom/yftech/settings/manager/WallpaperManager;)V

    iput-object v0, p0, Lcom/yftech/settings/manager/WallpaperManager;->mediaDataCallback:Lcom/yftech/car/media/data/CarMediaDataManager$OnDataChangeCallback;

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0b0143
        0x7f0b0144
        0x7f0b0145
        0x7f0b0146
        0x7f0b0147
        0x7f0b0148
    .end array-data
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 13
    sget-object v0, Lcom/yftech/settings/manager/WallpaperManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/yftech/settings/manager/WallpaperManager;)Lcom/yftech/settings/manager/WallpaperManager$onWallpaperListener;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/yftech/settings/manager/WallpaperManager;->listener:Lcom/yftech/settings/manager/WallpaperManager$onWallpaperListener;

    return-object p0
.end method

.method public static getInstance()Lcom/yftech/settings/manager/WallpaperManager;
    .locals 1

    .line 32
    sget-object v0, Lcom/yftech/settings/manager/WallpaperManager;->mInstance:Lcom/yftech/settings/manager/WallpaperManager;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/yftech/settings/manager/WallpaperManager;

    invoke-direct {v0}, Lcom/yftech/settings/manager/WallpaperManager;-><init>()V

    sput-object v0, Lcom/yftech/settings/manager/WallpaperManager;->mInstance:Lcom/yftech/settings/manager/WallpaperManager;

    .line 35
    :cond_0
    sget-object v0, Lcom/yftech/settings/manager/WallpaperManager;->mInstance:Lcom/yftech/settings/manager/WallpaperManager;

    return-object v0
.end method


# virtual methods
.method public dInit()V
    .locals 1

    .line 68
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/settings/manager/WallpaperManager;->mediaDataCallback:Lcom/yftech/car/media/data/CarMediaDataManager$OnDataChangeCallback;

    invoke-virtual {v0, p0}, Lcom/yftech/car/media/data/CarMediaDataManager;->unregisterCarDataControlCallback(Lcom/yftech/car/media/data/CarMediaDataManager$OnDataChangeCallback;)V

    return-void
.end method

.method public getDefaultWallpaper()[I
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/yftech/settings/manager/WallpaperManager;->defaultWallpaper:[I

    return-object p0
.end method

.method public getPhotos(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;"
        }
    .end annotation

    .line 89
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/car/media/data/CarMediaDataManager;->getFilePhoto(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getUsbIndexes()[B
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/yftech/settings/manager/WallpaperManager;->usbIndexes:[B

    return-object p0
.end method

.method public init()V
    .locals 1

    .line 63
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/data/CarMediaDataManager;->getPhotoExistsDataIndex()[B

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/settings/manager/WallpaperManager;->usbIndexes:[B

    .line 64
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/settings/manager/WallpaperManager;->mediaDataCallback:Lcom/yftech/car/media/data/CarMediaDataManager$OnDataChangeCallback;

    invoke-virtual {v0, p0}, Lcom/yftech/car/media/data/CarMediaDataManager;->registerCarDataControlCallback(Lcom/yftech/car/media/data/CarMediaDataManager$OnDataChangeCallback;)V

    return-void
.end method

.method public isUsbExists(I)Z
    .locals 0

    .line 98
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/car/media/data/CarMediaDataManager;->isUsbExists(I)Z

    move-result p0

    return p0
.end method

.method public setOnWallpaperListener(Lcom/yftech/settings/manager/WallpaperManager$onWallpaperListener;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/yftech/settings/manager/WallpaperManager;->listener:Lcom/yftech/settings/manager/WallpaperManager$onWallpaperListener;

    return-void
.end method
