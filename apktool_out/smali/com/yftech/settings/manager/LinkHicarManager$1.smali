.class Lcom/yftech/settings/manager/LinkHicarManager$1;
.super Lcom/yftech/car/phonelink/CarPhoneLinkManager$CarPhoneLinkCallback;
.source "LinkHicarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/manager/LinkHicarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/manager/LinkHicarManager;


# direct methods
.method constructor <init>(Lcom/yftech/settings/manager/LinkHicarManager;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/yftech/settings/manager/LinkHicarManager$1;->this$0:Lcom/yftech/settings/manager/LinkHicarManager;

    invoke-direct {p0}, Lcom/yftech/car/phonelink/CarPhoneLinkManager$CarPhoneLinkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCarLinkDeviceListChanged(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/yftech/car/phonelink/CarLinkDevice;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-super {p0, p1, p2}, Lcom/yftech/car/phonelink/CarPhoneLinkManager$CarPhoneLinkCallback;->onCarLinkDeviceListChanged(Ljava/lang/String;Ljava/util/List;)V

    const-string p2, "LinkHicarManager"

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCarLinkDeviceListChanged() type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "hicar"

    .line 32
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 33
    iget-object p1, p0, Lcom/yftech/settings/manager/LinkHicarManager$1;->this$0:Lcom/yftech/settings/manager/LinkHicarManager;

    invoke-static {p1}, Lcom/yftech/settings/manager/LinkHicarManager;->access$000(Lcom/yftech/settings/manager/LinkHicarManager;)Ljava/util/List;

    move-result-object p1

    monitor-enter p1

    .line 34
    :try_start_0
    iget-object p0, p0, Lcom/yftech/settings/manager/LinkHicarManager$1;->this$0:Lcom/yftech/settings/manager/LinkHicarManager;

    invoke-static {p0}, Lcom/yftech/settings/manager/LinkHicarManager;->access$000(Lcom/yftech/settings/manager/LinkHicarManager;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/yftech/settings/manager/LinkHicarManager$LinkHicarListener;

    .line 35
    invoke-interface {p2}, Lcom/yftech/settings/manager/LinkHicarManager$LinkHicarListener;->onHiCarListChanged()V

    goto :goto_0

    .line 37
    :cond_0
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_1
    return-void
.end method
