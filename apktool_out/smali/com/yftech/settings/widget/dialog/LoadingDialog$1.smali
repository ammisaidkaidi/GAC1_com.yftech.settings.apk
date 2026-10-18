.class Lcom/yftech/settings/widget/dialog/LoadingDialog$1;
.super Ljava/lang/Object;
.source "LoadingDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/settings/widget/dialog/LoadingDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/widget/dialog/LoadingDialog;


# direct methods
.method constructor <init>(Lcom/yftech/settings/widget/dialog/LoadingDialog;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/yftech/settings/widget/dialog/LoadingDialog$1;->this$0:Lcom/yftech/settings/widget/dialog/LoadingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/yftech/settings/widget/dialog/LoadingDialog$1;->this$0:Lcom/yftech/settings/widget/dialog/LoadingDialog;

    invoke-virtual {p0}, Lcom/yftech/settings/widget/dialog/LoadingDialog;->dismiss()V

    return-void
.end method
