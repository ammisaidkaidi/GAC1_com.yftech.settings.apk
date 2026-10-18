.class Lcom/yftech/settings/sound/SoundSystemFragment$4;
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
        "Lcom/yftech/settings/manager/CarPartsManager$Function;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/sound/SoundSystemFragment;


# direct methods
.method constructor <init>(Lcom/yftech/settings/sound/SoundSystemFragment;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/yftech/settings/sound/SoundSystemFragment$4;->this$0:Lcom/yftech/settings/sound/SoundSystemFragment;

    invoke-direct {p0}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnableChanged(Lcom/yftech/settings/manager/CarPartsManager$Function;Z)V
    .locals 0

    .line 150
    invoke-super {p0, p1, p2}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;->onEnableChanged(Ljava/lang/Object;Z)V

    .line 151
    iget-object p0, p0, Lcom/yftech/settings/sound/SoundSystemFragment$4;->this$0:Lcom/yftech/settings/sound/SoundSystemFragment;

    invoke-static {p0, p1, p2}, Lcom/yftech/settings/sound/SoundSystemFragment;->access$700(Lcom/yftech/settings/sound/SoundSystemFragment;Lcom/yftech/settings/manager/CarPartsManager$Function;Z)V

    return-void
.end method

.method public bridge synthetic onEnableChanged(Ljava/lang/Object;Z)V
    .locals 0

    .line 147
    check-cast p1, Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/settings/sound/SoundSystemFragment$4;->onEnableChanged(Lcom/yftech/settings/manager/CarPartsManager$Function;Z)V

    return-void
.end method

.method public onTimeout()V
    .locals 0

    .line 156
    invoke-super {p0}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;->onTimeout()V

    .line 157
    iget-object p0, p0, Lcom/yftech/settings/sound/SoundSystemFragment$4;->this$0:Lcom/yftech/settings/sound/SoundSystemFragment;

    invoke-static {p0}, Lcom/yftech/settings/sound/SoundSystemFragment;->access$800(Lcom/yftech/settings/sound/SoundSystemFragment;)V

    return-void
.end method
