.class Lcom/yftech/settings/aid/DriveAidsParkingFragment$1;
.super Lcom/yftech/settings/manager/BaseManager$ModelCallback;
.source "DriveAidsParkingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/aid/DriveAidsParkingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yftech/settings/manager/BaseManager$ModelCallback<",
        "Lcom/yftech/settings/manager/CarParkingManager$Function;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/aid/DriveAidsParkingFragment;


# direct methods
.method constructor <init>(Lcom/yftech/settings/aid/DriveAidsParkingFragment;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/yftech/settings/aid/DriveAidsParkingFragment$1;->this$0:Lcom/yftech/settings/aid/DriveAidsParkingFragment;

    invoke-direct {p0}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnableChanged(Lcom/yftech/settings/manager/CarParkingManager$Function;Z)V
    .locals 0

    .line 27
    invoke-super {p0, p1, p2}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;->onEnableChanged(Ljava/lang/Object;Z)V

    .line 28
    iget-object p0, p0, Lcom/yftech/settings/aid/DriveAidsParkingFragment$1;->this$0:Lcom/yftech/settings/aid/DriveAidsParkingFragment;

    invoke-static {p0, p1, p2}, Lcom/yftech/settings/aid/DriveAidsParkingFragment;->access$000(Lcom/yftech/settings/aid/DriveAidsParkingFragment;Lcom/yftech/settings/manager/CarParkingManager$Function;Z)V

    return-void
.end method

.method public bridge synthetic onEnableChanged(Ljava/lang/Object;Z)V
    .locals 0

    .line 24
    check-cast p1, Lcom/yftech/settings/manager/CarParkingManager$Function;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/settings/aid/DriveAidsParkingFragment$1;->onEnableChanged(Lcom/yftech/settings/manager/CarParkingManager$Function;Z)V

    return-void
.end method

.method public onTimeout()V
    .locals 0

    .line 33
    invoke-super {p0}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;->onTimeout()V

    .line 34
    iget-object p0, p0, Lcom/yftech/settings/aid/DriveAidsParkingFragment$1;->this$0:Lcom/yftech/settings/aid/DriveAidsParkingFragment;

    invoke-static {p0}, Lcom/yftech/settings/aid/DriveAidsParkingFragment;->access$100(Lcom/yftech/settings/aid/DriveAidsParkingFragment;)V

    return-void
.end method
