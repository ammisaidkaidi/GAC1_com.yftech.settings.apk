.class Lcom/yftech/settings/widget/KeypadToneMultiSelectView$2;
.super Ljava/lang/Object;
.source "KeypadToneMultiSelectView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/settings/widget/KeypadToneMultiSelectView;->setUpView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/widget/KeypadToneMultiSelectView;


# direct methods
.method constructor <init>(Lcom/yftech/settings/widget/KeypadToneMultiSelectView;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/yftech/settings/widget/KeypadToneMultiSelectView$2;->this$0:Lcom/yftech/settings/widget/KeypadToneMultiSelectView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 96
    iget-object p1, p0, Lcom/yftech/settings/widget/KeypadToneMultiSelectView$2;->this$0:Lcom/yftech/settings/widget/KeypadToneMultiSelectView;

    iget-object p1, p1, Lcom/yftech/settings/widget/KeypadToneMultiSelectView;->onSwitchListener:Lcom/yftech/settings/widget/MultiSelectView$OnSwitchListener;

    if-eqz p1, :cond_0

    .line 97
    iget-object p1, p0, Lcom/yftech/settings/widget/KeypadToneMultiSelectView$2;->this$0:Lcom/yftech/settings/widget/KeypadToneMultiSelectView;

    iget-object p1, p1, Lcom/yftech/settings/widget/KeypadToneMultiSelectView;->onSwitchListener:Lcom/yftech/settings/widget/MultiSelectView$OnSwitchListener;

    iget-object v0, p0, Lcom/yftech/settings/widget/KeypadToneMultiSelectView$2;->this$0:Lcom/yftech/settings/widget/KeypadToneMultiSelectView;

    iget-object v1, p0, Lcom/yftech/settings/widget/KeypadToneMultiSelectView$2;->this$0:Lcom/yftech/settings/widget/KeypadToneMultiSelectView;

    iget v1, v1, Lcom/yftech/settings/widget/KeypadToneMultiSelectView;->mSelectedTab:I

    iget-object v2, p0, Lcom/yftech/settings/widget/KeypadToneMultiSelectView$2;->this$0:Lcom/yftech/settings/widget/KeypadToneMultiSelectView;

    iget-object v3, p0, Lcom/yftech/settings/widget/KeypadToneMultiSelectView$2;->this$0:Lcom/yftech/settings/widget/KeypadToneMultiSelectView;

    iget v3, v3, Lcom/yftech/settings/widget/KeypadToneMultiSelectView;->mSelectedTab:I

    invoke-virtual {v2, v3}, Lcom/yftech/settings/widget/KeypadToneMultiSelectView;->getTabText(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/yftech/settings/widget/MultiSelectView$OnSwitchListener;->onSwitch(Lcom/yftech/settings/widget/MultiSelectView;ILjava/lang/String;Z)V

    .line 99
    :cond_0
    iget-object p1, p0, Lcom/yftech/settings/widget/KeypadToneMultiSelectView$2;->this$0:Lcom/yftech/settings/widget/KeypadToneMultiSelectView;

    iget-object v0, p0, Lcom/yftech/settings/widget/KeypadToneMultiSelectView$2;->this$0:Lcom/yftech/settings/widget/KeypadToneMultiSelectView;

    iget v0, v0, Lcom/yftech/settings/widget/KeypadToneMultiSelectView;->mSelectedTab:I

    invoke-virtual {p1, v0}, Lcom/yftech/settings/widget/KeypadToneMultiSelectView;->updateView(I)V

    .line 100
    iget-object p0, p0, Lcom/yftech/settings/widget/KeypadToneMultiSelectView$2;->this$0:Lcom/yftech/settings/widget/KeypadToneMultiSelectView;

    invoke-virtual {p0}, Lcom/yftech/settings/widget/KeypadToneMultiSelectView;->hidePopupWindow()V

    return-void
.end method
