.class Lcom/yftech/settings/manager/BaseManager$4;
.super Ljava/lang/Object;
.source "BaseManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/settings/manager/BaseManager;->notifyOnValueChanged(Ljava/lang/Object;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/manager/BaseManager;

.field final synthetic val$function:Ljava/lang/Object;

.field final synthetic val$value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/yftech/settings/manager/BaseManager;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/yftech/settings/manager/BaseManager$4;->this$0:Lcom/yftech/settings/manager/BaseManager;

    iput-object p2, p0, Lcom/yftech/settings/manager/BaseManager$4;->val$function:Ljava/lang/Object;

    iput-object p3, p0, Lcom/yftech/settings/manager/BaseManager$4;->val$value:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 211
    iget-object v0, p0, Lcom/yftech/settings/manager/BaseManager$4;->this$0:Lcom/yftech/settings/manager/BaseManager;

    invoke-virtual {v0}, Lcom/yftech/settings/manager/BaseManager;->stopTimeout()Z

    const/4 v0, 0x0

    .line 212
    :goto_0
    iget-object v1, p0, Lcom/yftech/settings/manager/BaseManager$4;->this$0:Lcom/yftech/settings/manager/BaseManager;

    invoke-static {v1}, Lcom/yftech/settings/manager/BaseManager;->access$100(Lcom/yftech/settings/manager/BaseManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/yftech/settings/manager/BaseManager$4;->this$0:Lcom/yftech/settings/manager/BaseManager;

    invoke-static {v1}, Lcom/yftech/settings/manager/BaseManager;->access$100(Lcom/yftech/settings/manager/BaseManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/settings/manager/BaseManager$ModelCallback;

    iget-object v2, p0, Lcom/yftech/settings/manager/BaseManager$4;->val$function:Ljava/lang/Object;

    iget-object v3, p0, Lcom/yftech/settings/manager/BaseManager$4;->val$value:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;->onValueChanged(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
