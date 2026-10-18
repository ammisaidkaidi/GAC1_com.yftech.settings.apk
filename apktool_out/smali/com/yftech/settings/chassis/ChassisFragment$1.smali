.class Lcom/yftech/settings/chassis/ChassisFragment$1;
.super Lcom/yftech/settings/manager/BaseManager$ModelCallback;
.source "ChassisFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/chassis/ChassisFragment;
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
.field final synthetic this$0:Lcom/yftech/settings/chassis/ChassisFragment;


# direct methods
.method constructor <init>(Lcom/yftech/settings/chassis/ChassisFragment;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/yftech/settings/chassis/ChassisFragment$1;->this$0:Lcom/yftech/settings/chassis/ChassisFragment;

    invoke-direct {p0}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnableChanged(Lcom/yftech/settings/manager/CarDriveModeManager$Function;Z)V
    .locals 0

    .line 28
    invoke-super {p0, p1, p2}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;->onEnableChanged(Ljava/lang/Object;Z)V

    .line 29
    iget-object p0, p0, Lcom/yftech/settings/chassis/ChassisFragment$1;->this$0:Lcom/yftech/settings/chassis/ChassisFragment;

    invoke-static {p0, p1, p2}, Lcom/yftech/settings/chassis/ChassisFragment;->access$000(Lcom/yftech/settings/chassis/ChassisFragment;Lcom/yftech/settings/manager/CarDriveModeManager$Function;Z)V

    return-void
.end method

.method public bridge synthetic onEnableChanged(Ljava/lang/Object;Z)V
    .locals 0

    .line 24
    check-cast p1, Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/settings/chassis/ChassisFragment$1;->onEnableChanged(Lcom/yftech/settings/manager/CarDriveModeManager$Function;Z)V

    return-void
.end method

.method public onOptionChanged(Lcom/yftech/settings/manager/CarDriveModeManager$Function;I)V
    .locals 0

    .line 34
    invoke-super {p0, p1, p2}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;->onOptionChanged(Ljava/lang/Object;I)V

    .line 35
    iget-object p0, p0, Lcom/yftech/settings/chassis/ChassisFragment$1;->this$0:Lcom/yftech/settings/chassis/ChassisFragment;

    invoke-static {p0, p1, p2}, Lcom/yftech/settings/chassis/ChassisFragment;->access$100(Lcom/yftech/settings/chassis/ChassisFragment;Lcom/yftech/settings/manager/CarDriveModeManager$Function;I)V

    return-void
.end method

.method public bridge synthetic onOptionChanged(Ljava/lang/Object;I)V
    .locals 0

    .line 24
    check-cast p1, Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/settings/chassis/ChassisFragment$1;->onOptionChanged(Lcom/yftech/settings/manager/CarDriveModeManager$Function;I)V

    return-void
.end method

.method public onTimeout()V
    .locals 0

    .line 40
    invoke-super {p0}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;->onTimeout()V

    .line 41
    iget-object p0, p0, Lcom/yftech/settings/chassis/ChassisFragment$1;->this$0:Lcom/yftech/settings/chassis/ChassisFragment;

    invoke-static {p0}, Lcom/yftech/settings/chassis/ChassisFragment;->access$200(Lcom/yftech/settings/chassis/ChassisFragment;)V

    return-void
.end method
