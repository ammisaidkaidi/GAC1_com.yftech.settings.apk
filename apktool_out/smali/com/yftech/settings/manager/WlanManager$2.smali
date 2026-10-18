.class Lcom/yftech/settings/manager/WlanManager$2;
.super Ljava/lang/Object;
.source "WlanManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/settings/manager/WlanManager;->notifyOnWifiEnabledStateChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/manager/WlanManager;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/yftech/settings/manager/WlanManager;I)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/yftech/settings/manager/WlanManager$2;->this$0:Lcom/yftech/settings/manager/WlanManager;

    iput p2, p0, Lcom/yftech/settings/manager/WlanManager$2;->val$state:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x0

    .line 185
    :goto_0
    iget-object v1, p0, Lcom/yftech/settings/manager/WlanManager$2;->this$0:Lcom/yftech/settings/manager/WlanManager;

    invoke-static {v1}, Lcom/yftech/settings/manager/WlanManager;->access$000(Lcom/yftech/settings/manager/WlanManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 186
    iget-object v1, p0, Lcom/yftech/settings/manager/WlanManager$2;->this$0:Lcom/yftech/settings/manager/WlanManager;

    invoke-static {v1}, Lcom/yftech/settings/manager/WlanManager;->access$000(Lcom/yftech/settings/manager/WlanManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/settings/manager/WlanManager$WlanListener;

    iget v2, p0, Lcom/yftech/settings/manager/WlanManager$2;->val$state:I

    invoke-interface {v1, v2}, Lcom/yftech/settings/manager/WlanManager$WlanListener;->onWifiEnabledStateChanged(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
