.class Lcom/yftech/settings/aid/DriveAidsSafeFragment$4;
.super Ljava/lang/Object;
.source "DriveAidsSafeFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/settings/aid/DriveAidsSafeFragment;->showAidsSafeTipDialog(Lcom/yftech/settings/manager/CarAssistantManager$Function;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/aid/DriveAidsSafeFragment;


# direct methods
.method constructor <init>(Lcom/yftech/settings/aid/DriveAidsSafeFragment;)V
    .locals 0

    .line 495
    iput-object p1, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment$4;->this$0:Lcom/yftech/settings/aid/DriveAidsSafeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 498
    iget-object p0, p0, Lcom/yftech/settings/aid/DriveAidsSafeFragment$4;->this$0:Lcom/yftech/settings/aid/DriveAidsSafeFragment;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/yftech/settings/aid/DriveAidsSafeFragment;->access$302(Lcom/yftech/settings/aid/DriveAidsSafeFragment;Lcom/yftech/settings/widget/dialog/CommonDialog;)Lcom/yftech/settings/widget/dialog/CommonDialog;

    return-void
.end method
