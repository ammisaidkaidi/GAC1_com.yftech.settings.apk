.class Lcom/yftech/settings/system/SystemBasicFragment$3;
.super Ljava/lang/Object;
.source "SystemBasicFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/settings/system/SystemBasicFragment;->showTimeSettingDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/system/SystemBasicFragment;


# direct methods
.method constructor <init>(Lcom/yftech/settings/system/SystemBasicFragment;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/yftech/settings/system/SystemBasicFragment$3;->this$0:Lcom/yftech/settings/system/SystemBasicFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/yftech/settings/system/SystemBasicFragment$3;->this$0:Lcom/yftech/settings/system/SystemBasicFragment;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/yftech/settings/system/SystemBasicFragment;->access$202(Lcom/yftech/settings/system/SystemBasicFragment;Lcom/yftech/settings/widget/dialog/TimeSettingDialog;)Lcom/yftech/settings/widget/dialog/TimeSettingDialog;

    return-void
.end method
