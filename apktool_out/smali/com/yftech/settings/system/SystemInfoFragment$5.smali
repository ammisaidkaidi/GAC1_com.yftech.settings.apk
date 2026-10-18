.class Lcom/yftech/settings/system/SystemInfoFragment$5;
.super Ljava/lang/Object;
.source "SystemInfoFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/settings/system/SystemInfoFragment;->showFactoryDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/system/SystemInfoFragment;


# direct methods
.method constructor <init>(Lcom/yftech/settings/system/SystemInfoFragment;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/yftech/settings/system/SystemInfoFragment$5;->this$0:Lcom/yftech/settings/system/SystemInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 231
    iget-object p0, p0, Lcom/yftech/settings/system/SystemInfoFragment$5;->this$0:Lcom/yftech/settings/system/SystemInfoFragment;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/yftech/settings/system/SystemInfoFragment;->access$402(Lcom/yftech/settings/system/SystemInfoFragment;Lcom/yftech/settings/widget/dialog/FactoryDialog;)Lcom/yftech/settings/widget/dialog/FactoryDialog;

    return-void
.end method
