.class final Lcom/yftech/settings/widget/wheelview/WheelViewGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "WheelViewGestureListener.java"


# instance fields
.field private final mWheelView:Lcom/yftech/settings/widget/wheelview/WheelView;


# direct methods
.method constructor <init>(Lcom/yftech/settings/widget/wheelview/WheelView;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/yftech/settings/widget/wheelview/WheelViewGestureListener;->mWheelView:Lcom/yftech/settings/widget/wheelview/WheelView;

    return-void
.end method


# virtual methods
.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 15
    iget-object p1, p0, Lcom/yftech/settings/widget/wheelview/WheelViewGestureListener;->mWheelView:Lcom/yftech/settings/widget/wheelview/WheelView;

    invoke-virtual {p1}, Lcom/yftech/settings/widget/wheelview/WheelView;->getScrollOrientation()I

    move-result p1

    if-nez p1, :cond_0

    .line 16
    iget-object p0, p0, Lcom/yftech/settings/widget/wheelview/WheelViewGestureListener;->mWheelView:Lcom/yftech/settings/widget/wheelview/WheelView;

    invoke-virtual {p0, p4}, Lcom/yftech/settings/widget/wheelview/WheelView;->scrollBy(F)V

    goto :goto_0

    .line 18
    :cond_0
    iget-object p0, p0, Lcom/yftech/settings/widget/wheelview/WheelViewGestureListener;->mWheelView:Lcom/yftech/settings/widget/wheelview/WheelView;

    invoke-virtual {p0, p3}, Lcom/yftech/settings/widget/wheelview/WheelView;->scrollBy(F)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method
