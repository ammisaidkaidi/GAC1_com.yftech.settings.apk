.class Lcom/yftech/settings/manager/CarPartsManager$2;
.super Lcom/yftech/vehicle/sdk/CarDoorManager$CarDoorListener;
.source "CarPartsManager.java"


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

    .line 140
    iput-object p1, p0, Lcom/yftech/settings/manager/CarPartsManager$2;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    invoke-direct {p0}, Lcom/yftech/vehicle/sdk/CarDoorManager$CarDoorListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoUnlockChanged(Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;)V
    .locals 4

    .line 156
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarDoorManager$CarDoorListener;->onAutoUnlockChanged(Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;)V

    .line 157
    iget-object v0, p0, Lcom/yftech/settings/manager/CarPartsManager$2;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    sget-object v1, Lcom/yftech/settings/manager/CarPartsManager$Function;->AUTO_UNLOCK_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v0

    const-string v1, "CarPartsManager"

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAutoUnlockChanged state:"

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

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/yftech/settings/manager/CarPartsManager$2;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    sget-object v1, Lcom/yftech/settings/manager/CarPartsManager$Function;->AUTO_UNLOCK_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    iget-object p0, p0, Lcom/yftech/settings/manager/CarPartsManager$2;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    invoke-static {p0, p1}, Lcom/yftech/settings/manager/CarPartsManager;->access$200(Lcom/yftech/settings/manager/CarPartsManager;Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;)Z

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/yftech/settings/manager/CarPartsManager;->notifyOnEnableChanged(Ljava/lang/Object;Z)V

    return-void
.end method

.method public onLockUnlockSoundEnableStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V
    .locals 4

    .line 240
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarDoorManager$CarDoorListener;->onLockUnlockSoundEnableStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V

    .line 241
    iget-object v0, p0, Lcom/yftech/settings/manager/CarPartsManager$2;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    sget-object v1, Lcom/yftech/settings/manager/CarPartsManager$Function;->LOCK_UNLOCK_SOUND_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v0

    const-string v1, "CarPartsManager"

    .line 242
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLockUnlockSoundStateChanged EnableState:"

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

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/yftech/settings/manager/CarPartsManager$2;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    iget-object v1, p0, Lcom/yftech/settings/manager/CarPartsManager$2;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    iget-object v2, p0, Lcom/yftech/settings/manager/CarPartsManager$2;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    invoke-static {v2}, Lcom/yftech/settings/manager/CarPartsManager;->access$1000(Lcom/yftech/settings/manager/CarPartsManager;)Z

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/yftech/settings/manager/CarPartsManager;->getValidEnable(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;Z)Z

    move-result p1

    invoke-static {v0, p1}, Lcom/yftech/settings/manager/CarPartsManager;->access$1002(Lcom/yftech/settings/manager/CarPartsManager;Z)Z

    .line 247
    iget-object p1, p0, Lcom/yftech/settings/manager/CarPartsManager$2;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->LOCK_UNLOCK_SOUND_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    iget-object p0, p0, Lcom/yftech/settings/manager/CarPartsManager$2;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    invoke-static {p0}, Lcom/yftech/settings/manager/CarPartsManager;->access$1000(Lcom/yftech/settings/manager/CarPartsManager;)Z

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/yftech/settings/manager/CarPartsManager;->notifyOnEnableChanged(Ljava/lang/Object;Z)V

    return-void
.end method

.method public onPEPSAutoTrunkOpenChanged(Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;)V
    .locals 4

    .line 203
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarDoorManager$CarDoorListener;->onPEPSAutoTrunkOpenChanged(Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;)V

    .line 204
    iget-object v0, p0, Lcom/yftech/settings/manager/CarPartsManager$2;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    sget-object v1, Lcom/yftech/settings/manager/CarPartsManager$Function;->PEPS_AUTO_TRUNK_OPEN_OPTION:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v0

    const-string v1, "CarPartsManager"

    .line 205
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPEPSAutoTrunkOpenChanged state:"

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

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/yftech/settings/manager/CarPartsManager$2;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    invoke-static {v0, p1}, Lcom/yftech/settings/manager/CarPartsManager;->access$700(Lcom/yftech/settings/manager/CarPartsManager;Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;)I

    move-result p1

    .line 210
    iget-object p0, p0, Lcom/yftech/settings/manager/CarPartsManager$2;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->PEPS_AUTO_TRUNK_OPEN_OPTION:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {p0, v0, p1}, Lcom/yftech/settings/manager/CarPartsManager;->notifyOnOptionChanged(Ljava/lang/Object;I)V

    return-void
.end method

.method public onPEPSUnlockEnableStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V
    .locals 4

    .line 227
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarDoorManager$CarDoorListener;->onPEPSUnlockEnableStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V

    .line 228
    iget-object v0, p0, Lcom/yftech/settings/manager/CarPartsManager$2;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    sget-object v1, Lcom/yftech/settings/manager/CarPartsManager$Function;->PEPS_UNLOCK_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v0

    const-string v1, "CarPartsManager"

    .line 229
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPEPSUnlockEnableStateChanged EnableState:"

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

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/yftech/settings/manager/CarPartsManager$2;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    iget-object v1, p0, Lcom/yftech/settings/manager/CarPartsManager$2;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    iget-object v2, p0, Lcom/yftech/settings/manager/CarPartsManager$2;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    invoke-static {v2}, Lcom/yftech/settings/manager/CarPartsManager;->access$900(Lcom/yftech/settings/manager/CarPartsManager;)Z

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/yftech/settings/manager/CarPartsManager;->getValidEnable(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;Z)Z

    move-result p1

    invoke-static {v0, p1}, Lcom/yftech/settings/manager/CarPartsManager;->access$902(Lcom/yftech/settings/manager/CarPartsManager;Z)Z

    .line 234
    iget-object p1, p0, Lcom/yftech/settings/manager/CarPartsManager$2;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->PEPS_UNLOCK_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    iget-object p0, p0, Lcom/yftech/settings/manager/CarPartsManager$2;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    invoke-static {p0}, Lcom/yftech/settings/manager/CarPartsManager;->access$900(Lcom/yftech/settings/manager/CarPartsManager;)Z

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/yftech/settings/manager/CarPartsManager;->notifyOnEnableChanged(Ljava/lang/Object;Z)V

    return-void
.end method

.method public onPEPSWalkAwayLockEnableStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V
    .locals 4

    .line 215
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarDoorManager$CarDoorListener;->onPEPSWalkAwayLockEnableStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V

    .line 216
    iget-object v0, p0, Lcom/yftech/settings/manager/CarPartsManager$2;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    sget-object v1, Lcom/yftech/settings/manager/CarPartsManager$Function;->PEPS_WALK_AWAY_LOCK_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v0

    const-string v1, "CarPartsManager"

    .line 217
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPEPSWalkAwayLockEnableStateChanged EnableState:"

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

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/yftech/settings/manager/CarPartsManager$2;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    iget-object v1, p0, Lcom/yftech/settings/manager/CarPartsManager$2;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    iget-object v2, p0, Lcom/yftech/settings/manager/CarPartsManager$2;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    invoke-static {v2}, Lcom/yftech/settings/manager/CarPartsManager;->access$800(Lcom/yftech/settings/manager/CarPartsManager;)Z

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/yftech/settings/manager/CarPartsManager;->getValidEnable(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;Z)Z

    move-result p1

    invoke-static {v0, p1}, Lcom/yftech/settings/manager/CarPartsManager;->access$802(Lcom/yftech/settings/manager/CarPartsManager;Z)Z

    .line 222
    iget-object p1, p0, Lcom/yftech/settings/manager/CarPartsManager$2;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->PEPS_WALK_AWAY_LOCK_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    iget-object p0, p0, Lcom/yftech/settings/manager/CarPartsManager$2;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    invoke-static {p0}, Lcom/yftech/settings/manager/CarPartsManager;->access$800(Lcom/yftech/settings/manager/CarPartsManager;)Z

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/yftech/settings/manager/CarPartsManager;->notifyOnEnableChanged(Ljava/lang/Object;Z)V

    return-void
.end method

.method public onPSDDoorSpeedLChanged(Lcom/yftech/vehicle/internal/adapter/ICarDoor$PSDDoorSpeed;)V
    .locals 4

    .line 179
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarDoorManager$CarDoorListener;->onPSDDoorSpeedLChanged(Lcom/yftech/vehicle/internal/adapter/ICarDoor$PSDDoorSpeed;)V

    .line 180
    iget-object v0, p0, Lcom/yftech/settings/manager/CarPartsManager$2;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    sget-object v1, Lcom/yftech/settings/manager/CarPartsManager$Function;->PSD_DOOR_SPEED_OPTION:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v0

    const-string v1, "CarPartsManager"

    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPSDDoorSpeedLChanged speed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " isFunctionPresent:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    return-void

    .line 185
    :cond_0
    iget-object p1, p0, Lcom/yftech/settings/manager/CarPartsManager$2;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/yftech/settings/manager/CarPartsManager;->access$402(Lcom/yftech/settings/manager/CarPartsManager;Z)Z

    .line 186
    iget-object p0, p0, Lcom/yftech/settings/manager/CarPartsManager$2;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    invoke-static {p0}, Lcom/yftech/settings/manager/CarPartsManager;->access$500(Lcom/yftech/settings/manager/CarPartsManager;)V

    return-void
.end method

.method public onPSDDoorSpeedRChanged(Lcom/yftech/vehicle/internal/adapter/ICarDoor$PSDDoorSpeed;)V
    .locals 4

    .line 191
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarDoorManager$CarDoorListener;->onPSDDoorSpeedRChanged(Lcom/yftech/vehicle/internal/adapter/ICarDoor$PSDDoorSpeed;)V

    .line 192
    iget-object v0, p0, Lcom/yftech/settings/manager/CarPartsManager$2;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    sget-object v1, Lcom/yftech/settings/manager/CarPartsManager$Function;->PSD_DOOR_SPEED_OPTION:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v0

    const-string v1, "CarPartsManager"

    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPSDDoorSpeedRChanged speed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " isFunctionPresent:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    return-void

    .line 197
    :cond_0
    iget-object p1, p0, Lcom/yftech/settings/manager/CarPartsManager$2;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/yftech/settings/manager/CarPartsManager;->access$602(Lcom/yftech/settings/manager/CarPartsManager;Z)Z

    .line 198
    iget-object p0, p0, Lcom/yftech/settings/manager/CarPartsManager$2;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    invoke-static {p0}, Lcom/yftech/settings/manager/CarPartsManager;->access$500(Lcom/yftech/settings/manager/CarPartsManager;)V

    return-void
