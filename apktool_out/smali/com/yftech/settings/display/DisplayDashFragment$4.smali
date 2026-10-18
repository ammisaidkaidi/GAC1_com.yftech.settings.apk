.class Lcom/yftech/settings/display/DisplayDashFragment$4;
.super Ljava/lang/Object;
.source "DisplayDashFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/settings/display/DisplayDashFragment;->showDashDefaultSettingDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/display/DisplayDashFragment;


# direct methods
.method constructor <init>(Lcom/yftech/settings/display/DisplayDashFragment;)V
    .locals 0

    .line 434
    iput-object p1, p0, Lcom/yftech/settings/display/DisplayDashFragment$4;->this$0:Lcom/yftech/settings/display/DisplayDashFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 437
    iget-object p0, p0, Lcom/yftech/settings/display/DisplayDashFragment$4;->this$0:Lcom/yftech/settings/display/DisplayDashFragment;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/yftech/settings/display/DisplayDashFragment;->access$802(Lcom/yftech/settings/display/DisplayDashFragment;Lcom/yftech/settings/widget/dialog/CommonDialog;)Lcom/yftech/settings/widget/dialog/CommonDialog;

    return-void
.end method
