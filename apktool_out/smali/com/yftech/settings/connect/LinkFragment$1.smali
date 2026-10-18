.class Lcom/yftech/settings/connect/LinkFragment$1;
.super Ljava/lang/Object;
.source "LinkFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/settings/connect/LinkFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/connect/LinkFragment;


# direct methods
.method constructor <init>(Lcom/yftech/settings/connect/LinkFragment;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/yftech/settings/connect/LinkFragment$1;->this$0:Lcom/yftech/settings/connect/LinkFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 63
    :try_start_0
    invoke-static {}, Lcom/yftech/settings/utils/Utils;->isCarPlayCertificate()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 64
    iget-object p1, p0, Lcom/yftech/settings/connect/LinkFragment$1;->this$0:Lcom/yftech/settings/connect/LinkFragment;

    new-instance v0, Lcom/yftech/settings/widget/dialog/CarPlayAvailableListDialog;

    iget-object v1, p0, Lcom/yftech/settings/connect/LinkFragment$1;->this$0:Lcom/yftech/settings/connect/LinkFragment;

    invoke-virtual {v1}, Lcom/yftech/settings/connect/LinkFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yftech/settings/widget/dialog/CarPlayAvailableListDialog;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v0}, Lcom/yftech/settings/connect/LinkFragment;->access$002(Lcom/yftech/settings/connect/LinkFragment;Lcom/yftech/settings/widget/dialog/CarPlayAvailableListDialog;)Lcom/yftech/settings/widget/dialog/CarPlayAvailableListDialog;

    .line 65
    iget-object p1, p0, Lcom/yftech/settings/connect/LinkFragment$1;->this$0:Lcom/yftech/settings/connect/LinkFragment;

    invoke-static {p1}, Lcom/yftech/settings/connect/LinkFragment;->access$000(Lcom/yftech/settings/connect/LinkFragment;)Lcom/yftech/settings/widget/dialog/CarPlayAvailableListDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/settings/widget/dialog/CarPlayAvailableListDialog;->show()V

    .line 66
    iget-object p1, p0, Lcom/yftech/settings/connect/LinkFragment$1;->this$0:Lcom/yftech/settings/connect/LinkFragment;

    invoke-static {p1}, Lcom/yftech/settings/connect/LinkFragment;->access$000(Lcom/yftech/settings/connect/LinkFragment;)Lcom/yftech/settings/widget/dialog/CarPlayAvailableListDialog;

    move-result-object p1

    new-instance v0, Lcom/yftech/settings/connect/LinkFragment$1$1;

    invoke-direct {v0, p0}, Lcom/yftech/settings/connect/LinkFragment$1$1;-><init>(Lcom/yftech/settings/connect/LinkFragment$1;)V

    invoke-virtual {p1, v0}, Lcom/yftech/settings/widget/dialog/CarPlayAvailableListDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 73
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.systemui.bt.show"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    iget-object p0, p0, Lcom/yftech/settings/connect/LinkFragment$1;->this$0:Lcom/yftech/settings/connect/LinkFragment;

    invoke-virtual {p0}, Lcom/yftech/settings/connect/LinkFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 77
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method
