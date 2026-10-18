.class public Lcom/yftech/settings/widget/OneClickPhoneNumberSettingView;
.super Lcom/yftech/settings/widget/MultiSelectView;
.source "OneClickPhoneNumberSettingView.java"

# interfaces
.implements Lcom/yftech/settings/widget/KeyboardNumView$OnInputChangeListener;


# instance fields
.field private keyboardNum:Lcom/yftech/settings/widget/KeyboardNumView;

.field private phoneNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/yftech/settings/widget/MultiSelectView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/widget/MultiSelectView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/yftech/settings/widget/MultiSelectView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/settings/widget/OneClickPhoneNumberSettingView;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/yftech/settings/widget/OneClickPhoneNumberSettingView;->setPhoneNumber()V

    return-void
.end method

.method private setPhoneNumber()V
    .locals 4

    .line 102
    iget-object v0, p0, Lcom/yftech/settings/widget/OneClickPhoneNumberSettingView;->phoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/yftech/settings/widget/OneClickPhoneNumberSettingView;->tvValue:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yftech/settings/widget/OneClickPhoneNumberSettingView;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, p0, Lcom/yftech/settings/widget/OneClickPhoneNumberSettingView;->tvValue:Landroid/widget/TextView;

    const/16 v1, 0xdd

    const/16 v2, 0x9d

    const/16 v3, 0x9

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/yftech/settings/widget/OneClickPhoneNumberSettingView;->tvValue:Landroid/widget/TextView;

    const v1, 0x7f0d0146

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 107
    iget-object v0, p0, Lcom/yftech/settings/widget/OneClickPhoneNumberSettingView;->tvValue:Landroid/widget/TextView;

    const/16 v1, 0x46

    const/16 v2, 0xff

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    const-string v0, "OneClickPhoneNumberSettingView"

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPhoneNumber:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/settings/widget/OneClickPhoneNumberSettingView;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lcom/yftech/settings/widget/OneClickPhoneNumberSettingView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "phoneNumber"

    iget-object p0, p0, Lcom/yftech/settings/widget/OneClickPhoneNumberSettingView;->phoneNumber:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public addChar(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getTextValue()Ljava/lang/String;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/yftech/settings/widget/OneClickPhoneNumberSettingView;->tvValue:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public inputChanged(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/yftech/settings/widget/OneClickPhoneNumberSettingView;->phoneNumber:Ljava/lang/String;

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/yftech/settings/widget/OneClickPhoneNumberSettingView;->tvValue:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/yftech/settings/widget/OneClickPhoneNumberSettingView;->tvValue:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTextValue(Ljava/lang/String;)V
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/yftech/settings/widget/OneClickPhoneNumberSettingView;->tvValue:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected setUpView(Landroid/content/Context;)Landroid/view/View;
    .locals 2

    .line 38
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0a0025

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f08010b

    .line 39
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yftech/settings/widget/KeyboardNumView;

    iput-object v0, p0, Lcom/yftech/settings/widget/OneClickPhoneNumberSettingView;->keyboardNum:Lcom/yftech/settings/widget/KeyboardNumView;

    .line 40
    iget-object v0, p0, Lcom/yftech/settings/widget/OneClickPhoneNumberSettingView;->keyboardNum:Lcom/yftech/settings/widget/KeyboardNumView;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/widget/KeyboardNumView;->setOnInputChangeListener(Lcom/yftech/settings/widget/KeyboardNumView$OnInputChangeListener;)V

    const v0, 0x7f08006c

    .line 42
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/yftech/settings/widget/OneClickPhoneNumberSettingView$1;

    invoke-direct {v1, p0}, Lcom/yftech/settings/widget/OneClickPhoneNumberSettingView$1;-><init>(Lcom/yftech/settings/widget/OneClickPhoneNumberSettingView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080063

    .line 49
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/yftech/settings/widget/OneClickPhoneNumberSettingView$2;

    invoke-direct {v1, p0}, Lcom/yftech/settings/widget/OneClickPhoneNumberSettingView$2;-><init>(Lcom/yftech/settings/widget/OneClickPhoneNumberSettingView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    .line 55
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 56
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 57
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 59
    new-instance v0, Lcom/yftech/settings/widget/OneClickPhoneNumberSettingView$3;

    invoke-direct {v0, p0}, Lcom/yftech/settings/widget/OneClickPhoneNumberSettingView$3;-><init>(Lcom/yftech/settings/widget/OneClickPhoneNumberSettingView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-object p1
.end method

.method public show()V
    .locals 0

    .line 115
    invoke-virtual {p0}, Lcom/yftech/settings/widget/OneClickPhoneNumberSettingView;->showPopupWindow()V

    return-void
.end method
