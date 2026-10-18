.class Lcom/yftech/settings/avdc/AvdcActivity$1$1;
.super Ljava/lang/Object;
.source "AvdcActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/settings/avdc/AvdcActivity$1;->onPowerModeChanged(Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yftech/settings/avdc/AvdcActivity$1;

.field final synthetic val$isPower:Z


# direct methods
.method constructor <init>(Lcom/yftech/settings/avdc/AvdcActivity$1;Z)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/yftech/settings/avdc/AvdcActivity$1$1;->this$1:Lcom/yftech/settings/avdc/AvdcActivity$1;

    iput-boolean p2, p0, Lcom/yftech/settings/avdc/AvdcActivity$1$1;->val$isPower:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/yftech/settings/avdc/AvdcActivity$1$1;->this$1:Lcom/yftech/settings/avdc/AvdcActivity$1;

    iget-object v0, v0, Lcom/yftech/settings/avdc/AvdcActivity$1;->this$0:Lcom/yftech/settings/avdc/AvdcActivity;

    iget-boolean p0, p0, Lcom/yftech/settings/avdc/AvdcActivity$1$1;->val$isPower:Z

    invoke-static {v0, p0}, Lcom/yftech/settings/avdc/AvdcActivity;->access$000(Lcom/yftech/settings/avdc/AvdcActivity;Z)V

    return-void
.end method
