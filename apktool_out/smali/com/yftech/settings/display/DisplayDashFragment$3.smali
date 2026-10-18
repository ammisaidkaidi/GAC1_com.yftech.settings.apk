.class Lcom/yftech/settings/display/DisplayDashFragment$3;
.super Ljava/lang/Object;
.source "DisplayDashFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/settings/display/DisplayDashFragment;->onStopTrackingTouch(Lcom/yftech/settings/widget/SeekBarNumber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/display/DisplayDashFragment;


# direct methods
.method constructor <init>(Lcom/yftech/settings/display/DisplayDashFragment;)V
    .locals 0

    .line 373
    iput-object p1, p0, Lcom/yftech/settings/display/DisplayDashFragment$3;->this$0:Lcom/yftech/settings/display/DisplayDashFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 376
    iget-object p0, p0, Lcom/yftech/settings/display/DisplayDashFragment$3;->this$0:Lcom/yftech/settings/display/DisplayDashFragment;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/yftech/settings/display/DisplayDashFragment;->access$702(Lcom/yftech/settings/display/DisplayDashFragment;Z)Z

    return-void
.end method
