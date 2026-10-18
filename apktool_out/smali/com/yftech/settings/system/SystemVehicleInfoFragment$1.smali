.class Lcom/yftech/settings/system/SystemVehicleInfoFragment$1;
.super Ljava/lang/Object;
.source "SystemVehicleInfoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/settings/system/SystemVehicleInfoFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/system/SystemVehicleInfoFragment;


# direct methods
.method constructor <init>(Lcom/yftech/settings/system/SystemVehicleInfoFragment;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/yftech/settings/system/SystemVehicleInfoFragment$1;->this$0:Lcom/yftech/settings/system/SystemVehicleInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 82
    iget-object p1, p0, Lcom/yftech/settings/system/SystemVehicleInfoFragment$1;->this$0:Lcom/yftech/settings/system/SystemVehicleInfoFragment;

    invoke-static {p1}, Lcom/yftech/settings/system/SystemVehicleInfoFragment;->access$008(Lcom/yftech/settings/system/SystemVehicleInfoFragment;)I

    .line 83
    iget-object p1, p0, Lcom/yftech/settings/system/SystemVehicleInfoFragment$1;->this$0:Lcom/yftech/settings/system/SystemVehicleInfoFragment;

    invoke-static {p1}, Lcom/yftech/settings/system/SystemVehicleInfoFragment;->access$000(Lcom/yftech/settings/system/SystemVehicleInfoFragment;)I

    move-result p1

    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    const-string p1, "SystemVehicleInfoFragment"

    const-string v0, "setOnClickListener() tvSystemVersion log"

    .line 84
    invoke-static {p1, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object p1, p0, Lcom/yftech/settings/system/SystemVehicleInfoFragment$1;->this$0:Lcom/yftech/settings/system/SystemVehicleInfoFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/yftech/settings/system/SystemVehicleInfoFragment;->access$002(Lcom/yftech/settings/system/SystemVehicleInfoFragment;I)I

    .line 86
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.yftech.intent.action.engineeringmode.log"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.yftech.engineeringmode"

    .line 87
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    iget-object p0, p0, Lcom/yftech/settings/system/SystemVehicleInfoFragment$1;->this$0:Lcom/yftech/settings/system/SystemVehicleInfoFragment;

    invoke-virtual {p0}, Lcom/yftech/settings/system/SystemVehicleInfoFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
