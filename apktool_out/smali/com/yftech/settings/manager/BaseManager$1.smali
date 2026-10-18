.class Lcom/yftech/settings/manager/BaseManager$1;
.super Ljava/lang/Object;
.source "BaseManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/manager/BaseManager;
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

    .line 35
    iput-object p1, p0, Lcom/yftech/settings/manager/BaseManager$1;->this$0:Lcom/yftech/settings/manager/BaseManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/yftech/settings/manager/BaseManager$1;->this$0:Lcom/yftech/settings/manager/BaseManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/yftech/settings/manager/BaseManager;->mStartTimeout:Z

    .line 39
    iget-object p0, p0, Lcom/yftech/settings/manager/BaseManager$1;->this$0:Lcom/yftech/settings/manager/BaseManager;

    invoke-static {p0}, Lcom/yftech/settings/manager/BaseManager;->access$000(Lcom/yftech/settings/manager/BaseManager;)V

    return-void
.end method
