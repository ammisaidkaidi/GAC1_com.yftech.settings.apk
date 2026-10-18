.class Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog$1;
.super Lcom/yftech/vehicle/sdk/CarInfoManager$CarInfoListener;
.source "DrivingModeTrackDialDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;


# direct methods
.method constructor <init>(Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog$1;->this$0:Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;

    invoke-direct {p0}, Lcom/yftech/vehicle/sdk/CarInfoManager$CarInfoListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPressureOfOilChanged(I)V
    .locals 3

    .line 88
    invoke-static {}, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPressureOfOilChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarInfoManager$CarInfoListener;->onPressureOfOilChanged(I)V

    .line 90
    iget-object v0, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog$1;->this$0:Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;

    invoke-static {v0}, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->access$300(Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog$1$3;

    invoke-direct {v1, p0, p1}, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog$1$3;-><init>(Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog$1;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPressureOfTurbineChanged(I)V
    .locals 3

    .line 114
    invoke-static {}, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPressureOfTurbineChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarInfoManager$CarInfoListener;->onPressureOfTurbineChanged(I)V

    .line 116
    iget-object v0, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog$1;->this$0:Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;

    invoke-static {v0}, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->access$300(Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog$1$5;

    invoke-direct {v1, p0, p1}, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog$1$5;-><init>(Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog$1;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTemperatureOfEngineWaterChanged(I)V
    .locals 3

    .line 62
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarInfoManager$CarInfoListener;->onTemperatureOfEngineWaterChanged(I)V

    .line 63
    invoke-static {}, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTemperatureOfEngineWaterChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog$1;->this$0:Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;

    invoke-static {v0}, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->access$300(Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog$1$1;

    invoke-direct {v1, p0, p1}, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog$1$1;-><init>(Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog$1;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTemperatureOfIntakeAirChanged(F)V
    .locals 3

    .line 101
    invoke-static {}, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTemperatureOfIntakeAirChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarInfoManager$CarInfoListener;->onTemperatureOfIntakeAirChanged(F)V

    .line 103
    iget-object v0, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog$1;->this$0:Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;

    invoke-static {v0}, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->access$300(Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog$1$4;

    invoke-direct {v1, p0, p1}, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog$1$4;-><init>(Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog$1;F)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTemperatureOfTransmissionOilChanged(I)V
    .locals 3

    .line 75
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarInfoManager$CarInfoListener;->onTemperatureOfTransmissionOilChanged(I)V

    .line 76
    invoke-static {}, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTemperatureOfTransmissionOilChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog$1;->this$0:Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;

    invoke-static {v0}, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->access$300(Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog$1$2;

    invoke-direct {v1, p0, p1}, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog$1$2;-><init>(Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog$1;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
