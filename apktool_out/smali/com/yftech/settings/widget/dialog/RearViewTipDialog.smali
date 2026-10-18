.class public Lcom/yftech/settings/widget/dialog/RearViewTipDialog;
.super Lcom/yftech/settings/widget/dialog/BaseDialog;
.source "RearViewTipDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/settings/widget/dialog/RearViewTipDialog$OnBtnClickListener;
    }
.end annotation


# instance fields
.field private btn_cancel:Landroid/widget/Button;

.field private btn_sure:Landroid/widget/Button;

.field private mIsCustomDismiss:Z

.field private mOnBtnClickListener:Lcom/yftech/settings/widget/dialog/RearViewTipDialog$OnBtnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yftech/settings/widget/dialog/RearViewTipDialog$OnBtnClickListener;)V
    .locals 1

    const v0, 0x7f0e0176

    .line 62
    invoke-direct {p0, p1, v0}, Lcom/yftech/settings/widget/dialog/BaseDialog;-><init>(Landroid/content/Context;I)V

    .line 63
    iput-object p2, p0, Lcom/yftech/settings/widget/dialog/RearViewTipDialog;->mOnBtnClickListener:Lcom/yftech/settings/widget/dialog/RearViewTipDialog$OnBtnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/settings/widget/dialog/RearViewTipDialog;)Lcom/yftech/settings/widget/dialog/RearViewTipDialog$OnBtnClickListener;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/yftech/settings/widget/dialog/RearViewTipDialog;->mOnBtnClickListener:Lcom/yftech/settings/widget/dialog/RearViewTipDialog$OnBtnClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/yftech/settings/widget/dialog/RearViewTipDialog;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/yftech/settings/widget/dialog/RearViewTipDialog;->mIsCustomDismiss:Z

    return p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 68
    invoke-super {p0, p1}, Lcom/yftech/settings/widget/dialog/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0a0027

    .line 69
    invoke-virtual {p0, p1}, Lcom/yftech/settings/widget/dialog/RearViewTipDialog;->setContentView(I)V

    const p1, 0x7f08006c

    .line 71
    invoke-virtual {p0, p1}, Lcom/yftech/settings/widget/dialog/RearViewTipDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/yftech/settings/widget/dialog/RearViewTipDialog;->btn_sure:Landroid/widget/Button;

    const p1, 0x7f080063

    .line 72
    invoke-virtual {p0, p1}, Lcom/yftech/settings/widget/dialog/RearViewTipDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/yftech/settings/widget/dialog/RearViewTipDialog;->btn_cancel:Landroid/widget/Button;

    .line 74
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/RearViewTipDialog;->btn_sure:Landroid/widget/Button;

    new-instance v0, Lcom/yftech/settings/widget/dialog/RearViewTipDialog$1;

    invoke-direct {v0, p0}, Lcom/yftech/settings/widget/dialog/RearViewTipDialog$1;-><init>(Lcom/yftech/settings/widget/dialog/RearViewTipDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/RearViewTipDialog;->btn_cancel:Landroid/widget/Button;

    new-instance v0, Lcom/yftech/settings/widget/dialog/RearViewTipDialog$2;

    invoke-direct {v0, p0}, Lcom/yftech/settings/widget/dialog/RearViewTipDialog$2;-><init>(Lcom/yftech/settings/widget/dialog/RearViewTipDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setCustomDismiss(Z)V
    .locals 0

    .line 100
    iput-boolean p1, p0, Lcom/yftech/settings/widget/dialog/RearViewTipDialog;->mIsCustomDismiss:Z

    return-void
.end method
