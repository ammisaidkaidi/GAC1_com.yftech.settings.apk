.class Lcom/yftech/settings/manager/WlanManager$WlanReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WlanManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/manager/WlanManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WlanReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/manager/WlanManager;


# direct methods
.method constructor <init>(Lcom/yftech/settings/manager/WlanManager;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/yftech/settings/manager/WlanManager$WlanReceiver;->this$0:Lcom/yftech/settings/manager/WlanManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 207
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "wifi_state"

    const/4 v0, 0x4

    .line 208
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string p2, "WlanManager"

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WIFI_STATE_CHANGED_ACTION state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object p0, p0, Lcom/yftech/settings/manager/WlanManager$WlanReceiver;->this$0:Lcom/yftech/settings/manager/WlanManager;

    invoke-static {p0, p1}, Lcom/yftech/settings/manager/WlanManager;->access$100(Lcom/yftech/settings/manager/WlanManager;I)V

    goto :goto_0

    :cond_0
    const-string p1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 211
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "wifi_state"

    const/16 v0, 0xe

    .line 212
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string p2, "WlanManager"

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WIFI_AP_STATE_CHANGED_ACTION state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object p0, p0, Lcom/yftech/settings/manager/WlanManager$WlanReceiver;->this$0:Lcom/yftech/settings/manager/WlanManager;

    invoke-static {p0, p1}, Lcom/yftech/settings/manager/WlanManager;->access$200(Lcom/yftech/settings/manager/WlanManager;I)V

    :cond_1
    :goto_0
    return-void
.end method
