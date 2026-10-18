.class public Lcom/yftech/settings/widget/dialog/KeyboardNumDialog;
.super Lcom/yftech/settings/widget/dialog/CommonDialog;
.source "KeyboardNumDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/yftech/settings/widget/dialog/CommonDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 15
    invoke-super {p0, p1}, Lcom/yftech/settings/widget/dialog/CommonDialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0a0025

    .line 16
    invoke-virtual {p0, p1}, Lcom/yftech/settings/widget/dialog/KeyboardNumDialog;->setContentView(I)V

    return-void
.end method
