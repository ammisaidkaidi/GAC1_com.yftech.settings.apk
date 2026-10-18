.class public Lcom/yftech/settings/connect/model/BtDeviceItemState;
.super Ljava/lang/Object;
.source "BtDeviceItemState.java"


# instance fields
.field private address:Ljava/lang/String;

.field private avrcp:Z

.field private detail:Z

.field private hfp:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/yftech/settings/connect/model/BtDeviceItemState;->address:Ljava/lang/String;

    return-object p0
.end method

.method public isAvrcp()Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/yftech/settings/connect/model/BtDeviceItemState;->avrcp:Z

    return p0
.end method

.method public isDetail()Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcom/yftech/settings/connect/model/BtDeviceItemState;->detail:Z

    return p0
.end method

.method public isHfp()Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/yftech/settings/connect/model/BtDeviceItemState;->hfp:Z

    return p0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/yftech/settings/connect/model/BtDeviceItemState;->address:Ljava/lang/String;

    return-void
.end method

.method public setAvrcp(Z)V
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/yftech/settings/connect/model/BtDeviceItemState;->avrcp:Z

    return-void
.end method

.method public setDetail(Z)V
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/yftech/settings/connect/model/BtDeviceItemState;->detail:Z

    return-void
.end method

.method public setHfp(Z)V
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/yftech/settings/connect/model/BtDeviceItemState;->hfp:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceItemState{address=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/settings/connect/model/BtDeviceItemState;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", detail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/yftech/settings/connect/model/BtDeviceItemState;->detail:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hfp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/yftech/settings/connect/model/BtDeviceItemState;->hfp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", avrcp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/yftech/settings/connect/model/BtDeviceItemState;->avrcp:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
