.class Lcom/yftech/settings/manager/CarDriveModeManager$1;
.super Lcom/yftech/vehicle/sdk/CarDriveManager$CarDriveListener;
.source "CarDriveModeManager.java"


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

    .line 75
    iput-object p1, p0, Lcom/yftech/settings/manager/CarDriveModeManager$1;->this$0:Lcom/yftech/settings/manager/CarDriveModeManager;

    invoke-direct {p0}, Lcom/yftech/vehicle/sdk/CarDriveManager$CarDriveListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAssistParaSwitchReqStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V
    .locals 3

    .line 141
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarDriveManager$CarDriveListener;->onAssistParaSwitchReqStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V

    .line 142
    iget-object v0, p0, Lcom/yftech/settings/manager/CarDriveModeManager$1;->this$0:Lcom/yftech/settings/manager/CarDriveModeManager;

    sget-object v1, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->EPS_STYLE_OPTION:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarDriveModeManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 146
    :cond_0
    sget-object v0, Lcom/yftech/settings/manager/CarDriveModeManager$3;->$SwitchMap$com$yftech$vehicle$internal$adapter$IBaseApi$EnableState:[I

    invoke-virtual {p1}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 151
    :pswitch_0
    iget-object v0, p0, Lcom/yftech/settings/manager/CarDriveModeManager$1;->this$0:Lcom/yftech/settings/manager/CarDriveModeManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yftech/settings/manager/CarDriveModeManager;->access$402(Lcom/yftech/settings/manager/CarDriveModeManager;Z)Z

    goto :goto_0

    .line 148
    :pswitch_1
    iget-object v0, p0, Lcom/yftech/settings/manager/CarDriveModeManager$1;->this$0:Lcom/yftech/settings/manager/CarDriveModeManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yftech/settings/manager/CarDriveModeManager;->access$402(Lcom/yftech/settings/manager/CarDriveModeManager;Z)Z

    :goto_0
    const-string v0, "CarDriveModeManager"

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAssistParaSwitchReqStateChanged() enableState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " mEpsStyleEnable:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/yftech/settings/manager/CarDriveModeManager$1;->this$0:Lcom/yftech/settings/manager/CarDriveModeManager;

    invoke-static {p1}, Lcom/yftech/settings/manager/CarDriveModeManager;->access$400(Lcom/yftech/settings/manager/CarDriveModeManager;)Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object p1, p0, Lcom/yftech/settings/manager/CarDriveModeManager$1;->this$0:Lcom/yftech/settings/manager/CarDriveModeManager;

    sget-object v0, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->EPS_STYLE_ENABLE_STATE:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    iget-object p0, p0, Lcom/yftech/settings/manager/CarDriveModeManager$1;->this$0:Lcom/yftech/settings/manager/CarDriveModeManager;

    invoke-static {p0}, Lcom/yftech/settings/manager/CarDriveModeManager;->access$400(Lcom/yftech/settings/manager/CarDriveModeManager;)Z

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/yftech/settings/manager/CarDriveModeManager;->notifyOnEnableChanged(Ljava/lang/Object;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onBcsVdcOffStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarDrive$VdcOffState;)V
    .locals 4

    .line 173
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarDriveManager$CarDriveListener;->onBcsVdcOffStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarDrive$VdcOffState;)V

    .line 174
    iget-object v0, p0, Lcom/yftech/settings/manager/CarDriveModeManager$1;->this$0:Lcom/yftech/settings/manager/CarDriveModeManager;

    sget-object v1, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->ESP_STYLE_OPTION:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarDriveModeManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 177
    :cond_0
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDriveManager;->get()Lcom/yftech/vehicle/sdk/CarDriveManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarDriveManager;->getEspStyle()Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;

    move-result-object v0

    const-string v1, "CarDriveModeManager"

    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBcsVdcOffStateChanged state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " style:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v1, p0, Lcom/yftech/settings/manager/CarDriveModeManager$1;->this$0:Lcom/yftech/settings/manager/CarDriveModeManager;

    invoke-static {v1, v0, p1}, Lcom/yftech/settings/manager/CarDriveModeManager;->access$500(Lcom/yftech/settings/manager/CarDriveModeManager;Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;Lcom/yftech/vehicle/internal/adapter/ICarDrive$VdcOffState;)I

    move-result p1

    .line 180
    iget-object p0, p0, Lcom/yftech/settings/manager/CarDriveModeManager$1;->this$0:Lcom/yftech/settings/manager/CarDriveModeManager;

    sget-object v0, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->ESP_STYLE_OPTION:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {p0, v0, p1}, Lcom/yftech/settings/manager/CarDriveModeManager;->notifyOnOptionChanged(Ljava/lang/Object;I)V

    return-void
