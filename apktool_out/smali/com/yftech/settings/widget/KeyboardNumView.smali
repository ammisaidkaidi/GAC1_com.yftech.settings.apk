.class public Lcom/yftech/settings/widget/KeyboardNumView;
.super Landroid/widget/LinearLayout;
.source "KeyboardNumView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/settings/widget/KeyboardNumView$OnInputChangeListener;
    }
.end annotation


# static fields
.field private static final NUMBER_KEY:[[Ljava/lang/String;


# instance fields
.field private final ZERO:Ljava/lang/String;

.field private clickable:Z

.field private dividerValue:I

.field protected editText:Landroid/widget/EditText;

.field private imgDel:Landroid/widget/ImageView;

.field private inputHeight:I

.field private keyHeight:I

.field private keyTextSize:F

.field private lastClickTime:J

.field private mContext:Landroid/content/Context;

.field private final mKeyDel:Ljava/lang/String;

.field private maginValue:I

.field onInputChangeListener:Lcom/yftech/settings/widget/KeyboardNumView$OnInputChangeListener;

.field private realValue:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    .line 40
    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "1"

    const-string v2, "2"

    const-string v3, "3"

    const-string v4, "*"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "4"

    const-string v2, "5"

    const-string v3, "6"

    const-string v4, "#"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "7"

    const-string v2, "8"

    const-string v3, "9"

    const-string v4, "0"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/yftech/settings/widget/KeyboardNumView;->NUMBER_KEY:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, v0}, Lcom/yftech/settings/widget/KeyboardNumView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2, v0}, Lcom/yftech/settings/widget/KeyboardNumView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p2, 0x5c

    .line 31
    iput p2, p0, Lcom/yftech/settings/widget/KeyboardNumView;->keyHeight:I

    const/high16 p2, 0x42200000    # 40.0f

    .line 35
    iput p2, p0, Lcom/yftech/settings/widget/KeyboardNumView;->keyTextSize:F

    const-string p2, "del"

    .line 36
    iput-object p2, p0, Lcom/yftech/settings/widget/KeyboardNumView;->mKeyDel:Ljava/lang/String;

    const-string p2, "0"

    .line 37
    iput-object p2, p0, Lcom/yftech/settings/widget/KeyboardNumView;->ZERO:Ljava/lang/String;

    .line 38
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p2, p0, Lcom/yftech/settings/widget/KeyboardNumView;->realValue:Ljava/lang/StringBuilder;

    const/4 p2, 0x1

    .line 204
    iput-boolean p2, p0, Lcom/yftech/settings/widget/KeyboardNumView;->clickable:Z

    .line 58
    iput-object p1, p0, Lcom/yftech/settings/widget/KeyboardNumView;->mContext:Landroid/content/Context;

    .line 59
    invoke-direct {p0, p1}, Lcom/yftech/settings/widget/KeyboardNumView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private addChar(Ljava/lang/String;)V
    .locals 2

    .line 304
    iget-object v0, p0, Lcom/yftech/settings/widget/KeyboardNumView;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/yftech/settings/widget/KeyboardNumView;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 306
    iget-object v1, p0, Lcom/yftech/settings/widget/KeyboardNumView;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 309
    :cond_0
    invoke-direct {p0}, Lcom/yftech/settings/widget/KeyboardNumView;->updateRealValue()V

    .line 311
    iget-object v0, p0, Lcom/yftech/settings/widget/KeyboardNumView;->onInputChangeListener:Lcom/yftech/settings/widget/KeyboardNumView$OnInputChangeListener;

    if-eqz v0, :cond_1

    .line 312
    iget-object v0, p0, Lcom/yftech/settings/widget/KeyboardNumView;->onInputChangeListener:Lcom/yftech/settings/widget/KeyboardNumView$OnInputChangeListener;

    invoke-interface {v0, p1}, Lcom/yftech/settings/widget/KeyboardNumView$OnInputChangeListener;->addChar(Ljava/lang/String;)V

    .line 313
    iget-object p1, p0, Lcom/yftech/settings/widget/KeyboardNumView;->onInputChangeListener:Lcom/yftech/settings/widget/KeyboardNumView$OnInputChangeListener;

    iget-object p0, p0, Lcom/yftech/settings/widget/KeyboardNumView;->realValue:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/yftech/settings/widget/KeyboardNumView$OnInputChangeListener;->inputChanged(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private delete()V
    .locals 3

    .line 264
    iget-object v0, p0, Lcom/yftech/settings/widget/KeyboardNumView;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/yftech/settings/widget/KeyboardNumView;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    if-lez v0, :cond_0

    .line 267
    iget-object v1, p0, Lcom/yftech/settings/widget/KeyboardNumView;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 270
    :cond_0
    invoke-direct {p0}, Lcom/yftech/settings/widget/KeyboardNumView;->updateRealValue()V

    .line 271
    iget-object v0, p0, Lcom/yftech/settings/widget/KeyboardNumView;->onInputChangeListener:Lcom/yftech/settings/widget/KeyboardNumView$OnInputChangeListener;

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/yftech/settings/widget/KeyboardNumView;->onInputChangeListener:Lcom/yftech/settings/widget/KeyboardNumView$OnInputChangeListener;

    iget-object p0, p0, Lcom/yftech/settings/widget/KeyboardNumView;->realValue:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/yftech/settings/widget/KeyboardNumView$OnInputChangeListener;->inputChanged(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private drawEdittextDeleteImg(Landroid/content/Context;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 130
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 131
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    .line 132
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v3, 0x14

    .line 133
    invoke-virtual {v0, v3, v1, v3, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const v3, 0x7f0b00cf

    .line 134
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 137
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0a0068

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0800b4

    .line 138
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/yftech/settings/widget/KeyboardNumView;->editText:Landroid/widget/EditText;

    .line 139
    iget-object v3, p0, Lcom/yftech/settings/widget/KeyboardNumView;->editText:Landroid/widget/EditText;

    const/high16 v4, 0x42100000    # 36.0f

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTextSize(F)V

    .line 140
    iget-object v3, p0, Lcom/yftech/settings/widget/KeyboardNumView;->editText:Landroid/widget/EditText;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTextColor(I)V

    .line 141
    iget-object v3, p0, Lcom/yftech/settings/widget/KeyboardNumView;->editText:Landroid/widget/EditText;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 142
    iget-object v3, p0, Lcom/yftech/settings/widget/KeyboardNumView;->editText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->setSingleLine()V

    .line 143
    iget-object v3, p0, Lcom/yftech/settings/widget/KeyboardNumView;->editText:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setIncludeFontPadding(Z)V

    .line 144
    iget-object v3, p0, Lcom/yftech/settings/widget/KeyboardNumView;->editText:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 145
    iget-object v3, p0, Lcom/yftech/settings/widget/KeyboardNumView;->editText:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setGravity(I)V

    .line 147
    invoke-virtual {p0}, Lcom/yftech/settings/widget/KeyboardNumView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "phoneNumber"

    invoke-static {v3, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 148
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 149
    iget-object v5, p0, Lcom/yftech/settings/widget/KeyboardNumView;->editText:Landroid/widget/EditText;

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v5, p0, Lcom/yftech/settings/widget/KeyboardNumView;->editText:Landroid/widget/EditText;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 152
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0129

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 155
    :goto_0
    iget-object v5, p0, Lcom/yftech/settings/widget/KeyboardNumView;->editText:Landroid/widget/EditText;

    const-string v6, "#26ccddff"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 156
    iget-object v5, p0, Lcom/yftech/settings/widget/KeyboardNumView;->editText:Landroid/widget/EditText;

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 158
    iget-object v5, p0, Lcom/yftech/settings/widget/KeyboardNumView;->editText:Landroid/widget/EditText;

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 159
    iget-object v4, p0, Lcom/yftech/settings/widget/KeyboardNumView;->editText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    .line 162
    iget-object v4, p0, Lcom/yftech/settings/widget/KeyboardNumView;->editText:Landroid/widget/EditText;

    new-instance v5, Lcom/yftech/settings/widget/KeyboardNumView$1;

    invoke-direct {v5, p0}, Lcom/yftech/settings/widget/KeyboardNumView$1;-><init>(Lcom/yftech/settings/widget/KeyboardNumView;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 169
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 170
    iput v2, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 171
    iput v2, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 172
    iget-object v2, p0, Lcom/yftech/settings/widget/KeyboardNumView;->editText:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/yftech/settings/widget/KeyboardNumView;->imgDel:Landroid/widget/ImageView;

    .line 176
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 177
    iget-object p1, p0, Lcom/yftech/settings/widget/KeyboardNumView;->imgDel:Landroid/widget/ImageView;

    const v2, 0x7f0b00d0

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 179
    :cond_1
    iget-object p1, p0, Lcom/yftech/settings/widget/KeyboardNumView;->imgDel:Landroid/widget/ImageView;

    const v2, 0x7f070070

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 181
    :goto_1
    iget-object p1, p0, Lcom/yftech/settings/widget/KeyboardNumView;->imgDel:Landroid/widget/ImageView;

    const-string v2, "del"

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 182
    iget-object p1, p0, Lcom/yftech/settings/widget/KeyboardNumView;->imgDel:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 183
    iget-object p1, p0, Lcom/yftech/settings/widget/KeyboardNumView;->imgDel:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object p1, p0, Lcom/yftech/settings/widget/KeyboardNumView;->imgDel:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 186
    iget-object p1, p0, Lcom/yftech/settings/widget/KeyboardNumView;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 187
    iget-object p1, p0, Lcom/yftech/settings/widget/KeyboardNumView;->imgDel:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 189
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    .line 190
    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 191
    invoke-virtual {p0, v0, p1}, Lcom/yftech/settings/widget/KeyboardNumView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initKeyCodeNormal(Landroid/content/Context;)V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 72
    invoke-virtual {p0}, Lcom/yftech/settings/widget/KeyboardNumView;->removeAllViews()V

    const/4 v0, 0x1

    .line 74
    invoke-virtual {p0, v0}, Lcom/yftech/settings/widget/KeyboardNumView;->setOrientation(I)V

    .line 77
    invoke-direct {p0, p1}, Lcom/yftech/settings/widget/KeyboardNumView;->drawEdittextDeleteImg(Landroid/content/Context;)V

    .line 80
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 81
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v2, 0x7f0b00d1

    .line 82
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 83
    invoke-virtual {p0, v1}, Lcom/yftech/settings/widget/KeyboardNumView;->addView(Landroid/view/View;)V

    const/4 v2, 0x0

    move v3, v2

    .line 85
    :goto_0
    sget-object v4, Lcom/yftech/settings/widget/KeyboardNumView;->NUMBER_KEY:[[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_3

    .line 87
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 88
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v5, 0x10

    .line 89
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 90
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-nez v3, :cond_0

    const/4 v6, 0x7

    .line 92
    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_1

    :cond_0
    const/16 v6, 0x14

    .line 94
    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 96
    :goto_1
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move v5, v2

    .line 98
    :goto_2
    sget-object v6, Lcom/yftech/settings/widget/KeyboardNumView;->NUMBER_KEY:[[Ljava/lang/String;

    aget-object v6, v6, v3

    array-length v6, v6

    if-ge v5, v6, :cond_2

    .line 99
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    iget v7, p0, Lcom/yftech/settings/widget/KeyboardNumView;->keyHeight:I

    iget v8, p0, Lcom/yftech/settings/widget/KeyboardNumView;->keyHeight:I

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-nez v5, :cond_1

    const/16 v7, 0x9

    .line 101
    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_3

    :cond_1
    const/4 v7, 0x6

    .line 103
    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 106
    :goto_3
    new-instance v7, Landroid/widget/Button;

    invoke-direct {v7, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 107
    invoke-virtual {v7, v2}, Landroid/widget/Button;->setIncludeFontPadding(Z)V

    .line 108
    invoke-virtual {v7, v6}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v6, -0xff0100

    .line 109
    invoke-virtual {v7, v6}, Landroid/widget/Button;->setTextColor(I)V

    .line 110
    iget v6, p0, Lcom/yftech/settings/widget/KeyboardNumView;->keyTextSize:F

    invoke-virtual {v7, v6}, Landroid/widget/Button;->setTextSize(F)V

    const/16 v6, 0x11

    .line 111
    invoke-virtual {v7, v6}, Landroid/widget/Button;->setGravity(I)V

    const v6, 0x7f07006f

    .line 112
    invoke-virtual {v7, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 114
    sget-object v6, Lcom/yftech/settings/widget/KeyboardNumView;->NUMBER_KEY:[[Ljava/lang/String;

    aget-object v6, v6, v3

    aget-object v6, v6, v5

    .line 115
    invoke-virtual {v6, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 117
    invoke-virtual {v7, v6}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 118
    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 120
    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 123
    :cond_2
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/yftech/settings/widget/KeyboardNumView;->initKeyCodeNormal(Landroid/content/Context;)V

    return-void
.end method

.method private updateRealValue()V
    .locals 3

    .line 277
    iget-object v0, p0, Lcom/yftech/settings/widget/KeyboardNumView;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/yftech/settings/widget/KeyboardNumView;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 279
    iget-object v1, p0, Lcom/yftech/settings/widget/KeyboardNumView;->realValue:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 280
    iget-object v1, p0, Lcom/yftech/settings/widget/KeyboardNumView;->realValue:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/yftech/settings/widget/KeyboardNumView;->realValue:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 285
    iget-object p0, p0, Lcom/yftech/settings/widget/KeyboardNumView;->imgDel:Landroid/widget/ImageView;

    const v0, 0x7f0b00d0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 287
    :cond_1
    iget-object p0, p0, Lcom/yftech/settings/widget/KeyboardNumView;->imgDel:Landroid/widget/ImageView;

    const v0, 0x7f0b00ce

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public deleteAll()V
    .locals 2

    .line 292
    iget-object v0, p0, Lcom/yftech/settings/widget/KeyboardNumView;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/yftech/settings/widget/KeyboardNumView;->editText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 296
    :cond_0
    invoke-direct {p0}, Lcom/yftech/settings/widget/KeyboardNumView;->updateRealValue()V

    .line 298
    iget-object v0, p0, Lcom/yftech/settings/widget/KeyboardNumView;->onInputChangeListener:Lcom/yftech/settings/widget/KeyboardNumView$OnInputChangeListener;

    if-eqz v0, :cond_1

    .line 299
    iget-object v0, p0, Lcom/yftech/settings/widget/KeyboardNumView;->onInputChangeListener:Lcom/yftech/settings/widget/KeyboardNumView$OnInputChangeListener;

    iget-object p0, p0, Lcom/yftech/settings/widget/KeyboardNumView;->realValue:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/yftech/settings/widget/KeyboardNumView$OnInputChangeListener;->inputChanged(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 0

    .line 195
    iget-object p0, p0, Lcom/yftech/settings/widget/KeyboardNumView;->editText:Landroid/widget/EditText;

    return-object p0
.end method

.method public getRealValue()Ljava/lang/String;
    .locals 0

    .line 318
    iget-object p0, p0, Lcom/yftech/settings/widget/KeyboardNumView;->realValue:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isFastClick()Z
    .locals 6

    .line 232
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 234
    iget-wide v2, p0, Lcom/yftech/settings/widget/KeyboardNumView;->lastClickTime:J

    sub-long v2, v0, v2

    const/16 v4, 0xc8

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 237
    :goto_0
    iput-wide v0, p0, Lcom/yftech/settings/widget/KeyboardNumView;->lastClickTime:J

    return v2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 213
    iget-boolean v0, p0, Lcom/yftech/settings/widget/KeyboardNumView;->clickable:Z

    if-eqz v0, :cond_1

    .line 214
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 215
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "del"

    .line 216
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    invoke-direct {p0}, Lcom/yftech/settings/widget/KeyboardNumView;->delete()V

    goto :goto_0

    .line 220
    :cond_0
    invoke-direct {p0, p1}, Lcom/yftech/settings/widget/KeyboardNumView;->addChar(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 243
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "del"

    .line 245
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {p0}, Lcom/yftech/settings/widget/KeyboardNumView;->deleteAll()V

    goto :goto_0

    :cond_0
    const-string v0, "0"

    .line 248
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "+"

    .line 249
    invoke-direct {p0, p1}, Lcom/yftech/settings/widget/KeyboardNumView;->addChar(Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public requestFocusEdit()V
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/yftech/settings/widget/KeyboardNumView;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 258
    iget-object p0, p0, Lcom/yftech/settings/widget/KeyboardNumView;->editText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public requestFocusEx()V
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/yftech/settings/widget/KeyboardNumView;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 200
    iget-object p0, p0, Lcom/yftech/settings/widget/KeyboardNumView;->editText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public setClickable(Z)V
    .locals 0

    .line 208
    iput-boolean p1, p0, Lcom/yftech/settings/widget/KeyboardNumView;->clickable:Z

    return-void
.end method

.method public setOnInputChangeListener(Lcom/yftech/settings/widget/KeyboardNumView$OnInputChangeListener;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/yftech/settings/widget/KeyboardNumView;->onInputChangeListener:Lcom/yftech/settings/widget/KeyboardNumView$OnInputChangeListener;

    return-void
.end method
