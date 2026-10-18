.class Lcom/yftech/settings/widget/dialog/BaseDialog$CarplayShowUIReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BaseDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/widget/dialog/BaseDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CarplayShowUIReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/widget/dialog/BaseDialog;


# direct methods
.method private constructor <init>(Lcom/yftech/settings/widget/dialog/BaseDialog;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/yftech/settings/widget/dialog/BaseDialog$CarplayShowUIReceiver;->this$0:Lcom/yftech/settings/widget/dialog/BaseDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yftech/settings/widget/dialog/BaseDialog;Lcom/yftech/settings/widget/dialog/BaseDialog$1;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/yftech/settings/widget/dialog/BaseDialog$CarplayShowUIReceiver;-><init>(Lcom/yftech/settings/widget/dialog/BaseDialog;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 68
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.autochips.carplay.event.show_ui"

    .line 69
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "ui_show"

    const/4 v0, 0x1

    .line 70
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const-string p2, "BaseDialog"

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive() ACTION_CARPLAY_EVENT_SHOW_UI isShow:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 73
    iget-object p0, p0, Lcom/yftech/settings/widget/dialog/BaseDialog$CarplayShowUIReceiver;->this$0:Lcom/yftech/settings/widget/dialog/BaseDialog;

    invoke-virtual {p0}, Lcom/yftech/settings/widget/dialog/BaseDialog;->dismiss()V

    :cond_0
    return-void
.end method
