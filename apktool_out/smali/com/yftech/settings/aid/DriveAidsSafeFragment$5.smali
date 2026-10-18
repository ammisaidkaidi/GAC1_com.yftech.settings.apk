.class Lcom/yftech/settings/aid/DriveAidsSafeFragment$5;
.super Ljava/lang/Object;
.source "DriveAidsSafeFragment.java"

# interfaces
.implements Lcom/yftech/settings/widget/dialog/CommonDialog$OnBtnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/settings/aid/DriveAidsSafeFragment;->showAidsSafeTipDialog(Lcom/yftech/settings/manager/CarAssistantManager$Function;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/aid/DriveAidsSafeFragment;

.field final synthetic val$enable:Z

.field final synthetic val$function:Lcom/yftech/settings/manager/CarAssistantManager$Function;


# direct methods
.method constructor <init>(Lcom/yftech/settings/aid/DriveAidsSafeFragment;Lcom/yftech/settings/manager/CarAssistantManager$Function;Z)V
    .locals 0

    .line 510
    iput-object p1, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment$5;->this$0:Lcom/yftech/settings/aid/DriveAidsSafeFragment;

    iput-object p2, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment$5;->val$function:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    iput-boolean p3, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment$5;->val$enable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick()V
    .locals 3

    .line 521
    iget-object v0, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment$5;->this$0:Lcom/yftech/settings/aid/DriveAidsSafeFragment;

    iget-object v1, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment$5;->val$function:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-static {}, Lcom/yftech/settings/manager/CarAssistantManager;->getInstance()Lcom/yftech/settings/manager/CarAssistantManager;

    move-result-object v2

    iget-object p0, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment$5;->val$function:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {v2, p0}, Lcom/yftech/settings/manager/CarAssistantManager;->getEnabled(Lcom/yftech/settings/manager/CarAssistantManager$Function;)Z

    move-result p0

    invoke-static {v0, v1, p0}, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->access$000(Lcom/yftech/settings/aid/DriveAidsSafeFragment;Lcom/yftech/settings/manager/CarAssistantManager$Function;Z)V

    return-void
.end method

.method public onIconClick()V
    .locals 0

    return-void
.end method

.method public onSureClick()V
    .locals 3

    .line 513
    invoke-static {}, Lcom/yftech/settings/manager/CarAssistantManager;->getInstance()Lcom/yftech/settings/manager/CarAssistantManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment$5;->val$function:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    iget-boolean v2, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment$5;->val$enable:Z

    invoke-virtual {v0, v1, v2}, Lcom/yftech/settings/manager/CarAssistantManager;->setEnabled(Lcom/yftech/settings/manager/CarAssistantManager$Function;Z)Z

    .line 514
    iget-object v0, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment$5;->val$function:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    sget-object v1, Lcom/yftech/settings/manager/CarAssistantManager$Function;->FCW_OFF_ENABLED:Lcom/yftech/settings/manager/CarAssistantManager$Function;

    if-ne v0, v1, :cond_1

    .line 515
    iget-object v0, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment$5;->this$0:Lcom/yftech/settings/aid/DriveAidsSafeFragment;

    invoke-static {v0}, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->access$500(Lcom/yftech/settings/aid/DriveAidsSafeFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment$5;->this$0:Lcom/yftech/settings/aid/DriveAidsSafeFragment;

    invoke-static {v1}, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->access$400(Lcom/yftech/settings/aid/DriveAidsSafeFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean p0, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment$5;->val$enable:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method
