.class Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog$1;
.super Ljava/lang/Object;
.source "CommonCheckboxDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;


# direct methods
.method constructor <init>(Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog$1;->this$0:Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 55
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog$1;->this$0:Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;

    invoke-static {p1}, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;->access$000(Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;)Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog$OnBtnClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 56
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog$1;->this$0:Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;

    invoke-static {p1}, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;->access$000(Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;)Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog$OnBtnClickListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog$OnBtnClickListener;->onSureClick()V

    .line 58
    :cond_0
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog$1;->this$0:Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;

    invoke-static {p1}, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;->access$100(Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 59
    iget-object p0, p0, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog$1;->this$0:Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;

    invoke-virtual {p0}, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;->dismiss()V

    :cond_1
    return-void
.end method
