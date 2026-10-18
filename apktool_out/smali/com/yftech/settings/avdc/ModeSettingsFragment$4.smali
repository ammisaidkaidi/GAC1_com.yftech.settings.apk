.class Lcom/yftech/settings/avdc/ModeSettingsFragment$4;
.super Ljava/lang/Object;
.source "ModeSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/settings/avdc/ModeSettingsFragment;->showAvdcResetTipDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/avdc/ModeSettingsFragment;


# direct methods
.method constructor <init>(Lcom/yftech/settings/avdc/ModeSettingsFragment;)V
    .locals 0

    .line 662
    iput-object p1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment$4;->this$0:Lcom/yftech/settings/avdc/ModeSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 665
    iget-object p0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment$4;->this$0:Lcom/yftech/settings/avdc/ModeSettingsFragment;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/yftech/settings/avdc/ModeSettingsFragment;->access$1402(Lcom/yftech/settings/avdc/ModeSettingsFragment;Lcom/yftech/settings/widget/dialog/CommonDialog;)Lcom/yftech/settings/widget/dialog/CommonDialog;

    return-void
.end method
