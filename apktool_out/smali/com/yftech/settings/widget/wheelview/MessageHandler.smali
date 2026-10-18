.class final Lcom/yftech/settings/widget/wheelview/MessageHandler;
.super Landroid/os/Handler;
.source "MessageHandler.java"


# static fields
.field static final WHAT_INVALIDATE_LOOP_VIEW:I = 0x3e8

.field static final WHAT_ITEM_SELECTED:I = 0xbb8

.field static final WHAT_SMOOTH_SCROLL:I = 0x7d0


# instance fields
.field private final mWheelView:Lcom/yftech/settings/widget/wheelview/WheelView;


# direct methods
.method constructor <init>(Lcom/yftech/settings/widget/wheelview/WheelView;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/yftech/settings/widget/wheelview/MessageHandler;->mWheelView:Lcom/yftech/settings/widget/wheelview/WheelView;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 18
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_2

    const/16 v0, 0x7d0

    if-eq p1, v0, :cond_1

    const/16 v0, 0xbb8

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    iget-object p0, p0, Lcom/yftech/settings/widget/wheelview/MessageHandler;->mWheelView:Lcom/yftech/settings/widget/wheelview/WheelView;

    invoke-virtual {p0}, Lcom/yftech/settings/widget/wheelview/WheelView;->onItemSelected()V

    goto :goto_0

    .line 23
    :cond_1
    iget-object p0, p0, Lcom/yftech/settings/widget/wheelview/MessageHandler;->mWheelView:Lcom/yftech/settings/widget/wheelview/WheelView;

    sget-object p1, Lcom/yftech/settings/widget/wheelview/WheelView$ACTION;->FLING:Lcom/yftech/settings/widget/wheelview/WheelView$ACTION;

    invoke-virtual {p0, p1}, Lcom/yftech/settings/widget/wheelview/WheelView;->smoothScroll(Lcom/yftech/settings/widget/wheelview/WheelView$ACTION;)V

    goto :goto_0

    .line 20
    :cond_2
    iget-object p0, p0, Lcom/yftech/settings/widget/wheelview/MessageHandler;->mWheelView:Lcom/yftech/settings/widget/wheelview/WheelView;

    invoke-virtual {p0}, Lcom/yftech/settings/widget/wheelview/WheelView;->invalidate()V

    :goto_0
    return-void
.end method
