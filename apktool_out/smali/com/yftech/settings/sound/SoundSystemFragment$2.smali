.class Lcom/yftech/settings/sound/SoundSystemFragment$2;
.super Landroid/os/Handler;
.source "SoundSystemFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/sound/SoundSystemFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/sound/SoundSystemFragment;


# direct methods
.method constructor <init>(Lcom/yftech/settings/sound/SoundSystemFragment;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/yftech/settings/sound/SoundSystemFragment$2;->this$0:Lcom/yftech/settings/sound/SoundSystemFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 115
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 116
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 117
    invoke-static {}, Lcom/yftech/settings/manager/SoundManager;->getInstance()Lcom/yftech/settings/manager/SoundManager;

    move-result-object p1

    sget-object v1, Lcom/yftech/settings/manager/SoundManager$Function;->SOUND_DELAY_VALUE:Lcom/yftech/settings/manager/SoundManager$Function;

    invoke-virtual {p1, v1}, Lcom/yftech/settings/manager/SoundManager;->getValue(Lcom/yftech/settings/manager/SoundManager$Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    const-string v1, "SoundSystemFragment"

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage() MSG_UPDATE_STAGE_UI x="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " y="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, p1, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object p0, p0, Lcom/yftech/settings/sound/SoundSystemFragment$2;->this$0:Lcom/yftech/settings/sound/SoundSystemFragment;

    sget-object v0, Lcom/yftech/settings/manager/SoundManager$Function;->SOUND_DELAY_VALUE:Lcom/yftech/settings/manager/SoundManager$Function;

    invoke-static {p0, v0, p1}, Lcom/yftech/settings/sound/SoundSystemFragment;->access$300(Lcom/yftech/settings/sound/SoundSystemFragment;Lcom/yftech/settings/manager/SoundManager$Function;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
