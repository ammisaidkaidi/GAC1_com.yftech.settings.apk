.class Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog$2;
.super Lcom/yftech/settings/manager/BaseManager$ModelCallback;
.source "DrivingModeTrackDialDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;
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
.field final synthetic this$0:Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;


# direct methods
.method constructor <init>(Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog$2;->this$0:Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;

    invoke-direct {p0}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChanged(Lcom/yftech/settings/manager/CarDriveModeManager$Function;Ljava/lang/Object;)V
    .locals 1

    .line 135
    invoke-super {p0, p1, p2}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;->onValueChanged(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 136
    sget-object v0, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->DRIVE_MODE_VALUE:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    if-ne p1, v0, :cond_0

    .line 137
    check-cast p2, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->SPORT_PLUS_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    if-eq p2, p1, :cond_0

    .line 138
    iget-object p0, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog$2;->this$0:Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;

    invoke-virtual {p0}, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onValueChanged(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 132
    check-cast p1, Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog$2;->onValueChanged(Lcom/yftech/settings/manager/CarDriveModeManager$Function;Ljava/lang/Object;)V

    return-void
.end method
