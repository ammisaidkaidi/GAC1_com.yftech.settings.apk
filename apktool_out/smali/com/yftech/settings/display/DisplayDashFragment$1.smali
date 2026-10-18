.class Lcom/yftech/settings/display/DisplayDashFragment$1;
.super Lcom/yftech/settings/manager/BaseManager$ModelCallback;
.source "DisplayDashFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/display/DisplayDashFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yftech/settings/manager/BaseManager$ModelCallback<",
        "Lcom/yftech/settings/manager/CarDashboardManager$Function;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/display/DisplayDashFragment;


# direct methods
.method constructor <init>(Lcom/yftech/settings/display/DisplayDashFragment;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/yftech/settings/display/DisplayDashFragment$1;->this$0:Lcom/yftech/settings/display/DisplayDashFragment;

    invoke-direct {p0}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onOptionChanged(Lcom/yftech/settings/manager/CarDashboardManager$Function;I)V
    .locals 0

    .line 56
    invoke-super {p0, p1, p2}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;->onOptionChanged(Ljava/lang/Object;I)V

    .line 57
    iget-object p0, p0, Lcom/yftech/settings/display/DisplayDashFragment$1;->this$0:Lcom/yftech/settings/display/DisplayDashFragment;

    invoke-static {p0, p1, p2}, Lcom/yftech/settings/display/DisplayDashFragment;->access$000(Lcom/yftech/settings/display/DisplayDashFragment;Lcom/yftech/settings/manager/CarDashboardManager$Function;I)V

    return-void
.end method

.method public bridge synthetic onOptionChanged(Ljava/lang/Object;I)V
    .locals 0

    .line 52
    check-cast p1, Lcom/yftech/settings/manager/CarDashboardManager$Function;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/settings/display/DisplayDashFragment$1;->onOptionChanged(Lcom/yftech/settings/manager/CarDashboardManager$Function;I)V

    return-void
.end method

.method public onTimeout()V
    .locals 0

    .line 71
    invoke-super {p0}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;->onTimeout()V

    .line 72
    iget-object p0, p0, Lcom/yftech/settings/display/DisplayDashFragment$1;->this$0:Lcom/yftech/settings/display/DisplayDashFragment;

    invoke-static {p0}, Lcom/yftech/settings/display/DisplayDashFragment;->access$300(Lcom/yftech/settings/display/DisplayDashFragment;)V

    return-void
.end method

.method public onValueChanged(Lcom/yftech/settings/manager/CarDashboardManager$Function;Ljava/lang/Object;)V
    .locals 1

    .line 62
    invoke-super {p0, p1, p2}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;->onValueChanged(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 63
    iget-object v0, p0, Lcom/yftech/settings/display/DisplayDashFragment$1;->this$0:Lcom/yftech/settings/display/DisplayDashFragment;

    invoke-static {v0, p1, p2}, Lcom/yftech/settings/display/DisplayDashFragment;->access$100(Lcom/yftech/settings/display/DisplayDashFragment;Lcom/yftech/settings/manager/CarDashboardManager$Function;Ljava/lang/Object;)V

    .line 64
    sget-object v0, Lcom/yftech/settings/manager/CarDashboardManager$Function;->DASH_BACK_LIGHT_LEVEL_VALUE:Lcom/yftech/settings/manager/CarDashboardManager$Function;

    if-ne p1, v0, :cond_0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lez p1, :cond_0

    .line 65
    iget-object p0, p0, Lcom/yftech/settings/display/DisplayDashFragment$1;->this$0:Lcom/yftech/settings/display/DisplayDashFragment;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/yftech/settings/display/DisplayDashFragment;->access$202(Lcom/yftech/settings/display/DisplayDashFragment;I)I

    :cond_0
    return-void
.end method

.method public bridge synthetic onValueChanged(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 52
    check-cast p1, Lcom/yftech/settings/manager/CarDashboardManager$Function;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/settings/display/DisplayDashFragment$1;->onValueChanged(Lcom/yftech/settings/manager/CarDashboardManager$Function;Ljava/lang/Object;)V

    return-void
.end method
