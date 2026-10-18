.class Lcom/yftech/settings/manager/BluetoothManager$4;
.super Lcom/yftech/car/bluetooth/callback/CarBluetoothSettingsCallback;
.source "BluetoothManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/manager/BluetoothManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/manager/BluetoothManager;


# direct methods
.method constructor <init>(Lcom/yftech/settings/manager/BluetoothManager;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/yftech/settings/manager/BluetoothManager$4;->this$0:Lcom/yftech/settings/manager/BluetoothManager;

    invoke-direct {p0}, Lcom/yftech/car/bluetooth/callback/CarBluetoothSettingsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothAutoConnectStateChanged(Z)V
    .locals 3

    .line 169
    invoke-super {p0, p1}, Lcom/yftech/car/bluetooth/callback/CarBluetoothSettingsCallback;->onBluetoothAutoConnectStateChanged(Z)V

    const-string v0, "YF_BT_BluetoothManager"

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBluetoothAutoConnectStateChanged() state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/yftech/settings/manager/BluetoothManager$4;->this$0:Lcom/yftech/settings/manager/BluetoothManager;

    invoke-static {v0}, Lcom/yftech/settings/manager/BluetoothManager;->access$000(Lcom/yftech/settings/manager/BluetoothManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 172
    :try_start_0
    iget-object p0, p0, Lcom/yftech/settings/manager/BluetoothManager$4;->this$0:Lcom/yftech/settings/manager/BluetoothManager;

    invoke-static {p0}, Lcom/yftech/settings/manager/BluetoothManager;->access$000(Lcom/yftech/settings/manager/BluetoothManager;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/settings/manager/BluetoothManager$CarBluetoothListener;

    .line 173
    invoke-interface {v1, p1}, Lcom/yftech/settings/manager/BluetoothManager$CarBluetoothListener;->onBluetoothAutoConnectStateChanged(Z)V

    goto :goto_0

    .line 175
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onBluetoothAutoDownloadContactsStateChanged(Z)V
    .locals 3

    .line 158
    invoke-super {p0, p1}, Lcom/yftech/car/bluetooth/callback/CarBluetoothSettingsCallback;->onBluetoothAutoDownloadContactsStateChanged(Z)V

    const-string v0, "YF_BT_BluetoothManager"

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBluetoothAutoDownloadContactsStateChanged() state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/yftech/settings/manager/BluetoothManager$4;->this$0:Lcom/yftech/settings/manager/BluetoothManager;

    invoke-static {v0}, Lcom/yftech/settings/manager/BluetoothManager;->access$000(Lcom/yftech/settings/manager/BluetoothManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 161
    :try_start_0
    iget-object p0, p0, Lcom/yftech/settings/manager/BluetoothManager$4;->this$0:Lcom/yftech/settings/manager/BluetoothManager;

    invoke-static {p0}, Lcom/yftech/settings/manager/BluetoothManager;->access$000(Lcom/yftech/settings/manager/BluetoothManager;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/settings/manager/BluetoothManager$CarBluetoothListener;

    .line 162
    invoke-interface {v1, p1}, Lcom/yftech/settings/manager/BluetoothManager$CarBluetoothListener;->onBluetoothAutoDownloadContactsStateChanged(Z)V

    goto :goto_0

    .line 164
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onBluetoothDeviceBandStateChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 3

    .line 180
    invoke-super {p0, p1, p2}, Lcom/yftech/car/bluetooth/callback/CarBluetoothSettingsCallback;->onBluetoothDeviceBandStateChanged(Landroid/bluetooth/BluetoothDevice;I)V

    const-string v0, "YF_BT_BluetoothManager"

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBluetoothDeviceBandStateChanged() state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/yftech/settings/manager/BluetoothManager$4;->this$0:Lcom/yftech/settings/manager/BluetoothManager;

    invoke-static {v0, p2}, Lcom/yftech/settings/manager/BluetoothManager;->access$302(Lcom/yftech/settings/manager/BluetoothManager;I)I

    const/16 v0, 0xa

    if-eq p2, v0, :cond_0

    const/16 v1, 0xc

    if-ne p2, v1, :cond_1

    .line 197
    :cond_0
    iget-object v1, p0, Lcom/yftech/settings/manager/BluetoothManager$4;->this$0:Lcom/yftech/settings/manager/BluetoothManager;

    invoke-virtual {v1}, Lcom/yftech/settings/manager/BluetoothManager;->startScanning()Z

    :cond_1
    if-ne p2, v0, :cond_2

    .line 200
    iget-object p2, p0, Lcom/yftech/settings/manager/BluetoothManager$4;->this$0:Lcom/yftech/settings/manager/BluetoothManager;

    .line 201
    invoke-static {p2}, Lcom/yftech/settings/manager/BluetoothManager;->access$400(Lcom/yftech/settings/manager/BluetoothManager;)Lcom/yftech/settings/connect/model/BtDevice;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 202
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/yftech/settings/manager/BluetoothManager$4;->this$0:Lcom/yftech/settings/manager/BluetoothManager;

    invoke-static {p2}, Lcom/yftech/settings/manager/BluetoothManager;->access$400(Lcom/yftech/settings/manager/BluetoothManager;)Lcom/yftech/settings/connect/model/BtDevice;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yftech/settings/connect/model/BtDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "YF_BT_BluetoothManager"

    const-string p2, "onBluetoothDeviceBandStateChanged() BOND_NONE ignore startScanning"

    .line 203
    invoke-static {p1, p2}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object p1, p0, Lcom/yftech/settings/manager/BluetoothManager$4;->this$0:Lcom/yftech/settings/manager/BluetoothManager;

    invoke-virtual {p1}, Lcom/yftech/settings/manager/BluetoothManager;->startScanning()Z

    .line 205
    iget-object p0, p0, Lcom/yftech/settings/manager/BluetoothManager$4;->this$0:Lcom/yftech/settings/manager/BluetoothManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/yftech/settings/manager/BluetoothManager;->access$402(Lcom/yftech/settings/manager/BluetoothManager;Lcom/yftech/settings/connect/model/BtDevice;)Lcom/yftech/settings/connect/model/BtDevice;

    :cond_2
    return-void
.end method

.method public onBluetoothPairedListChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;)V"
        }
    .end annotation

    .line 133
    invoke-super {p0, p1}, Lcom/yftech/car/bluetooth/callback/CarBluetoothSettingsCallback;->onBluetoothPairedListChanged(Ljava/util/List;)V

    const-string p1, "YF_BT_BluetoothManager"

    const-string v0, "onBluetoothPairedListChanged()"

    .line 134
    invoke-static {p1, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object p0, p0, Lcom/yftech/settings/manager/BluetoothManager$4;->this$0:Lcom/yftech/settings/manager/BluetoothManager;

    invoke-static {p0}, Lcom/yftech/settings/manager/BluetoothManager;->access$200(Lcom/yftech/settings/manager/BluetoothManager;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onBluetoothScanningStateChanged(Z)V
    .locals 3

    .line 147
    invoke-super {p0, p1}, Lcom/yftech/car/bluetooth/callback/CarBluetoothSettingsCallback;->onBluetoothScanningStateChanged(Z)V

    const-string v0, "YF_BT_BluetoothManager"

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBluetoothScanningStateChanged() state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/yftech/settings/manager/BluetoothManager$4;->this$0:Lcom/yftech/settings/manager/BluetoothManager;

    invoke-static {v0}, Lcom/yftech/settings/manager/BluetoothManager;->access$000(Lcom/yftech/settings/manager/BluetoothManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 150
    :try_start_0
    iget-object p0, p0, Lcom/yftech/settings/manager/BluetoothManager$4;->this$0:Lcom/yftech/settings/manager/BluetoothManager;

    invoke-static {p0}, Lcom/yftech/settings/manager/BluetoothManager;->access$000(Lcom/yftech/settings/manager/BluetoothManager;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/settings/manager/BluetoothManager$CarBluetoothListener;

    .line 151
    invoke-interface {v1, p1}, Lcom/yftech/settings/manager/BluetoothManager$CarBluetoothListener;->onBluetoothScanningStateChanged(Z)V

    goto :goto_0

    .line 153
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onBluetoothStateChanged(I)V
    .locals 3

    .line 122
    invoke-super {p0, p1}, Lcom/yftech/car/bluetooth/callback/CarBluetoothSettingsCallback;->onBluetoothStateChanged(I)V

    const-string v0, "YF_BT_BluetoothManager"

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBluetoothStateChanged() state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/yftech/settings/manager/BluetoothManager$4;->this$0:Lcom/yftech/settings/manager/BluetoothManager;

    invoke-static {v0}, Lcom/yftech/settings/manager/BluetoothManager;->access$000(Lcom/yftech/settings/manager/BluetoothManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 125
    :try_start_0
    iget-object p0, p0, Lcom/yftech/settings/manager/BluetoothManager$4;->this$0:Lcom/yftech/settings/manager/BluetoothManager;

    invoke-static {p0}, Lcom/yftech/settings/manager/BluetoothManager;->access$000(Lcom/yftech/settings/manager/BluetoothManager;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/settings/manager/BluetoothManager$CarBluetoothListener;

    .line 126
    invoke-interface {v1, p1}, Lcom/yftech/settings/manager/BluetoothManager$CarBluetoothListener;->onBluetoothStateChanged(I)V

    goto :goto_0

    .line 128
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onBluetoothUnpairedListChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;)V"
        }
    .end annotation

    .line 140
    invoke-super {p0, p1}, Lcom/yftech/car/bluetooth/callback/CarBluetoothSettingsCallback;->onBluetoothUnpairedListChanged(Ljava/util/List;)V

    .line 142
    iget-object p0, p0, Lcom/yftech/settings/manager/BluetoothManager$4;->this$0:Lcom/yftech/settings/manager/BluetoothManager;

    invoke-static {p0}, Lcom/yftech/settings/manager/BluetoothManager;->access$200(Lcom/yftech/settings/manager/BluetoothManager;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
