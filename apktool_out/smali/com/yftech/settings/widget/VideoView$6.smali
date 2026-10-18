.class Lcom/yftech/settings/widget/VideoView$6;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


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

    .line 550
    iput-object p1, p0, Lcom/yftech/settings/widget/VideoView$6;->this$0:Lcom/yftech/settings/widget/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 0

    .line 552
    iget-object p0, p0, Lcom/yftech/settings/widget/VideoView$6;->this$0:Lcom/yftech/settings/widget/VideoView;

    invoke-static {p0, p2}, Lcom/yftech/settings/widget/VideoView;->access$1802(Lcom/yftech/settings/widget/VideoView;I)I

    return-void
.end method
