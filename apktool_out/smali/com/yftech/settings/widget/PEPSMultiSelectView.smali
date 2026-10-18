.class public Lcom/yftech/settings/widget/PEPSMultiSelectView;
.super Lcom/yftech/settings/widget/MultiSelectView;
.source "PEPSMultiSelectView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "PEPSMultiSelectView"

.field private static soundID:I

.field private static soundPool:Landroid/media/SoundPool;


# instance fields
.field private mContentViews:Landroid/widget/LinearLayout;

.field private optionView:Landroid/widget/LinearLayout;

.field private viewCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/yftech/settings/widget/MultiSelectView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/widget/MultiSelectView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/yftech/settings/widget/MultiSelectView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private playKeySoundEffect()V
    .locals 3

    .line 193
    invoke-virtual {p0}, Lcom/yftech/settings/widget/PEPSMultiSelectView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sound_effects_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 195
    invoke-virtual {p0}, Lcom/yftech/settings/widget/PEPSMultiSelectView;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    .line 196
    invoke-virtual {p0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    :cond_1
    return-void
.end method

.method private updateOptionView(Landroid/view/View;)V
    .locals 7

    const/16 v0, 0xa

    const/4 v1, 0x0

    .line 141
    :goto_0
    iget v2, p0, Lcom/yftech/settings/widget/PEPSMultiSelectView;->viewCount:I

    if-ge v1, v2, :cond_1

    .line 142
    iget-object v2, p0, Lcom/yftech/settings/widget/PEPSMultiSelectView;->mContentViews:Landroid/widget/LinearLayout;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 143
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    .line 144
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    const v6, 0x7f0800e4

    if-ne v4, v5, :cond_0

    const v4, 0x7f0700ab

    .line 145
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 146
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0b00ee

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_0
    const v4, 0x7f05006f

    .line 148
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 149
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0b00f0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected hidePopupWindow()V
    .locals 0

    .line 52
    invoke-super {p0}, Lcom/yftech/settings/widget/MultiSelectView;->hidePopupWindow()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 110
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/yftech/settings/widget/PEPSMultiSelectView;->mSelectedTab:I

    .line 111
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x1

    packed-switch p2, :pswitch_data_0

    goto :goto_1

    .line 115
    :pswitch_0
    iget p0, p0, Lcom/yftech/settings/widget/PEPSMultiSelectView;->mSelectedTab:I

    if-nez p0, :cond_0

    const p0, 0x7f0700a9

    .line 116
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    const p0, 0x7f0700a8

    .line 118
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 120
    :goto_0
    sget-object p0, Lcom/yftech/settings/widget/PEPSMultiSelectView;->TAG:Ljava/lang/String;

    const-string p1, "onTouch: move"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 123
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/yftech/settings/widget/PEPSMultiSelectView;->updateOptionView(Landroid/view/View;)V

    .line 124
    iget-object p1, p0, Lcom/yftech/settings/widget/PEPSMultiSelectView;->onSwitchListener:Lcom/yftech/settings/widget/MultiSelectView$OnSwitchListener;

    if-eqz p1, :cond_1

    .line 125
    iget-object p1, p0, Lcom/yftech/settings/widget/PEPSMultiSelectView;->onSwitchListener:Lcom/yftech/settings/widget/MultiSelectView$OnSwitchListener;

    iget p2, p0, Lcom/yftech/settings/widget/PEPSMultiSelectView;->mSelectedTab:I

    iget v1, p0, Lcom/yftech/settings/widget/PEPSMultiSelectView;->mSelectedTab:I

    invoke-virtual {p0, v1}, Lcom/yftech/settings/widget/PEPSMultiSelectView;->getTabText(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p0, p2, v1, v0}, Lcom/yftech/settings/widget/MultiSelectView$OnSwitchListener;->onSwitch(Lcom/yftech/settings/widget/MultiSelectView;ILjava/lang/String;Z)V

    .line 130
    :cond_1
    iget-object p1, p0, Lcom/yftech/settings/widget/PEPSMultiSelectView;->optionView:Landroid/widget/LinearLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 131
    invoke-direct {p0}, Lcom/yftech/settings/widget/PEPSMultiSelectView;->playKeySoundEffect()V

    .line 132
    sget-object p0, Lcom/yftech/settings/widget/PEPSMultiSelectView;->TAG:Ljava/lang/String;

    const-string p1, "onTouch: up"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_2
    return v0

    :goto_1
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected setUpView(Landroid/content/Context;)Landroid/view/View;
    .locals 12

    .line 59
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0a0075

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0800a9

    .line 60
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/yftech/settings/widget/PEPSMultiSelectView;->mContentViews:Landroid/widget/LinearLayout;

    const v2, 0x7f080165

    .line 61
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/yftech/settings/widget/PEPSMultiSelectView;->optionView:Landroid/widget/LinearLayout;

    .line 62
    iget-object v2, p0, Lcom/yftech/settings/widget/PEPSMultiSelectView;->mTabTexts:[Ljava/lang/String;

    array-length v2, v2

    iput v2, p0, Lcom/yftech/settings/widget/PEPSMultiSelectView;->viewCount:I

    .line 63
    iget-object v2, p0, Lcom/yftech/settings/widget/PEPSMultiSelectView;->mTabTexts:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    const/16 v5, 0xa

    move v7, v4

    move v6, v5

    move v5, v7

    :goto_0
    const/4 v8, 0x1

    if-ge v5, v3, :cond_2

    aget-object v9, v2, v5

    .line 64
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    const v11, 0x7f0a006d

    invoke-virtual {v10, v11, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 65
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v11, 0x7f08020c

    .line 66
    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v9, 0x7f08010d

    .line 67
    invoke-virtual {v10, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    .line 68
    invoke-virtual {v9, p0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 69
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 70
    invoke-virtual {v9}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget v11, p0, Lcom/yftech/settings/widget/PEPSMultiSelectView;->mSelectedTab:I

    if-ne v9, v11, :cond_0

    goto :goto_1

    :cond_0
    move v8, v4

    :goto_1
    const v9, 0x7f0800e4

    .line 71
    invoke-virtual {v10, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v8, :cond_1

    const v8, 0x7f0b00ee

    goto :goto_2

    :cond_1
    const v8, 0x7f0b00f0

    :goto_2
    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 72
    iget-object v8, p0, Lcom/yftech/settings/widget/PEPSMultiSelectView;->mContentViews:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 76
    :cond_2
    invoke-virtual {v0, v8}, Landroid/view/View;->setFocusable(Z)V

    .line 77
    invoke-virtual {v0, v8}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 78
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 80
    new-instance p1, Lcom/yftech/settings/widget/PEPSMultiSelectView$1;

    invoke-direct {p1, p0}, Lcom/yftech/settings/widget/PEPSMultiSelectView$1;-><init>(Lcom/yftech/settings/widget/PEPSMultiSelectView;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-object v0
.end method
