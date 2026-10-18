.class Lcom/yftech/settings/avdc/AvdcDialog$1;
.super Lcom/yftech/settings/manager/BaseManager$ModelCallback;
.source "AvdcDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/avdc/AvdcDialog;
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
.field final synthetic this$0:Lcom/yftech/settings/avdc/AvdcDialog;


# direct methods
.method constructor <init>(Lcom/yftech/settings/avdc/AvdcDialog;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/yftech/settings/avdc/AvdcDialog$1;->this$0:Lcom/yftech/settings/avdc/AvdcDialog;

    invoke-direct {p0}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onOptionChanged(Lcom/yftech/settings/manager/CarDriveModeManager$Function;I)V
    .locals 0

    .line 58
    invoke-super {p0, p1, p2}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;->onOptionChanged(Ljava/lang/Object;I)V

    .line 59
    iget-object p0, p0, Lcom/yftech/settings/avdc/AvdcDialog$1;->this$0:Lcom/yftech/settings/avdc/AvdcDialog;

    invoke-static {p0, p1, p2}, Lcom/yftech/settings/avdc/AvdcDialog;->access$000(Lcom/yftech/settings/avdc/AvdcDialog;Lcom/yftech/settings/manager/CarDriveModeManager$Function;I)V

    return-void
.end method

.method public bridge synthetic onOptionChanged(Ljava/lang/Object;I)V
    .locals 0

    .line 55
    check-cast p1, Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/settings/avdc/AvdcDialog$1;->onOptionChanged(Lcom/yftech/settings/manager/CarDriveModeManager$Function;I)V

    return-void
.end method

.method public onTimeout()V
    .locals 0

    .line 70
    invoke-super {p0}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;->onTimeout()V

    .line 71
    iget-object p0, p0, Lcom/yftech/settings/avdc/AvdcDialog$1;->this$0:Lcom/yftech/settings/avdc/AvdcDialog;

    invoke-static {p0}, Lcom/yftech/settings/avdc/AvdcDialog;->access$200(Lcom/yftech/settings/avdc/AvdcDialog;)V

    return-void
.end method

.method public onValueChanged(Lcom/yftech/settings/manager/CarDriveModeManager$Function;Ljava/lang/Object;)V
    .locals 0

    .line 64
    invoke-super {p0, p1, p2}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;->onValueChanged(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 65
    iget-object p0, p0, Lcom/yftech/settings/avdc/AvdcDialog$1;->this$0:Lcom/yftech/settings/avdc/AvdcDialog;

    invoke-static {p0, p1, p2}, Lcom/yftech/settings/avdc/AvdcDialog;->access$100(Lcom/yftech/settings/avdc/AvdcDialog;Lcom/yftech/settings/manager/CarDriveModeManager$Function;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onValueChanged(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 55
    check-cast p1, Lcom/yftech/settings/manager/CarDriveModeManager$Function;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/settings/avdc/AvdcDialog$1;->onValueChanged(Lcom/yftech/settings/manager/CarDriveModeManager$Function;Ljava/lang/Object;)V

    return-void
.end method
