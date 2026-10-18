.class Lcom/yftech/settings/connect/LinkFragment$1$1;
.super Ljava/lang/Object;
.source "LinkFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/settings/connect/LinkFragment$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yftech/settings/connect/LinkFragment$1;


# direct methods
.method constructor <init>(Lcom/yftech/settings/connect/LinkFragment$1;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/yftech/settings/connect/LinkFragment$1$1;->this$1:Lcom/yftech/settings/connect/LinkFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/yftech/settings/connect/LinkFragment$1$1;->this$1:Lcom/yftech/settings/connect/LinkFragment$1;

    iget-object p0, p0, Lcom/yftech/settings/connect/LinkFragment$1;->this$0:Lcom/yftech/settings/connect/LinkFragment;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/yftech/settings/connect/LinkFragment;->access$002(Lcom/yftech/settings/connect/LinkFragment;Lcom/yftech/settings/widget/dialog/CarPlayAvailableListDialog;)Lcom/yftech/settings/widget/dialog/CarPlayAvailableListDialog;

    return-void
.end method
