.class Lcom/yftech/settings/display/DisplayDashFragment$5;
.super Ljava/lang/Object;
.source "DisplayDashFragment.java"

# interfaces
.implements Lcom/yftech/settings/widget/dialog/CommonDialog$OnBtnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/settings/display/DisplayDashFragment;->showDashDefaultSettingDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/display/DisplayDashFragment;


# direct methods
.method constructor <init>(Lcom/yftech/settings/display/DisplayDashFragment;)V
    .locals 0

    .line 442
    iput-object p1, p0, Lcom/yftech/settings/display/DisplayDashFragment$5;->this$0:Lcom/yftech/settings/display/DisplayDashFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick()V
    .locals 0

    return-void
.end method

.method public onIconClick()V
    .locals 0

    return-void
.end method

.method public onSureClick()V
    .locals 1

    .line 445
    invoke-static {}, Lcom/yftech/settings/manager/CarDashboardManager;->getInstance()Lcom/yftech/settings/manager/CarDashboardManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/settings/manager/CarDashboardManager$Function;->DASH_RESTORE_FACTORY_SETTINGS_ACTION:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    invoke-virtual {p0, v0}, Lcom/yftech/settings/manager/CarDashboardManager;->setAction(Lcom/yftech/settings/manager/CarDashboardManager$Function;)Z

    return-void
.end method
