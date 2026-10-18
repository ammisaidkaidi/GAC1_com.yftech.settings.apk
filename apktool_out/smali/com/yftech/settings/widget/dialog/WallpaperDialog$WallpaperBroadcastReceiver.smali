.class Lcom/yftech/settings/widget/dialog/WallpaperDialog$WallpaperBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WallpaperDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/widget/dialog/WallpaperDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WallpaperBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/widget/dialog/WallpaperDialog;


# direct methods
.method private constructor <init>(Lcom/yftech/settings/widget/dialog/WallpaperDialog;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog$WallpaperBroadcastReceiver;->this$0:Lcom/yftech/settings/widget/dialog/WallpaperDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yftech/settings/widget/dialog/WallpaperDialog;Lcom/yftech/settings/widget/dialog/WallpaperDialog$1;)V
    .locals 0

    .line 258
    invoke-direct {p0, p1}, Lcom/yftech/settings/widget/dialog/WallpaperDialog$WallpaperBroadcastReceiver;-><init>(Lcom/yftech/settings/widget/dialog/WallpaperDialog;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 261
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog$WallpaperBroadcastReceiver;->this$0:Lcom/yftech/settings/widget/dialog/WallpaperDialog;

    invoke-static {p1}, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->access$1200(Lcom/yftech/settings/widget/dialog/WallpaperDialog;)Lcom/yftech/settings/display/adapter/WallpaperDefaultGridViewAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 262
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog$WallpaperBroadcastReceiver;->this$0:Lcom/yftech/settings/widget/dialog/WallpaperDialog;

    invoke-static {p1}, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->access$1200(Lcom/yftech/settings/widget/dialog/WallpaperDialog;)Lcom/yftech/settings/display/adapter/WallpaperDefaultGridViewAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/settings/display/adapter/WallpaperDefaultGridViewAdapter;->notifySelect()V

    .line 264
    :cond_0
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog$WallpaperBroadcastReceiver;->this$0:Lcom/yftech/settings/widget/dialog/WallpaperDialog;

    invoke-static {p1}, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->access$1300(Lcom/yftech/settings/widget/dialog/WallpaperDialog;)Lcom/yftech/settings/display/adapter/WallpaperUsbGridViewAdapter;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 265
    iget-object p0, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog$WallpaperBroadcastReceiver;->this$0:Lcom/yftech/settings/widget/dialog/WallpaperDialog;

    invoke-static {p0}, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->access$1300(Lcom/yftech/settings/widget/dialog/WallpaperDialog;)Lcom/yftech/settings/display/adapter/WallpaperUsbGridViewAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/settings/display/adapter/WallpaperUsbGridViewAdapter;->notifySelect()V

    :cond_1
    return-void
.end method
