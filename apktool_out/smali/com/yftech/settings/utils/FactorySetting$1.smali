.class Lcom/yftech/settings/utils/FactorySetting$1;
.super Ljava/lang/Thread;
.source "FactorySetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/settings/utils/FactorySetting;->clearOsData(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/utils/FactorySetting;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/yftech/settings/utils/FactorySetting;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/yftech/settings/utils/FactorySetting$1;->this$0:Lcom/yftech/settings/utils/FactorySetting;

    iput-object p3, p0, Lcom/yftech/settings/utils/FactorySetting$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 81
    :try_start_0
    iget-object p0, p0, Lcom/yftech/settings/utils/FactorySetting$1;->val$context:Landroid/content/Context;

    invoke-static {p0}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;)V

    const-string p0, "FactorySetting"

    const-string v0, "Still running after master clear?!"

    .line 82
    invoke-static {p0, v0}, Lcom/yftech/settings/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "FactorySetting"

    const-string v1, "Can\'t perform master clear/factory reset"

    .line 84
    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
