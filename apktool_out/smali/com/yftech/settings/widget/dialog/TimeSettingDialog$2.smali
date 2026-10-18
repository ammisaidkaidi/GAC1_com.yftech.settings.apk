.class Lcom/yftech/settings/widget/dialog/TimeSettingDialog$2;
.super Ljava/lang/Object;
.source "TimeSettingDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/settings/widget/dialog/TimeSettingDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/widget/dialog/TimeSettingDialog;


# direct methods
.method constructor <init>(Lcom/yftech/settings/widget/dialog/TimeSettingDialog;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/yftech/settings/widget/dialog/TimeSettingDialog$2;->this$0:Lcom/yftech/settings/widget/dialog/TimeSettingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 91
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/TimeSettingDialog$2;->this$0:Lcom/yftech/settings/widget/dialog/TimeSettingDialog;

    invoke-virtual {p1}, Lcom/yftech/settings/widget/dialog/TimeSettingDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 92
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/TimeSettingDialog$2;->this$0:Lcom/yftech/settings/widget/dialog/TimeSettingDialog;

    invoke-static {p1}, Lcom/yftech/settings/widget/dialog/TimeSettingDialog;->access$000(Lcom/yftech/settings/widget/dialog/TimeSettingDialog;)Lcom/yftech/settings/widget/wheelview/WheelView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/settings/widget/wheelview/WheelView;->getSelectedPosition()I

    move-result p1

    add-int/lit16 v1, p1, 0x7e5

    .line 93
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/TimeSettingDialog$2;->this$0:Lcom/yftech/settings/widget/dialog/TimeSettingDialog;

    invoke-static {p1}, Lcom/yftech/settings/widget/dialog/TimeSettingDialog;->access$100(Lcom/yftech/settings/widget/dialog/TimeSettingDialog;)Lcom/yftech/settings/widget/wheelview/WheelView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/settings/widget/wheelview/WheelView;->getSelectedPosition()I

    move-result p1

    const/4 v0, 0x1

    add-int/lit8 v2, p1, 0x1

    .line 94
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/TimeSettingDialog$2;->this$0:Lcom/yftech/settings/widget/dialog/TimeSettingDialog;

    invoke-static {p1}, Lcom/yftech/settings/widget/dialog/TimeSettingDialog;->access$200(Lcom/yftech/settings/widget/dialog/TimeSettingDialog;)Lcom/yftech/settings/widget/wheelview/WheelView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/settings/widget/wheelview/WheelView;->getSelectedPosition()I

    move-result p1

    add-int/lit8 v3, p1, 0x1

    .line 95
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/TimeSettingDialog$2;->this$0:Lcom/yftech/settings/widget/dialog/TimeSettingDialog;

    invoke-static {p1}, Lcom/yftech/settings/widget/dialog/TimeSettingDialog;->access$300(Lcom/yftech/settings/widget/dialog/TimeSettingDialog;)Lcom/yftech/settings/widget/wheelview/WheelView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/settings/widget/wheelview/WheelView;->getSelectedPosition()I

    move-result v4

    .line 96
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/TimeSettingDialog$2;->this$0:Lcom/yftech/settings/widget/dialog/TimeSettingDialog;

    invoke-static {p1}, Lcom/yftech/settings/widget/dialog/TimeSettingDialog;->access$400(Lcom/yftech/settings/widget/dialog/TimeSettingDialog;)Lcom/yftech/settings/widget/wheelview/WheelView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/settings/widget/wheelview/WheelView;->getSelectedPosition()I

    move-result v5

    const-string p1, "TimeSettingDialog"

    .line 97
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onClick() year="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " month="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " day="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " hour="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " minute="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/16 v6, 0xc

    if-lt v4, v6, :cond_0

    move v7, v0

    goto :goto_0

    :cond_0
    move v7, p1

    .line 102
    :goto_0
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/TimeSettingDialog$2;->this$0:Lcom/yftech/settings/widget/dialog/TimeSettingDialog;

    invoke-virtual {p1}, Lcom/yftech/settings/widget/dialog/TimeSettingDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v6, 0x0

    const/4 v8, 0x1

    invoke-static/range {v0 .. v8}, Lcom/yftech/settings/utils/Utils;->setDateTime(Landroid/content/Context;IIIIIIIZ)V

    .line 103
    iget-object p0, p0, Lcom/yftech/settings/widget/dialog/TimeSettingDialog$2;->this$0:Lcom/yftech/settings/widget/dialog/TimeSettingDialog;

    invoke-virtual {p0}, Lcom/yftech/settings/widget/dialog/TimeSettingDialog;->dismiss()V

    :cond_1
    return-void
.end method
