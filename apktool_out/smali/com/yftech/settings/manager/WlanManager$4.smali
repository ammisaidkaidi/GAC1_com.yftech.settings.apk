.class Lcom/yftech/settings/manager/WlanManager$4;
.super Ljava/lang/Object;
.source "WlanManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/settings/manager/WlanManager;->showOpenApDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/manager/WlanManager;


# direct methods
.method constructor <init>(Lcom/yftech/settings/manager/WlanManager;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/yftech/settings/manager/WlanManager$4;->this$0:Lcom/yftech/settings/manager/WlanManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 232
    iget-object p0, p0, Lcom/yftech/settings/manager/WlanManager$4;->this$0:Lcom/yftech/settings/manager/WlanManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/yftech/settings/manager/WlanManager;->access$302(Lcom/yftech/settings/manager/WlanManager;Lcom/yftech/settings/widget/dialog/CommonDialog;)Lcom/yftech/settings/widget/dialog/CommonDialog;

    return-void
.end method
