.class Lcom/yftech/settings/display/DisplayConsoleFragment$WallpaperBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DisplayConsoleFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/display/DisplayConsoleFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WallpaperBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/display/DisplayConsoleFragment;


# direct methods
.method private constructor <init>(Lcom/yftech/settings/display/DisplayConsoleFragment;)V
    .locals 0

    .line 337
    iput-object p1, p0, Lcom/yftech/settings/display/DisplayConsoleFragment$WallpaperBroadcastReceiver;->this$0:Lcom/yftech/settings/display/DisplayConsoleFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yftech/settings/display/DisplayConsoleFragment;Lcom/yftech/settings/display/DisplayConsoleFragment$1;)V
    .locals 0

    .line 337
    invoke-direct {p0, p1}, Lcom/yftech/settings/display/DisplayConsoleFragment$WallpaperBroadcastReceiver;-><init>(Lcom/yftech/settings/display/DisplayConsoleFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "com.yftech.multimedia.data.wallpaper.setting"

    .line 340
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "DisplayConsoleFragment"

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WallpaperBroadcastReceiver onReceive path:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object p2, p0, Lcom/yftech/settings/display/DisplayConsoleFragment$WallpaperBroadcastReceiver;->this$0:Lcom/yftech/settings/display/DisplayConsoleFragment;

    invoke-static {p2, p1}, Lcom/yftech/settings/display/DisplayConsoleFragment;->access$302(Lcom/yftech/settings/display/DisplayConsoleFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 345
    iget-object p1, p0, Lcom/yftech/settings/display/DisplayConsoleFragment$WallpaperBroadcastReceiver;->this$0:Lcom/yftech/settings/display/DisplayConsoleFragment;

    invoke-static {p1}, Lcom/yftech/settings/display/DisplayConsoleFragment;->access$500(Lcom/yftech/settings/display/DisplayConsoleFragment;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/settings/display/DisplayConsoleFragment$WallpaperBroadcastReceiver;->this$0:Lcom/yftech/settings/display/DisplayConsoleFragment;

    invoke-static {p0}, Lcom/yftech/settings/display/DisplayConsoleFragment;->access$400(Lcom/yftech/settings/display/DisplayConsoleFragment;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
