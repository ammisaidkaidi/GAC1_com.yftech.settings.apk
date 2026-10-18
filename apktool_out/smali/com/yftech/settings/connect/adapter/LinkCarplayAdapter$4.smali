.class Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$4;
.super Ljava/lang/Object;
.source "LinkCarplayAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;I)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$4;->this$0:Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;

    iput p2, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$4;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 143
    iget-object p1, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$4;->this$0:Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;

    iget-object v0, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$4;->this$0:Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;

    invoke-static {v0}, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;->access$900(Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;)Ljava/util/List;

    move-result-object v0

    iget p0, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$4;->val$position:I

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yftech/car/phonelink/CarLinkDevice;

    invoke-static {p1, p0}, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;->access$1200(Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;Lcom/yftech/car/phonelink/CarLinkDevice;)V

    return-void
.end method