.end method

.method public onRemoteUnlockModeChanged(Lcom/yftech/vehicle/internal/adapter/ICarDoor$RemoteUnlockMode;)V
    .locals 4

    .line 144
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarDoorManager$CarDoorListener;->onRemoteUnlockModeChanged(Lcom/yftech/vehicle/internal/adapter/ICarDoor$RemoteUnlockMode;)V

    .line 145
    iget-object v0, p0, Lcom/yftech/settings/manager/CarPartsManager$2;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    sget-object v1, Lcom/yftech/settings/manager/CarPartsManager$Function;->REMOTE_UNLOCK_MODE_OPTION:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v0

    const-string v1, "CarPartsManager"

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRemoteUnlockModeChanged mode:"

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

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/yftech/settings/manager/CarPartsManager$2;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    invoke-static {v0, p1}, Lcom/yftech/settings/manager/CarPartsManager;->access$100(Lcom/yftech/settings/manager/CarPartsManager;Lcom/yftech/vehicle/internal/adapter/ICarDoor$RemoteUnlockMode;)I

    move-result p1

    .line 151
    iget-object p0, p0, Lcom/yftech/settings/manager/CarPartsManager$2;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->REMOTE_UNLOCK_MODE_OPTION:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {p0, v0, p1}, Lcom/yftech/settings/manager/CarPartsManager;->notifyOnOptionChanged(Ljava/lang/Object;I)V

    return-void
.end method

.method public onSlidingDoorModeAutoStateChanged(Z)V
    .locals 4

    .line 252
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarDoorManager$CarDoorListener;->onSlidingDoorModeAutoStateChanged(Z)V

    .line 253
    iget-object v0, p0, Lcom/yftech/settings/manager/CarPartsManager$2;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    sget-object v1, Lcom/yftech/settings/manager/CarPartsManager$Function;->PSD_DOOR_MODE_OPTION:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v0

    const-string v1, "CarPartsManager"

    .line 254
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSlidingDoorModeAutoStateChanged isEnabled:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isFunctionPresent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    return-void

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/yftech/settings/manager/CarPartsManager$2;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    invoke-static {v0, p1}, Lcom/yftech/settings/manager/CarPartsManager;->access$1100(Lcom/yftech/settings/manager/CarPartsManager;Z)I

    move-result p1

    .line 259
    iget-object p0, p0, Lcom/yftech/settings/manager/CarPartsManager$2;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->PSD_DOOR_MODE_OPTION:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {p0, v0, p1}, Lcom/yftech/settings/manager/CarPartsManager;->notifyOnOptionChanged(Ljava/lang/Object;I)V

    return-void
.end method

.method public onSpeedAutoLockEnableStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V
    .locals 4

    .line 167
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarDoorManager$CarDoorListener;->onSpeedAutoLockEnableStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V

    .line 168
    iget-object v0, p0, Lcom/yftech/settings/manager/CarPartsManager$2;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    sget-object v1, Lcom/yftech/settings/manager/CarPartsManager$Function;->SPEED_AUTO_LOCK_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v0

    const-string v1, "CarPartsManager"

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSpeedAutoLockStateChanged EnableState:"

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

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/yftech/settings/manager/CarPartsManager$2;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    iget-object v1, p0, Lcom/yftech/settings/manager/CarPartsManager$2;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    iget-object v2, p0, Lcom/yftech/settings/manager/CarPartsManager$2;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    invoke-static {v2}, Lcom/yftech/settings/manager/CarPartsManager;->access$300(Lcom/yftech/settings/manager/CarPartsManager;)Z

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/yftech/settings/manager/CarPartsManager;->getValidEnable(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;Z)Z

    move-result p1

    invoke-static {v0, p1}, Lcom/yftech/settings/manager/CarPartsManager;->access$302(Lcom/yftech/settings/manager/CarPartsManager;Z)Z

    .line 174
    iget-object p1, p0, Lcom/yftech/settings/manager/CarPartsManager$2;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->SPEED_AUTO_LOCK_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    iget-object p0, p0, Lcom/yftech/settings/manager/CarPartsManager$2;->this$0:Lcom/yftech/settings/manager/CarPartsManager;

    invoke-static {p0}, Lcom/yftech/settings/manager/CarPartsManager;->access$300(Lcom/yftech/settings/manager/CarPartsManager;)Z

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/yftech/settings/manager/CarPartsManager;->notifyOnEnableChanged(Ljava/lang/Object;Z)V

    return-void
.end method
