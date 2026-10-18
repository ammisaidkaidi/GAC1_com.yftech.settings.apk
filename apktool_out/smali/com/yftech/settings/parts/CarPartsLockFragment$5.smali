.class Lcom/yftech/settings/parts/CarPartsLockFragment$5;
.super Ljava/lang/Object;
.source "CarPartsLockFragment.java"

# interfaces
.implements Lcom/yftech/settings/widget/dialog/CommonDialog$OnBtnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/settings/parts/CarPartsLockFragment;->showConfirmDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/parts/CarPartsLockFragment;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/yftech/settings/parts/CarPartsLockFragment;I)V
    .locals 0

    .line 384
    iput-object p1, p0, Lcom/yftech/settings/parts/CarPartsLockFragment$5;->this$0:Lcom/yftech/settings/parts/CarPartsLockFragment;

    iput p2, p0, Lcom/yftech/settings/parts/CarPartsLockFragment$5;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick()V
    .locals 4

    .line 395
    iget-object v0, p0, Lcom/yftech/settings/parts/CarPartsLockFragment$5;->this$0:Lcom/yftech/settings/parts/CarPartsLockFragment;

    sget-object v1, Lcom/yftech/settings/manager/CarPartsManager$Function;->PEPS_AUTO_TRUNK_OPEN_OPTION:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v2

    sget-object v3, Lcom/yftech/settings/manager/CarPartsManager$Function;->PEPS_AUTO_TRUNK_OPEN_OPTION:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v2, v3}, Lcom/yftech/settings/manager/CarPartsManager;->getOption(Lcom/yftech/settings/manager/CarPartsManager$Function;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/yftech/settings/parts/CarPartsLockFragment;->access$100(Lcom/yftech/settings/parts/CarPartsLockFragment;Lcom/yftech/settings/manager/CarPartsManager$Function;I)V

    .line 396
    iget-object p0, p0, Lcom/yftech/settings/parts/CarPartsLockFragment$5;->this$0:Lcom/yftech/settings/parts/CarPartsLockFragment;

    invoke-static {p0}, Lcom/yftech/settings/parts/CarPartsLockFragment;->access$500(Lcom/yftech/settings/parts/CarPartsLockFragment;)Lcom/yftech/settings/widget/MultiSelectView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/settings/widget/MultiSelectView;->hide()V

    return-void
.end method

.method public onIconClick()V
    .locals 0

    return-void
.end method

.method public onSureClick()V
    .locals 3

    .line 387
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/CarPartsManager$Function;->PEPS_AUTO_TRUNK_OPEN_OPTION:Lcom/yftech/settings/manager/CarPartsManager$Function;

    iget v2, p0, Lcom/yftech/settings/parts/CarPartsLockFragment$5;->val$position:I

    invoke-virtual {v0, v1, v2}, Lcom/yftech/settings/manager/CarPartsManager;->setOption(Lcom/yftech/settings/manager/CarPartsManager$Function;I)Z

    .line 388
    iget-object v0, p0, Lcom/yftech/settings/parts/CarPartsLockFragment$5;->this$0:Lcom/yftech/settings/parts/CarPartsLockFragment;

    invoke-static {v0}, Lcom/yftech/settings/parts/CarPartsLockFragment;->access$500(Lcom/yftech/settings/parts/CarPartsLockFragment;)Lcom/yftech/settings/widget/MultiSelectView;

    move-result-object v0

    iget v1, p0, Lcom/yftech/settings/parts/CarPartsLockFragment$5;->val$position:I

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/MultiSelectView;->setSelectedTab(I)Lcom/yftech/settings/widget/MultiSelectView;

    .line 389
    iget-object p0, p0, Lcom/yftech/settings/parts/CarPartsLockFragment$5;->this$0:Lcom/yftech/settings/parts/CarPartsLockFragment;

    invoke-static {p0}, Lcom/yftech/settings/parts/CarPartsLockFragment;->access$500(Lcom/yftech/settings/parts/CarPartsLockFragment;)Lcom/yftech/settings/widget/MultiSelectView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/settings/widget/MultiSelectView;->hide()V

    return-void
.end method
