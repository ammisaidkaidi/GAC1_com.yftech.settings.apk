.class Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog$3;
.super Ljava/lang/Object;
.source "CommonCheckboxDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    .line 76
    iput-object p1, p0, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog$3;->this$0:Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 79
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog$3;->this$0:Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;

    invoke-static {p1}, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;->access$200(Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 80
    iget-object p0, p0, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog$3;->this$0:Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;

    invoke-static {p0}, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;->access$200(Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;)Landroid/widget/Button;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/widget/Button;->setSelected(Z)V

    return-void
.end method
