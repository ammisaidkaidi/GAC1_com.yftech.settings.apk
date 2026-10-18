.class public Lcom/yftech/settings/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/settings/BaseActivity$ProcessObserver;,
        Lcom/yftech/settings/BaseActivity$BaseReceiver;
    }
.end annotation


# instance fields
.field private mBaseReceiver:Lcom/yftech/settings/BaseActivity$BaseReceiver;

.field mIActivityManager:Landroid/app/IActivityManager;

.field private mPowerToast:Landroid/widget/Toast;

.field mProcessObserver:Lcom/yftech/settings/BaseActivity$ProcessObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "activity"

    .line 89
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/settings/BaseActivity;->mIActivityManager:Landroid/app/IActivityManager;

    return-void
.end method

.method private register()V
    .locals 2

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/yftech/settings/BaseActivity;->mIActivityManager:Landroid/app/IActivityManager;

    if-eqz v0, :cond_0

    .line 96
    new-instance v0, Lcom/yftech/settings/BaseActivity$ProcessObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yftech/settings/BaseActivity$ProcessObserver;-><init>(Lcom/yftech/settings/BaseActivity;Lcom/yftech/settings/BaseActivity$1;)V

    iput-object v0, p0, Lcom/yftech/settings/BaseActivity;->mProcessObserver:Lcom/yftech/settings/BaseActivity$ProcessObserver;

    .line 97
    iget-object v0, p0, Lcom/yftech/settings/BaseActivity;->mIActivityManager:Landroid/app/IActivityManager;

    iget-object p0, p0, Lcom/yftech/settings/BaseActivity;->mProcessObserver:Lcom/yftech/settings/BaseActivity$ProcessObserver;

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 100
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private unRegister()V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/yftech/settings/BaseActivity;->mIActivityManager:Landroid/app/IActivityManager;

    if-eqz v0, :cond_0

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/yftech/settings/BaseActivity;->mIActivityManager:Landroid/app/IActivityManager;

    iget-object p0, p0, Lcom/yftech/settings/BaseActivity;->mProcessObserver:Lcom/yftech/settings/BaseActivity$ProcessObserver;

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 111
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method protected getPowerToastStr()Ljava/lang/String;
    .locals 1

    const v0, 0x7f0d01ba

    .line 86
    invoke-virtual {p0, v0}, Lcom/yftech/settings/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected isPower()Z
    .locals 1

    .line 80
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarPowerManager;->get()Lcom/yftech/vehicle/sdk/CarPowerManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarPowerManager;->getPowerMode()Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerMode;

    move-result-object p0

    .line 82
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerMode;->ON:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerMode;->CRANK:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerMode;

    if-ne p0, v0, :cond_0

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

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    new-instance p1, Lcom/yftech/settings/BaseActivity$BaseReceiver;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/yftech/settings/BaseActivity$BaseReceiver;-><init>(Lcom/yftech/settings/BaseActivity;Lcom/yftech/settings/BaseActivity$1;)V

    iput-object p1, p0, Lcom/yftech/settings/BaseActivity;->mBaseReceiver:Lcom/yftech/settings/BaseActivity$BaseReceiver;

    .line 37
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.yftech.intent.action.exit.application"

    .line 38
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/yftech/settings/BaseActivity;->mBaseReceiver:Lcom/yftech/settings/BaseActivity$BaseReceiver;

    invoke-virtual {p0, v0, p1}, Lcom/yftech/settings/BaseActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 40
    invoke-direct {p0}, Lcom/yftech/settings/BaseActivity;->register()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 45
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 46
    iget-object v0, p0, Lcom/yftech/settings/BaseActivity;->mBaseReceiver:Lcom/yftech/settings/BaseActivity$BaseReceiver;

    invoke-virtual {p0, v0}, Lcom/yftech/settings/BaseActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 47
    invoke-direct {p0}, Lcom/yftech/settings/BaseActivity;->unRegister()V

    return-void
.end method

.method protected showPowerToast()V
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/yftech/settings/BaseActivity;->mPowerToast:Landroid/widget/Toast;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/yftech/settings/BaseActivity;->mPowerToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 69
    iput-object v1, p0, Lcom/yftech/settings/BaseActivity;->mPowerToast:Landroid/widget/Toast;

    .line 71
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0a007a

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f08000b

    .line 72
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yftech/settings/BaseActivity;->getPowerToastStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-virtual {p0}, Lcom/yftech/settings/BaseActivity;->getPowerToastStr()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/yftech/settings/BaseActivity;->mPowerToast:Landroid/widget/Toast;

    .line 74
    iget-object v1, p0, Lcom/yftech/settings/BaseActivity;->mPowerToast:Landroid/widget/Toast;

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 75
    iget-object v0, p0, Lcom/yftech/settings/BaseActivity;->mPowerToast:Landroid/widget/Toast;

    const/16 v1, 0x77

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 76
    iget-object p0, p0, Lcom/yftech/settings/BaseActivity;->mPowerToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
