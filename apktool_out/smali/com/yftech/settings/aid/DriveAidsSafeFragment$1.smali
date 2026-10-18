.class Lcom/yftech/settings/aid/DriveAidsSafeFragment$1;
.super Lcom/yftech/settings/manager/BaseManager$ModelCallback;
.source "DriveAidsSafeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/aid/DriveAidsSafeFragment;
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
.field final synthetic this$0:Lcom/yftech/settings/aid/DriveAidsSafeFragment;


# direct methods
.method constructor <init>(Lcom/yftech/settings/aid/DriveAidsSafeFragment;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment$1;->this$0:Lcom/yftech/settings/aid/DriveAidsSafeFragment;

    invoke-direct {p0}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnableChanged(Lcom/yftech/settings/manager/CarAssistantManager$Function;Z)V
    .locals 0

    .line 65
    invoke-super {p0, p1, p2}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;->onEnableChanged(Ljava/lang/Object;Z)V

    .line 66
    iget-object p0, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment$1;->this$0:Lcom/yftech/settings/aid/DriveAidsSafeFragment;

    invoke-static {p0, p1, p2}, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->access$000(Lcom/yftech/settings/aid/DriveAidsSafeFragment;Lcom/yftech/settings/manager/CarAssistantManager$Function;Z)V

    return-void
.end method

.method public bridge synthetic onEnableChanged(Ljava/lang/Object;Z)V
    .locals 0

    .line 62
    check-cast p1, Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/settings/aid/DriveAidsSafeFragment$1;->onEnableChanged(Lcom/yftech/settings/manager/CarAssistantManager$Function;Z)V

    return-void
.end method

.method public onOptionChanged(Lcom/yftech/settings/manager/CarAssistantManager$Function;I)V
    .locals 0

    .line 71
    invoke-super {p0, p1, p2}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;->onOptionChanged(Ljava/lang/Object;I)V

    .line 72
    iget-object p0, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment$1;->this$0:Lcom/yftech/settings/aid/DriveAidsSafeFragment;

    invoke-static {p0, p1, p2}, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->access$100(Lcom/yftech/settings/aid/DriveAidsSafeFragment;Lcom/yftech/settings/manager/CarAssistantManager$Function;I)V

    return-void
.end method

.method public bridge synthetic onOptionChanged(Ljava/lang/Object;I)V
    .locals 0

    .line 62
    check-cast p1, Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/settings/aid/DriveAidsSafeFragment$1;->onOptionChanged(Lcom/yftech/settings/manager/CarAssistantManager$Function;I)V

    return-void
.end method

.method public onTimeout()V
    .locals 0

    .line 77
    invoke-super {p0}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;->onTimeout()V

    .line 78
    iget-object p0, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment$1;->this$0:Lcom/yftech/settings/aid/DriveAidsSafeFragment;

    invoke-static {p0}, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->access$200(Lcom/yftech/settings/aid/DriveAidsSafeFragment;)V

    return-void
.end method
