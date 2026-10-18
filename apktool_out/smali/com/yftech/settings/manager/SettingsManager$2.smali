.class Lcom/yftech/settings/manager/SettingsManager$2;
.super Lcom/yftech/vehicle/sdk/CarMiscManager$CarMiscListener;
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

    .line 166
    iput-object p1, p0, Lcom/yftech/settings/manager/SettingsManager$2;->this$0:Lcom/yftech/settings/manager/SettingsManager;

    invoke-direct {p0}, Lcom/yftech/vehicle/sdk/CarMiscManager$CarMiscListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFactoryModeStateChanged(I)V
    .locals 3

    .line 169
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarMiscManager$CarMiscListener;->onFactoryModeStateChanged(I)V

    const-string v0, "SettingsManager"

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFactoryModeStateChanged() state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 172
    iget-object p0, p0, Lcom/yftech/settings/manager/SettingsManager$2;->this$0:Lcom/yftech/settings/manager/SettingsManager;

    invoke-static {p0}, Lcom/yftech/settings/manager/SettingsManager;->access$000(Lcom/yftech/settings/manager/SettingsManager;)V

    :cond_0
    return-void
.end method
