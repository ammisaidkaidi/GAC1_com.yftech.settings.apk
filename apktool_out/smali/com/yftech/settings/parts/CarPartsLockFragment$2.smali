.class Lcom/yftech/settings/parts/CarPartsLockFragment$2;
.super Ljava/lang/Object;
.source "CarPartsLockFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/settings/parts/CarPartsLockFragment;->showOpenSpeedLockDialog()V
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

    .line 344
    iput-object p1, p0, Lcom/yftech/settings/parts/CarPartsLockFragment$2;->this$0:Lcom/yftech/settings/parts/CarPartsLockFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/yftech/settings/parts/CarPartsLockFragment$2;->this$0:Lcom/yftech/settings/parts/CarPartsLockFragment;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/yftech/settings/parts/CarPartsLockFragment;->access$302(Lcom/yftech/settings/parts/CarPartsLockFragment;Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;)Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;

    return-void
.end method
