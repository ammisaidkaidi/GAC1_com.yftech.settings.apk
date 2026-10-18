.class Lcom/yftech/settings/system/SystemBasicFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "SystemBasicFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/system/SystemBasicFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/system/SystemBasicFragment;


# direct methods
.method constructor <init>(Lcom/yftech/settings/system/SystemBasicFragment;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/yftech/settings/system/SystemBasicFragment$1;->this$0:Lcom/yftech/settings/system/SystemBasicFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "SystemBasicFragment"

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive() action:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "android.intent.action.TIME_TICK"

    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "android.intent.action.TIME_SET"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 42
    :cond_0
    iget-object p1, p0, Lcom/yftech/settings/system/SystemBasicFragment$1;->this$0:Lcom/yftech/settings/system/SystemBasicFragment;

    invoke-static {p1}, Lcom/yftech/settings/system/SystemBasicFragment;->access$000(Lcom/yftech/settings/system/SystemBasicFragment;)Landroid/widget/TextView;

    move-result-object p1

    invoke-static {}, Lcom/yftech/settings/manager/SettingsManager;->getInstance()Lcom/yftech/settings/manager/SettingsManager;

    move-result-object p2

    iget-object p0, p0, Lcom/yftech/settings/system/SystemBasicFragment$1;->this$0:Lcom/yftech/settings/system/SystemBasicFragment;

    invoke-virtual {p0}, Lcom/yftech/settings/system/SystemBasicFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/yftech/settings/manager/SettingsManager;->getCurTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
