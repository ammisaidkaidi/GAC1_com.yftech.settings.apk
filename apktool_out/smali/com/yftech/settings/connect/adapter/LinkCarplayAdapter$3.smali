.class Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$3;
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

    .line 129
    iput-object p1, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$3;->this$0:Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;

    iput p2, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 132
    iget-object p1, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$3;->this$0:Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;

    invoke-static {p1}, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;->access$1100(Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;)I

    move-result p1

    iget v0, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$3;->val$position:I

    if-ne p1, v0, :cond_0

    .line 133
    iget-object p1, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$3;->this$0:Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;->access$1102(Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;I)I

    goto :goto_0

    .line 135
    :cond_0
    iget-object p1, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$3;->this$0:Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;

    iget v0, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$3;->val$position:I

    invoke-static {p1, v0}, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;->access$1102(Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;I)I

    .line 137
    :goto_0
    iget-object p0, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$3;->this$0:Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;

    invoke-virtual {p0}, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;->notifyDataSetChanged()V

    return-void
.end method
