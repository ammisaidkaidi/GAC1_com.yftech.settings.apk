.class Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$5;
.super Ljava/lang/Object;
.source "LinkHicarAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;->showIgnoreDialog(Lcom/yftech/car/phonelink/CarLinkDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;


# direct methods
.method constructor <init>(Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$5;->this$0:Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$5;->this$0:Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;->access$1402(Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;Lcom/yftech/settings/widget/dialog/CommonDialog;)Lcom/yftech/settings/widget/dialog/CommonDialog;

    return-void
.end method
