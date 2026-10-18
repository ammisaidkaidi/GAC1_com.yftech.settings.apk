.class Lcom/yftech/settings/widget/VideoView$1;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


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

    .line 397
    iput-object p1, p0, Lcom/yftech/settings/widget/VideoView$1;->this$0:Lcom/yftech/settings/widget/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 0

    .line 399
    iget-object p2, p0, Lcom/yftech/settings/widget/VideoView$1;->this$0:Lcom/yftech/settings/widget/VideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result p3

    invoke-static {p2, p3}, Lcom/yftech/settings/widget/VideoView;->access$002(Lcom/yftech/settings/widget/VideoView;I)I

    .line 400
    iget-object p2, p0, Lcom/yftech/settings/widget/VideoView$1;->this$0:Lcom/yftech/settings/widget/VideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p1

    invoke-static {p2, p1}, Lcom/yftech/settings/widget/VideoView;->access$102(Lcom/yftech/settings/widget/VideoView;I)I

    .line 401
    iget-object p1, p0, Lcom/yftech/settings/widget/VideoView$1;->this$0:Lcom/yftech/settings/widget/VideoView;

    invoke-static {p1}, Lcom/yftech/settings/widget/VideoView;->access$000(Lcom/yftech/settings/widget/VideoView;)I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/yftech/settings/widget/VideoView$1;->this$0:Lcom/yftech/settings/widget/VideoView;

    invoke-static {p1}, Lcom/yftech/settings/widget/VideoView;->access$100(Lcom/yftech/settings/widget/VideoView;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 402
    iget-object p1, p0, Lcom/yftech/settings/widget/VideoView$1;->this$0:Lcom/yftech/settings/widget/VideoView;

    invoke-virtual {p1}, Lcom/yftech/settings/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iget-object p2, p0, Lcom/yftech/settings/widget/VideoView$1;->this$0:Lcom/yftech/settings/widget/VideoView;

    invoke-static {p2}, Lcom/yftech/settings/widget/VideoView;->access$000(Lcom/yftech/settings/widget/VideoView;)I

    move-result p2

    iget-object p3, p0, Lcom/yftech/settings/widget/VideoView$1;->this$0:Lcom/yftech/settings/widget/VideoView;

    invoke-static {p3}, Lcom/yftech/settings/widget/VideoView;->access$100(Lcom/yftech/settings/widget/VideoView;)I

    move-result p3

    invoke-interface {p1, p2, p3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 403
    iget-object p0, p0, Lcom/yftech/settings/widget/VideoView$1;->this$0:Lcom/yftech/settings/widget/VideoView;

    invoke-virtual {p0}, Lcom/yftech/settings/widget/VideoView;->requestLayout()V

    :cond_0
    return-void
.end method
