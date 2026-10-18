.class Lcom/yftech/settings/ac/SeatFragment$1;
.super Lcom/yftech/settings/manager/BaseManager$ModelCallback;
.source "SeatFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/ac/SeatFragment;
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
.field final synthetic this$0:Lcom/yftech/settings/ac/SeatFragment;


# direct methods
.method constructor <init>(Lcom/yftech/settings/ac/SeatFragment;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/yftech/settings/ac/SeatFragment$1;->this$0:Lcom/yftech/settings/ac/SeatFragment;

    invoke-direct {p0}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnableChanged(Lcom/yftech/settings/manager/CarPartsManager$Function;Z)V
    .locals 0

    .line 25
    invoke-super {p0, p1, p2}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;->onEnableChanged(Ljava/lang/Object;Z)V

    .line 26
    iget-object p0, p0, Lcom/yftech/settings/ac/SeatFragment$1;->this$0:Lcom/yftech/settings/ac/SeatFragment;

    invoke-static {p0, p1, p2}, Lcom/yftech/settings/ac/SeatFragment;->access$000(Lcom/yftech/settings/ac/SeatFragment;Lcom/yftech/settings/manager/CarPartsManager$Function;Z)V

    return-void
.end method

.method public bridge synthetic onEnableChanged(Ljava/lang/Object;Z)V
    .locals 0

    .line 22
    check-cast p1, Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/settings/ac/SeatFragment$1;->onEnableChanged(Lcom/yftech/settings/manager/CarPartsManager$Function;Z)V

    return-void
.end method

.method public onTimeout()V
    .locals 0

    .line 31
    invoke-super {p0}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;->onTimeout()V

    .line 32
    iget-object p0, p0, Lcom/yftech/settings/ac/SeatFragment$1;->this$0:Lcom/yftech/settings/ac/SeatFragment;

    invoke-static {p0}, Lcom/yftech/settings/ac/SeatFragment;->access$100(Lcom/yftech/settings/ac/SeatFragment;)V

    return-void
.end method
