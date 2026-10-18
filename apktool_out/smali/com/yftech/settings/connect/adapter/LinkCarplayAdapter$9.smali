.class Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$9;
.super Ljava/lang/Object;
.source "LinkCarplayAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;->showCarplayOpenApDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;


# direct methods
.method constructor <init>(Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$9;->this$0:Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$9;->this$0:Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;->access$1302(Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;Lcom/yftech/settings/widget/dialog/CommonDialog;)Lcom/yftech/settings/widget/dialog/CommonDialog;

    return-void
.end method