.end method

.method public onDriveModeChanged(Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;)V
    .locals 3

    .line 78
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarDriveManager$CarDriveListener;->onDriveModeChanged(Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;)V

    .line 79
    iget-object v0, p0, Lcom/yftech/settings/manager/CarDriveModeManager$1;->this$0:Lcom/yftech/settings/manager/CarDriveModeManager;

    sget-object v1, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->DRIVE_MODE_VALUE:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarDriveModeManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "CarDriveModeManager"

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDriveModeChanged driveMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->ECO_PRO_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->COMFORT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->SPORT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->SPORT_PLUS_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    if-eq p1, v0, :cond_1

    return-void

    .line 95
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->SPORT_PLUS_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    if-eq p1, v0, :cond_2

    .line 96
    iget-object v0, p0, Lcom/yftech/settings/manager/CarDriveModeManager$1;->this$0:Lcom/yftech/settings/manager/CarDriveModeManager;

    iget-object v0, v0, Lcom/yftech/settings/manager/CarDriveModeManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yftech/settings/manager/CarDriveModeManager$1;->this$0:Lcom/yftech/settings/manager/CarDriveModeManager;

    invoke-static {v1}, Lcom/yftech/settings/manager/CarDriveModeManager;->access$000(Lcom/yftech/settings/manager/CarDriveModeManager;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/yftech/settings/manager/CarDriveModeManager$1;->this$0:Lcom/yftech/settings/manager/CarDriveModeManager;

    invoke-static {v0}, Lcom/yftech/settings/manager/CarDriveModeManager;->access$100(Lcom/yftech/settings/manager/CarDriveModeManager;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 101
    iget-object v0, p0, Lcom/yftech/settings/manager/CarDriveModeManager$1;->this$0:Lcom/yftech/settings/manager/CarDriveModeManager;

    iget-object v0, v0, Lcom/yftech/settings/manager/CarDriveModeManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/yftech/settings/manager/CarDriveModeManager$1$1;

    invoke-direct {v1, p0, p1}, Lcom/yftech/settings/manager/CarDriveModeManager$1$1;-><init>(Lcom/yftech/settings/manager/CarDriveModeManager$1;Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;)V

    const-wide/16 p0, 0xfa

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 111
    :cond_3
    iget-object v0, p0, Lcom/yftech/settings/manager/CarDriveModeManager$1;->this$0:Lcom/yftech/settings/manager/CarDriveModeManager;

    sget-object v1, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->DRIVE_MODE_VALUE:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    iget-object p0, p0, Lcom/yftech/settings/manager/CarDriveModeManager$1;->this$0:Lcom/yftech/settings/manager/CarDriveModeManager;

    invoke-static {p0, p1}, Lcom/yftech/settings/manager/CarDriveModeManager;->access$200(Lcom/yftech/settings/manager/CarDriveModeManager;Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;)Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/yftech/settings/manager/CarDriveModeManager;->notifyOnValueChanged(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onDriveSystemModeChanged(Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;)V
    .locals 3

    .line 215
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarDriveManager$CarDriveListener;->onDriveSystemModeChanged(Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;)V

    const-string v0, "CarDriveModeManager"

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDriveSystemModeChanged mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/yftech/settings/manager/CarDriveModeManager$1;->this$0:Lcom/yftech/settings/manager/CarDriveModeManager;

    sget-object v1, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->DRIVE_SYSTEM_MODE_OPTION:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    iget-object p0, p0, Lcom/yftech/settings/manager/CarDriveModeManager$1;->this$0:Lcom/yftech/settings/manager/CarDriveModeManager;

    invoke-static {p0, p1}, Lcom/yftech/settings/manager/CarDriveModeManager;->access$900(Lcom/yftech/settings/manager/CarDriveModeManager;Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/yftech/settings/manager/CarDriveModeManager;->notifyOnOptionChanged(Ljava/lang/Object;I)V

    return-void
.end method

.method public onEMSEngineWaveSwitchStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchState;)V
    .locals 3

    .line 185
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarDriveManager$CarDriveListener;->onEMSEngineWaveSwitchStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchState;)V

    .line 186
    iget-object v0, p0, Lcom/yftech/settings/manager/CarDriveModeManager$1;->this$0:Lcom/yftech/settings/manager/CarDriveModeManager;

    sget-object v1, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->EMS_ENGINE_WAVE_ENABLE:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarDriveModeManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/yftech/settings/manager/CarDriveModeManager$1;->this$0:Lcom/yftech/settings/manager/CarDriveModeManager;

    iget-object v1, p0, Lcom/yftech/settings/manager/CarDriveModeManager$1;->this$0:Lcom/yftech/settings/manager/CarDriveModeManager;

    iget-object v2, p0, Lcom/yftech/settings/manager/CarDriveModeManager$1;->this$0:Lcom/yftech/settings/manager/CarDriveModeManager;

    invoke-static {v2}, Lcom/yftech/settings/manager/CarDriveModeManager;->access$600(Lcom/yftech/settings/manager/CarDriveModeManager;)Z

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/yftech/settings/manager/CarDriveModeManager;->getValidSwitchEnable(Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchState;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/yftech/settings/manager/CarDriveModeManager;->access$602(Lcom/yftech/settings/manager/CarDriveModeManager;Z)Z

    const-string v0, "CarDriveModeManager"

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEMSEngineWaveSwitchStateChanged state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " enable:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/yftech/settings/manager/CarDriveModeManager$1;->this$0:Lcom/yftech/settings/manager/CarDriveModeManager;

    invoke-static {p1}, Lcom/yftech/settings/manager/CarDriveModeManager;->access$600(Lcom/yftech/settings/manager/CarDriveModeManager;)Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object p1, p0, Lcom/yftech/settings/manager/CarDriveModeManager$1;->this$0:Lcom/yftech/settings/manager/CarDriveModeManager;

    sget-object v0, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->EMS_ENGINE_WAVE_ENABLE:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    iget-object p0, p0, Lcom/yftech/settings/manager/CarDriveModeManager$1;->this$0:Lcom/yftech/settings/manager/CarDriveModeManager;

    invoke-static {p0}, Lcom/yftech/settings/manager/CarDriveModeManager;->access$600(Lcom/yftech/settings/manager/CarDriveModeManager;)Z

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/yftech/settings/manager/CarDriveModeManager;->notifyOnEnableChanged(Ljava/lang/Object;Z)V

    return-void
.end method

.method public onEPSStyleChanged(Lcom/yftech/vehicle/internal/adapter/ICarDrive$EPSStyle;)V
    .locals 3

    .line 117
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarDriveManager$CarDriveListener;->onEPSStyleChanged(Lcom/yftech/vehicle/internal/adapter/ICarDrive$EPSStyle;)V

    .line 118
    iget-object v0, p0, Lcom/yftech/settings/manager/CarDriveModeManager$1;->this$0:Lcom/yftech/settings/manager/CarDriveModeManager;

    sget-object v1, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->EPS_STYLE_OPTION:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarDriveModeManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "CarDriveModeManager"

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEPSStyleChanged style:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/yftech/settings/manager/CarDriveModeManager$1;->this$0:Lcom/yftech/settings/manager/CarDriveModeManager;

    invoke-static {v0, p1}, Lcom/yftech/settings/manager/CarDriveModeManager;->access$300(Lcom/yftech/settings/manager/CarDriveModeManager;Lcom/yftech/vehicle/internal/adapter/ICarDrive$EPSStyle;)I

    move-result p1

    .line 123
    iget-object p0, p0, Lcom/yftech/settings/manager/CarDriveModeManager$1;->this$0:Lcom/yftech/settings/manager/CarDriveModeManager;

    sget-object v0, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->EPS_STYLE_OPTION:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {p0, v0, p1}, Lcom/yftech/settings/manager/CarDriveModeManager;->notifyOnOptionChanged(Ljava/lang/Object;I)V

    return-void
.end method

.method public onEspStyleChanged(Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;)V
    .locals 4

    .line 161
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarDriveManager$CarDriveListener;->onEspStyleChanged(Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;)V

    .line 162
    iget-object v0, p0, Lcom/yftech/settings/manager/CarDriveModeManager$1;->this$0:Lcom/yftech/settings/manager/CarDriveModeManager;

    sget-object v1, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->ESP_STYLE_OPTION:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarDriveModeManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 165
    :cond_0
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDriveManager;->get()Lcom/yftech/vehicle/sdk/CarDriveManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarDriveManager;->getBcsVdcOffState()Lcom/yftech/vehicle/internal/adapter/ICarDrive$VdcOffState;

    move-result-object v0

    const-string v1, "CarDriveModeManager"

    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onEspStyleChanged style: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " vdcOffState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v1, p0, Lcom/yftech/settings/manager/CarDriveModeManager$1;->this$0:Lcom/yftech/settings/manager/CarDriveModeManager;

    invoke-static {v1, p1, v0}, Lcom/yftech/settings/manager/CarDriveModeManager;->access$500(Lcom/yftech/settings/manager/CarDriveModeManager;Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;Lcom/yftech/vehicle/internal/adapter/ICarDrive$VdcOffState;)I

    move-result p1

    .line 168
    iget-object p0, p0, Lcom/yftech/settings/manager/CarDriveModeManager$1;->this$0:Lcom/yftech/settings/manager/CarDriveModeManager;

    sget-object v0, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->ESP_STYLE_OPTION:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {p0, v0, p1}, Lcom/yftech/settings/manager/CarDriveModeManager;->notifyOnOptionChanged(Ljava/lang/Object;I)V

    return-void
.end method

.method public onMemoryDriveModeChanged(Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;)V
    .locals 4

    .line 196
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarDriveManager$CarDriveListener;->onMemoryDriveModeChanged(Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;)V

    .line 197
    iget-object v0, p0, Lcom/yftech/settings/manager/CarDriveModeManager$1;->this$0:Lcom/yftech/settings/manager/CarDriveModeManager;

    sget-object v1, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->REMEMBER_DRIVING_MODE_ENABLED:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarDriveModeManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)Z

    move-result v0

    const-string v1, "CarDriveModeManager"

    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMemoryDriveModeChanged mode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " isFunctionPresent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/yftech/settings/manager/CarDriveModeManager$1;->this$0:Lcom/yftech/settings/manager/CarDriveModeManager;

    sget-object v1, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->REMEMBER_DRIVING_MODE_ENABLED:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    iget-object p0, p0, Lcom/yftech/settings/manager/CarDriveModeManager$1;->this$0:Lcom/yftech/settings/manager/CarDriveModeManager;

    invoke-static {p0, p1}, Lcom/yftech/settings/manager/CarDriveModeManager;->access$700(Lcom/yftech/settings/manager/CarDriveModeManager;Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;)Z

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/yftech/settings/manager/CarDriveModeManager;->notifyOnEnableChanged(Ljava/lang/Object;Z)V

    return-void
.end method

.method public onTcuDriveModeChanged(Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;)V
    .locals 3

    .line 207
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarDriveManager$CarDriveListener;->onTcuDriveModeChanged(Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;)V

    const-string v0, "CarDriveModeManager"

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTcuDriveModeChanged mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/yftech/settings/manager/CarDriveModeManager$1;->this$0:Lcom/yftech/settings/manager/CarDriveModeManager;

    sget-object v1, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->TCU_DRIVE_MODE_OPTION:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    iget-object p0, p0, Lcom/yftech/settings/manager/CarDriveModeManager$1;->this$0:Lcom/yftech/settings/manager/CarDriveModeManager;

    invoke-static {p0, p1}, Lcom/yftech/settings/manager/CarDriveModeManager;->access$800(Lcom/yftech/settings/manager/CarDriveModeManager;Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/yftech/settings/manager/CarDriveModeManager;->notifyOnOptionChanged(Ljava/lang/Object;I)V

    return-void
.end method
