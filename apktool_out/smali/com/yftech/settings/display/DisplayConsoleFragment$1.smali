.class Lcom/yftech/settings/display/DisplayConsoleFragment$1;
.super Lcom/yftech/settings/manager/BaseManager$ModelCallback;
.source "DisplayConsoleFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/display/DisplayConsoleFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yftech/settings/manager/BaseManager$ModelCallback<",
        "Lcom/yftech/settings/manager/SettingsManager$Function;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/display/DisplayConsoleFragment;


# direct methods
.method constructor <init>(Lcom/yftech/settings/display/DisplayConsoleFragment;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/yftech/settings/display/DisplayConsoleFragment$1;->this$0:Lcom/yftech/settings/display/DisplayConsoleFragment;

    invoke-direct {p0}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onOptionChanged(Lcom/yftech/settings/manager/SettingsManager$Function;I)V
    .locals 0

    .line 69
    invoke-super {p0, p1, p2}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;->onOptionChanged(Ljava/lang/Object;I)V

    .line 70
    iget-object p0, p0, Lcom/yftech/settings/display/DisplayConsoleFragment$1;->this$0:Lcom/yftech/settings/display/DisplayConsoleFragment;

    invoke-static {p0, p1, p2}, Lcom/yftech/settings/display/DisplayConsoleFragment;->access$000(Lcom/yftech/settings/display/DisplayConsoleFragment;Lcom/yftech/settings/manager/SettingsManager$Function;I)V

    return-void
.end method

.method public bridge synthetic onOptionChanged(Ljava/lang/Object;I)V
    .locals 0

    .line 65
    check-cast p1, Lcom/yftech/settings/manager/SettingsManager$Function;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/settings/display/DisplayConsoleFragment$1;->onOptionChanged(Lcom/yftech/settings/manager/SettingsManager$Function;I)V

    return-void
.end method

.method public onValueChanged(Lcom/yftech/settings/manager/SettingsManager$Function;Ljava/lang/Object;)V
    .locals 0

    .line 75
    invoke-super {p0, p1, p2}, Lcom/yftech/settings/manager/BaseManager$ModelCallback;->onValueChanged(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 76
    iget-object p0, p0, Lcom/yftech/settings/display/DisplayConsoleFragment$1;->this$0:Lcom/yftech/settings/display/DisplayConsoleFragment;

    invoke-static {p0, p1, p2}, Lcom/yftech/settings/display/DisplayConsoleFragment;->access$100(Lcom/yftech/settings/display/DisplayConsoleFragment;Lcom/yftech/settings/manager/SettingsManager$Function;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onValueChanged(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 65
    check-cast p1, Lcom/yftech/settings/manager/SettingsManager$Function;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/settings/display/DisplayConsoleFragment$1;->onValueChanged(Lcom/yftech/settings/manager/SettingsManager$Function;Ljava/lang/Object;)V

    return-void
.end method
