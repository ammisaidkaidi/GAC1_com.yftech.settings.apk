.class Lcom/yftech/settings/manager/CarPartsManager$6;
.super Ljava/lang/Object;
.source "CarPartsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/manager/CarPartsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/manager/CarPartsManager;


# direct methods
.method constructor <init>(Lcom/yftech/settings/manager/CarPartsManager;)V
    .locals 0

    .line 1515
    iput-object p1, p0, Lcom/yftech/settings/manager/CarPartsManager$6;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "CarPartsManager"

    const-string v1, "waitPSDDoorSpeedCallbackTimeoutRunnable()"

    .line 1518
    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1519
    iget-object v0, p0, Lcom/yftech/settings/manager/CarPartsManager$6;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yftech/settings/manager/CarPartsManager;->access$2702(Lcom/yftech/settings/manager/CarPartsManager;Z)Z

    .line 1520
    iget-object v0, p0, Lcom/yftech/settings/manager/CarPartsManager$6;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    invoke-static {v0, v1}, Lcom/yftech/settings/manager/CarPartsManager;->access$402(Lcom/yftech/settings/manager/CarPartsManager;Z)Z

    .line 1521
    iget-object v0, p0, Lcom/yftech/settings/manager/CarPartsManager$6;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    invoke-static {v0, v1}, Lcom/yftech/settings/manager/CarPartsManager;->access$602(Lcom/yftech/settings/manager/CarPartsManager;Z)Z

    .line 1522
    iget-object p0, p0, Lcom/yftech/settings/manager/CarPartsManager$6;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    invoke-static {p0}, Lcom/yftech/settings/manager/CarPartsManager;->access$2800(Lcom/yftech/settings/manager/CarPartsManager;)V

    return-void
.end method
