.class Lcom/yftech/settings/avdc/DrivingModeFragment$2;
.super Lcom/yftech/settings/manager/BaseManager$ModelCallback;
.source "DrivingModeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/avdc/DrivingModeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yftech/settings/manager/BaseManager$ModelCallback<",
        "Lcom/yftech/settings/manager/CarDriveModeManager$Function;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/avdc/DrivingModeFragment;


# direct methods
.method constructor <init>(Lcom/yftech/settings/avdc/DrivingModeFragment;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeFragment$2;->this$0:Lcom/yftech/settings/avdc/DrivingModeFragment;

    invoke-direct {p0}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onOptionChanged(Lcom/yftech/settings/manager/CarDriveModeManager$Function;I)V
    .locals 0

    .line 115
    invoke-super {p0, p1, p2}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;->onOptionChanged(Ljava/lang/Object;I)V

    .line 116
    iget-object p0, p0, Lcom/yftech/settings/avdc/DrivingModeFragment$2;->this$0:Lcom/yftech/settings/avdc/DrivingModeFragment;

    invoke-static {p0, p1, p2}, Lcom/yftech/settings/avdc/DrivingModeFragment;->access$300(Lcom/yftech/settings/avdc/DrivingModeFragment;Lcom/yftech/settings/manager/CarDriveModeManager$Function;I)V

    return-void
.end method

.method public bridge synthetic onOptionChanged(Ljava/lang/Object;I)V
    .locals 0

    .line 112
    check-cast p1, Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/settings/avdc/DrivingModeFragment$2;->onOptionChanged(Lcom/yftech/settings/manager/CarDriveModeManager$Function;I)V

    return-void
.end method

.method public onTimeout()V
    .locals 0

    .line 146
    invoke-super {p0}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;->onTimeout()V

    .line 147
    iget-object p0, p0, Lcom/yftech/settings/avdc/DrivingModeFragment$2;->this$0:Lcom/yftech/settings/avdc/DrivingModeFragment;

    invoke-static {p0}, Lcom/yftech/settings/avdc/DrivingModeFragment;->access$600(Lcom/yftech/settings/avdc/DrivingModeFragment;)V

    return-void
.end method

.method public onValueChanged(Lcom/yftech/settings/manager/CarDriveModeManager$Function;Ljava/lang/Object;)V
    .locals 2

    .line 121
    invoke-super {p0, p1, p2}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;->onValueChanged(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 124
    invoke-static {}, Lcom/yftech/settings/avdc/DrivingModeFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onValueChanged: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    sget-object v0, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->DRIVE_MODE_VALUE:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    if-ne p1, v0, :cond_0

    .line 126
    iget-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeFragment$2;->this$0:Lcom/yftech/settings/avdc/DrivingModeFragment;

    check-cast p2, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    invoke-static {p1, p2}, Lcom/yftech/settings/avdc/DrivingModeFragment;->access$400(Lcom/yftech/settings/avdc/DrivingModeFragment;Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;)V

    .line 127
    iget-object p0, p0, Lcom/yftech/settings/avdc/DrivingModeFragment$2;->this$0:Lcom/yftech/settings/avdc/DrivingModeFragment;

    invoke-static {p0, p2}, Lcom/yftech/settings/avdc/DrivingModeFragment;->access$502(Lcom/yftech/settings/avdc/DrivingModeFragment;Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;)Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    :cond_0
    return-void
.end method

.method public bridge synthetic onValueChanged(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 112
    check-cast p1, Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/settings/avdc/DrivingModeFragment$2;->onValueChanged(Lcom/yftech/settings/manager/CarDriveModeManager$Function;Ljava/lang/Object;)V

    return-void
.end method
