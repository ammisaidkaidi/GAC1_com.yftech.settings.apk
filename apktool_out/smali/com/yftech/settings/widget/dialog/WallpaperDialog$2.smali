.class Lcom/yftech/settings/widget/dialog/WallpaperDialog$2;
.super Ljava/lang/Object;
.source "WallpaperDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/settings/widget/dialog/WallpaperDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/widget/dialog/WallpaperDialog;


# direct methods
.method constructor <init>(Lcom/yftech/settings/widget/dialog/WallpaperDialog;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog$2;->this$0:Lcom/yftech/settings/widget/dialog/WallpaperDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .line 124
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog$2;->this$0:Lcom/yftech/settings/widget/dialog/WallpaperDialog;

    invoke-virtual {p1}, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "sound_effects_enabled"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 126
    iget-object p0, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog$2;->this$0:Lcom/yftech/settings/widget/dialog/WallpaperDialog;

    invoke-virtual {p0}, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "audio"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    .line 127
    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    :cond_1
    return-void
.end method
