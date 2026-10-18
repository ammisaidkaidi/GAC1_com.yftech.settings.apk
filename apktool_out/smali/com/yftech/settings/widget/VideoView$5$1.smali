.class Lcom/yftech/settings/widget/VideoView$5$1;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/settings/widget/VideoView$5;->onError(Landroid/media/MediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yftech/settings/widget/VideoView$5;


# direct methods
.method constructor <init>(Lcom/yftech/settings/widget/VideoView$5;)V
    .locals 0

    .line 532
    iput-object p1, p0, Lcom/yftech/settings/widget/VideoView$5$1;->this$1:Lcom/yftech/settings/widget/VideoView$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 537
    iget-object p1, p0, Lcom/yftech/settings/widget/VideoView$5$1;->this$1:Lcom/yftech/settings/widget/VideoView$5;

    iget-object p1, p1, Lcom/yftech/settings/widget/VideoView$5;->this$0:Lcom/yftech/settings/widget/VideoView;

    invoke-static {p1}, Lcom/yftech/settings/widget/VideoView;->access$1300(Lcom/yftech/settings/widget/VideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 538
    iget-object p1, p0, Lcom/yftech/settings/widget/VideoView$5$1;->this$1:Lcom/yftech/settings/widget/VideoView$5;

    iget-object p1, p1, Lcom/yftech/settings/widget/VideoView$5;->this$0:Lcom/yftech/settings/widget/VideoView;

    invoke-static {p1}, Lcom/yftech/settings/widget/VideoView;->access$1300(Lcom/yftech/settings/widget/VideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/settings/widget/VideoView$5$1;->this$1:Lcom/yftech/settings/widget/VideoView$5;

    iget-object p0, p0, Lcom/yftech/settings/widget/VideoView$5;->this$0:Lcom/yftech/settings/widget/VideoView;

    invoke-static {p0}, Lcom/yftech/settings/widget/VideoView;->access$700(Lcom/yftech/settings/widget/VideoView;)Landroid/media/MediaPlayer;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    :cond_0
    return-void
.end method
