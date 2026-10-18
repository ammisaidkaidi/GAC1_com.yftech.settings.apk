.class public Lcom/yftech/settings/CarSettingsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CarSettingsReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CarSettingsReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p0, "android.intent.action.TIME_SET"

    .line 21
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "CarSettingsReceiver"

    const-string p2, "onReceive android.intent.action.TIME_SET"

    .line 22
    invoke-static {p0, p2}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    const/4 p2, 0x0

    invoke-static {p1, p0, p2}, Lcom/yftech/settings/utils/Utils;->setDateTime(Landroid/content/Context;Ljava/util/Calendar;Z)V

    goto :goto_0

    :cond_0
    const-string p0, "com.yftech.intent.action.ap.dialog.show"

    .line 24
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "CarSettingsReceiver"

    const-string p1, "onReceive com.yftech.intent.action.ap.dialog.show"

    .line 25
    invoke-static {p0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-static {}, Lcom/yftech/settings/manager/WlanManager;->getInstance()Lcom/yftech/settings/manager/WlanManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/settings/manager/WlanManager;->showOpenApDialog()V

    goto :goto_0

    :cond_1
    const-string p0, "com.yftech.intent.action.track.dialog.show"

    .line 27
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 31
    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object p0

    sget-object p1, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->TRACK_DIALOG_SHOW_ACTION:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {p0, p1}, Lcom/yftech/settings/manager/CarDriveModeManager;->setAction(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)Z

    :cond_2
    :goto_0
    return-void
.end method
