.class Lcom/yftech/settings/widget/ClipImageView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ClipImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/settings/widget/ClipImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/widget/ClipImageView;


# direct methods
.method constructor <init>(Lcom/yftech/settings/widget/ClipImageView;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/yftech/settings/widget/ClipImageView$1;->this$0:Lcom/yftech/settings/widget/ClipImageView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 95
    iget-object v0, p0, Lcom/yftech/settings/widget/ClipImageView$1;->this$0:Lcom/yftech/settings/widget/ClipImageView;

    invoke-static {v0}, Lcom/yftech/settings/widget/ClipImageView;->access$000(Lcom/yftech/settings/widget/ClipImageView;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 98
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 99
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 100
    iget-object v2, p0, Lcom/yftech/settings/widget/ClipImageView$1;->this$0:Lcom/yftech/settings/widget/ClipImageView;

    invoke-virtual {v2}, Lcom/yftech/settings/widget/ClipImageView;->getScale()F

    move-result v2

    iget-object v3, p0, Lcom/yftech/settings/widget/ClipImageView$1;->this$0:Lcom/yftech/settings/widget/ClipImageView;

    invoke-static {v3}, Lcom/yftech/settings/widget/ClipImageView;->access$100(Lcom/yftech/settings/widget/ClipImageView;)F

    move-result v3

    cmpg-float v2, v2, v3

    const-wide/16 v3, 0x10

    if-gez v2, :cond_1

    .line 101
    iget-object v2, p0, Lcom/yftech/settings/widget/ClipImageView$1;->this$0:Lcom/yftech/settings/widget/ClipImageView;

    new-instance v5, Lcom/yftech/settings/widget/ClipImageView$AutoScaleRunnable;

    iget-object v6, p0, Lcom/yftech/settings/widget/ClipImageView$1;->this$0:Lcom/yftech/settings/widget/ClipImageView;

    iget-object v7, p0, Lcom/yftech/settings/widget/ClipImageView$1;->this$0:Lcom/yftech/settings/widget/ClipImageView;

    invoke-static {v7}, Lcom/yftech/settings/widget/ClipImageView;->access$100(Lcom/yftech/settings/widget/ClipImageView;)F

    move-result v7

    invoke-direct {v5, v6, v7, v0, p1}, Lcom/yftech/settings/widget/ClipImageView$AutoScaleRunnable;-><init>(Lcom/yftech/settings/widget/ClipImageView;FFF)V

    invoke-virtual {v2, v5, v3, v4}, Lcom/yftech/settings/widget/ClipImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 103
    :cond_1
    iget-object v2, p0, Lcom/yftech/settings/widget/ClipImageView$1;->this$0:Lcom/yftech/settings/widget/ClipImageView;

    new-instance v5, Lcom/yftech/settings/widget/ClipImageView$AutoScaleRunnable;

    iget-object v6, p0, Lcom/yftech/settings/widget/ClipImageView$1;->this$0:Lcom/yftech/settings/widget/ClipImageView;

    iget-object v7, p0, Lcom/yftech/settings/widget/ClipImageView$1;->this$0:Lcom/yftech/settings/widget/ClipImageView;

    invoke-static {v7}, Lcom/yftech/settings/widget/ClipImageView;->access$200(Lcom/yftech/settings/widget/ClipImageView;)F

    move-result v7

    invoke-direct {v5, v6, v7, v0, p1}, Lcom/yftech/settings/widget/ClipImageView$AutoScaleRunnable;-><init>(Lcom/yftech/settings/widget/ClipImageView;FFF)V

    invoke-virtual {v2, v5, v3, v4}, Lcom/yftech/settings/widget/ClipImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 105
    :goto_0
    iget-object p0, p0, Lcom/yftech/settings/widget/ClipImageView$1;->this$0:Lcom/yftech/settings/widget/ClipImageView;

    invoke-static {p0, v1}, Lcom/yftech/settings/widget/ClipImageView;->access$002(Lcom/yftech/settings/widget/ClipImageView;Z)Z

    return v1
.end method
