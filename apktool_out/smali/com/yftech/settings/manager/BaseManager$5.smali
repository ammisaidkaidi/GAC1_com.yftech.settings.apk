.class Lcom/yftech/settings/manager/BaseManager$5;
.super Ljava/lang/Object;
.source "BaseManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/settings/manager/BaseManager;->notifyOnTimeout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/manager/BaseManager;


# direct methods
.method constructor <init>(Lcom/yftech/settings/manager/BaseManager;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/yftech/settings/manager/BaseManager$5;->this$0:Lcom/yftech/settings/manager/BaseManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "BaseManager"

    const-string v1, "notifyOnTimeout()"

    .line 223
    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 224
    :goto_0
    iget-object v1, p0, Lcom/yftech/settings/manager/BaseManager$5;->this$0:Lcom/yftech/settings/manager/BaseManager;

    invoke-static {v1}, Lcom/yftech/settings/manager/BaseManager;->access$100(Lcom/yftech/settings/manager/BaseManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 225
    iget-object v1, p0, Lcom/yftech/settings/manager/BaseManager$5;->this$0:Lcom/yftech/settings/manager/BaseManager;

    invoke-static {v1}, Lcom/yftech/settings/manager/BaseManager;->access$100(Lcom/yftech/settings/manager/BaseManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/settings/manager/BaseManager$ModelCallback;

    invoke-virtual {v1}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;->onTimeout()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
