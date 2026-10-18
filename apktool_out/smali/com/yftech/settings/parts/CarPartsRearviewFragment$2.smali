.class Lcom/yftech/settings/parts/CarPartsRearviewFragment$2;
.super Ljava/lang/Object;
.source "CarPartsRearviewFragment.java"

# interfaces
.implements Lcom/yftech/settings/widget/dialog/RearViewTipDialog$OnBtnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/settings/parts/CarPartsRearviewFragment;->showConfirmDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/parts/CarPartsRearviewFragment;


# direct methods
.method constructor <init>(Lcom/yftech/settings/parts/CarPartsRearviewFragment;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/yftech/settings/parts/CarPartsRearviewFragment$2;->this$0:Lcom/yftech/settings/parts/CarPartsRearviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick()V
    .locals 2

    .line 187
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->OSRM_TURN_DOWN_VALUE:Lcom/yftech/settings/manager/CarPartsManager$Function;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleSaveCmd;->CANCEL:Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleSaveCmd;

    invoke-virtual {p0, v0, v1}, Lcom/yftech/settings/manager/CarPartsManager;->setValue(Lcom/yftech/settings/manager/CarPartsManager$Function;Ljava/lang/Object;)Z

    return-void
.end method

.method public onIconClick()V
    .locals 0

    return-void
.end method

.method public onSureClick()V
    .locals 2

    .line 182
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->OSRM_TURN_DOWN_VALUE:Lcom/yftech/settings/manager/CarPartsManager$Function;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleSaveCmd;->SAVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleSaveCmd;

    invoke-virtual {p0, v0, v1}, Lcom/yftech/settings/manager/CarPartsManager;->setValue(Lcom/yftech/settings/manager/CarPartsManager$Function;Ljava/lang/Object;)Z

    return-void
.end method
