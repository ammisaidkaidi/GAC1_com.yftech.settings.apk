.class Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$2;
.super Ljava/lang/Object;
.source "LinkHicarAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;I)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$2;->this$0:Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;

    iput p2, p0, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 95
    invoke-static {}, Lcom/yftech/settings/manager/LinkHicarManager;->getInstance()Lcom/yftech/settings/manager/LinkHicarManager;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$2;->this$0:Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;

    invoke-static {v0}, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;->access$900(Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;)Ljava/util/List;

    move-result-object v0

    iget p0, p0, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$2;->val$position:I

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yftech/car/phonelink/CarLinkDevice;

    invoke-virtual {p1, p0}, Lcom/yftech/settings/manager/LinkHicarManager;->disconnect(Lcom/yftech/car/phonelink/CarLinkDevice;)V

    return-void
.end method
