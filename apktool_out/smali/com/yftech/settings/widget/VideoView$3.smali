.class Lcom/yftech/settings/widget/VideoView$3;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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

    .line 471
    iput-object p1, p0, Lcom/yftech/settings/widget/VideoView$3;->this$0:Lcom/yftech/settings/widget/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 473
    iget-object p1, p0, Lcom/yftech/settings/widget/VideoView$3;->this$0:Lcom/yftech/settings/widget/VideoView;

    const/4 v0, 0x5

    invoke-static {p1, v0}, Lcom/yftech/settings/widget/VideoView;->access$202(Lcom/yftech/settings/widget/VideoView;I)I

    .line 474
    iget-object p1, p0, Lcom/yftech/settings/widget/VideoView$3;->this$0:Lcom/yftech/settings/widget/VideoView;

    invoke-static {p1, v0}, Lcom/yftech/settings/widget/VideoView;->access$1202(Lcom/yftech/settings/widget/VideoView;I)I

    .line 475
    iget-object p1, p0, Lcom/yftech/settings/widget/VideoView$3;->this$0:Lcom/yftech/settings/widget/VideoView;

    invoke-static {p1}, Lcom/yftech/settings/widget/VideoView;->access$800(Lcom/yftech/settings/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 476
    iget-object p1, p0, Lcom/yftech/settings/widget/VideoView$3;->this$0:Lcom/yftech/settings/widget/VideoView;

    invoke-static {p1}, Lcom/yftech/settings/widget/VideoView;->access$800(Lcom/yftech/settings/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/MediaController;->hide()V

    .line 478
    :cond_0
    iget-object p1, p0, Lcom/yftech/settings/widget/VideoView$3;->this$0:Lcom/yftech/settings/widget/VideoView;

    invoke-static {p1}, Lcom/yftech/settings/widget/VideoView;->access$1300(Lcom/yftech/settings/widget/VideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 479
    iget-object p1, p0, Lcom/yftech/settings/widget/VideoView$3;->this$0:Lcom/yftech/settings/widget/VideoView;

    invoke-static {p1}, Lcom/yftech/settings/widget/VideoView;->access$1300(Lcom/yftech/settings/widget/VideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/settings/widget/VideoView$3;->this$0:Lcom/yftech/settings/widget/VideoView;

    invoke-static {v0}, Lcom/yftech/settings/widget/VideoView;->access$700(Lcom/yftech/settings/widget/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 481
    :cond_1
    iget-object p0, p0, Lcom/yftech/settings/widget/VideoView$3;->this$0:Lcom/yftech/settings/widget/VideoView;

    invoke-static {p0}, Lcom/yftech/settings/widget/VideoView;->access$1400(Lcom/yftech/settings/widget/VideoView;)I

    return-void
.end method
