.class Lcom/yftech/settings/avdc/DrivingModeFragment$4;
.super Ljava/lang/Object;
.source "DrivingModeFragment.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/settings/avdc/DrivingModeFragment;->play(Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;)V
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

    .line 518
    iput-object p1, p0, Lcom/yftech/settings/avdc/DrivingModeFragment$4;->this$0:Lcom/yftech/settings/avdc/DrivingModeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 521
    new-instance v0, Lcom/yftech/settings/avdc/DrivingModeFragment$4$1;

    invoke-direct {v0, p0}, Lcom/yftech/settings/avdc/DrivingModeFragment$4$1;-><init>(Lcom/yftech/settings/avdc/DrivingModeFragment$4;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    return-void
.end method
