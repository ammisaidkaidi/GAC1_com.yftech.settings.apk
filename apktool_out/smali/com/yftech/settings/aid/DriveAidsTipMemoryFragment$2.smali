.class Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment$2;
.super Lcom/yftech/settings/manager/BaseManager$ModelCallback;
.source "DriveAidsTipMemoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment;
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
.field final synthetic this$0:Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment;


# direct methods
.method constructor <init>(Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment$2;->this$0:Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment;

    invoke-direct {p0}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnableChanged(Lcom/yftech/settings/manager/CarDriveModeManager$Function;Z)V
    .locals 0

    .line 53
    invoke-super {p0, p1, p2}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;->onEnableChanged(Ljava/lang/Object;Z)V

    .line 54
    iget-object p0, p0, Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment$2;->this$0:Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment;

    invoke-static {p0, p1, p2}, Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment;->access$200(Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment;Lcom/yftech/settings/manager/CarDriveModeManager$Function;Z)V

    return-void
.end method

.method public bridge synthetic onEnableChanged(Ljava/lang/Object;Z)V
    .locals 0

    .line 49
    check-cast p1, Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment$2;->onEnableChanged(Lcom/yftech/settings/manager/CarDriveModeManager$Function;Z)V

    return-void
.end method

.method public onOptionChanged(Lcom/yftech/settings/manager/CarDriveModeManager$Function;I)V
    .locals 0

    .line 59
    invoke-super {p0, p1, p2}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;->onOptionChanged(Ljava/lang/Object;I)V

    return-void
.end method

.method public bridge synthetic onOptionChanged(Ljava/lang/Object;I)V
    .locals 0

    .line 49
    check-cast p1, Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment$2;->onOptionChanged(Lcom/yftech/settings/manager/CarDriveModeManager$Function;I)V

    return-void
.end method

.method public onTimeout()V
    .locals 0

    .line 64
    invoke-super {p0}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;->onTimeout()V

    .line 65
    iget-object p0, p0, Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment$2;->this$0:Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment;

    invoke-static {p0}, Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment;->access$300(Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment;)V

    return-void
.end method
