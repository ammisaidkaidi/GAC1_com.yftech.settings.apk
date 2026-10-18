.class Lcom/yftech/settings/manager/CarDriveModeManager$2;
.super Ljava/lang/Object;
.source "CarDriveModeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/manager/CarDriveModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/manager/CarDriveModeManager;


# direct methods
.method constructor <init>(Lcom/yftech/settings/manager/CarDriveModeManager;)V
    .locals 0

    .line 584
    iput-object p1, p0, Lcom/yftech/settings/manager/CarDriveModeManager$2;->this$0:Lcom/yftech/settings/manager/CarDriveModeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 587
    iget-object v0, p0, Lcom/yftech/settings/manager/CarDriveModeManager$2;->this$0:Lcom/yftech/settings/manager/CarDriveModeManager;

    invoke-static {v0}, Lcom/yftech/settings/manager/CarDriveModeManager;->access$1000(Lcom/yftech/settings/manager/CarDriveModeManager;)Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/settings/manager/CarDriveModeManager$2;->this$0:Lcom/yftech/settings/manager/CarDriveModeManager;

    invoke-static {v0}, Lcom/yftech/settings/manager/CarDriveModeManager;->access$1000(Lcom/yftech/settings/manager/CarDriveModeManager;)Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/yftech/settings/manager/CarDriveModeManager$2;->this$0:Lcom/yftech/settings/manager/CarDriveModeManager;

    invoke-static {v0}, Lcom/yftech/settings/manager/CarDriveModeManager;->access$1000(Lcom/yftech/settings/manager/CarDriveModeManager;)Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->dismiss()V

    .line 589
    iget-object v0, p0, Lcom/yftech/settings/manager/CarDriveModeManager$2;->this$0:Lcom/yftech/settings/manager/CarDriveModeManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yftech/settings/manager/CarDriveModeManager;->access$1002(Lcom/yftech/settings/manager/CarDriveModeManager;Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;)Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/yftech/settings/manager/CarDriveModeManager$2;->this$0:Lcom/yftech/settings/manager/CarDriveModeManager;

    new-instance v1, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;

    iget-object v2, p0, Lcom/yftech/settings/manager/CarDriveModeManager$2;->this$0:Lcom/yftech/settings/manager/CarDriveModeManager;

    invoke-static {v2}, Lcom/yftech/settings/manager/CarDriveModeManager;->access$1100(Lcom/yftech/settings/manager/CarDriveModeManager;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/yftech/settings/manager/CarDriveModeManager;->access$1002(Lcom/yftech/settings/manager/CarDriveModeManager;Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;)Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;

    .line 592
    iget-object p0, p0, Lcom/yftech/settings/manager/CarDriveModeManager$2;->this$0:Lcom/yftech/settings/manager/CarDriveModeManager;

    invoke-static {p0}, Lcom/yftech/settings/manager/CarDriveModeManager;->access$1000(Lcom/yftech/settings/manager/CarDriveModeManager;)Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->show()V

    return-void
.end method
