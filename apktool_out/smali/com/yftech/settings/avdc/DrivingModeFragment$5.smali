.class Lcom/yftech/settings/avdc/DrivingModeFragment$5;
.super Ljava/lang/Object;
.source "DrivingModeFragment.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/settings/avdc/DrivingModeFragment;->play(Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/avdc/DrivingModeFragment;


# direct methods
.method constructor <init>(Lcom/yftech/settings/avdc/DrivingModeFragment;)V
    .locals 0

    .line 533
    iput-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeFragment$5;->this$0:Lcom/yftech/settings/avdc/DrivingModeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 540
    iget-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeFragment$5;->this$0:Lcom/yftech/settings/avdc/DrivingModeFragment;

    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->DRIVE_MODE_VALUE:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    .line 541
    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarDriveModeManager;->getValue(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    .line 540
    invoke-static {p1, v0}, Lcom/yftech/settings/avdc/DrivingModeFragment;->access$1000(Lcom/yftech/settings/avdc/DrivingModeFragment;Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;)V

    .line 543
    iget-object p0, p0, Lcom/yftech/settings/avdc/DrivingModeFragment$5;->this$0:Lcom/yftech/settings/avdc/DrivingModeFragment;

    invoke-static {p0}, Lcom/yftech/settings/avdc/DrivingModeFragment;->access$900(Lcom/yftech/settings/avdc/DrivingModeFragment;)Lcom/yftech/settings/widget/VideoView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/settings/widget/VideoView;->suspend()V

    .line 544
    invoke-static {}, Lcom/yftech/settings/avdc/DrivingModeFragment;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onCompletion: VideoView play complete !!"

    invoke-static {p0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
