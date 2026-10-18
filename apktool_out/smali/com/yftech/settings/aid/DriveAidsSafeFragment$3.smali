.class Lcom/yftech/settings/aid/DriveAidsSafeFragment$3;
.super Ljava/lang/Object;
.source "DriveAidsSafeFragment.java"

# interfaces
.implements Lcom/yftech/settings/widget/dialog/CommonDialog$OnBtnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/settings/aid/DriveAidsSafeFragment;->showCloseFcwTipDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/aid/DriveAidsSafeFragment;


# direct methods
.method constructor <init>(Lcom/yftech/settings/aid/DriveAidsSafeFragment;)V
    .locals 0

    .line 474
    iput-object p1, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment$3;->this$0:Lcom/yftech/settings/aid/DriveAidsSafeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick()V
    .locals 3

    .line 482
    iget-object p0, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment$3;->this$0:Lcom/yftech/settings/aid/DriveAidsSafeFragment;

    sget-object v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;->FCW_OFF_ENABLED:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-static {}, Lcom/yftech/settings/manager/CarAssistantManager;->getInstance()Lcom/yftech/settings/manager/CarAssistantManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/CarAssistantManager$Function;->FCW_OFF_ENABLED:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/CarAssistantManager;->getEnabled(Lcom/yftech/settings/manager/CarAssistantManager$Function;)Z

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->access$000(Lcom/yftech/settings/aid/DriveAidsSafeFragment;Lcom/yftech/settings/manager/CarAssistantManager$Function;Z)V

    return-void
.end method

.method public onIconClick()V
    .locals 0

    return-void
.end method

.method public onSureClick()V
    .locals 2

    .line 477
    invoke-static {}, Lcom/yftech/settings/manager/CarAssistantManager;->getInstance()Lcom/yftech/settings/manager/CarAssistantManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/settings/manager/CarAssistantManager$Function;->FCW_OFF_ENABLED:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/yftech/settings/manager/CarAssistantManager;->setEnabled(Lcom/yftech/settings/manager/CarAssistantManager$Function;Z)Z

    return-void
.end method
