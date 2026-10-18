.class Lcom/yftech/settings/SettingsActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/yftech/settings/SettingsActivity;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/yftech/settings/SettingsActivity$1;->this$0:Lcom/yftech/settings/SettingsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 160
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 161
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.yftech.settings.EXIT"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "SettingsActivity1"

    const-string p2, "receive exit broadcast"

    .line 162
    invoke-static {p1, p2}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object p1, p0, Lcom/yftech/settings/SettingsActivity$1;->this$0:Lcom/yftech/settings/SettingsActivity;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/yftech/settings/SettingsActivity;->moveTaskToBack(Z)Z

    .line 164
    iget-object p1, p0, Lcom/yftech/settings/SettingsActivity$1;->this$0:Lcom/yftech/settings/SettingsActivity;

    invoke-static {p1}, Lcom/yftech/settings/SettingsActivity;->access$000(Lcom/yftech/settings/SettingsActivity;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/yftech/settings/SettingsActivity$1$1;

    invoke-direct {p2, p0}, Lcom/yftech/settings/SettingsActivity$1$1;-><init>(Lcom/yftech/settings/SettingsActivity$1;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
