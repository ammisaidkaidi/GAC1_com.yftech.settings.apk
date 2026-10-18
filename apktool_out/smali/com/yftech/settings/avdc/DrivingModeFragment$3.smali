.class Lcom/yftech/settings/avdc/DrivingModeFragment$3;
.super Lcom/yftech/settings/manager/BaseManager$ModelCallback;
.source "DrivingModeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/avdc/DrivingModeFragment;
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
.field final synthetic this$0:Lcom/yftech/settings/avdc/DrivingModeFragment;


# direct methods
.method constructor <init>(Lcom/yftech/settings/avdc/DrivingModeFragment;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeFragment$3;->this$0:Lcom/yftech/settings/avdc/DrivingModeFragment;

    invoke-direct {p0}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onOptionChanged(Lcom/yftech/settings/manager/CarPartsManager$Function;I)V
    .locals 0

    .line 175
    invoke-super {p0, p1, p2}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;->onOptionChanged(Ljava/lang/Object;I)V

    .line 176
    iget-object p0, p0, Lcom/yftech/settings/avdc/DrivingModeFragment$3;->this$0:Lcom/yftech/settings/avdc/DrivingModeFragment;

    invoke-static {p0, p1, p2}, Lcom/yftech/settings/avdc/DrivingModeFragment;->access$700(Lcom/yftech/settings/avdc/DrivingModeFragment;Lcom/yftech/settings/manager/CarPartsManager$Function;I)V

    return-void
.end method

.method public bridge synthetic onOptionChanged(Ljava/lang/Object;I)V
    .locals 0

    .line 172
    check-cast p1, Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/settings/avdc/DrivingModeFragment$3;->onOptionChanged(Lcom/yftech/settings/manager/CarPartsManager$Function;I)V

    return-void
.end method

.method public onTimeout()V
    .locals 0

    .line 181
    invoke-super {p0}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;->onTimeout()V

    .line 182
    iget-object p0, p0, Lcom/yftech/settings/avdc/DrivingModeFragment$3;->this$0:Lcom/yftech/settings/avdc/DrivingModeFragment;

    invoke-static {p0}, Lcom/yftech/settings/avdc/DrivingModeFragment;->access$800(Lcom/yftech/settings/avdc/DrivingModeFragment;)V

    return-void
.end method
