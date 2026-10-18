.class Lcom/yftech/settings/avdc/DrivingModeFragment$1;
.super Lcom/yftech/vehicle/sdk/CarPowerManager$CarPowerListener;
.source "DrivingModeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/avdc/DrivingModeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/avdc/DrivingModeFragment;


# direct methods
.method constructor <init>(Lcom/yftech/settings/avdc/DrivingModeFragment;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeFragment$1;->this$0:Lcom/yftech/settings/avdc/DrivingModeFragment;

    invoke-direct {p0}, Lcom/yftech/vehicle/sdk/CarPowerManager$CarPowerListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPowerModeChanged(Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerMode;)V
    .locals 3

    .line 98
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarPowerManager$CarPowerListener;->onPowerModeChanged(Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerMode;)V

    .line 99
    invoke-static {}, Lcom/yftech/settings/avdc/DrivingModeFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPowerModeChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerMode;->ON:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerMode;

    if-ne p1, v0, :cond_0

    .line 101
    iget-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeFragment$1;->this$0:Lcom/yftech/settings/avdc/DrivingModeFragment;

    invoke-static {p1}, Lcom/yftech/settings/avdc/DrivingModeFragment;->access$200(Lcom/yftech/settings/avdc/DrivingModeFragment;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/yftech/settings/avdc/DrivingModeFragment$1$1;

    invoke-direct {v0, p0}, Lcom/yftech/settings/avdc/DrivingModeFragment$1$1;-><init>(Lcom/yftech/settings/avdc/DrivingModeFragment$1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
