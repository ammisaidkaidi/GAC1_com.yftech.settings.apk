.class Lcom/yftech/settings/avdc/AvdcDialog$2;
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
        "Lcom/yftech/settings/manager/CarPartsManager$Function;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/avdc/AvdcDialog;


# direct methods
.method constructor <init>(Lcom/yftech/settings/avdc/AvdcDialog;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/yftech/settings/avdc/AvdcDialog$2;->this$0:Lcom/yftech/settings/avdc/AvdcDialog;

    invoke-direct {p0}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onOptionChanged(Lcom/yftech/settings/manager/CarPartsManager$Function;I)V
    .locals 0

    .line 78
    invoke-super {p0, p1, p2}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;->onOptionChanged(Ljava/lang/Object;I)V

    .line 79
    iget-object p0, p0, Lcom/yftech/settings/avdc/AvdcDialog$2;->this$0:Lcom/yftech/settings/avdc/AvdcDialog;

    invoke-static {p0, p1, p2}, Lcom/yftech/settings/avdc/AvdcDialog;->access$300(Lcom/yftech/settings/avdc/AvdcDialog;Lcom/yftech/settings/manager/CarPartsManager$Function;I)V

    return-void
.end method

.method public bridge synthetic onOptionChanged(Ljava/lang/Object;I)V
    .locals 0

    .line 75
    check-cast p1, Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/settings/avdc/AvdcDialog$2;->onOptionChanged(Lcom/yftech/settings/manager/CarPartsManager$Function;I)V

    return-void
.end method

.method public onTimeout()V
    .locals 0

    .line 84
    invoke-super {p0}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;->onTimeout()V

    .line 85
    iget-object p0, p0, Lcom/yftech/settings/avdc/AvdcDialog$2;->this$0:Lcom/yftech/settings/avdc/AvdcDialog;

    invoke-static {p0}, Lcom/yftech/settings/avdc/AvdcDialog;->access$400(Lcom/yftech/settings/avdc/AvdcDialog;)V

    return-void
.end method
