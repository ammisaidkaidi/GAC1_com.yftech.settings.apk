.class public interface abstract Lcom/yftech/settings/manager/BluetoothManager$CarBluetoothListener;
.super Ljava/lang/Object;
.source "BluetoothManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/manager/BluetoothManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CarBluetoothListener"
.end annotation


# virtual methods
.method public abstract onBluetoothAutoConnectStateChanged(Z)V
.end method

.method public abstract onBluetoothAutoDownloadContactsStateChanged(Z)V
.end method

.method public abstract onBluetoothPairedListChanged()V
.end method

.method public abstract onBluetoothScanningStateChanged(Z)V
.end method

.method public abstract onBluetoothStateChanged(I)V
.end method

.method public abstract onBluetoothUnpairedListChanged()V
.end method
