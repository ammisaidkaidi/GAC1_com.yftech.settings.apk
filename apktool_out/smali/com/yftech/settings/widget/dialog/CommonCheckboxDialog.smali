.class public Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;
.super Lcom/yftech/settings/widget/dialog/BaseDialog;
.source "CommonCheckboxDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog$OnBtnClickListener;
    }
.end annotation


# instance fields
.field private btn_cancel:Landroid/widget/Button;

.field private btn_sure:Landroid/widget/Button;

.field private checkBox:Landroid/widget/CheckBox;

.field private divider_vertical:Landroid/view/View;

.field private mIsCustomDismiss:Z

.field private mOnBtnClickListener:Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog$OnBtnClickListener;

.field private tv_content:Landroid/widget/TextView;

.field private tv_title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f0e0176

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/yftech/settings/widget/dialog/BaseDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;)Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog$OnBtnClickListener;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;->mOnBtnClickListener:Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog$OnBtnClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;)Z
    .locals 0

    .line 14
    iget-boolean p0, p0, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;->mIsCustomDismiss:Z

    return p0
.end method

.method static synthetic access$200(Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;)Landroid/widget/Button;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;->btn_sure:Landroid/widget/Button;

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 38
    invoke-super {p0, p1}, Lcom/yftech/settings/widget/dialog/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0a0024

    .line 39
    invoke-virtual {p0, p1}, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;->setContentView(I)V

    .line 40
    invoke-virtual {p0}, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x808

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    const/4 p1, 0x0

    .line 42
    invoke-virtual {p0, p1}, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;->setCanceledOnTouchOutside(Z)V

    .line 43
    invoke-virtual {p0, p1}, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;->setCancelable(Z)V

    const p1, 0x7f08006c

    .line 45
    invoke-virtual {p0, p1}, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;->btn_sure:Landroid/widget/Button;

    const p1, 0x7f080063

    .line 46
    invoke-virtual {p0, p1}, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;->btn_cancel:Landroid/widget/Button;

    const p1, 0x7f0800b0

    .line 47
    invoke-virtual {p0, p1}, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;->divider_vertical:Landroid/view/View;

    const p1, 0x7f08022d

    .line 48
    invoke-virtual {p0, p1}, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;->tv_title:Landroid/widget/TextView;

    const p1, 0x7f080221

    .line 49
    invoke-virtual {p0, p1}, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;->tv_content:Landroid/widget/TextView;

    const p1, 0x7f08008e

    .line 50
    invoke-virtual {p0, p1}, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;->checkBox:Landroid/widget/CheckBox;

    .line 52
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;->btn_sure:Landroid/widget/Button;

    new-instance v0, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog$1;

    invoke-direct {v0, p0}, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog$1;-><init>(Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;->btn_cancel:Landroid/widget/Button;

    new-instance v0, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog$2;

    invoke-direct {v0, p0}, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog$2;-><init>(Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;->checkBox:Landroid/widget/CheckBox;

    new-instance v0, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog$3;

    invoke-direct {v0, p0}, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog$3;-><init>(Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public varargs setButtonText([Ljava/lang/String;)Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;
    .locals 4

    if-eqz p1, :cond_1

    .line 112
    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 114
    iget-object v0, p0, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;->btn_sure:Landroid/widget/Button;

    const v1, 0x7f07008e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 115
    iget-object v0, p0, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;->btn_sure:Landroid/widget/Button;

    aget-object p1, p1, v2

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;->btn_sure:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 117
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;->divider_vertical:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 118
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;->btn_cancel:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_0
    if-le v0, v1, :cond_1

    .line 120
    iget-object v0, p0, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;->btn_sure:Landroid/widget/Button;

    const v3, 0x7f07008d

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 121
    iget-object v0, p0, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;->btn_sure:Landroid/widget/Button;

    aget-object v3, p1, v2

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v0, p0, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;->btn_sure:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;->divider_vertical:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;->btn_cancel:Landroid/widget/Button;

    const v3, 0x7f07008f

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 125
    iget-object v0, p0, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;->btn_cancel:Landroid/widget/Button;

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;->btn_cancel:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public setCancelEnabled(Z)Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;->btn_cancel:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-object p0
.end method

.method public setCancelSelected(Z)Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;->btn_cancel:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setSelected(Z)V

    return-object p0
.end method

.method public setCheckBox(Ljava/lang/String;Z)Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 88
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;->btn_sure:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 89
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;->btn_sure:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setSelected(Z)V

    return-object p0
.end method

.method public setContent(Ljava/lang/String;)Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;->tv_content:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;->tv_content:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-object p0
.end method

.method public setCustomDismiss(Z)V
    .locals 0

    .line 153
    iput-boolean p1, p0, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;->mIsCustomDismiss:Z

    return-void
.end method

.method public setOnBtnClickListener(Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog$OnBtnClickListener;)Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;->mOnBtnClickListener:Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog$OnBtnClickListener;

    return-object p0
.end method

.method public setSureEnabled(Z)Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;->btn_sure:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-object p0
.end method

.method public setSureSelected(Z)Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;->btn_sure:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setSelected(Z)V

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;->tv_title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lcom/yftech/settings/widget/dialog/CommonCheckboxDialog;->tv_title:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-object p0
.end method
