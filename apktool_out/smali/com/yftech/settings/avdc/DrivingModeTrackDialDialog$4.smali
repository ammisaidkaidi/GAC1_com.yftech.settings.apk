.class Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog$4;
.super Ljava/lang/Object;
.source "DrivingModeTrackDialDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 226
    iput-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog$4;->this$0:Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 229
    iget-object p0, p0, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog$4;->this$0:Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;

    invoke-virtual {p0}, Lcom/yftech/settings/avdc/DrivingModeTrackDialDialog;->dismiss()V

    return-void
.end method
