.class Lcom/yftech/settings/manager/WallpaperManager$1;
.super Lcom/yftech/car/media/data/CarMediaDataManager$OnDataChangeCallback;
.source "WallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/manager/WallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/manager/WallpaperManager;


# direct methods
.method constructor <init>(Lcom/yftech/settings/manager/WallpaperManager;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/yftech/settings/manager/WallpaperManager$1;->this$0:Lcom/yftech/settings/manager/WallpaperManager;

    invoke-direct {p0}, Lcom/yftech/car/media/data/CarMediaDataManager$OnDataChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhotoDataChange(I)V
    .locals 0

    .line 49
    invoke-super {p0, p1}, Lcom/yftech/car/media/data/CarMediaDataManager$OnDataChangeCallback;->onPhotoDataChange(I)V

    return-void
.end method

.method public onScanStatusChange(IZ)V
    .locals 0

    .line 55
    invoke-super {p0, p1, p2}, Lcom/yftech/car/media/data/CarMediaDataManager$OnDataChangeCallback;->onScanStatusChange(IZ)V

    if-nez p2, :cond_0

    .line 57
    iget-object p0, p0, Lcom/yftech/settings/manager/WallpaperManager$1;->this$0:Lcom/yftech/settings/manager/WallpaperManager;

    invoke-static {p0}, Lcom/yftech/settings/manager/WallpaperManager;->access$100(Lcom/yftech/settings/manager/WallpaperManager;)Lcom/yftech/settings/manager/WallpaperManager$onWallpaperListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/yftech/settings/manager/WallpaperManager$onWallpaperListener;->onUsbScanningSuccessful(IZ)V

    :cond_0
    return-void
.end method

.method public onUsbStatusChange(IZ)V
    .locals 3

    .line 42
    invoke-super {p0, p1, p2}, Lcom/yftech/car/media/data/CarMediaDataManager$OnDataChangeCallback;->onUsbStatusChange(IZ)V

    .line 43
    invoke-static {}, Lcom/yftech/settings/manager/WallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUsbStatusChange usbIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isUsbExists:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object p0, p0, Lcom/yftech/settings/manager/WallpaperManager$1;->this$0:Lcom/yftech/settings/manager/WallpaperManager;

    invoke-static {p0}, Lcom/yftech/settings/manager/WallpaperManager;->access$100(Lcom/yftech/settings/manager/WallpaperManager;)Lcom/yftech/settings/manager/WallpaperManager$onWallpaperListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/yftech/settings/manager/WallpaperManager$onWallpaperListener;->onUsbStatusChange(IZ)V

    return-void
.end method
