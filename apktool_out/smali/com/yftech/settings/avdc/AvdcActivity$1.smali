.class Lcom/yftech/settings/avdc/AvdcActivity$1;
.super Lcom/yftech/vehicle/sdk/CarPowerManager$CarPowerListener;
.source "AvdcActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/avdc/AvdcActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/avdc/AvdcActivity;


# direct methods
.method constructor <init>(Lcom/yftech/settings/avdc/AvdcActivity;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/yftech/settings/avdc/AvdcActivity$1;->this$0:Lcom/yftech/settings/avdc/AvdcActivity;

    invoke-direct {p0}, Lcom/yftech/vehicle/sdk/CarPowerManager$CarPowerListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPowerModeChanged(Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerMode;)V
    .locals 2

    .line 49
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarPowerManager$CarPowerListener;->onPowerModeChanged(Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerMode;)V

    .line 50
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerMode;->ON:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerMode;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerMode;->CRANK:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerMode;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 51
    :goto_1
    iget-object v0, p0, Lcom/yftech/settings/avdc/AvdcActivity$1;->this$0:Lcom/yftech/settings/avdc/AvdcActivity;

    invoke-static {v0}, Lcom/yftech/settings/avdc/AvdcActivity;->access$100(Lcom/yftech/settings/avdc/AvdcActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/yftech/settings/avdc/AvdcActivity$1$1;

    invoke-direct {v1, p0, p1}, Lcom/yftech/settings/avdc/AvdcActivity$1$1;-><init>(Lcom/yftech/settings/avdc/AvdcActivity$1;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
