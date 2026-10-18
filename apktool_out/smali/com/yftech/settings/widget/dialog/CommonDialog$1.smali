.class Lcom/yftech/settings/widget/dialog/CommonDialog$1;
.super Ljava/lang/Object;
.source "CommonDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/settings/widget/dialog/CommonDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/widget/dialog/CommonDialog;


# direct methods
.method constructor <init>(Lcom/yftech/settings/widget/dialog/CommonDialog;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/yftech/settings/widget/dialog/CommonDialog$1;->this$0:Lcom/yftech/settings/widget/dialog/CommonDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 62
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/CommonDialog$1;->this$0:Lcom/yftech/settings/widget/dialog/CommonDialog;

    invoke-static {p1}, Lcom/yftech/settings/widget/dialog/CommonDialog;->access$000(Lcom/yftech/settings/widget/dialog/CommonDialog;)Lcom/yftech/settings/widget/dialog/CommonDialog$OnBtnClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 63
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/CommonDialog$1;->this$0:Lcom/yftech/settings/widget/dialog/CommonDialog;

    invoke-static {p1}, Lcom/yftech/settings/widget/dialog/CommonDialog;->access$000(Lcom/yftech/settings/widget/dialog/CommonDialog;)Lcom/yftech/settings/widget/dialog/CommonDialog$OnBtnClickListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/yftech/settings/widget/dialog/CommonDialog$OnBtnClickListener;->onSureClick()V

    .line 65
    :cond_0
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/CommonDialog$1;->this$0:Lcom/yftech/settings/widget/dialog/CommonDialog;

    invoke-static {p1}, Lcom/yftech/settings/widget/dialog/CommonDialog;->access$100(Lcom/yftech/settings/widget/dialog/CommonDialog;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 66
    iget-object p0, p0, Lcom/yftech/settings/widget/dialog/CommonDialog$1;->this$0:Lcom/yftech/settings/widget/dialog/CommonDialog;

    invoke-virtual {p0}, Lcom/yftech/settings/widget/dialog/CommonDialog;->dismiss()V

    :cond_1
    return-void
.end method
