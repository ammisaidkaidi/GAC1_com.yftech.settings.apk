.class Lcom/yftech/settings/aid/DriveAidsAssistanceFragment$1;
.super Lcom/yftech/settings/manager/BaseManager$ModelCallback;
.source "DriveAidsAssistanceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/aid/DriveAidsAssistanceFragment;
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
.field final synthetic this$0:Lcom/yftech/settings/aid/DriveAidsAssistanceFragment;


# direct methods
.method constructor <init>(Lcom/yftech/settings/aid/DriveAidsAssistanceFragment;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/yftech/settings/aid/DriveAidsAssistanceFragment$1;->this$0:Lcom/yftech/settings/aid/DriveAidsAssistanceFragment;

    invoke-direct {p0}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnableChanged(Lcom/yftech/settings/manager/CarAssistantManager$Function;Z)V
    .locals 0

    .line 30
    invoke-super {p0, p1, p2}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;->onEnableChanged(Ljava/lang/Object;Z)V

    .line 31
    iget-object p0, p0, Lcom/yftech/settings/aid/DriveAidsAssistanceFragment$1;->this$0:Lcom/yftech/settings/aid/DriveAidsAssistanceFragment;

    invoke-static {p0, p1, p2}, Lcom/yftech/settings/aid/DriveAidsAssistanceFragment;->access$000(Lcom/yftech/settings/aid/DriveAidsAssistanceFragment;Lcom/yftech/settings/manager/CarAssistantManager$Function;Z)V

    return-void
.end method

.method public bridge synthetic onEnableChanged(Ljava/lang/Object;Z)V
    .locals 0

    .line 27
    check-cast p1, Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/settings/aid/DriveAidsAssistanceFragment$1;->onEnableChanged(Lcom/yftech/settings/manager/CarAssistantManager$Function;Z)V

    return-void
.end method

.method public onOptionChanged(Lcom/yftech/settings/manager/CarAssistantManager$Function;I)V
    .locals 0

    .line 36
    invoke-super {p0, p1, p2}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;->onOptionChanged(Ljava/lang/Object;I)V

    .line 37
    iget-object p0, p0, Lcom/yftech/settings/aid/DriveAidsAssistanceFragment$1;->this$0:Lcom/yftech/settings/aid/DriveAidsAssistanceFragment;

    invoke-static {p0, p1, p2}, Lcom/yftech/settings/aid/DriveAidsAssistanceFragment;->access$100(Lcom/yftech/settings/aid/DriveAidsAssistanceFragment;Lcom/yftech/settings/manager/CarAssistantManager$Function;I)V

    return-void
.end method

.method public bridge synthetic onOptionChanged(Ljava/lang/Object;I)V
    .locals 0

    .line 27
    check-cast p1, Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/settings/aid/DriveAidsAssistanceFragment$1;->onOptionChanged(Lcom/yftech/settings/manager/CarAssistantManager$Function;I)V

    return-void
.end method

.method public onTimeout()V
    .locals 0

    .line 47
    invoke-super {p0}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;->onTimeout()V

    .line 48
    iget-object p0, p0, Lcom/yftech/settings/aid/DriveAidsAssistanceFragment$1;->this$0:Lcom/yftech/settings/aid/DriveAidsAssistanceFragment;

    invoke-static {p0}, Lcom/yftech/settings/aid/DriveAidsAssistanceFragment;->access$200(Lcom/yftech/settings/aid/DriveAidsAssistanceFragment;)V

    return-void
.end method

.method public onValueChanged(Lcom/yftech/settings/manager/CarAssistantManager$Function;Ljava/lang/Object;)V
    .locals 0

    .line 42
    invoke-super {p0, p1, p2}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;->onValueChanged(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onValueChanged(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p1, Lcom/yftech/settings/manager/CarAssistantManager$Function;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/settings/aid/DriveAidsAssistanceFragment$1;->onValueChanged(Lcom/yftech/settings/manager/CarAssistantManager$Function;Ljava/lang/Object;)V

    return-void
.end method
