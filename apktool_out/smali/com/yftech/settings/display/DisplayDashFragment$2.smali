.class Lcom/yftech/settings/display/DisplayDashFragment$2;
.super Ljava/lang/Object;
.source "DisplayDashFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/settings/display/DisplayDashFragment;->initView(Landroid/view/View;)V
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

    .line 128
    iput-object p1, p0, Lcom/yftech/settings/display/DisplayDashFragment$2;->this$0:Lcom/yftech/settings/display/DisplayDashFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 132
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 133
    iget-object p1, p0, Lcom/yftech/settings/display/DisplayDashFragment$2;->this$0:Lcom/yftech/settings/display/DisplayDashFragment;

    invoke-static {}, Lcom/yftech/vehicle/sdk/CarLightManager;->get()Lcom/yftech/vehicle/sdk/CarLightManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yftech/vehicle/sdk/CarLightManager;->isSmallLightEnabled()Z

    move-result p2

    invoke-static {p1, p2}, Lcom/yftech/settings/display/DisplayDashFragment;->access$402(Lcom/yftech/settings/display/DisplayDashFragment;Z)Z

    .line 134
    invoke-static {}, Lcom/yftech/settings/display/DisplayDashFragment;->access$500()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTouch() ACTION_DOWN isSmallLightEnabled:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/settings/display/DisplayDashFragment$2;->this$0:Lcom/yftech/settings/display/DisplayDashFragment;

    invoke-static {v1}, Lcom/yftech/settings/display/DisplayDashFragment;->access$400(Lcom/yftech/settings/display/DisplayDashFragment;)Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object p1, p0, Lcom/yftech/settings/display/DisplayDashFragment$2;->this$0:Lcom/yftech/settings/display/DisplayDashFragment;

    invoke-static {p1}, Lcom/yftech/settings/display/DisplayDashFragment;->access$400(Lcom/yftech/settings/display/DisplayDashFragment;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 136
    iget-object p0, p0, Lcom/yftech/settings/display/DisplayDashFragment$2;->this$0:Lcom/yftech/settings/display/DisplayDashFragment;

    invoke-static {p0}, Lcom/yftech/settings/display/DisplayDashFragment;->access$600(Lcom/yftech/settings/display/DisplayDashFragment;)V

    return v0

    .line 140
    :cond_0
    iget-object p1, p0, Lcom/yftech/settings/display/DisplayDashFragment$2;->this$0:Lcom/yftech/settings/display/DisplayDashFragment;

    invoke-static {p1}, Lcom/yftech/settings/display/DisplayDashFragment;->access$400(Lcom/yftech/settings/display/DisplayDashFragment;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    return v0

    .line 142
    :cond_1
    iget-object p0, p0, Lcom/yftech/settings/display/DisplayDashFragment$2;->this$0:Lcom/yftech/settings/display/DisplayDashFragment;

    invoke-static {p0}, Lcom/yftech/settings/display/DisplayDashFragment;->access$400(Lcom/yftech/settings/display/DisplayDashFragment;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    if-ne p0, v0, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
