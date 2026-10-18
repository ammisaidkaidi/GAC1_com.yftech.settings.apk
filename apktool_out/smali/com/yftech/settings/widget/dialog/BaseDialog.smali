.class public Lcom/yftech/settings/widget/dialog/BaseDialog;
.super Landroid/app/Dialog;
.source "BaseDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/settings/widget/dialog/BaseDialog$CarplayShowUIReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_CARPLAY_EVENT_SHOW_UI:Ljava/lang/String; = "com.autochips.carplay.event.show_ui"

.field private static final KEY_CARPLAY_EVENT_SHOW_UI:Ljava/lang/String; = "ui_show"

.field private static final TAG:Ljava/lang/String; = "BaseDialog"


# instance fields
.field private mCarBluetoothPhoneCallback:Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;

.field private mCarplayShowUIReceiver:Lcom/yftech/settings/widget/dialog/BaseDialog$CarplayShowUIReceiver;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mMainHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 30
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/yftech/settings/widget/dialog/BaseDialog;->mMainHandler:Landroid/os/Handler;

    .line 79
    new-instance p1, Lcom/yftech/settings/widget/dialog/BaseDialog$1;

    invoke-direct {p1, p0}, Lcom/yftech/settings/widget/dialog/BaseDialog$1;-><init>(Lcom/yftech/settings/widget/dialog/BaseDialog;)V

    iput-object p1, p0, Lcom/yftech/settings/widget/dialog/BaseDialog;->mCarBluetoothPhoneCallback:Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 3

    .line 51
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    const-string v0, "BaseDialog"

    const-string v1, "onAttachedToWindow()"

    .line 52
    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/yftech/settings/widget/dialog/BaseDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/settings/widget/dialog/BaseDialog;->mCarplayShowUIReceiver:Lcom/yftech/settings/widget/dialog/BaseDialog$CarplayShowUIReceiver;

    iget-object v2, p0, Lcom/yftech/settings/widget/dialog/BaseDialog;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 54
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/settings/widget/dialog/BaseDialog;->mCarBluetoothPhoneCallback:Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;

    iget-object p0, p0, Lcom/yftech/settings/widget/dialog/BaseDialog;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->registerBluetoothPhoneCallback(Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;Landroid/os/Handler;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 38
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "BaseDialog"

    const-string v0, "onCreate()"

    .line 39
    invoke-static {p1, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/BaseDialog;->mIntentFilter:Landroid/content/IntentFilter;

    if-nez p1, :cond_0

    .line 41
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/yftech/settings/widget/dialog/BaseDialog;->mIntentFilter:Landroid/content/IntentFilter;

    .line 42
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/BaseDialog;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "com.autochips.carplay.event.show_ui"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 44
    :cond_0
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/BaseDialog;->mCarplayShowUIReceiver:Lcom/yftech/settings/widget/dialog/BaseDialog$CarplayShowUIReceiver;

    if-nez p1, :cond_1

    .line 45
    new-instance p1, Lcom/yftech/settings/widget/dialog/BaseDialog$CarplayShowUIReceiver;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/yftech/settings/widget/dialog/BaseDialog$CarplayShowUIReceiver;-><init>(Lcom/yftech/settings/widget/dialog/BaseDialog;Lcom/yftech/settings/widget/dialog/BaseDialog$1;)V

    iput-object p1, p0, Lcom/yftech/settings/widget/dialog/BaseDialog;->mCarplayShowUIReceiver:Lcom/yftech/settings/widget/dialog/BaseDialog$CarplayShowUIReceiver;

    :cond_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 59
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    const-string v0, "BaseDialog"

    const-string v1, "onDetachedFromWindow()"

    .line 60
    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/yftech/settings/widget/dialog/BaseDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/settings/widget/dialog/BaseDialog;->mCarplayShowUIReceiver:Lcom/yftech/settings/widget/dialog/BaseDialog$CarplayShowUIReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 62
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/settings/widget/dialog/BaseDialog;->mCarBluetoothPhoneCallback:Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;

    invoke-virtual {v0, p0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->unregisterBluetoothPhoneCallback(Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;)V

    return-void
.end method
