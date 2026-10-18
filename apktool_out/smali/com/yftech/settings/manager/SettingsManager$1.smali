.class Lcom/yftech/settings/manager/SettingsManager$1;
.super Lcom/yftech/car/screen/CarScreenManager$CarScreenCallback;
.source "SettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/manager/SettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/manager/SettingsManager;


# direct methods
.method constructor <init>(Lcom/yftech/settings/manager/SettingsManager;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/yftech/settings/manager/SettingsManager$1;->this$0:Lcom/yftech/settings/manager/SettingsManager;

    invoke-direct {p0}, Lcom/yftech/car/screen/CarScreenManager$CarScreenCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangedScreenBrightness(ZI)V
    .locals 3

    .line 80
    invoke-super {p0, p1, p2}, Lcom/yftech/car/screen/CarScreenManager$CarScreenCallback;->onChangedScreenBrightness(ZI)V

    const-string v0, "SettingsManager"

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChangedScreenBrightness open:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", brightness:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object p0, p0, Lcom/yftech/settings/manager/SettingsManager$1;->this$0:Lcom/yftech/settings/manager/SettingsManager;

    sget-object p1, Lcom/yftech/settings/manager/SettingsManager$Function;->SCREEN_BRIGHTNESS_VALUE:Lcom/yftech/settings/manager/SettingsManager$Function;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yftech/settings/manager/SettingsManager;->notifyOnValueChanged(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
