.class Lcom/yftech/settings/widget/MultiSelectView$4;
.super Ljava/lang/Object;
.source "MultiSelectView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/settings/widget/MultiSelectView;->setUpView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/widget/MultiSelectView;


# direct methods
.method constructor <init>(Lcom/yftech/settings/widget/MultiSelectView;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/yftech/settings/widget/MultiSelectView$4;->this$0:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const-string p1, "SwitchMultiText"

    const-string v0, "ok on click"

    .line 258
    invoke-static {p1, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object p1, p0, Lcom/yftech/settings/widget/MultiSelectView$4;->this$0:Lcom/yftech/settings/widget/MultiSelectView;

    iget-object v0, p0, Lcom/yftech/settings/widget/MultiSelectView$4;->this$0:Lcom/yftech/settings/widget/MultiSelectView;

    iget v0, v0, Lcom/yftech/settings/widget/MultiSelectView;->mSelectedTab:I

    invoke-virtual {p1, v0}, Lcom/yftech/settings/widget/MultiSelectView;->updateView(I)V

    .line 260
    iget-object p1, p0, Lcom/yftech/settings/widget/MultiSelectView$4;->this$0:Lcom/yftech/settings/widget/MultiSelectView;

    iget-object p1, p1, Lcom/yftech/settings/widget/MultiSelectView;->onSwitchListener:Lcom/yftech/settings/widget/MultiSelectView$OnSwitchListener;

    if-eqz p1, :cond_0

    .line 261
    iget-object p1, p0, Lcom/yftech/settings/widget/MultiSelectView$4;->this$0:Lcom/yftech/settings/widget/MultiSelectView;

    iget-object p1, p1, Lcom/yftech/settings/widget/MultiSelectView;->onSwitchListener:Lcom/yftech/settings/widget/MultiSelectView$OnSwitchListener;

    iget-object v0, p0, Lcom/yftech/settings/widget/MultiSelectView$4;->this$0:Lcom/yftech/settings/widget/MultiSelectView;

    iget-object v1, p0, Lcom/yftech/settings/widget/MultiSelectView$4;->this$0:Lcom/yftech/settings/widget/MultiSelectView;

    iget v1, v1, Lcom/yftech/settings/widget/MultiSelectView;->mSelectedTab:I

    iget-object v2, p0, Lcom/yftech/settings/widget/MultiSelectView$4;->this$0:Lcom/yftech/settings/widget/MultiSelectView;

    iget-object v3, p0, Lcom/yftech/settings/widget/MultiSelectView$4;->this$0:Lcom/yftech/settings/widget/MultiSelectView;

    iget v3, v3, Lcom/yftech/settings/widget/MultiSelectView;->mSelectedTab:I

    invoke-virtual {v2, v3}, Lcom/yftech/settings/widget/MultiSelectView;->getTabText(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/yftech/settings/widget/MultiSelectView$OnSwitchListener;->onSwitch(Lcom/yftech/settings/widget/MultiSelectView;ILjava/lang/String;Z)V

    .line 265
    :cond_0
    iget-object p0, p0, Lcom/yftech/settings/widget/MultiSelectView$4;->this$0:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-virtual {p0}, Lcom/yftech/settings/widget/MultiSelectView;->hidePopupWindow()V

    return-void
.end method
