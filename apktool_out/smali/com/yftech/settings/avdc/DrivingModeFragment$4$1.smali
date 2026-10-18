.class Lcom/yftech/settings/avdc/DrivingModeFragment$4$1;
.super Ljava/lang/Object;
.source "DrivingModeFragment.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/settings/avdc/DrivingModeFragment$4;->onPrepared(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yftech/settings/avdc/DrivingModeFragment$4;


# direct methods
.method constructor <init>(Lcom/yftech/settings/avdc/DrivingModeFragment$4;)V
    .locals 0

    .line 521
    iput-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeFragment$4$1;->this$1:Lcom/yftech/settings/avdc/DrivingModeFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 0

    const/4 p1, 0x0

    const/4 p3, 0x3

    if-ne p2, p3, :cond_0

    .line 525
    iget-object p0, p0, Lcom/yftech/settings/avdc/DrivingModeFragment$4$1;->this$1:Lcom/yftech/settings/avdc/DrivingModeFragment$4;

    iget-object p0, p0, Lcom/yftech/settings/avdc/DrivingModeFragment$4;->this$0:Lcom/yftech/settings/avdc/DrivingModeFragment;

    invoke-static {p0}, Lcom/yftech/settings/avdc/DrivingModeFragment;->access$900(Lcom/yftech/settings/avdc/DrivingModeFragment;)Lcom/yftech/settings/widget/VideoView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/settings/widget/VideoView;->setBackgroundResource(I)V

    :cond_0
    return p1
.end method
