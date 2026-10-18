.class final Lcom/yftech/settings/widget/wheelview/OnItemSelectedRunnable;
.super Ljava/lang/Object;
.source "OnItemSelectedRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mOldIndex:I

.field private final mWheelView:Lcom/yftech/settings/widget/wheelview/WheelView;


# direct methods
.method constructor <init>(Lcom/yftech/settings/widget/wheelview/WheelView;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/yftech/settings/widget/wheelview/OnItemSelectedRunnable;->mOldIndex:I

    .line 8
    iput-object p1, p0, Lcom/yftech/settings/widget/wheelview/OnItemSelectedRunnable;->mWheelView:Lcom/yftech/settings/widget/wheelview/WheelView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 13
    iget-object v0, p0, Lcom/yftech/settings/widget/wheelview/OnItemSelectedRunnable;->mWheelView:Lcom/yftech/settings/widget/wheelview/WheelView;

    invoke-virtual {v0}, Lcom/yftech/settings/widget/wheelview/WheelView;->getSelectedPosition()I

    move-result v0

    if-gez v0, :cond_0

    return-void

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/yftech/settings/widget/wheelview/OnItemSelectedRunnable;->mWheelView:Lcom/yftech/settings/widget/wheelview/WheelView;

    invoke-virtual {v0}, Lcom/yftech/settings/widget/wheelview/WheelView;->getSelectedPosition()I

    move-result v0

    iget v1, p0, Lcom/yftech/settings/widget/wheelview/OnItemSelectedRunnable;->mOldIndex:I

    if-ne v0, v1, :cond_1

    return-void

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/yftech/settings/widget/wheelview/OnItemSelectedRunnable;->mWheelView:Lcom/yftech/settings/widget/wheelview/WheelView;

    invoke-virtual {v0}, Lcom/yftech/settings/widget/wheelview/WheelView;->getSelectedPosition()I

    move-result v0

    iput v0, p0, Lcom/yftech/settings/widget/wheelview/OnItemSelectedRunnable;->mOldIndex:I

    .line 20
    iget-object v0, p0, Lcom/yftech/settings/widget/wheelview/OnItemSelectedRunnable;->mWheelView:Lcom/yftech/settings/widget/wheelview/WheelView;

    iget-object v0, v0, Lcom/yftech/settings/widget/wheelview/WheelView;->onItemSelectedListener:Lcom/yftech/settings/widget/wheelview/WheelView$OnItemSelectedListener;

    iget-object v1, p0, Lcom/yftech/settings/widget/wheelview/OnItemSelectedRunnable;->mWheelView:Lcom/yftech/settings/widget/wheelview/WheelView;

    iget-object v2, p0, Lcom/yftech/settings/widget/wheelview/OnItemSelectedRunnable;->mWheelView:Lcom/yftech/settings/widget/wheelview/WheelView;

    invoke-virtual {v2}, Lcom/yftech/settings/widget/wheelview/WheelView;->getSelectedPosition()I

    move-result v2

    iget-object p0, p0, Lcom/yftech/settings/widget/wheelview/OnItemSelectedRunnable;->mWheelView:Lcom/yftech/settings/widget/wheelview/WheelView;

    invoke-virtual {p0}, Lcom/yftech/settings/widget/wheelview/WheelView;->getSelectedItem()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, v2, p0}, Lcom/yftech/settings/widget/wheelview/WheelView$OnItemSelectedListener;->onItemSelected(Lcom/yftech/settings/widget/wheelview/WheelView;ILjava/lang/String;)V

    return-void
.end method
