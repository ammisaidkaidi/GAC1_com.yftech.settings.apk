.class Lcom/yftech/settings/parts/CarPartsLockFragment$4;
.super Ljava/lang/Object;
.source "CarPartsLockFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/settings/parts/CarPartsLockFragment;->showConfirmDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/parts/CarPartsLockFragment;


# direct methods
.method constructor <init>(Lcom/yftech/settings/parts/CarPartsLockFragment;)V
    .locals 0

    .line 375
    iput-object p1, p0, Lcom/yftech/settings/parts/CarPartsLockFragment$4;->this$0:Lcom/yftech/settings/parts/CarPartsLockFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 378
    iget-object p0, p0, Lcom/yftech/settings/parts/CarPartsLockFragment$4;->this$0:Lcom/yftech/settings/parts/CarPartsLockFragment;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/yftech/settings/parts/CarPartsLockFragment;->access$402(Lcom/yftech/settings/parts/CarPartsLockFragment;Lcom/yftech/settings/widget/dialog/CommonDialog;)Lcom/yftech/settings/widget/dialog/CommonDialog;

    return-void
.end method
