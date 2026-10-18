.class Lcom/yftech/settings/ac/AcFragment$1;
.super Lcom/yftech/settings/manager/BaseManager$ModelCallback;
.source "AcFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/ac/AcFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yftech/settings/manager/BaseManager$ModelCallback<",
        "Lcom/yftech/settings/manager/CarPartsManager$Function;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/ac/AcFragment;


# direct methods
.method constructor <init>(Lcom/yftech/settings/ac/AcFragment;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/yftech/settings/ac/AcFragment$1;->this$0:Lcom/yftech/settings/ac/AcFragment;

    invoke-direct {p0}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnableChanged(Lcom/yftech/settings/manager/CarPartsManager$Function;Z)V
    .locals 0

    .line 29
    invoke-super {p0, p1, p2}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;->onEnableChanged(Ljava/lang/Object;Z)V

    .line 30
    iget-object p0, p0, Lcom/yftech/settings/ac/AcFragment$1;->this$0:Lcom/yftech/settings/ac/AcFragment;

    invoke-static {p0, p1, p2}, Lcom/yftech/settings/ac/AcFragment;->access$000(Lcom/yftech/settings/ac/AcFragment;Lcom/yftech/settings/manager/CarPartsManager$Function;Z)V

    return-void
.end method

.method public bridge synthetic onEnableChanged(Ljava/lang/Object;Z)V
    .locals 0

    .line 26
    check-cast p1, Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/settings/ac/AcFragment$1;->onEnableChanged(Lcom/yftech/settings/manager/CarPartsManager$Function;Z)V

    return-void
.end method

.method public onOptionChanged(Lcom/yftech/settings/manager/CarPartsManager$Function;I)V
    .locals 0

    .line 35
    invoke-super {p0, p1, p2}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;->onOptionChanged(Ljava/lang/Object;I)V

    .line 36
    iget-object p0, p0, Lcom/yftech/settings/ac/AcFragment$1;->this$0:Lcom/yftech/settings/ac/AcFragment;

    invoke-static {p0, p1, p2}, Lcom/yftech/settings/ac/AcFragment;->access$100(Lcom/yftech/settings/ac/AcFragment;Lcom/yftech/settings/manager/CarPartsManager$Function;I)V

    return-void
.end method

.method public bridge synthetic onOptionChanged(Ljava/lang/Object;I)V
    .locals 0

    .line 26
    check-cast p1, Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/settings/ac/AcFragment$1;->onOptionChanged(Lcom/yftech/settings/manager/CarPartsManager$Function;I)V

    return-void
.end method

.method public onTimeout()V
    .locals 0

    .line 41
    invoke-super {p0}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;->onTimeout()V

    .line 42
    iget-object p0, p0, Lcom/yftech/settings/ac/AcFragment$1;->this$0:Lcom/yftech/settings/ac/AcFragment;

    invoke-static {p0}, Lcom/yftech/settings/ac/AcFragment;->access$200(Lcom/yftech/settings/ac/AcFragment;)V

    return-void
.end method
