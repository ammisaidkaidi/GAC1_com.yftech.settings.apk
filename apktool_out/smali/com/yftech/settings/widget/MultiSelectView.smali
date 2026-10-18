.class public Lcom/yftech/settings/widget/MultiSelectView;
.super Landroid/widget/LinearLayout;
.source "MultiSelectView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/settings/widget/MultiSelectView$OnSwitchListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SwitchMultiText"


# instance fields
.field public isShown:Ljava/lang/Boolean;

.field private listView:Lcom/yftech/settings/widget/FixItemListView;

.field private mMultiSelectViewAdapter:Lcom/yftech/settings/widget/MultiSelectViewAdapter;

.field protected mSelectedTab:I

.field private mTabNum:I

.field protected mTabTexts:[Ljava/lang/String;

.field private mTextMaxWidth:I

.field private mView:Landroid/view/View;

.field private mWindowManager:Landroid/view/WindowManager;

.field protected onSwitchListener:Lcom/yftech/settings/widget/MultiSelectView$OnSwitchListener;

.field protected tvValue:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, v0}, Lcom/yftech/settings/widget/MultiSelectView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2, v0}, Lcom/yftech/settings/widget/MultiSelectView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p3, "L"

    const-string v0, "R"

    .line 30
    filled-new-array {p3, v0}, [Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/yftech/settings/widget/MultiSelectView;->mTabTexts:[Ljava/lang/String;

    .line 31
    iget-object p3, p0, Lcom/yftech/settings/widget/MultiSelectView;->mTabTexts:[Ljava/lang/String;

    array-length p3, p3

    iput p3, p0, Lcom/yftech/settings/widget/MultiSelectView;->mTabNum:I

    const/4 p3, 0x0

    .line 34
    iput p3, p0, Lcom/yftech/settings/widget/MultiSelectView;->mTextMaxWidth:I

    .line 172
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/settings/widget/MultiSelectView;->isShown:Ljava/lang/Boolean;

    const/4 v0, 0x0

    .line 173
    iput-object v0, p0, Lcom/yftech/settings/widget/MultiSelectView;->mWindowManager:Landroid/view/WindowManager;

    .line 174
    iput-object v0, p0, Lcom/yftech/settings/widget/MultiSelectView;->mView:Landroid/view/View;

    .line 46
    sget-object v0, Lcom/yftech/settings/R$styleable;->MultiSelectView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 47
    invoke-virtual {p2, p3, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/yftech/settings/widget/MultiSelectView;->mTextMaxWidth:I

    .line 48
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 49
    invoke-direct {p0, p1}, Lcom/yftech/settings/widget/MultiSelectView;->inflateAndFindView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/settings/widget/MultiSelectView;)Lcom/yftech/settings/widget/MultiSelectViewAdapter;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/yftech/settings/widget/MultiSelectView;->mMultiSelectViewAdapter:Lcom/yftech/settings/widget/MultiSelectViewAdapter;

    return-object p0
.end method

.method private inflateAndFindView(Landroid/content/Context;)V
    .locals 1

    .line 53
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0a006e

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f08021a

    .line 54
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/settings/widget/MultiSelectView;->tvValue:Landroid/widget/TextView;

    const v0, 0x7f0800f7

    .line 55
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/yftech/settings/widget/MultiSelectView$1;

    invoke-direct {v0, p0}, Lcom/yftech/settings/widget/MultiSelectView$1;-><init>(Lcom/yftech/settings/widget/MultiSelectView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object p1, p0, Lcom/yftech/settings/widget/MultiSelectView;->tvValue:Landroid/widget/TextView;

    new-instance v0, Lcom/yftech/settings/widget/MultiSelectView$2;

    invoke-direct {v0, p0}, Lcom/yftech/settings/widget/MultiSelectView$2;-><init>(Lcom/yftech/settings/widget/MultiSelectView;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget p1, p0, Lcom/yftech/settings/widget/MultiSelectView;->mTextMaxWidth:I

    if-lez p1, :cond_0

    .line 68
    iget-object p1, p0, Lcom/yftech/settings/widget/MultiSelectView;->tvValue:Landroid/widget/TextView;

    iget p0, p0, Lcom/yftech/settings/widget/MultiSelectView;->mTextMaxWidth:I

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clearSelection()V
    .locals 1

    const/4 v0, -0x1

    .line 110
    iput v0, p0, Lcom/yftech/settings/widget/MultiSelectView;->mSelectedTab:I

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    const-string v0, "SwitchMultiText"

    const-string v1, "dispatchKeyEvent: ==============="

    .line 326
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public getSelectedTab()I
    .locals 0

    .line 91
    iget p0, p0, Lcom/yftech/settings/widget/MultiSelectView;->mSelectedTab:I

    return p0
.end method

.method public getTabNum()I
    .locals 0

    .line 151
    iget p0, p0, Lcom/yftech/settings/widget/MultiSelectView;->mTabNum:I

    return p0
.end method

.method protected getTabText(I)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-lez p1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/yftech/settings/widget/MultiSelectView;->mTabTexts:[Ljava/lang/String;

    array-length v1, v1

    if-ge p1, v1, :cond_0

    .line 157
    iget-object p1, p0, Lcom/yftech/settings/widget/MultiSelectView;->mTabTexts:[Ljava/lang/String;

    iget p0, p0, Lcom/yftech/settings/widget/MultiSelectView;->mSelectedTab:I

    aget-object v0, p1, p0

    :cond_0
    return-object v0
.end method

.method public hide()V
    .locals 0

    .line 126
    invoke-virtual {p0}, Lcom/yftech/settings/widget/MultiSelectView;->hidePopupWindow()V

    return-void
.end method

.method protected hidePopupWindow()V
    .locals 3

    const-string v0, "SwitchMultiText"

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hide "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/settings/widget/MultiSelectView;->isShown:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/settings/widget/MultiSelectView;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/yftech/settings/widget/MultiSelectView;->isShown:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/settings/widget/MultiSelectView;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    const-string v0, "SwitchMultiText"

    const-string v1, "hidePopupWindow"

    .line 228
    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/yftech/settings/widget/MultiSelectView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/yftech/settings/widget/MultiSelectView;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 230
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/settings/widget/MultiSelectView;->isShown:Ljava/lang/Boolean;

    :cond_0
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0

    .line 318
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowVisibilityChanged(I)V

    if-eqz p1, :cond_0

    .line 320
    invoke-virtual {p0}, Lcom/yftech/settings/widget/MultiSelectView;->hidePopupWindow()V

    :cond_0
    return-void
.end method

.method public setOnSwitchListener(Lcom/yftech/settings/widget/MultiSelectView$OnSwitchListener;)Lcom/yftech/settings/widget/MultiSelectView;
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/yftech/settings/widget/MultiSelectView;->onSwitchListener:Lcom/yftech/settings/widget/MultiSelectView$OnSwitchListener;

    return-object p0
.end method

.method public setSelectedTab(I)Lcom/yftech/settings/widget/MultiSelectView;
    .locals 3

    .line 101
    iput p1, p0, Lcom/yftech/settings/widget/MultiSelectView;->mSelectedTab:I

    .line 102
    invoke-virtual {p0, p1}, Lcom/yftech/settings/widget/MultiSelectView;->updateView(I)V

    .line 103
    iget-object v0, p0, Lcom/yftech/settings/widget/MultiSelectView;->onSwitchListener:Lcom/yftech/settings/widget/MultiSelectView$OnSwitchListener;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/yftech/settings/widget/MultiSelectView;->onSwitchListener:Lcom/yftech/settings/widget/MultiSelectView$OnSwitchListener;

    invoke-virtual {p0, p1}, Lcom/yftech/settings/widget/MultiSelectView;->getTabText(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, p0, p1, v1, v2}, Lcom/yftech/settings/widget/MultiSelectView$OnSwitchListener;->onSwitch(Lcom/yftech/settings/widget/MultiSelectView;ILjava/lang/String;Z)V

    :cond_0
    return-object p0
.end method

.method public varargs setText([Ljava/lang/String;)Lcom/yftech/settings/widget/MultiSelectView;
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/yftech/settings/widget/MultiSelectView;->mTabTexts:[Ljava/lang/String;

    .line 121
    array-length p1, p1

    iput p1, p0, Lcom/yftech/settings/widget/MultiSelectView;->mTabNum:I

    return-object p0
.end method

.method protected setUpView(Landroid/content/Context;)Landroid/view/View;
    .locals 3

    const-string v0, "SwitchMultiText"

    const-string v1, "setUp view"

    .line 236
    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0a006b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f080135

    .line 240
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yftech/settings/widget/FixItemListView;

    iput-object v0, p0, Lcom/yftech/settings/widget/MultiSelectView;->listView:Lcom/yftech/settings/widget/FixItemListView;

    .line 241
    new-instance v0, Lcom/yftech/settings/widget/MultiSelectViewAdapter;

    invoke-virtual {p0}, Lcom/yftech/settings/widget/MultiSelectView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yftech/settings/widget/MultiSelectViewAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yftech/settings/widget/MultiSelectView;->mMultiSelectViewAdapter:Lcom/yftech/settings/widget/MultiSelectViewAdapter;

    .line 242
    iget-object v0, p0, Lcom/yftech/settings/widget/MultiSelectView;->listView:Lcom/yftech/settings/widget/FixItemListView;

    iget-object v1, p0, Lcom/yftech/settings/widget/MultiSelectView;->mMultiSelectViewAdapter:Lcom/yftech/settings/widget/MultiSelectViewAdapter;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/FixItemListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 243
    iget-object v0, p0, Lcom/yftech/settings/widget/MultiSelectView;->mMultiSelectViewAdapter:Lcom/yftech/settings/widget/MultiSelectViewAdapter;

    iget-object v1, p0, Lcom/yftech/settings/widget/MultiSelectView;->mTabTexts:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/yftech/settings/widget/MultiSelectView;->mSelectedTab:I

    invoke-virtual {v0, v1, v2}, Lcom/yftech/settings/widget/MultiSelectViewAdapter;->updateAdapter(Ljava/util/List;I)V

    .line 244
    iget-object v0, p0, Lcom/yftech/settings/widget/MultiSelectView;->listView:Lcom/yftech/settings/widget/FixItemListView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/FixItemListView;->setFixItemCount(I)V

    .line 245
    iget-object v0, p0, Lcom/yftech/settings/widget/MultiSelectView;->listView:Lcom/yftech/settings/widget/FixItemListView;

    new-instance v1, Lcom/yftech/settings/widget/MultiSelectView$3;

    invoke-direct {v1, p0}, Lcom/yftech/settings/widget/MultiSelectView$3;-><init>(Lcom/yftech/settings/widget/MultiSelectView;)V

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/FixItemListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f080062

    .line 253
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 254
    new-instance v1, Lcom/yftech/settings/widget/MultiSelectView$4;

    invoke-direct {v1, p0}, Lcom/yftech/settings/widget/MultiSelectView$4;-><init>(Lcom/yftech/settings/widget/MultiSelectView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    .line 294
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 295
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 296
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 298
    new-instance v0, Lcom/yftech/settings/widget/MultiSelectView$5;

    invoke-direct {v0, p0}, Lcom/yftech/settings/widget/MultiSelectView$5;-><init>(Lcom/yftech/settings/widget/MultiSelectView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-object p1
.end method

.method protected showPopupWindow()V
    .locals 2

    const-string v0, "SwitchMultiText"

    const-string v1, "showDialog"

    .line 179
    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/yftech/settings/widget/MultiSelectView;->isShown:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "SwitchMultiText"

    const-string v0, "return cause already shown"

    .line 181
    invoke-static {p0, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 185
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/settings/widget/MultiSelectView;->isShown:Ljava/lang/Boolean;

    const-string v0, "SwitchMultiText"

    const-string v1, "showPopupWindow"

    .line 186
    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lcom/yftech/settings/widget/MultiSelectView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    .line 190
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/yftech/settings/widget/MultiSelectView;->mWindowManager:Landroid/view/WindowManager;

    .line 192
    invoke-virtual {p0}, Lcom/yftech/settings/widget/MultiSelectView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/settings/widget/MultiSelectView;->setUpView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/settings/widget/MultiSelectView;->mView:Landroid/view/View;

    .line 194
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/4 v1, 0x2

    .line 197
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/high16 v1, 0x20000

    .line 206
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v1, -0x3

    .line 208
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v1, 0x6f4

    .line 213
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v1, 0x280

    .line 214
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v1, 0x8c

    .line 215
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    const/16 v1, 0x50

    .line 216
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const/16 v1, 0x11

    .line 218
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 220
    iget-object v1, p0, Lcom/yftech/settings/widget/MultiSelectView;->mWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/yftech/settings/widget/MultiSelectView;->mView:Landroid/view/View;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string p0, "SwitchMultiText"

    const-string v0, "add view"

    .line 222
    invoke-static {p0, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected updateView(I)V
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/yftech/settings/widget/MultiSelectView;->tvValue:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const-string v0, ""

    if-ltz p1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/yftech/settings/widget/MultiSelectView;->mTabTexts:[Ljava/lang/String;

    array-length v1, v1

    if-ge p1, v1, :cond_0

    .line 166
    iget-object v0, p0, Lcom/yftech/settings/widget/MultiSelectView;->mTabTexts:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 168
    :cond_0
    iget-object p0, p0, Lcom/yftech/settings/widget/MultiSelectView;->tvValue:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
