.class Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog$1$4;
.super Ljava/lang/Object;
.source "DrivingModeTrackDialDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog$1;->onTemperatureOfIntakeAirChanged(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog$1;

.field final synthetic val$value:F


# direct methods
.method constructor <init>(Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog$1;F)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog$1$4;->this$1:Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog$1;

    iput p2, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog$1$4;->val$value:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog$1$4;->this$1:Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog$1;

    iget-object v0, v0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog$1;->this$0:Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;

    invoke-static {v0}, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->access$800(Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;)Lcom/yftech/settings/widget/NumImageView;

    move-result-object v0

    iget v1, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog$1$4;->val$value:F

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/NumImageView;->setNumber(F)V

    .line 107
    iget-object v0, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog$1$4;->this$1:Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog$1;

    iget-object v0, v0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog$1;->this$0:Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;

    invoke-static {v0}, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->access$900(Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;)Landroidx/appcompat/widget/AppCompatSeekBar;

    move-result-object v0

    iget p0, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog$1$4;->val$value:F

    float-to-int p0, p0

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/AppCompatSeekBar;->setProgress(I)V

    return-void
.end method
