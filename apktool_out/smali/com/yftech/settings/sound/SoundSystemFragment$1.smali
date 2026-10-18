.class Lcom/yftech/settings/sound/SoundSystemFragment$1;
.super Ljava/lang/Object;
.source "SoundSystemFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/sound/SoundSystemFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/sound/SoundSystemFragment;


# direct methods
.method constructor <init>(Lcom/yftech/settings/sound/SoundSystemFragment;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/yftech/settings/sound/SoundSystemFragment$1;->this$0:Lcom/yftech/settings/sound/SoundSystemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    const-string v0, "SoundSystemFragment"

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGlobalLayout, x:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/settings/sound/SoundSystemFragment$1;->this$0:Lcom/yftech/settings/sound/SoundSystemFragment;

    invoke-static {v2}, Lcom/yftech/settings/sound/SoundSystemFragment;->access$000(Lcom/yftech/settings/sound/SoundSystemFragment;)Lcom/yftech/settings/widget/SoundStage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yftech/settings/widget/SoundStage;->getX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", y:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/settings/sound/SoundSystemFragment$1;->this$0:Lcom/yftech/settings/sound/SoundSystemFragment;

    invoke-static {v2}, Lcom/yftech/settings/sound/SoundSystemFragment;->access$000(Lcom/yftech/settings/sound/SoundSystemFragment;)Lcom/yftech/settings/widget/SoundStage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yftech/settings/widget/SoundStage;->getY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/yftech/settings/sound/SoundSystemFragment$1;->this$0:Lcom/yftech/settings/sound/SoundSystemFragment;

    invoke-static {v0}, Lcom/yftech/settings/sound/SoundSystemFragment;->access$100(Lcom/yftech/settings/sound/SoundSystemFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 108
    iget-object v0, p0, Lcom/yftech/settings/sound/SoundSystemFragment$1;->this$0:Lcom/yftech/settings/sound/SoundSystemFragment;

    invoke-static {v0}, Lcom/yftech/settings/sound/SoundSystemFragment;->access$000(Lcom/yftech/settings/sound/SoundSystemFragment;)Lcom/yftech/settings/widget/SoundStage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/settings/widget/SoundStage;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/settings/sound/SoundSystemFragment$1;->this$0:Lcom/yftech/settings/sound/SoundSystemFragment;

    invoke-static {p0}, Lcom/yftech/settings/sound/SoundSystemFragment;->access$200(Lcom/yftech/settings/sound/SoundSystemFragment;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
