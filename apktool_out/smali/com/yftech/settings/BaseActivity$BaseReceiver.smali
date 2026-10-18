.class Lcom/yftech/settings/BaseActivity$BaseReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/BaseActivity;


# direct methods
.method private constructor <init>(Lcom/yftech/settings/BaseActivity;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/yftech/settings/BaseActivity$BaseReceiver;->this$0:Lcom/yftech/settings/BaseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yftech/settings/BaseActivity;Lcom/yftech/settings/BaseActivity$1;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/yftech/settings/BaseActivity$BaseReceiver;-><init>(Lcom/yftech/settings/BaseActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 54
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.yftech.intent.action.exit.application"

    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "exit.package.name"

    .line 56
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "BaseActivity"

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive() EXIT_APPLICATION_BROADCAST_ACTION packageName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object p2, p0, Lcom/yftech/settings/BaseActivity$BaseReceiver;->this$0:Lcom/yftech/settings/BaseActivity;

    invoke-virtual {p2}, Lcom/yftech/settings/BaseActivity;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "BaseActivity"

    const-string p2, "onReceive() finish"

    .line 59
    invoke-static {p1, p2}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object p0, p0, Lcom/yftech/settings/BaseActivity$BaseReceiver;->this$0:Lcom/yftech/settings/BaseActivity;

    invoke-virtual {p0}, Lcom/yftech/settings/BaseActivity;->finish()V

    :cond_0
    return-void
.end method
