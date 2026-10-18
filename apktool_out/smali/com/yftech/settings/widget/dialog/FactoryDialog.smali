.class public Lcom/yftech/settings/widget/dialog/FactoryDialog;
.super Lcom/yftech/settings/widget/dialog/CommonDialog;
.source "FactoryDialog.java"

# interfaces
.implements Lcom/yftech/settings/widget/dialog/CommonDialog$OnBtnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "FactoryDialog"


# instance fields
.field private isFactorying:Z

.field private isWillFactory:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/yftech/settings/widget/dialog/CommonDialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lcom/yftech/settings/widget/dialog/FactoryDialog;->isWillFactory:Z

    .line 23
    iput-boolean p1, p0, Lcom/yftech/settings/widget/dialog/FactoryDialog;->isFactorying:Z

    return-void
.end method

.method private handleSure()V
    .locals 9

    .line 63
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    const-string v1, "FactoryDialog"

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSure() isUserAMonkey:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "yf.mcu.update"

    const-string v1, ""

    .line 68
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "FactoryDialog"

    const-string v0, "handleSure() updating mcu"

    .line 70
    invoke-static {p0, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p0, Lcom/yftech/settings/widget/dialog/FactoryDialog;->isWillFactory:Z

    const v0, 0x7f0a0028

    .line 77
    invoke-virtual {p0, v0}, Lcom/yftech/settings/widget/dialog/FactoryDialog;->setContentView(I)V

    const v0, 0x7f080108

    .line 78
    invoke-virtual {p0, v0}, Lcom/yftech/settings/widget/dialog/FactoryDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 79
    new-instance v8, Landroid/view/animation/RotateAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v4, 0x1

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    const-wide/16 v1, 0x7d0

    .line 80
    invoke-virtual {v8, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v1, -0x1

    .line 81
    invoke-virtual {v8, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 82
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v8, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 83
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 84
    iget-boolean v0, p0, Lcom/yftech/settings/widget/dialog/FactoryDialog;->isWillFactory:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 85
    invoke-virtual {p0, v0}, Lcom/yftech/settings/widget/dialog/FactoryDialog;->setCanceledOnTouchOutside(Z)V

    .line 86
    invoke-virtual {p0, v0}, Lcom/yftech/settings/widget/dialog/FactoryDialog;->setCancelable(Z)V

    .line 87
    invoke-direct {p0}, Lcom/yftech/settings/widget/dialog/FactoryDialog;->startFactory()V

    goto :goto_0

    .line 89
    :cond_2
    invoke-direct {p0}, Lcom/yftech/settings/widget/dialog/FactoryDialog;->handleSure()V

    :goto_0
    return-void
.end method

.method private startFactory()V
    .locals 3

    const-string v0, "FactoryDialog"

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startFactory() isFactorying:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/yftech/settings/widget/dialog/FactoryDialog;->isFactorying:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-boolean v0, p0, Lcom/yftech/settings/widget/dialog/FactoryDialog;->isFactorying:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 98
    iput-boolean v0, p0, Lcom/yftech/settings/widget/dialog/FactoryDialog;->isFactorying:Z

    .line 99
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.yftech.action.factory"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/yftech/settings/widget/dialog/FactoryDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v0, "yf.factory"

    const-string v1, "1"

    .line 101
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    new-instance v0, Lcom/yftech/settings/utils/FactorySetting;

    invoke-direct {v0}, Lcom/yftech/settings/utils/FactorySetting;-><init>()V

    .line 103
    invoke-virtual {p0}, Lcom/yftech/settings/widget/dialog/FactoryDialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/yftech/settings/utils/FactorySetting;->factoryReset(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onCancelClick()V
    .locals 0

    .line 54
    invoke-virtual {p0}, Lcom/yftech/settings/widget/dialog/FactoryDialog;->dismiss()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 31
    invoke-super {p0, p1}, Lcom/yftech/settings/widget/dialog/CommonDialog;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0}, Lcom/yftech/settings/widget/dialog/FactoryDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x807

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    const/4 p1, 0x0

    .line 33
    iput-boolean p1, p0, Lcom/yftech/settings/widget/dialog/FactoryDialog;->isWillFactory:Z

    .line 34
    iput-boolean p1, p0, Lcom/yftech/settings/widget/dialog/FactoryDialog;->isFactorying:Z

    const/4 v0, 0x1

    .line 35
    invoke-virtual {p0, v0}, Lcom/yftech/settings/widget/dialog/FactoryDialog;->setCustomDismiss(Z)V

    .line 36
    invoke-virtual {p0, p0}, Lcom/yftech/settings/widget/dialog/FactoryDialog;->setOnBtnClickListener(Lcom/yftech/settings/widget/dialog/CommonDialog$OnBtnClickListener;)Lcom/yftech/settings/widget/dialog/CommonDialog;

    const/4 v1, 0x2

    .line 37
    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/yftech/settings/widget/dialog/FactoryDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d00e2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p1

    invoke-virtual {p0}, Lcom/yftech/settings/widget/dialog/FactoryDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v2, 0x7f0d00e3

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-virtual {p0, v1}, Lcom/yftech/settings/widget/dialog/FactoryDialog;->setButtonText([Ljava/lang/String;)Lcom/yftech/settings/widget/dialog/CommonDialog;

    move-result-object p1

    .line 38
    invoke-virtual {p0}, Lcom/yftech/settings/widget/dialog/FactoryDialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f0d0100

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yftech/settings/widget/dialog/CommonDialog;->setContent(Ljava/lang/String;)Lcom/yftech/settings/widget/dialog/CommonDialog;

    return-void
.end method

.method public onIconClick()V
    .locals 0

    return-void
.end method

.method public onSureClick()V
    .locals 1

    .line 43
    iget-boolean v0, p0, Lcom/yftech/settings/widget/dialog/FactoryDialog;->isWillFactory:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p0, v0}, Lcom/yftech/settings/widget/dialog/FactoryDialog;->setCanceledOnTouchOutside(Z)V

    .line 45
    invoke-virtual {p0, v0}, Lcom/yftech/settings/widget/dialog/FactoryDialog;->setCancelable(Z)V

    .line 46
    invoke-direct {p0}, Lcom/yftech/settings/widget/dialog/FactoryDialog;->startFactory()V

    goto :goto_0

    .line 48
    :cond_0
    invoke-direct {p0}, Lcom/yftech/settings/widget/dialog/FactoryDialog;->handleSure()V

    :goto_0
    return-void
.end method
