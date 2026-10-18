.class Lcom/yftech/settings/parts/CarPartsMoreFragment$1;
.super Lcom/yftech/settings/manager/BaseManager$ModelCallback;
.source "CarPartsMoreFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/parts/CarPartsMoreFragment;
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
.field final synthetic this$0:Lcom/yftech/settings/parts/CarPartsMoreFragment;


# direct methods
.method constructor <init>(Lcom/yftech/settings/parts/CarPartsMoreFragment;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/yftech/settings/parts/CarPartsMoreFragment$1;->this$0:Lcom/yftech/settings/parts/CarPartsMoreFragment;

    invoke-direct {p0}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnableChanged(Lcom/yftech/settings/manager/CarPartsManager$Function;Z)V
    .locals 0

    .line 56
    invoke-super {p0, p1, p2}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;->onEnableChanged(Ljava/lang/Object;Z)V

    .line 57
    iget-object p0, p0, Lcom/yftech/settings/parts/CarPartsMoreFragment$1;->this$0:Lcom/yftech/settings/parts/CarPartsMoreFragment;

    invoke-static {p0, p1, p2}, Lcom/yftech/settings/parts/CarPartsMoreFragment;->access$000(Lcom/yftech/settings/parts/CarPartsMoreFragment;Lcom/yftech/settings/manager/CarPartsManager$Function;Z)V

    return-void
.end method

.method public bridge synthetic onEnableChanged(Ljava/lang/Object;Z)V
    .locals 0

    .line 53
    check-cast p1, Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/settings/parts/CarPartsMoreFragment$1;->onEnableChanged(Lcom/yftech/settings/manager/CarPartsManager$Function;Z)V

    return-void
.end method

.method public onTimeout()V
    .locals 0

    .line 62
    invoke-super {p0}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;->onTimeout()V

    .line 63
    iget-object p0, p0, Lcom/yftech/settings/parts/CarPartsMoreFragment$1;->this$0:Lcom/yftech/settings/parts/CarPartsMoreFragment;

    invoke-static {p0}, Lcom/yftech/settings/parts/CarPartsMoreFragment;->access$100(Lcom/yftech/settings/parts/CarPartsMoreFragment;)V

    return-void
.end method
