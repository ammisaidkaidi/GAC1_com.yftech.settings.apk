.class Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment$1;
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
        "Lcom/yftech/settings/manager/CarAssistantManager$Function;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment;


# direct methods
.method constructor <init>(Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment$1;->this$0:Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment;

    invoke-direct {p0}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnableChanged(Lcom/yftech/settings/manager/CarAssistantManager$Function;Z)V
    .locals 0

    .line 33
    invoke-super {p0, p1, p2}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;->onEnableChanged(Ljava/lang/Object;Z)V

    return-void
.end method

.method public bridge synthetic onEnableChanged(Ljava/lang/Object;Z)V
    .locals 0

    .line 30
    check-cast p1, Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment$1;->onEnableChanged(Lcom/yftech/settings/manager/CarAssistantManager$Function;Z)V

    return-void
.end method

.method public onTimeout()V
    .locals 0

    .line 44
    invoke-super {p0}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;->onTimeout()V

    .line 45
    iget-object p0, p0, Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment$1;->this$0:Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment;

    invoke-static {p0}, Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment;->access$100(Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment;)V

    return-void
.end method

.method public onValueChanged(Lcom/yftech/settings/manager/CarAssistantManager$Function;Ljava/lang/Object;)V
    .locals 0

    .line 38
    invoke-super {p0, p1, p2}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;->onValueChanged(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    iget-object p0, p0, Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment$1;->this$0:Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment;

    invoke-static {p0, p1, p2}, Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment;->access$000(Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment;Lcom/yftech/settings/manager/CarAssistantManager$Function;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onValueChanged(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p1, Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment$1;->onValueChanged(Lcom/yftech/settings/manager/CarAssistantManager$Function;Ljava/lang/Object;)V

    return-void
.end method
