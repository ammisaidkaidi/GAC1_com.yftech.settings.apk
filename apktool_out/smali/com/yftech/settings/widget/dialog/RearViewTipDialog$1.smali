.class Lcom/yftech/settings/widget/dialog/RearViewTipDialog$1;
.super Ljava/lang/Object;
.source "RearViewTipDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/settings/widget/dialog/RearViewTipDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/widget/dialog/RearViewTipDialog;


# direct methods
.method constructor <init>(Lcom/yftech/settings/widget/dialog/RearViewTipDialog;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/yftech/settings/widget/dialog/RearViewTipDialog$1;->this$0:Lcom/yftech/settings/widget/dialog/RearViewTipDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 77
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/RearViewTipDialog$1;->this$0:Lcom/yftech/settings/widget/dialog/RearViewTipDialog;

    invoke-static {p1}, Lcom/yftech/settings/widget/dialog/RearViewTipDialog;->access$000(Lcom/yftech/settings/widget/dialog/RearViewTipDialog;)Lcom/yftech/settings/widget/dialog/RearViewTipDialog$OnBtnClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 78
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/RearViewTipDialog$1;->this$0:Lcom/yftech/settings/widget/dialog/RearViewTipDialog;

    invoke-static {p1}, Lcom/yftech/settings/widget/dialog/RearViewTipDialog;->access$000(Lcom/yftech/settings/widget/dialog/RearViewTipDialog;)Lcom/yftech/settings/widget/dialog/RearViewTipDialog$OnBtnClickListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/yftech/settings/widget/dialog/RearViewTipDialog$OnBtnClickListener;->onSureClick()V

    .line 80
    :cond_0
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/RearViewTipDialog$1;->this$0:Lcom/yftech/settings/widget/dialog/RearViewTipDialog;

    invoke-static {p1}, Lcom/yftech/settings/widget/dialog/RearViewTipDialog;->access$100(Lcom/yftech/settings/widget/dialog/RearViewTipDialog;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 81
    iget-object p0, p0, Lcom/yftech/settings/widget/dialog/RearViewTipDialog$1;->this$0:Lcom/yftech/settings/widget/dialog/RearViewTipDialog;

    invoke-virtual {p0}, Lcom/yftech/settings/widget/dialog/RearViewTipDialog;->dismiss()V

    :cond_1
    return-void
.end method
