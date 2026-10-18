.class Lcom/yftech/settings/widget/VideoView$7;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/widget/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/widget/VideoView;


# direct methods
.method constructor <init>(Lcom/yftech/settings/widget/VideoView;)V
    .locals 0

    .line 602
    iput-object p1, p0, Lcom/yftech/settings/widget/VideoView$7;->this$0:Lcom/yftech/settings/widget/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    .line 606
    iget-object p1, p0, Lcom/yftech/settings/widget/VideoView$7;->this$0:Lcom/yftech/settings/widget/VideoView;

    invoke-static {p1, p3}, Lcom/yftech/settings/widget/VideoView;->access$1002(Lcom/yftech/settings/widget/VideoView;I)I

    .line 607
    iget-object p1, p0, Lcom/yftech/settings/widget/VideoView$7;->this$0:Lcom/yftech/settings/widget/VideoView;

    invoke-static {p1, p4}, Lcom/yftech/settings/widget/VideoView;->access$1102(Lcom/yftech/settings/widget/VideoView;I)I

    .line 608
    iget-object p1, p0, Lcom/yftech/settings/widget/VideoView$7;->this$0:Lcom/yftech/settings/widget/VideoView;

    invoke-static {p1}, Lcom/yftech/settings/widget/VideoView;->access$1200(Lcom/yftech/settings/widget/VideoView;)I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, p2

    .line 609
    :goto_0
    iget-object v1, p0, Lcom/yftech/settings/widget/VideoView$7;->this$0:Lcom/yftech/settings/widget/VideoView;

    invoke-static {v1}, Lcom/yftech/settings/widget/VideoView;->access$000(Lcom/yftech/settings/widget/VideoView;)I

    move-result v1

    if-ne v1, p3, :cond_1

    iget-object p3, p0, Lcom/yftech/settings/widget/VideoView$7;->this$0:Lcom/yftech/settings/widget/VideoView;

    invoke-static {p3}, Lcom/yftech/settings/widget/VideoView;->access$100(Lcom/yftech/settings/widget/VideoView;)I

    move-result p3

    if-ne p3, p4, :cond_1

    move p2, v0

    .line 610
    :cond_1
    iget-object p3, p0, Lcom/yftech/settings/widget/VideoView$7;->this$0:Lcom/yftech/settings/widget/VideoView;

    invoke-static {p3}, Lcom/yftech/settings/widget/VideoView;->access$700(Lcom/yftech/settings/widget/VideoView;)Landroid/media/MediaPlayer;

    move-result-object p3

    if-eqz p3, :cond_3

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 611
    iget-object p1, p0, Lcom/yftech/settings/widget/VideoView$7;->this$0:Lcom/yftech/settings/widget/VideoView;

    invoke-static {p1}, Lcom/yftech/settings/widget/VideoView;->access$900(Lcom/yftech/settings/widget/VideoView;)I

    move-result p1

    if-eqz p1, :cond_2

    .line 612
    iget-object p1, p0, Lcom/yftech/settings/widget/VideoView$7;->this$0:Lcom/yftech/settings/widget/VideoView;

    iget-object p2, p0, Lcom/yftech/settings/widget/VideoView$7;->this$0:Lcom/yftech/settings/widget/VideoView;

    invoke-static {p2}, Lcom/yftech/settings/widget/VideoView;->access$900(Lcom/yftech/settings/widget/VideoView;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/yftech/settings/widget/VideoView;->seekTo(I)V

    .line 614
    :cond_2
    iget-object p0, p0, Lcom/yftech/settings/widget/VideoView$7;->this$0:Lcom/yftech/settings/widget/VideoView;

    invoke-virtual {p0}, Lcom/yftech/settings/widget/VideoView;->start()V

    :cond_3
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 620
    iget-object v0, p0, Lcom/yftech/settings/widget/VideoView$7;->this$0:Lcom/yftech/settings/widget/VideoView;

    invoke-static {v0, p1}, Lcom/yftech/settings/widget/VideoView;->access$1902(Lcom/yftech/settings/widget/VideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 621
    iget-object p0, p0, Lcom/yftech/settings/widget/VideoView$7;->this$0:Lcom/yftech/settings/widget/VideoView;

    invoke-static {p0}, Lcom/yftech/settings/widget/VideoView;->access$2000(Lcom/yftech/settings/widget/VideoView;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 627
    iget-object p1, p0, Lcom/yftech/settings/widget/VideoView$7;->this$0:Lcom/yftech/settings/widget/VideoView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/yftech/settings/widget/VideoView;->access$1902(Lcom/yftech/settings/widget/VideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 628
    iget-object p1, p0, Lcom/yftech/settings/widget/VideoView$7;->this$0:Lcom/yftech/settings/widget/VideoView;

    invoke-static {p1}, Lcom/yftech/settings/widget/VideoView;->access$800(Lcom/yftech/settings/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/yftech/settings/widget/VideoView$7;->this$0:Lcom/yftech/settings/widget/VideoView;

    invoke-static {p1}, Lcom/yftech/settings/widget/VideoView;->access$800(Lcom/yftech/settings/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/MediaController;->hide()V

    .line 629
    :cond_0
    iget-object p0, p0, Lcom/yftech/settings/widget/VideoView$7;->this$0:Lcom/yftech/settings/widget/VideoView;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/yftech/settings/widget/VideoView;->access$2100(Lcom/yftech/settings/widget/VideoView;Z)V

    return-void
.end method
