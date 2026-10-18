.class Lcom/yftech/settings/parts/CarPartsLockFragment$3;
.super Ljava/lang/Object;
.source "CarPartsLockFragment.java"

# interfaces
.implements Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog$OnBtnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/settings/parts/CarPartsLockFragment;->showOpenSpeedLockDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/parts/CarPartsLockFragment;


# direct methods
.method constructor <init>(Lcom/yftech/settings/parts/CarPartsLockFragment;)V
    .locals 0

    .line 354
    iput-object p1, p0, Lcom/yftech/settings/parts/CarPartsLockFragment$3;->this$0:Lcom/yftech/settings/parts/CarPartsLockFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick()V
    .locals 2

    .line 362
    iget-object p0, p0, Lcom/yftech/settings/parts/CarPartsLockFragment$3;->this$0:Lcom/yftech/settings/parts/CarPartsLockFragment;

    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->SPEED_AUTO_LOCK_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/yftech/settings/parts/CarPartsLockFragment;->access$000(Lcom/yftech/settings/parts/CarPartsLockFragment;Lcom/yftech/settings/manager/CarPartsManager$Function;Z)V

    return-void
.end method

.method public onSureClick()V
    .locals 2

    .line 357
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->SPEED_AUTO_LOCK_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/yftech/settings/manager/CarPartsManager;->setEnabled(Lcom/yftech/settings/manager/CarPartsManager$Function;Z)Z

    return-void
.end method
