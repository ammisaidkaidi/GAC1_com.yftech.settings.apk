.class Lcom/yftech/settings/avdc/ModeSettingsFragment$1;
.super Lcom/yftech/settings/manager/BaseManager$ModelCallback;
.source "ModeSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/avdc/ModeSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yftech/settings/manager/BaseManager$ModelCallback<",
        "Lcom/yftech/settings/manager/CarDriveModeManager$Function;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/avdc/ModeSettingsFragment;


# direct methods
.method constructor <init>(Lcom/yftech/settings/avdc/ModeSettingsFragment;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment$1;->this$0:Lcom/yftech/settings/avdc/ModeSettingsFragment;

    invoke-direct {p0}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnableChanged(Lcom/yftech/settings/manager/CarDriveModeManager$Function;Z)V
    .locals 0

    .line 128
    invoke-super {p0, p1, p2}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;->onEnableChanged(Ljava/lang/Object;Z)V

    .line 129
    iget-object p0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment$1;->this$0:Lcom/yftech/settings/avdc/ModeSettingsFragment;

    invoke-static {p0, p1, p2}, Lcom/yftech/settings/avdc/ModeSettingsFragment;->access$600(Lcom/yftech/settings/avdc/ModeSettingsFragment;Lcom/yftech/settings/manager/CarDriveModeManager$Function;Z)V

    return-void
.end method

.method public bridge synthetic onEnableChanged(Ljava/lang/Object;Z)V
    .locals 0

    .line 103
    check-cast p1, Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/settings/avdc/ModeSettingsFragment$1;->onEnableChanged(Lcom/yftech/settings/manager/CarDriveModeManager$Function;Z)V

    return-void
.end method

.method public onOptionChanged(Lcom/yftech/settings/manager/CarDriveModeManager$Function;I)V
    .locals 1

    .line 106
    invoke-super {p0, p1, p2}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;->onOptionChanged(Ljava/lang/Object;I)V

    .line 107
    iget-object v0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment$1;->this$0:Lcom/yftech/settings/avdc/ModeSettingsFragment;

    invoke-static {v0, p1, p2}, Lcom/yftech/settings/avdc/ModeSettingsFragment;->access$000(Lcom/yftech/settings/avdc/ModeSettingsFragment;Lcom/yftech/settings/manager/CarDriveModeManager$Function;I)V

    .line 108
    iget-object p0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment$1;->this$0:Lcom/yftech/settings/avdc/ModeSettingsFragment;

    invoke-static {p0, p1, p2}, Lcom/yftech/settings/avdc/ModeSettingsFragment;->access$100(Lcom/yftech/settings/avdc/ModeSettingsFragment;Lcom/yftech/settings/manager/CarDriveModeManager$Function;I)V

    return-void
.end method

.method public bridge synthetic onOptionChanged(Ljava/lang/Object;I)V
    .locals 0

    .line 103
    check-cast p1, Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/settings/avdc/ModeSettingsFragment$1;->onOptionChanged(Lcom/yftech/settings/manager/CarDriveModeManager$Function;I)V

    return-void
.end method

.method public onTimeout()V
    .locals 0

    .line 122
    invoke-super {p0}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;->onTimeout()V

    .line 123
    iget-object p0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment$1;->this$0:Lcom/yftech/settings/avdc/ModeSettingsFragment;

    invoke-static {p0}, Lcom/yftech/settings/avdc/ModeSettingsFragment;->access$500(Lcom/yftech/settings/avdc/ModeSettingsFragment;)V

    return-void
.end method

.method public onValueChanged(Lcom/yftech/settings/manager/CarDriveModeManager$Function;Ljava/lang/Object;)V
    .locals 4

    .line 113
    invoke-super {p0, p1, p2}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;->onValueChanged(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 114
    iget-object v0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment$1;->this$0:Lcom/yftech/settings/avdc/ModeSettingsFragment;

    invoke-static {v0, p1, p2}, Lcom/yftech/settings/avdc/ModeSettingsFragment;->access$200(Lcom/yftech/settings/avdc/ModeSettingsFragment;Lcom/yftech/settings/manager/CarDriveModeManager$Function;Ljava/lang/Object;)V

    .line 116
    iget-object v0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment$1;->this$0:Lcom/yftech/settings/avdc/ModeSettingsFragment;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->SPORT_PLUS_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p2, v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v0, v1}, Lcom/yftech/settings/avdc/ModeSettingsFragment;->access$300(Lcom/yftech/settings/avdc/ModeSettingsFragment;Z)V

    .line 117
    iget-object p0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment$1;->this$0:Lcom/yftech/settings/avdc/ModeSettingsFragment;

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->ECO_PRO_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    if-eq p2, v0, :cond_1

    move v2, v3

    :cond_1
    invoke-static {p0, p1, v2}, Lcom/yftech/settings/avdc/ModeSettingsFragment;->access$400(Lcom/yftech/settings/avdc/ModeSettingsFragment;Lcom/yftech/settings/manager/CarDriveModeManager$Function;Z)V

    return-void
.end method

.method public bridge synthetic onValueChanged(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 103
    check-cast p1, Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/settings/avdc/ModeSettingsFragment$1;->onValueChanged(Lcom/yftech/settings/manager/CarDriveModeManager$Function;Ljava/lang/Object;)V

    return-void
.end method
