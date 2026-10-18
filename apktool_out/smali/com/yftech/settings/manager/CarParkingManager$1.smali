.class Lcom/yftech/settings/manager/CarParkingManager$1;
.super Lcom/yftech/vehicle/sdk/CarParkingManager$CarParkingListener;
.source "CarParkingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/manager/CarParkingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/manager/CarParkingManager;


# direct methods
.method constructor <init>(Lcom/yftech/settings/manager/CarParkingManager;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/yftech/settings/manager/CarParkingManager$1;->this$0:Lcom/yftech/settings/manager/CarParkingManager;

    invoke-direct {p0}, Lcom/yftech/vehicle/sdk/CarParkingManager$CarParkingListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onParkingRadarAlarmEnableStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V
    .locals 4

    .line 51
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarParkingManager$CarParkingListener;->onParkingRadarAlarmEnableStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V

    .line 52
    iget-object v0, p0, Lcom/yftech/settings/manager/CarParkingManager$1;->this$0:Lcom/yftech/settings/manager/CarParkingManager;

    sget-object v1, Lcom/yftech/settings/manager/CarParkingManager$Function;->PARKING_RADAR_WARNING_TONE_ENABLED:Lcom/yftech/settings/manager/CarParkingManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarParkingManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarParkingManager$Function;)Z

    move-result v0

    const-string v1, "CarParkingManager"

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onParkingRadarAlarmEnableStateChanged EnableState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " isFunctionPresent\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/yftech/settings/manager/CarParkingManager$1;->this$0:Lcom/yftech/settings/manager/CarParkingManager;

    iget-object v1, p0, Lcom/yftech/settings/manager/CarParkingManager$1;->this$0:Lcom/yftech/settings/manager/CarParkingManager;

    iget-object v2, p0, Lcom/yftech/settings/manager/CarParkingManager$1;->this$0:Lcom/yftech/settings/manager/CarParkingManager;

    invoke-static {v2}, Lcom/yftech/settings/manager/CarParkingManager;->access$000(Lcom/yftech/settings/manager/CarParkingManager;)Z

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/yftech/settings/manager/CarParkingManager;->getValidEnable(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;Z)Z

    move-result p1

    invoke-static {v0, p1}, Lcom/yftech/settings/manager/CarParkingManager;->access$002(Lcom/yftech/settings/manager/CarParkingManager;Z)Z

    .line 58
    iget-object p1, p0, Lcom/yftech/settings/manager/CarParkingManager$1;->this$0:Lcom/yftech/settings/manager/CarParkingManager;

    sget-object v0, Lcom/yftech/settings/manager/CarParkingManager$Function;->PARKING_RADAR_WARNING_TONE_ENABLED:Lcom/yftech/settings/manager/CarParkingManager$Function;

    iget-object p0, p0, Lcom/yftech/settings/manager/CarParkingManager$1;->this$0:Lcom/yftech/settings/manager/CarParkingManager;

    invoke-static {p0}, Lcom/yftech/settings/manager/CarParkingManager;->access$000(Lcom/yftech/settings/manager/CarParkingManager;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, v0, p0}, Lcom/yftech/settings/manager/CarParkingManager;->notifyOnEnableChanged(Ljava/lang/Object;Z)V

    return-void
.end method

.method public onParkingVoiceSwitchEnableStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V
    .locals 4

    .line 63
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarParkingManager$CarParkingListener;->onParkingVoiceSwitchEnableStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V

    .line 64
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarParkingManager$CarParkingListener;->onParkingRadarAlarmEnableStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V

    .line 65
    iget-object v0, p0, Lcom/yftech/settings/manager/CarParkingManager$1;->this$0:Lcom/yftech/settings/manager/CarParkingManager;

    sget-object v1, Lcom/yftech/settings/manager/CarParkingManager$Function;->PARKING_VOICE_TIP_ENABLED:Lcom/yftech/settings/manager/CarParkingManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarParkingManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarParkingManager$Function;)Z

    move-result v0

    const-string v1, "CarParkingManager"

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onParkingVoiceSwitchEnableStateChanged  EnableState:"

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

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/yftech/settings/manager/CarParkingManager$1;->this$0:Lcom/yftech/settings/manager/CarParkingManager;

    iget-object v1, p0, Lcom/yftech/settings/manager/CarParkingManager$1;->this$0:Lcom/yftech/settings/manager/CarParkingManager;

    iget-object v2, p0, Lcom/yftech/settings/manager/CarParkingManager$1;->this$0:Lcom/yftech/settings/manager/CarParkingManager;

    invoke-static {v2}, Lcom/yftech/settings/manager/CarParkingManager;->access$100(Lcom/yftech/settings/manager/CarParkingManager;)Z

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/yftech/settings/manager/CarParkingManager;->getValidEnable(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;Z)Z

    move-result p1

    invoke-static {v0, p1}, Lcom/yftech/settings/manager/CarParkingManager;->access$102(Lcom/yftech/settings/manager/CarParkingManager;Z)Z

    .line 71
    iget-object p1, p0, Lcom/yftech/settings/manager/CarParkingManager$1;->this$0:Lcom/yftech/settings/manager/CarParkingManager;

    sget-object v0, Lcom/yftech/settings/manager/CarParkingManager$Function;->PARKING_VOICE_TIP_ENABLED:Lcom/yftech/settings/manager/CarParkingManager$Function;

    iget-object p0, p0, Lcom/yftech/settings/manager/CarParkingManager$1;->this$0:Lcom/yftech/settings/manager/CarParkingManager;

    invoke-static {p0}, Lcom/yftech/settings/manager/CarParkingManager;->access$100(Lcom/yftech/settings/manager/CarParkingManager;)Z

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/yftech/settings/manager/CarParkingManager;->notifyOnEnableChanged(Ljava/lang/Object;Z)V

    return-void
.end method
