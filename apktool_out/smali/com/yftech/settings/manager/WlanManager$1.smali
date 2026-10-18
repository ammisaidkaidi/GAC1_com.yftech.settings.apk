.class Lcom/yftech/settings/manager/WlanManager$1;
.super Landroid/net/ConnectivityManager$OnStartTetheringCallback;
.source "WlanManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/manager/WlanManager;
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

    .line 43
    iput-object p1, p0, Lcom/yftech/settings/manager/WlanManager$1;->this$0:Lcom/yftech/settings/manager/WlanManager;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$OnStartTetheringCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onTetheringFailed()V
    .locals 1

    .line 46
    invoke-super {p0}, Landroid/net/ConnectivityManager$OnStartTetheringCallback;->onTetheringFailed()V

    const-string p0, "WlanManager"

    const-string v0, "onTetheringFailed()"

    .line 47
    invoke-static {p0, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
