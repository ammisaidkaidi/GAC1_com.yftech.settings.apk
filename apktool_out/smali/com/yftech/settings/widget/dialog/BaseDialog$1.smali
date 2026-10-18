.class Lcom/yftech/settings/widget/dialog/BaseDialog$1;
.super Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;
.source "BaseDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/widget/dialog/BaseDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/widget/dialog/BaseDialog;


# direct methods
.method constructor <init>(Lcom/yftech/settings/widget/dialog/BaseDialog;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/yftech/settings/widget/dialog/BaseDialog$1;->this$0:Lcom/yftech/settings/widget/dialog/BaseDialog;

    invoke-direct {p0}, Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothPhoneCallStateChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/bluetooth/model/PhoneCall;",
            ">;)V"
        }
    .end annotation

    .line 82
    invoke-super {p0, p1}, Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;->onBluetoothPhoneCallStateChanged(Ljava/util/List;)V

    if-eqz p1, :cond_1

    .line 83
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 84
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/car/bluetooth/model/PhoneCall;

    invoke-virtual {p1}, Lcom/yftech/car/bluetooth/model/PhoneCall;->getCallState()I

    move-result p1

    const-string v0, "BaseDialog"

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBluetoothPhoneCallStateChanged() callState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 88
    :cond_0
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/BaseDialog$1;->this$0:Lcom/yftech/settings/widget/dialog/BaseDialog;

    invoke-virtual {p1}, Lcom/yftech/settings/widget/dialog/BaseDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "BaseDialog"

    const-string v0, "onBluetoothPhoneCallStateChanged() dismiss"

    .line 89
    invoke-static {p1, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object p0, p0, Lcom/yftech/settings/widget/dialog/BaseDialog$1;->this$0:Lcom/yftech/settings/widget/dialog/BaseDialog;

    invoke-virtual {p0}, Lcom/yftech/settings/widget/dialog/BaseDialog;->dismiss()V

    goto :goto_0

    :cond_1
    const-string p0, "BaseDialog"

    const-string p1, "onBluetoothPhoneCallStateChanged() phoneCalls is empty"

    .line 94
    invoke-static {p0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
