.class Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog$3;
.super Ljava/lang/Object;
.source "DrivingModeTrackDialDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;


# direct methods
.method constructor <init>(Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog$3;->this$0:Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 174
    iget-object p0, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog$3;->this$0:Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;

    invoke-static {p0}, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->access$1500(Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;)Landroid/widget/ImageView;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
