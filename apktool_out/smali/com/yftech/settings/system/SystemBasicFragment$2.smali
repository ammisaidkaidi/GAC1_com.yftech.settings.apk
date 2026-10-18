.class Lcom/yftech/settings/system/SystemBasicFragment$2;
.super Ljava/lang/Object;
.source "SystemBasicFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/settings/system/SystemBasicFragment;->initView(Landroid/view/View;)V
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

    .line 72
    iput-object p1, p0, Lcom/yftech/settings/system/SystemBasicFragment$2;->this$0:Lcom/yftech/settings/system/SystemBasicFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 75
    iget-object p1, p0, Lcom/yftech/settings/system/SystemBasicFragment$2;->this$0:Lcom/yftech/settings/system/SystemBasicFragment;

    invoke-static {p1}, Lcom/yftech/settings/system/SystemBasicFragment;->access$108(Lcom/yftech/settings/system/SystemBasicFragment;)I

    .line 76
    iget-object p1, p0, Lcom/yftech/settings/system/SystemBasicFragment$2;->this$0:Lcom/yftech/settings/system/SystemBasicFragment;

    invoke-static {p1}, Lcom/yftech/settings/system/SystemBasicFragment;->access$100(Lcom/yftech/settings/system/SystemBasicFragment;)I

    move-result p1

    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    .line 77
    iget-object p0, p0, Lcom/yftech/settings/system/SystemBasicFragment$2;->this$0:Lcom/yftech/settings/system/SystemBasicFragment;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/yftech/settings/system/SystemBasicFragment;->access$102(Lcom/yftech/settings/system/SystemBasicFragment;I)I

    .line 78
    invoke-static {}, Lcom/yftech/settings/manager/SettingsManager;->getInstance()Lcom/yftech/settings/manager/SettingsManager;

    move-result-object p0

    sget-object p1, Lcom/yftech/settings/manager/SettingsManager$Function;->CHECK_FACTORY_MODE_STATE_ACTION:Lcom/yftech/settings/manager/SettingsManager$Function;

    invoke-virtual {p0, p1}, Lcom/yftech/settings/manager/SettingsManager;->setAction(Lcom/yftech/settings/manager/SettingsManager$Function;)Z

    :cond_0
    return-void
.end method
