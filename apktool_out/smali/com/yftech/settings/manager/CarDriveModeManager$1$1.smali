.class Lcom/yftech/settings/manager/CarDriveModeManager$1$1;
.super Ljava/lang/Object;
.source "CarDriveModeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/settings/manager/CarDriveModeManager$1;->onDriveModeChanged(Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yftech/settings/manager/CarDriveModeManager$1;

.field final synthetic val$driveMode:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;


# direct methods
.method constructor <init>(Lcom/yftech/settings/manager/CarDriveModeManager$1;Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/yftech/settings/manager/CarDriveModeManager$1$1;->this$1:Lcom/yftech/settings/manager/CarDriveModeManager$1;

    iput-object p2, p0, Lcom/yftech/settings/manager/CarDriveModeManager$1$1;->val$driveMode:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 104
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarPowerManager;->get()Lcom/yftech/vehicle/sdk/CarPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarPowerManager;->getPowerMode()Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerMode;

    move-result-object v0

    .line 105
    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerMode;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerMode;

    if-eq v0, v1, :cond_0

    .line 106
    iget-object v0, p0, Lcom/yftech/settings/manager/CarDriveModeManager$1$1;->this$1:Lcom/yftech/settings/manager/CarDriveModeManager$1;

    iget-object v0, v0, Lcom/yftech/settings/manager/CarDriveModeManager$1;->this$0:Lcom/yftech/settings/manager/CarDriveModeManager;

    sget-object v1, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->DRIVE_MODE_VALUE:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    iget-object v2, p0, Lcom/yftech/settings/manager/CarDriveModeManager$1$1;->this$1:Lcom/yftech/settings/manager/CarDriveModeManager$1;

    iget-object v2, v2, Lcom/yftech/settings/manager/CarDriveModeManager$1;->this$0:Lcom/yftech/settings/manager/CarDriveModeManager;

    iget-object p0, p0, Lcom/yftech/settings/manager/CarDriveModeManager$1$1;->val$driveMode:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    invoke-static {v2, p0}, Lcom/yftech/settings/manager/CarDriveModeManager;->access$200(Lcom/yftech/settings/manager/CarDriveModeManager;Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;)Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/yftech/settings/manager/CarDriveModeManager;->notifyOnValueChanged(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
