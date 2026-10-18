.class Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog$3;
.super Ljava/lang/Object;
.source "WallpaperSettingDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;


# direct methods
.method constructor <init>(Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog$3;->this$0:Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 375
    iget-object p0, p0, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog$3;->this$0:Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;

    invoke-virtual {p0}, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->dismiss()V

    return-void
.end method
