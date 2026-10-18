.class public Lcom/yftech/settings/widget/dialog/PriorityCommonDialog;
.super Lcom/yftech/settings/widget/dialog/CommonDialog;
.source "PriorityCommonDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/yftech/settings/widget/dialog/CommonDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 16
    invoke-super {p0, p1}, Lcom/yftech/settings/widget/dialog/CommonDialog;->onCreate(Landroid/os/Bundle;)V

    .line 17
    invoke-virtual {p0}, Lcom/yftech/settings/widget/dialog/PriorityCommonDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 p1, 0x807

    .line 19
    invoke-virtual {p0, p1}, Landroid/view/Window;->setType(I)V

    .line 20
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/16 v0, 0x8

    .line 21
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 22
    invoke-virtual {p0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method
