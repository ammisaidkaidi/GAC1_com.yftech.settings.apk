.class Lcom/yftech/settings/voice/VoiceSettingsFragment$1;
.super Lcom/yftech/settings/manager/BaseManager$ModelCallback;
.source "VoiceSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/voice/VoiceSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yftech/settings/manager/BaseManager$ModelCallback<",
        "Lcom/yftech/settings/manager/VoiceSettingsManager$Function;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/voice/VoiceSettingsFragment;


# direct methods
.method constructor <init>(Lcom/yftech/settings/voice/VoiceSettingsFragment;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/yftech/settings/voice/VoiceSettingsFragment$1;->this$0:Lcom/yftech/settings/voice/VoiceSettingsFragment;

    invoke-direct {p0}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnableChanged(Lcom/yftech/settings/manager/VoiceSettingsManager$Function;Z)V
    .locals 0

    .line 33
    invoke-super {p0, p1, p2}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;->onEnableChanged(Ljava/lang/Object;Z)V

    .line 34
    iget-object p0, p0, Lcom/yftech/settings/voice/VoiceSettingsFragment$1;->this$0:Lcom/yftech/settings/voice/VoiceSettingsFragment;

    invoke-static {p0, p1, p2}, Lcom/yftech/settings/voice/VoiceSettingsFragment;->access$000(Lcom/yftech/settings/voice/VoiceSettingsFragment;Lcom/yftech/settings/manager/VoiceSettingsManager$Function;Z)V

    return-void
.end method

.method public bridge synthetic onEnableChanged(Ljava/lang/Object;Z)V
    .locals 0

    .line 30
    check-cast p1, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/settings/voice/VoiceSettingsFragment$1;->onEnableChanged(Lcom/yftech/settings/manager/VoiceSettingsManager$Function;Z)V

    return-void
.end method

.method public onOptionChanged(Lcom/yftech/settings/manager/VoiceSettingsManager$Function;I)V
    .locals 0

    .line 39
    invoke-super {p0, p1, p2}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;->onOptionChanged(Ljava/lang/Object;I)V

    .line 40
    iget-object p0, p0, Lcom/yftech/settings/voice/VoiceSettingsFragment$1;->this$0:Lcom/yftech/settings/voice/VoiceSettingsFragment;

    invoke-static {p0, p1, p2}, Lcom/yftech/settings/voice/VoiceSettingsFragment;->access$100(Lcom/yftech/settings/voice/VoiceSettingsFragment;Lcom/yftech/settings/manager/VoiceSettingsManager$Function;I)V

    return-void
.end method

.method public bridge synthetic onOptionChanged(Ljava/lang/Object;I)V
    .locals 0

    .line 30
    check-cast p1, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/settings/voice/VoiceSettingsFragment$1;->onOptionChanged(Lcom/yftech/settings/manager/VoiceSettingsManager$Function;I)V

    return-void
.end method

.method public onValueChanged(Lcom/yftech/settings/manager/VoiceSettingsManager$Function;Ljava/lang/Object;)V
    .locals 0

    .line 45
    invoke-super {p0, p1, p2}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;->onValueChanged(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 46
    iget-object p0, p0, Lcom/yftech/settings/voice/VoiceSettingsFragment$1;->this$0:Lcom/yftech/settings/voice/VoiceSettingsFragment;

    invoke-static {p0, p1, p2}, Lcom/yftech/settings/voice/VoiceSettingsFragment;->access$200(Lcom/yftech/settings/voice/VoiceSettingsFragment;Lcom/yftech/settings/manager/VoiceSettingsManager$Function;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onValueChanged(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p1, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/settings/voice/VoiceSettingsFragment$1;->onValueChanged(Lcom/yftech/settings/manager/VoiceSettingsManager$Function;Ljava/lang/Object;)V

    return-void
.end method
