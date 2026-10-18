.class Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$3;
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

    .line 98
    iput-object p1, p0, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$3;->this$0:Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;

    iput p2, p0, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 101
    iget-object p1, p0, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$3;->this$0:Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;

    invoke-static {p1}, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;->access$1200(Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;)I

    move-result p1

    iget v0, p0, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$3;->val$position:I

    if-ne p1, v0, :cond_0

    .line 102
    iget-object p1, p0, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$3;->this$0:Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;->access$1202(Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;I)I

    goto :goto_0

    .line 104
    :cond_0
    iget-object p1, p0, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$3;->this$0:Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;

    iget v0, p0, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$3;->val$position:I

    invoke-static {p1, v0}, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;->access$1202(Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;I)I

    .line 106
    :goto_0
    iget-object p0, p0, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$3;->this$0:Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;

    invoke-virtual {p0}, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;->notifyDataSetChanged()V

    return-void
.end method
