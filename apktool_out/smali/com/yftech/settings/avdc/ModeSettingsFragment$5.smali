.class Lcom/yftech/settings/avdc/ModeSettingsFragment$5;
.super Ljava/lang/Object;
.source "ModeSettingsFragment.java"

# interfaces
.implements Lcom/yftech/settings/widget/dialog/CommonDialog$OnBtnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/settings/avdc/ModeSettingsFragment;->showAvdcResetTipDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/avdc/ModeSettingsFragment;

.field final synthetic val$mode:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;


# direct methods
.method constructor <init>(Lcom/yftech/settings/avdc/ModeSettingsFragment;Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;)V
    .locals 0

    .line 670
    iput-object p1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment$5;->this$0:Lcom/yftech/settings/avdc/ModeSettingsFragment;

    iput-object p2, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment$5;->val$mode:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

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
    .locals 3

    .line 673
    invoke-static {}, Lcom/yftech/settings/manager/CarDriveModeManager;->getInstance()Lcom/yftech/settings/manager/CarDriveModeManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/CarDriveModeManager$Function;->RESET_ACTION:Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarDriveModeManager;->setAction(Lcom/yftech/settings/manager/CarDriveModeManager$Function;)Z

    move-result v0

    .line 674
    iget-object v1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment$5;->this$0:Lcom/yftech/settings/avdc/ModeSettingsFragment;

    iget-object v2, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment$5;->val$mode:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    invoke-static {v1, v2}, Lcom/yftech/settings/avdc/ModeSettingsFragment;->access$1500(Lcom/yftech/settings/avdc/ModeSettingsFragment;Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;)V

    .line 676
    sget-object v1, Lcom/yftech/settings/avdc/ModeSettingsFragment$6;->$SwitchMap$com$yftech$vehicle$internal$adapter$ICarDrive$DriveMode:[I

    iget-object v2, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment$5;->val$mode:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    invoke-virtual {v2}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_3

    .line 684
    :pswitch_0
    iget-object v1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment$5;->this$0:Lcom/yftech/settings/avdc/ModeSettingsFragment;

    if-eqz v0, :cond_0

    const v0, 0x7f0d007d

    goto :goto_0

    :cond_0
    const v0, 0x7f0d007c

    :goto_0
    invoke-virtual {v1, v0}, Lcom/yftech/settings/avdc/ModeSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 681
    :pswitch_1
    iget-object v1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment$5;->this$0:Lcom/yftech/settings/avdc/ModeSettingsFragment;

    if-eqz v0, :cond_1

    const v0, 0x7f0d0079

    goto :goto_1

    :cond_1
    const v0, 0x7f0d0078

    :goto_1
    invoke-virtual {v1, v0}, Lcom/yftech/settings/avdc/ModeSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 678
    :pswitch_2
    iget-object v1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment$5;->this$0:Lcom/yftech/settings/avdc/ModeSettingsFragment;

    if-eqz v0, :cond_2

    const v0, 0x7f0d007b

    goto :goto_2

    :cond_2
    const v0, 0x7f0d007a

    :goto_2
    invoke-virtual {v1, v0}, Lcom/yftech/settings/avdc/ModeSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 687
    :goto_3
    iget-object p0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment$5;->this$0:Lcom/yftech/settings/avdc/ModeSettingsFragment;

    invoke-virtual {p0}, Lcom/yftech/settings/avdc/ModeSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
