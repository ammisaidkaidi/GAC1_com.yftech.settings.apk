.class Lcom/yftech/settings/avdc/ModeSettingsFragment$2;
.super Lcom/yftech/settings/manager/BaseManager$ModelCallback;
.source "ModeSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/avdc/ModeSettingsFragment;
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
.field final synthetic this$0:Lcom/yftech/settings/avdc/ModeSettingsFragment;


# direct methods
.method constructor <init>(Lcom/yftech/settings/avdc/ModeSettingsFragment;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment$2;->this$0:Lcom/yftech/settings/avdc/ModeSettingsFragment;

    invoke-direct {p0}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onOptionChanged(Lcom/yftech/settings/manager/CarPartsManager$Function;I)V
    .locals 1

    .line 136
    invoke-super {p0, p1, p2}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;->onOptionChanged(Ljava/lang/Object;I)V

    .line 137
    iget-object v0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment$2;->this$0:Lcom/yftech/settings/avdc/ModeSettingsFragment;

    invoke-static {v0, p1, p2}, Lcom/yftech/settings/avdc/ModeSettingsFragment;->access$700(Lcom/yftech/settings/avdc/ModeSettingsFragment;Lcom/yftech/settings/manager/CarPartsManager$Function;I)V

    .line 138
    iget-object p0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment$2;->this$0:Lcom/yftech/settings/avdc/ModeSettingsFragment;

    invoke-static {p0, p1, p2}, Lcom/yftech/settings/avdc/ModeSettingsFragment;->access$800(Lcom/yftech/settings/avdc/ModeSettingsFragment;Lcom/yftech/settings/manager/CarPartsManager$Function;I)V

    return-void
.end method

.method public bridge synthetic onOptionChanged(Ljava/lang/Object;I)V
    .locals 0

    .line 133
    check-cast p1, Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/settings/avdc/ModeSettingsFragment$2;->onOptionChanged(Lcom/yftech/settings/manager/CarPartsManager$Function;I)V

    return-void
.end method

.method public onTimeout()V
    .locals 1

    .line 143
    invoke-super {p0}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;->onTimeout()V

    .line 144
    iget-object v0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment$2;->this$0:Lcom/yftech/settings/avdc/ModeSettingsFragment;

    invoke-static {v0}, Lcom/yftech/settings/avdc/ModeSettingsFragment;->access$900(Lcom/yftech/settings/avdc/ModeSettingsFragment;)V

    .line 145
    iget-object v0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment$2;->this$0:Lcom/yftech/settings/avdc/ModeSettingsFragment;

    invoke-static {v0}, Lcom/yftech/settings/avdc/ModeSettingsFragment;->access$1100(Lcom/yftech/settings/avdc/ModeSettingsFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/settings/avdc/ModeSettingsFragment$2;->this$0:Lcom/yftech/settings/avdc/ModeSettingsFragment;

    invoke-static {p0}, Lcom/yftech/settings/avdc/ModeSettingsFragment;->access$1000(Lcom/yftech/settings/avdc/ModeSettingsFragment;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
