.class Lcom/yftech/settings/widget/dialog/WallpaperDialog$1;
.super Ljava/lang/Object;
.source "WallpaperDialog.java"

# interfaces
.implements Lcom/yftech/settings/manager/WallpaperManager$onWallpaperListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/widget/dialog/WallpaperDialog;
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

    .line 65
    iput-object p1, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog$1;->this$0:Lcom/yftech/settings/widget/dialog/WallpaperDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUsbScanningSuccessful(IZ)V
    .locals 3

    .line 89
    invoke-static {}, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUsbScanning usbIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isScanning:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object p2, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog$1;->this$0:Lcom/yftech/settings/widget/dialog/WallpaperDialog;

    invoke-static {p2}, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->access$100(Lcom/yftech/settings/widget/dialog/WallpaperDialog;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->isSelected()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 91
    iget-object p2, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog$1;->this$0:Lcom/yftech/settings/widget/dialog/WallpaperDialog;

    invoke-static {p2, p1}, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->access$800(Lcom/yftech/settings/widget/dialog/WallpaperDialog;I)V

    .line 92
    iget-object p0, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog$1;->this$0:Lcom/yftech/settings/widget/dialog/WallpaperDialog;

    invoke-static {p0, p1}, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->access$302(Lcom/yftech/settings/widget/dialog/WallpaperDialog;I)I

    :cond_0
    return-void
.end method

.method public onUsbStatusChange(IZ)V
    .locals 3

    .line 68
    invoke-static {}, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUsbStatusChange usbIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " usbStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog$1;->this$0:Lcom/yftech/settings/widget/dialog/WallpaperDialog;

    iget-object v1, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog$1;->this$0:Lcom/yftech/settings/widget/dialog/WallpaperDialog;

    invoke-static {v1}, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->access$100(Lcom/yftech/settings/widget/dialog/WallpaperDialog;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->access$200(Lcom/yftech/settings/widget/dialog/WallpaperDialog;Landroid/widget/TextView;Z)V

    .line 70
    iget-object v0, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog$1;->this$0:Lcom/yftech/settings/widget/dialog/WallpaperDialog;

    invoke-static {v0, p1}, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->access$302(Lcom/yftech/settings/widget/dialog/WallpaperDialog;I)I

    if-nez p2, :cond_1

    .line 72
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog$1;->this$0:Lcom/yftech/settings/widget/dialog/WallpaperDialog;

    invoke-static {p1}, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->access$400(Lcom/yftech/settings/widget/dialog/WallpaperDialog;)Landroid/widget/TextView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 73
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog$1;->this$0:Lcom/yftech/settings/widget/dialog/WallpaperDialog;

    invoke-static {p1}, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->access$500(Lcom/yftech/settings/widget/dialog/WallpaperDialog;)Landroid/widget/TextView;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 74
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog$1;->this$0:Lcom/yftech/settings/widget/dialog/WallpaperDialog;

    iget-object v0, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog$1;->this$0:Lcom/yftech/settings/widget/dialog/WallpaperDialog;

    invoke-static {v0}, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->access$500(Lcom/yftech/settings/widget/dialog/WallpaperDialog;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->access$402(Lcom/yftech/settings/widget/dialog/WallpaperDialog;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 75
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog$1;->this$0:Lcom/yftech/settings/widget/dialog/WallpaperDialog;

    iget-object v0, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog$1;->this$0:Lcom/yftech/settings/widget/dialog/WallpaperDialog;

    invoke-static {v0}, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->access$700(Lcom/yftech/settings/widget/dialog/WallpaperDialog;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->access$602(Lcom/yftech/settings/widget/dialog/WallpaperDialog;I)I

    .line 76
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog$1;->this$0:Lcom/yftech/settings/widget/dialog/WallpaperDialog;

    iget-object v0, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog$1;->this$0:Lcom/yftech/settings/widget/dialog/WallpaperDialog;

    invoke-static {v0}, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->access$600(Lcom/yftech/settings/widget/dialog/WallpaperDialog;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->access$800(Lcom/yftech/settings/widget/dialog/WallpaperDialog;I)V

    .line 77
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog$1;->this$0:Lcom/yftech/settings/widget/dialog/WallpaperDialog;

    invoke-static {p1}, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->access$900(Lcom/yftech/settings/widget/dialog/WallpaperDialog;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 78
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog$1;->this$0:Lcom/yftech/settings/widget/dialog/WallpaperDialog;

    invoke-static {p1}, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->access$1000(Lcom/yftech/settings/widget/dialog/WallpaperDialog;)Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 79
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog$1;->this$0:Lcom/yftech/settings/widget/dialog/WallpaperDialog;

    invoke-static {p1}, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->access$1000(Lcom/yftech/settings/widget/dialog/WallpaperDialog;)Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->dismiss()V

    .line 83
    :cond_0
    iget-object p0, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog$1;->this$0:Lcom/yftech/settings/widget/dialog/WallpaperDialog;

    invoke-static {p0, p2}, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->access$902(Lcom/yftech/settings/widget/dialog/WallpaperDialog;Z)Z

    :cond_1
    return-void
.end method
