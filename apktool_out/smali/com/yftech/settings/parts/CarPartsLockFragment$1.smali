.class Lcom/yftech/settings/parts/CarPartsLockFragment$1;
.super Lcom/yftech/settings/manager/BaseManager$ModelCallback;
.source "CarPartsLockFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/parts/CarPartsLockFragment;
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
.field final synthetic this$0:Lcom/yftech/settings/parts/CarPartsLockFragment;


# direct methods
.method constructor <init>(Lcom/yftech/settings/parts/CarPartsLockFragment;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/yftech/settings/parts/CarPartsLockFragment$1;->this$0:Lcom/yftech/settings/parts/CarPartsLockFragment;

    invoke-direct {p0}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnableChanged(Lcom/yftech/settings/manager/CarPartsManager$Function;Z)V
    .locals 0

    .line 42
    invoke-super {p0, p1, p2}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;->onEnableChanged(Ljava/lang/Object;Z)V

    .line 43
    iget-object p0, p0, Lcom/yftech/settings/parts/CarPartsLockFragment$1;->this$0:Lcom/yftech/settings/parts/CarPartsLockFragment;

    invoke-static {p0, p1, p2}, Lcom/yftech/settings/parts/CarPartsLockFragment;->access$000(Lcom/yftech/settings/parts/CarPartsLockFragment;Lcom/yftech/settings/manager/CarPartsManager$Function;Z)V

    return-void
.end method

.method public bridge synthetic onEnableChanged(Ljava/lang/Object;Z)V
    .locals 0

    .line 39
    check-cast p1, Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/settings/parts/CarPartsLockFragment$1;->onEnableChanged(Lcom/yftech/settings/manager/CarPartsManager$Function;Z)V

    return-void
.end method

.method public onOptionChanged(Lcom/yftech/settings/manager/CarPartsManager$Function;I)V
    .locals 0

    .line 48
    invoke-super {p0, p1, p2}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;->onOptionChanged(Ljava/lang/Object;I)V

    .line 49
    iget-object p0, p0, Lcom/yftech/settings/parts/CarPartsLockFragment$1;->this$0:Lcom/yftech/settings/parts/CarPartsLockFragment;

    invoke-static {p0, p1, p2}, Lcom/yftech/settings/parts/CarPartsLockFragment;->access$100(Lcom/yftech/settings/parts/CarPartsLockFragment;Lcom/yftech/settings/manager/CarPartsManager$Function;I)V

    return-void
.end method

.method public bridge synthetic onOptionChanged(Ljava/lang/Object;I)V
    .locals 0

    .line 39
    check-cast p1, Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/settings/parts/CarPartsLockFragment$1;->onOptionChanged(Lcom/yftech/settings/manager/CarPartsManager$Function;I)V

    return-void
.end method

.method public onTimeout()V
    .locals 0

    .line 54
    invoke-super {p0}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;->onTimeout()V

    .line 55
    iget-object p0, p0, Lcom/yftech/settings/parts/CarPartsLockFragment$1;->this$0:Lcom/yftech/settings/parts/CarPartsLockFragment;

    invoke-static {p0}, Lcom/yftech/settings/parts/CarPartsLockFragment;->access$200(Lcom/yftech/settings/parts/CarPartsLockFragment;)V

    return-void
.end method
