.class Lcom/yftech/settings/widget/dialog/CarPlayAvailableListDialog$1;
.super Ljava/lang/Object;
.source "CarPlayAvailableListDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/settings/widget/dialog/CarPlayAvailableListDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/widget/dialog/CarPlayAvailableListDialog;


# direct methods
.method constructor <init>(Lcom/yftech/settings/widget/dialog/CarPlayAvailableListDialog;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/yftech/settings/widget/dialog/CarPlayAvailableListDialog$1;->this$0:Lcom/yftech/settings/widget/dialog/CarPlayAvailableListDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 71
    invoke-static {}, Lcom/yftech/settings/manager/LinkCarplayManager;->getInstance()Lcom/yftech/settings/manager/LinkCarplayManager;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/settings/widget/dialog/CarPlayAvailableListDialog$1;->this$0:Lcom/yftech/settings/widget/dialog/CarPlayAvailableListDialog;

    invoke-static {p0}, Lcom/yftech/settings/widget/dialog/CarPlayAvailableListDialog;->access$000(Lcom/yftech/settings/widget/dialog/CarPlayAvailableListDialog;)Lcom/yftech/settings/connect/adapter/LinkCarplayAvailableAdapter;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/yftech/settings/connect/adapter/LinkCarplayAvailableAdapter;->getItem(I)Lcom/yftech/car/phonelink/CarLinkDevice;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yftech/settings/manager/LinkCarplayManager;->connect(Lcom/yftech/car/phonelink/CarLinkDevice;)V

    return-void
.end method
