.class Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog$1$3;
.super Ljava/lang/Object;
.source "DrivingModeTrackDialDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog$1;->onPressureOfOilChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog$1;

.field final synthetic val$value:I


# direct methods
.method constructor <init>(Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog$1;I)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog$1$3;->this$1:Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog$1;

    iput p2, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog$1$3;->val$value:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog$1$3;->this$1:Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog$1;

    iget-object v0, v0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog$1;->this$0:Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;

    invoke-static {v0}, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->access$600(Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;)Lcom/yftech/settings/widget/NumImageView;

    move-result-object v0

    iget v1, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog$1$3;->val$value:I

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/NumImageView;->setNumber(I)V

    .line 94
    iget-object v0, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog$1$3;->this$1:Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog$1;

    iget-object v0, v0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog$1;->this$0:Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;

    invoke-static {v0}, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->access$700(Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;)Landroidx/appcompat/widget/AppCompatSeekBar;

    move-result-object v0

    iget p0, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog$1$3;->val$value:I

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/AppCompatSeekBar;->setProgress(I)V

    return-void
.end method
