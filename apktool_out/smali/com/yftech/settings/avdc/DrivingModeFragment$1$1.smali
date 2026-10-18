.class Lcom/yftech/settings/avdc/DrivingModeFragment$1$1;
.super Ljava/lang/Object;
.source "DrivingModeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/settings/avdc/DrivingModeFragment$1;->onPowerModeChanged(Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yftech/settings/avdc/DrivingModeFragment$1;


# direct methods
.method constructor <init>(Lcom/yftech/settings/avdc/DrivingModeFragment$1;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeFragment$1$1;->this$1:Lcom/yftech/settings/avdc/DrivingModeFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/yftech/settings/avdc/DrivingModeFragment$1$1;->this$1:Lcom/yftech/settings/avdc/DrivingModeFragment$1;

    iget-object p0, p0, Lcom/yftech/settings/avdc/DrivingModeFragment$1;->this$0:Lcom/yftech/settings/avdc/DrivingModeFragment;

    invoke-static {p0}, Lcom/yftech/settings/avdc/DrivingModeFragment;->access$100(Lcom/yftech/settings/avdc/DrivingModeFragment;)V

    return-void
.end method
