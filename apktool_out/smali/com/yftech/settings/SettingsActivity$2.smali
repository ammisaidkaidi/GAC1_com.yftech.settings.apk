.class Lcom/yftech/settings/SettingsActivity$2;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/settings/SettingsActivity;->showCarPlayAvailableListDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/yftech/settings/SettingsActivity;)V
    .locals 0

    .line 621
    iput-object p1, p0, Lcom/yftech/settings/SettingsActivity$2;->this$0:Lcom/yftech/settings/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 624
    iget-object p0, p0, Lcom/yftech/settings/SettingsActivity$2;->this$0:Lcom/yftech/settings/SettingsActivity;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/yftech/settings/SettingsActivity;->access$102(Lcom/yftech/settings/SettingsActivity;Lcom/yftech/settings/widget/dialog/CarPlayAvailableListDialog;)Lcom/yftech/settings/widget/dialog/CarPlayAvailableListDialog;

    return-void
.end method
