.class Lcom/yftech/settings/sound/SoundInteractionFragment$1;
.super Lcom/yftech/settings/manager/BaseManager$ModelCallback;
.source "SoundInteractionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/sound/SoundInteractionFragment;
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
.field final synthetic this$0:Lcom/yftech/settings/sound/SoundInteractionFragment;


# direct methods
.method constructor <init>(Lcom/yftech/settings/sound/SoundInteractionFragment;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/yftech/settings/sound/SoundInteractionFragment$1;->this$0:Lcom/yftech/settings/sound/SoundInteractionFragment;

    invoke-direct {p0}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnableChanged(Lcom/yftech/settings/manager/SoundManager$Function;Z)V
    .locals 0

    .line 30
    invoke-super {p0, p1, p2}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;->onEnableChanged(Ljava/lang/Object;Z)V

    .line 31
    iget-object p0, p0, Lcom/yftech/settings/sound/SoundInteractionFragment$1;->this$0:Lcom/yftech/settings/sound/SoundInteractionFragment;

    invoke-static {p0, p1, p2}, Lcom/yftech/settings/sound/SoundInteractionFragment;->access$000(Lcom/yftech/settings/sound/SoundInteractionFragment;Lcom/yftech/settings/manager/SoundManager$Function;Z)V

    return-void
.end method

.method public bridge synthetic onEnableChanged(Ljava/lang/Object;Z)V
    .locals 0

    .line 27
    check-cast p1, Lcom/yftech/settings/manager/SoundManager$Function;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/settings/sound/SoundInteractionFragment$1;->onEnableChanged(Lcom/yftech/settings/manager/SoundManager$Function;Z)V

    return-void
.end method

.method public onOptionChanged(Lcom/yftech/settings/manager/SoundManager$Function;I)V
    .locals 0

    .line 36
    invoke-super {p0, p1, p2}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;->onOptionChanged(Ljava/lang/Object;I)V

    .line 37
    iget-object p0, p0, Lcom/yftech/settings/sound/SoundInteractionFragment$1;->this$0:Lcom/yftech/settings/sound/SoundInteractionFragment;

    invoke-static {p0, p1, p2}, Lcom/yftech/settings/sound/SoundInteractionFragment;->access$100(Lcom/yftech/settings/sound/SoundInteractionFragment;Lcom/yftech/settings/manager/SoundManager$Function;I)V

    return-void
.end method

.method public bridge synthetic onOptionChanged(Ljava/lang/Object;I)V
    .locals 0

    .line 27
    check-cast p1, Lcom/yftech/settings/manager/SoundManager$Function;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/settings/sound/SoundInteractionFragment$1;->onOptionChanged(Lcom/yftech/settings/manager/SoundManager$Function;I)V

    return-void
.end method
