.class public Lcom/yftech/settings/connect/model/BtDevice;
.super Ljava/lang/Object;
.source "BtDevice.java"


# instance fields
.field private deviceItemState:Lcom/yftech/settings/connect/model/BtDeviceItemState;

.field private mAvrcpState:I

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mHfpState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/yftech/settings/connect/model/BtDevice;->mHfpState:I

    .line 16
    iput v0, p0, Lcom/yftech/settings/connect/model/BtDevice;->mAvrcpState:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/yftech/settings/connect/model/BtDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yftech/settings/connect/model/BtDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getAvrcpState()I
    .locals 0

    .line 60
    iget p0, p0, Lcom/yftech/settings/connect/model/BtDevice;->mAvrcpState:I

    return p0
.end method

.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/yftech/settings/connect/model/BtDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method public getDeviceItemState()Lcom/yftech/settings/connect/model/BtDeviceItemState;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/yftech/settings/connect/model/BtDevice;->deviceItemState:Lcom/yftech/settings/connect/model/BtDeviceItemState;

    return-object p0
.end method

.method public getHfpState()I
    .locals 0

    .line 56
    iget p0, p0, Lcom/yftech/settings/connect/model/BtDevice;->mHfpState:I

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    .line 70
    iget-object v1, p0, Lcom/yftech/settings/connect/model/BtDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_0

    .line 71
    iget-object v0, p0, Lcom/yftech/settings/connect/model/BtDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    iget-object p0, p0, Lcom/yftech/settings/connect/model/BtDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getName(ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 80
    invoke-virtual {p0}, Lcom/yftech/settings/connect/model/BtDevice;->getName()Ljava/lang/String;

    move-result-object p0

    .line 83
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/yftech/settings/utils/Utils;->subStr(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 85
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object p0
.end method

.method public isAvrcpConnected()Z
    .locals 1

    .line 52
    iget p0, p0, Lcom/yftech/settings/connect/model/BtDevice;->mAvrcpState:I

    const/4 v0, 0x2

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isConnected()Z
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/yftech/settings/connect/model/BtDevice;->isHfpConnected()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/yftech/settings/connect/model/BtDevice;->isAvrcpConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isConnecting()Z
    .locals 2

    .line 64
    iget v0, p0, Lcom/yftech/settings/connect/model/BtDevice;->mHfpState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/yftech/settings/connect/model/BtDevice;->mAvrcpState:I

    if-eq v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/yftech/settings/connect/model/BtDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/yftech/settings/connect/model/BtDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 65
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result p0

    const/16 v0, 0xb

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public isHfpConnected()Z
    .locals 1

    .line 48
    iget p0, p0, Lcom/yftech/settings/connect/model/BtDevice;->mHfpState:I

    const/4 v0, 0x2

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setAvrcpState(I)V
    .locals 0

    .line 32
    iput p1, p0, Lcom/yftech/settings/connect/model/BtDevice;->mAvrcpState:I

    return-void
.end method

.method public setDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/yftech/settings/connect/model/BtDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method

.method public setDeviceItemState(Lcom/yftech/settings/connect/model/BtDeviceItemState;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/yftech/settings/connect/model/BtDevice;->deviceItemState:Lcom/yftech/settings/connect/model/BtDeviceItemState;

    return-void
.end method

.method public setHfpState(I)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/yftech/settings/connect/model/BtDevice;->mHfpState:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "device:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/settings/connect/model/BtDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",hfp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yftech/settings/connect/model/BtDevice;->mHfpState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",avrcp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/yftech/settings/connect/model/BtDevice;->mAvrcpState:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
