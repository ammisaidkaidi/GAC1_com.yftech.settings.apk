.class public Lcom/yftech/settings/widget/dialog/CommonDialog;
.super Lcom/yftech/settings/widget/dialog/BaseDialog;
.source "CommonDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/settings/widget/dialog/CommonDialog$OnBtnClickListener;
    }
.end annotation


# instance fields
.field private btn_cancel:Landroid/widget/Button;

.field private btn_sure:Landroid/widget/Button;

.field private divider_vertical:Landroid/view/View;

.field private iv_title_icon:Landroid/widget/ImageView;

.field private layout_title_icon:Landroid/widget/RelativeLayout;

.field private mIsCustomDismiss:Z

.field private mOnBtnClickListener:Lcom/yftech/settings/widget/dialog/CommonDialog$OnBtnClickListener;

.field private tv_content:Landroid/widget/TextView;

.field private tv_title:Landroid/widget/TextView;

.field private tv_title_icon:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f0e0176

    .line 38
    invoke-direct {p0, p1, v0}, Lcom/yftech/settings/widget/dialog/BaseDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/settings/widget/dialog/CommonDialog;)Lcom/yftech/settings/widget/dialog/CommonDialog$OnBtnClickListener;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/yftech/settings/widget/dialog/CommonDialog;->mOnBtnClickListener:Lcom/yftech/settings/widget/dialog/CommonDialog$OnBtnClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/yftech/settings/widget/dialog/CommonDialog;)Z
    .locals 0

    .line 16
    iget-boolean p0, p0, Lcom/yftech/settings/widget/dialog/CommonDialog;->mIsCustomDismiss:Z

    return p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 43
    invoke-super {p0, p1}, Lcom/yftech/settings/widget/dialog/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0a0023

    .line 44
    invoke-virtual {p0, p1}, Lcom/yftech/settings/widget/dialog/CommonDialog;->setContentView(I)V

    .line 45
    invoke-virtual {p0}, Lcom/yftech/settings/widget/dialog/CommonDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x808

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    const/4 p1, 0x0

    .line 47
    invoke-virtual {p0, p1}, Lcom/yftech/settings/widget/dialog/CommonDialog;->setCanceledOnTouchOutside(Z)V

    .line 48
    invoke-virtual {p0, p1}, Lcom/yftech/settings/widget/dialog/CommonDialog;->setCancelable(Z)V

    const p1, 0x7f08006c

    .line 50
    invoke-virtual {p0, p1}, Lcom/yftech/settings/widget/dialog/CommonDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/yftech/settings/widget/dialog/CommonDialog;->btn_sure:Landroid/widget/Button;

    const p1, 0x7f080063

    .line 51
    invoke-virtual {p0, p1}, Lcom/yftech/settings/widget/dialog/CommonDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/yftech/settings/widget/dialog/CommonDialog;->btn_cancel:Landroid/widget/Button;

    const p1, 0x7f0800b0

    .line 52
    invoke-virtual {p0, p1}, Lcom/yftech/settings/widget/dialog/CommonDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/settings/widget/dialog/CommonDialog;->divider_vertical:Landroid/view/View;

    const p1, 0x7f08022d

    .line 53
    invoke-virtual {p0, p1}, Lcom/yftech/settings/widget/dialog/CommonDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/yftech/settings/widget/dialog/CommonDialog;->tv_title:Landroid/widget/TextView;

    const p1, 0x7f08011e

    .line 54
    invoke-virtual {p0, p1}, Lcom/yftech/settings/widget/dialog/CommonDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/yftech/settings/widget/dialog/CommonDialog;->layout_title_icon:Landroid/widget/RelativeLayout;

    const p1, 0x7f08022f

    .line 55
    invoke-virtual {p0, p1}, Lcom/yftech/settings/widget/dialog/CommonDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/yftech/settings/widget/dialog/CommonDialog;->tv_title_icon:Landroid/widget/TextView;

    const p1, 0x7f080109

    .line 56
    invoke-virtual {p0, p1}, Lcom/yftech/settings/widget/dialog/CommonDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/yftech/settings/widget/dialog/CommonDialog;->iv_title_icon:Landroid/widget/ImageView;

    const p1, 0x7f080221

    .line 57
    invoke-virtual {p0, p1}, Lcom/yftech/settings/widget/dialog/CommonDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/yftech/settings/widget/dialog/CommonDialog;->tv_content:Landroid/widget/TextView;

    .line 59
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/CommonDialog;->btn_sure:Landroid/widget/Button;

    new-instance v0, Lcom/yftech/settings/widget/dialog/CommonDialog$1;

    invoke-direct {v0, p0}, Lcom/yftech/settings/widget/dialog/CommonDialog$1;-><init>(Lcom/yftech/settings/widget/dialog/CommonDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/CommonDialog;->btn_cancel:Landroid/widget/Button;

    new-instance v0, Lcom/yftech/settings/widget/dialog/CommonDialog$2;

    invoke-direct {v0, p0}, Lcom/yftech/settings/widget/dialog/CommonDialog$2;-><init>(Lcom/yftech/settings/widget/dialog/CommonDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/CommonDialog;->iv_title_icon:Landroid/widget/ImageView;

    new-instance v0, Lcom/yftech/settings/widget/dialog/CommonDialog$3;

    invoke-direct {v0, p0}, Lcom/yftech/settings/widget/dialog/CommonDialog$3;-><init>(Lcom/yftech/settings/widget/dialog/CommonDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public varargs setButtonText([Ljava/lang/String;)Lcom/yftech/settings/widget/dialog/CommonDialog;
    .locals 4

    if-eqz p1, :cond_1

    .line 124
    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/yftech/settings/widget/dialog/CommonDialog;->btn_sure:Landroid/widget/Button;

    const v1, 0x7f07008e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 127
    iget-object v0, p0, Lcom/yftech/settings/widget/dialog/CommonDialog;->btn_sure:Landroid/widget/Button;

    aget-object p1, p1, v2

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/CommonDialog;->btn_sure:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 129
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/CommonDialog;->divider_vertical:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 130
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/CommonDialog;->btn_cancel:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_0
    if-le v0, v1, :cond_1

    .line 132
    iget-object v0, p0, Lcom/yftech/settings/widget/dialog/CommonDialog;->btn_sure:Landroid/widget/Button;

    const v3, 0x7f07008d

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 133
    iget-object v0, p0, Lcom/yftech/settings/widget/dialog/CommonDialog;->btn_sure:Landroid/widget/Button;

    aget-object v3, p1, v2

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, p0, Lcom/yftech/settings/widget/dialog/CommonDialog;->btn_sure:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/yftech/settings/widget/dialog/CommonDialog;->divider_vertical:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/yftech/settings/widget/dialog/CommonDialog;->btn_cancel:Landroid/widget/Button;

    const v3, 0x7f07008f

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 137
    iget-object v0, p0, Lcom/yftech/settings/widget/dialog/CommonDialog;->btn_cancel:Landroid/widget/Button;

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/CommonDialog;->btn_cancel:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public setCancelEnabled(Z)Lcom/yftech/settings/widget/dialog/CommonDialog;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/yftech/settings/widget/dialog/CommonDialog;->btn_cancel:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-object p0
.end method

.method public setCancelSelected(Z)Lcom/yftech/settings/widget/dialog/CommonDialog;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/yftech/settings/widget/dialog/CommonDialog;->btn_cancel:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setSelected(Z)V

    return-object p0
.end method

.method public setContent(Ljava/lang/String;)Lcom/yftech/settings/widget/dialog/CommonDialog;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/yftech/settings/widget/dialog/CommonDialog;->tv_content:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v0, p0, Lcom/yftech/settings/widget/dialog/CommonDialog;->tv_content:Landroid/widget/TextView;

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

.method public setContentGravity(I)V
    .locals 0

    .line 172
    iget-object p0, p0, Lcom/yftech/settings/widget/dialog/CommonDialog;->tv_content:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    return-void
.end method

.method public setCustomDismiss(Z)V
    .locals 0

    .line 176
    iput-boolean p1, p0, Lcom/yftech/settings/widget/dialog/CommonDialog;->mIsCustomDismiss:Z

    return-void
.end method

.method public setDimAmount(F)V
    .locals 0

    .line 165
    invoke-virtual {p0}, Lcom/yftech/settings/widget/dialog/CommonDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 167
    invoke-virtual {p0, p1}, Landroid/view/Window;->setDimAmount(F)V

    :cond_0
    return-void
.end method

.method public setOnBtnClickListener(Lcom/yftech/settings/widget/dialog/CommonDialog$OnBtnClickListener;)Lcom/yftech/settings/widget/dialog/CommonDialog;
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/yftech/settings/widget/dialog/CommonDialog;->mOnBtnClickListener:Lcom/yftech/settings/widget/dialog/CommonDialog$OnBtnClickListener;

    return-object p0
.end method

.method public setSureEnabled(Z)Lcom/yftech/settings/widget/dialog/CommonDialog;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/yftech/settings/widget/dialog/CommonDialog;->btn_sure:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-object p0
.end method

.method public setSureSelected(Z)Lcom/yftech/settings/widget/dialog/CommonDialog;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/yftech/settings/widget/dialog/CommonDialog;->btn_sure:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setSelected(Z)V

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/yftech/settings/widget/dialog/CommonDialog;
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/yftech/settings/widget/dialog/CommonDialog;->layout_title_icon:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/yftech/settings/widget/dialog/CommonDialog;->tv_title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, p0, Lcom/yftech/settings/widget/dialog/CommonDialog;->tv_title:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-object p0
.end method

.method public setTitleAndIcon(Ljava/lang/String;I)Lcom/yftech/settings/widget/dialog/CommonDialog;
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/yftech/settings/widget/dialog/CommonDialog;->tv_title:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/yftech/settings/widget/dialog/CommonDialog;->tv_title_icon:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/CommonDialog;->iv_title_icon:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 112
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/CommonDialog;->layout_title_icon:Landroid/widget/RelativeLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-object p0
.end method
