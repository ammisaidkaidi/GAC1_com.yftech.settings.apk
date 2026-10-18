.class Lcom/yftech/settings/system/SystemInfoFragment$2;
.super Ljava/lang/Object;
.source "SystemInfoFragment.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/settings/system/SystemInfoFragment;->initView(Landroid/view/View;)V
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

    .line 97
    iput-object p1, p0, Lcom/yftech/settings/system/SystemInfoFragment$2;->this$0:Lcom/yftech/settings/system/SystemInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 100
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result p1

    const-string v0, "SystemInfoFragment"

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLongClick() isUserAMonkey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    .line 105
    :cond_0
    iget-object p0, p0, Lcom/yftech/settings/system/SystemInfoFragment$2;->this$0:Lcom/yftech/settings/system/SystemInfoFragment;

    invoke-static {p0}, Lcom/yftech/settings/system/SystemInfoFragment;->access$200(Lcom/yftech/settings/system/SystemInfoFragment;)V

    return v0
.end method
