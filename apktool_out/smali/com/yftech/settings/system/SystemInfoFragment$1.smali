.class Lcom/yftech/settings/system/SystemInfoFragment$1;
.super Landroid/os/Handler;
.source "SystemInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/system/SystemInfoFragment;
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

    .line 54
    iput-object p1, p0, Lcom/yftech/settings/system/SystemInfoFragment$1;->this$0:Lcom/yftech/settings/system/SystemInfoFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 57
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 59
    iget-object p1, p0, Lcom/yftech/settings/system/SystemInfoFragment$1;->this$0:Lcom/yftech/settings/system/SystemInfoFragment;

    invoke-static {p1}, Lcom/yftech/settings/system/SystemInfoFragment;->access$000(Lcom/yftech/settings/system/SystemInfoFragment;)I

    move-result p1

    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    .line 60
    iget-object p1, p0, Lcom/yftech/settings/system/SystemInfoFragment$1;->this$0:Lcom/yftech/settings/system/SystemInfoFragment;

    invoke-static {p1}, Lcom/yftech/settings/system/SystemInfoFragment;->access$100(Lcom/yftech/settings/system/SystemInfoFragment;)V

    const-string p1, "SystemInfoFragment"

    const-string v0, "jump to Fota!"

    .line 61
    invoke-static {p1, v0}, Lcom/yftech/settings/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object p0, p0, Lcom/yftech/settings/system/SystemInfoFragment$1;->this$0:Lcom/yftech/settings/system/SystemInfoFragment;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/yftech/settings/system/SystemInfoFragment;->access$002(Lcom/yftech/settings/system/SystemInfoFragment;I)I

    :cond_0
    return-void
.end method
