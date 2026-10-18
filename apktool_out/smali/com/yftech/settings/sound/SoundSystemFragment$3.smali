.class Lcom/yftech/settings/sound/SoundSystemFragment$3;
.super Lcom/yftech/settings/manager/BaseManager$ModelCallback;
.source "SoundSystemFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/sound/SoundSystemFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yftech/settings/manager/BaseManager$ModelCallback<",
        "Lcom/yftech/settings/manager/SoundManager$Function;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/sound/SoundSystemFragment;


# direct methods
.method constructor <init>(Lcom/yftech/settings/sound/SoundSystemFragment;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/yftech/settings/sound/SoundSystemFragment$3;->this$0:Lcom/yftech/settings/sound/SoundSystemFragment;

    invoke-direct {p0}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnableChanged(Lcom/yftech/settings/manager/SoundManager$Function;Z)V
    .locals 1

    .line 127
    invoke-super {p0, p1, p2}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;->onEnableChanged(Ljava/lang/Object;Z)V

    .line 128
    iget-object v0, p0, Lcom/yftech/settings/sound/SoundSystemFragment$3;->this$0:Lcom/yftech/settings/sound/SoundSystemFragment;

    invoke-static {v0, p1, p2}, Lcom/yftech/settings/sound/SoundSystemFragment;->access$400(Lcom/yftech/settings/sound/SoundSystemFragment;Lcom/yftech/settings/manager/SoundManager$Function;Z)V

    .line 129
    sget-object v0, Lcom/yftech/settings/manager/SoundManager$Function;->DTS_SOUND_POSITION_OPTION:Lcom/yftech/settings/manager/SoundManager$Function;

    if-ne v0, p1, :cond_0

    .line 130
    iget-object p0, p0, Lcom/yftech/settings/sound/SoundSystemFragment$3;->this$0:Lcom/yftech/settings/sound/SoundSystemFragment;

    invoke-static {p0, p1, p2}, Lcom/yftech/settings/sound/SoundSystemFragment;->access$500(Lcom/yftech/settings/sound/SoundSystemFragment;Lcom/yftech/settings/manager/SoundManager$Function;Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onEnableChanged(Ljava/lang/Object;Z)V
    .locals 0

    .line 124
    check-cast p1, Lcom/yftech/settings/manager/SoundManager$Function;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/settings/sound/SoundSystemFragment$3;->onEnableChanged(Lcom/yftech/settings/manager/SoundManager$Function;Z)V

    return-void
.end method

.method public onOptionChanged(Lcom/yftech/settings/manager/SoundManager$Function;I)V
    .locals 0

    .line 136
    invoke-super {p0, p1, p2}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;->onOptionChanged(Ljava/lang/Object;I)V

    .line 137
    iget-object p0, p0, Lcom/yftech/settings/sound/SoundSystemFragment$3;->this$0:Lcom/yftech/settings/sound/SoundSystemFragment;

    invoke-static {p0, p1, p2}, Lcom/yftech/settings/sound/SoundSystemFragment;->access$600(Lcom/yftech/settings/sound/SoundSystemFragment;Lcom/yftech/settings/manager/SoundManager$Function;I)V

    return-void
.end method

.method public bridge synthetic onOptionChanged(Ljava/lang/Object;I)V
    .locals 0

    .line 124
    check-cast p1, Lcom/yftech/settings/manager/SoundManager$Function;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/settings/sound/SoundSystemFragment$3;->onOptionChanged(Lcom/yftech/settings/manager/SoundManager$Function;I)V

    return-void
.end method

.method public onValueChanged(Lcom/yftech/settings/manager/SoundManager$Function;Ljava/lang/Object;)V
    .locals 0

    .line 142
    invoke-super {p0, p1, p2}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;->onValueChanged(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 143
    iget-object p0, p0, Lcom/yftech/settings/sound/SoundSystemFragment$3;->this$0:Lcom/yftech/settings/sound/SoundSystemFragment;

    invoke-static {p0, p1, p2}, Lcom/yftech/settings/sound/SoundSystemFragment;->access$300(Lcom/yftech/settings/sound/SoundSystemFragment;Lcom/yftech/settings/manager/SoundManager$Function;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onValueChanged(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 124
    check-cast p1, Lcom/yftech/settings/manager/SoundManager$Function;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/settings/sound/SoundSystemFragment$3;->onValueChanged(Lcom/yftech/settings/manager/SoundManager$Function;Ljava/lang/Object;)V

    return-void
.end method
