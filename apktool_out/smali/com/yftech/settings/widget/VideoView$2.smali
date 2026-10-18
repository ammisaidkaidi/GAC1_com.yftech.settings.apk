.class Lcom/yftech/settings/widget/VideoView$2;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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

    .line 408
    iput-object p1, p0, Lcom/yftech/settings/widget/VideoView$2;->this$0:Lcom/yftech/settings/widget/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 7

    .line 410
    iget-object v0, p0, Lcom/yftech/settings/widget/VideoView$2;->this$0:Lcom/yftech/settings/widget/VideoView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/yftech/settings/widget/VideoView;->access$202(Lcom/yftech/settings/widget/VideoView;I)I

    const/4 v0, 0x0

    .line 413
    invoke-virtual {p1, v0, v0}, Landroid/media/MediaPlayer;->getMetadata(ZZ)Landroid/media/Metadata;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eqz v2, :cond_6

    .line 417
    iget-object v5, p0, Lcom/yftech/settings/widget/VideoView$2;->this$0:Lcom/yftech/settings/widget/VideoView;

    invoke-virtual {v2, v4}, Landroid/media/Metadata;->has(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 418
    invoke-virtual {v2, v4}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    move v6, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v6, v4

    .line 417
    :goto_1
    invoke-static {v5, v6}, Lcom/yftech/settings/widget/VideoView;->access$302(Lcom/yftech/settings/widget/VideoView;Z)Z

    .line 419
    iget-object v5, p0, Lcom/yftech/settings/widget/VideoView$2;->this$0:Lcom/yftech/settings/widget/VideoView;

    invoke-virtual {v2, v1}, Landroid/media/Metadata;->has(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 420
    invoke-virtual {v2, v1}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v0

    goto :goto_3

    :cond_3
    :goto_2
    move v1, v4

    .line 419
    :goto_3
    invoke-static {v5, v1}, Lcom/yftech/settings/widget/VideoView;->access$402(Lcom/yftech/settings/widget/VideoView;Z)Z

    .line 421
    iget-object v1, p0, Lcom/yftech/settings/widget/VideoView$2;->this$0:Lcom/yftech/settings/widget/VideoView;

    invoke-virtual {v2, v3}, Landroid/media/Metadata;->has(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 422
    invoke-virtual {v2, v3}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    move v2, v0

    goto :goto_5

    :cond_5
    :goto_4
    move v2, v4

    .line 421
    :goto_5
    invoke-static {v1, v2}, Lcom/yftech/settings/widget/VideoView;->access$502(Lcom/yftech/settings/widget/VideoView;Z)Z

    goto :goto_6

    .line 424
    :cond_6
    iget-object v1, p0, Lcom/yftech/settings/widget/VideoView$2;->this$0:Lcom/yftech/settings/widget/VideoView;

    iget-object v2, p0, Lcom/yftech/settings/widget/VideoView$2;->this$0:Lcom/yftech/settings/widget/VideoView;

    iget-object v5, p0, Lcom/yftech/settings/widget/VideoView$2;->this$0:Lcom/yftech/settings/widget/VideoView;

    invoke-static {v5, v4}, Lcom/yftech/settings/widget/VideoView;->access$502(Lcom/yftech/settings/widget/VideoView;Z)Z

    move-result v5

    invoke-static {v2, v5}, Lcom/yftech/settings/widget/VideoView;->access$402(Lcom/yftech/settings/widget/VideoView;Z)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/yftech/settings/widget/VideoView;->access$302(Lcom/yftech/settings/widget/VideoView;Z)Z

    .line 427
    :goto_6
    iget-object v1, p0, Lcom/yftech/settings/widget/VideoView$2;->this$0:Lcom/yftech/settings/widget/VideoView;

    invoke-static {v1}, Lcom/yftech/settings/widget/VideoView;->access$600(Lcom/yftech/settings/widget/VideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 428
    iget-object v1, p0, Lcom/yftech/settings/widget/VideoView$2;->this$0:Lcom/yftech/settings/widget/VideoView;

    invoke-static {v1}, Lcom/yftech/settings/widget/VideoView;->access$600(Lcom/yftech/settings/widget/VideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v1

    iget-object v2, p0, Lcom/yftech/settings/widget/VideoView$2;->this$0:Lcom/yftech/settings/widget/VideoView;

    invoke-static {v2}, Lcom/yftech/settings/widget/VideoView;->access$700(Lcom/yftech/settings/widget/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 430
    :cond_7
    iget-object v1, p0, Lcom/yftech/settings/widget/VideoView$2;->this$0:Lcom/yftech/settings/widget/VideoView;

    invoke-static {v1}, Lcom/yftech/settings/widget/VideoView;->access$800(Lcom/yftech/settings/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 431
    iget-object v1, p0, Lcom/yftech/settings/widget/VideoView$2;->this$0:Lcom/yftech/settings/widget/VideoView;

    invoke-static {v1}, Lcom/yftech/settings/widget/VideoView;->access$800(Lcom/yftech/settings/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 433
    :cond_8
    iget-object v1, p0, Lcom/yftech/settings/widget/VideoView$2;->this$0:Lcom/yftech/settings/widget/VideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v2

    invoke-static {v1, v2}, Lcom/yftech/settings/widget/VideoView;->access$002(Lcom/yftech/settings/widget/VideoView;I)I

    .line 434
    iget-object v1, p0, Lcom/yftech/settings/widget/VideoView$2;->this$0:Lcom/yftech/settings/widget/VideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p1

    invoke-static {v1, p1}, Lcom/yftech/settings/widget/VideoView;->access$102(Lcom/yftech/settings/widget/VideoView;I)I

    .line 436
    iget-object p1, p0, Lcom/yftech/settings/widget/VideoView$2;->this$0:Lcom/yftech/settings/widget/VideoView;

    invoke-static {p1}, Lcom/yftech/settings/widget/VideoView;->access$900(Lcom/yftech/settings/widget/VideoView;)I

    move-result p1

    if-eqz p1, :cond_9

    .line 438
    iget-object v1, p0, Lcom/yftech/settings/widget/VideoView$2;->this$0:Lcom/yftech/settings/widget/VideoView;

    invoke-virtual {v1, p1}, Lcom/yftech/settings/widget/VideoView;->seekTo(I)V

    .line 440
    :cond_9
    iget-object v1, p0, Lcom/yftech/settings/widget/VideoView$2;->this$0:Lcom/yftech/settings/widget/VideoView;

    invoke-static {v1}, Lcom/yftech/settings/widget/VideoView;->access$000(Lcom/yftech/settings/widget/VideoView;)I

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/yftech/settings/widget/VideoView$2;->this$0:Lcom/yftech/settings/widget/VideoView;

    invoke-static {v1}, Lcom/yftech/settings/widget/VideoView;->access$100(Lcom/yftech/settings/widget/VideoView;)I

    move-result v1

    if-eqz v1, :cond_c

    .line 442
    iget-object v1, p0, Lcom/yftech/settings/widget/VideoView$2;->this$0:Lcom/yftech/settings/widget/VideoView;

    invoke-virtual {v1}, Lcom/yftech/settings/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/yftech/settings/widget/VideoView$2;->this$0:Lcom/yftech/settings/widget/VideoView;

    invoke-static {v2}, Lcom/yftech/settings/widget/VideoView;->access$000(Lcom/yftech/settings/widget/VideoView;)I

    move-result v2

    iget-object v4, p0, Lcom/yftech/settings/widget/VideoView$2;->this$0:Lcom/yftech/settings/widget/VideoView;

    invoke-static {v4}, Lcom/yftech/settings/widget/VideoView;->access$100(Lcom/yftech/settings/widget/VideoView;)I

    move-result v4

    invoke-interface {v1, v2, v4}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 443
    iget-object v1, p0, Lcom/yftech/settings/widget/VideoView$2;->this$0:Lcom/yftech/settings/widget/VideoView;

    invoke-static {v1}, Lcom/yftech/settings/widget/VideoView;->access$1000(Lcom/yftech/settings/widget/VideoView;)I

    move-result v1

    iget-object v2, p0, Lcom/yftech/settings/widget/VideoView$2;->this$0:Lcom/yftech/settings/widget/VideoView;

    invoke-static {v2}, Lcom/yftech/settings/widget/VideoView;->access$000(Lcom/yftech/settings/widget/VideoView;)I

    move-result v2

    if-ne v1, v2, :cond_d

    iget-object v1, p0, Lcom/yftech/settings/widget/VideoView$2;->this$0:Lcom/yftech/settings/widget/VideoView;

    invoke-static {v1}, Lcom/yftech/settings/widget/VideoView;->access$1100(Lcom/yftech/settings/widget/VideoView;)I

    move-result v1

    iget-object v2, p0, Lcom/yftech/settings/widget/VideoView$2;->this$0:Lcom/yftech/settings/widget/VideoView;

    invoke-static {v2}, Lcom/yftech/settings/widget/VideoView;->access$100(Lcom/yftech/settings/widget/VideoView;)I

    move-result v2

    if-ne v1, v2, :cond_d

    .line 447
    iget-object v1, p0, Lcom/yftech/settings/widget/VideoView$2;->this$0:Lcom/yftech/settings/widget/VideoView;

    invoke-static {v1}, Lcom/yftech/settings/widget/VideoView;->access$1200(Lcom/yftech/settings/widget/VideoView;)I

    move-result v1

    if-ne v1, v3, :cond_a

    .line 448
    iget-object p1, p0, Lcom/yftech/settings/widget/VideoView$2;->this$0:Lcom/yftech/settings/widget/VideoView;

    invoke-virtual {p1}, Lcom/yftech/settings/widget/VideoView;->start()V

    .line 449
    iget-object p1, p0, Lcom/yftech/settings/widget/VideoView$2;->this$0:Lcom/yftech/settings/widget/VideoView;

    invoke-static {p1}, Lcom/yftech/settings/widget/VideoView;->access$800(Lcom/yftech/settings/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 450
    iget-object p0, p0, Lcom/yftech/settings/widget/VideoView$2;->this$0:Lcom/yftech/settings/widget/VideoView;

    invoke-static {p0}, Lcom/yftech/settings/widget/VideoView;->access$800(Lcom/yftech/settings/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/MediaController;->show()V

    goto :goto_7

    .line 452
    :cond_a
    iget-object v1, p0, Lcom/yftech/settings/widget/VideoView$2;->this$0:Lcom/yftech/settings/widget/VideoView;

    invoke-virtual {v1}, Lcom/yftech/settings/widget/VideoView;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_d

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/yftech/settings/widget/VideoView$2;->this$0:Lcom/yftech/settings/widget/VideoView;

    .line 453
    invoke-virtual {p1}, Lcom/yftech/settings/widget/VideoView;->getCurrentPosition()I

    move-result p1

    if-lez p1, :cond_d

    .line 454
    :cond_b
    iget-object p1, p0, Lcom/yftech/settings/widget/VideoView$2;->this$0:Lcom/yftech/settings/widget/VideoView;

    invoke-static {p1}, Lcom/yftech/settings/widget/VideoView;->access$800(Lcom/yftech/settings/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 456
    iget-object p0, p0, Lcom/yftech/settings/widget/VideoView$2;->this$0:Lcom/yftech/settings/widget/VideoView;

    invoke-static {p0}, Lcom/yftech/settings/widget/VideoView;->access$800(Lcom/yftech/settings/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/MediaController;->show(I)V

    goto :goto_7

    .line 463
    :cond_c
    iget-object p1, p0, Lcom/yftech/settings/widget/VideoView$2;->this$0:Lcom/yftech/settings/widget/VideoView;

    invoke-static {p1}, Lcom/yftech/settings/widget/VideoView;->access$1200(Lcom/yftech/settings/widget/VideoView;)I

    move-result p1

    if-ne p1, v3, :cond_d

    .line 464
    iget-object p0, p0, Lcom/yftech/settings/widget/VideoView$2;->this$0:Lcom/yftech/settings/widget/VideoView;

    invoke-virtual {p0}, Lcom/yftech/settings/widget/VideoView;->start()V

    :cond_d
    :goto_7
    return-void
.end method
