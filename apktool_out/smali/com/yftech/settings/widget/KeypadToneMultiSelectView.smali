.class public Lcom/yftech/settings/widget/KeypadToneMultiSelectView;
.super Lcom/yftech/settings/widget/MultiSelectView;
.source "KeypadToneMultiSelectView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final KEY_TONE:[Ljava/lang/String;

.field private static final PATH_KEY_TONE:Ljava/lang/String; = "/system/media/audio/ui/"

.field private static final TAG:Ljava/lang/String; = "KeypadToneMultiSelectView"

.field private static soundID:I

.field private static soundPool:Landroid/media/SoundPool;


# instance fields
.field private mContentViews:Landroid/widget/LinearLayout;

.field private viewCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "contemporary.ogg"

    const-string v1, "classical.ogg"

    .line 29
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yftech/settings/widget/KeypadToneMultiSelectView;->KEY_TONE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/yftech/settings/widget/MultiSelectView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/widget/MultiSelectView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/yftech/settings/widget/MultiSelectView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .line 25
    sget v0, Lcom/yftech/settings/widget/KeypadToneMultiSelectView;->soundID:I

    return v0
.end method

.method private playKeypadTone(I)V
    .locals 4

    .line 147
    sget-object v0, Lcom/yftech/settings/widget/KeypadToneMultiSelectView;->KEY_TONE:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_2

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/media/audio/ui/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/yftech/settings/widget/KeypadToneMultiSelectView;->KEY_TONE:[Ljava/lang/String;

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 149
    sget-object v0, Lcom/yftech/settings/widget/KeypadToneMultiSelectView;->soundPool:Landroid/media/SoundPool;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 151
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const/16 v3, 0xa

    if-lt v0, v2, :cond_0

    .line 153
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v2, 0xd

    .line 154
    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v2, 0x4

    .line 155
    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 157
    new-instance v2, Landroid/media/SoundPool$Builder;

    invoke-direct {v2}, Landroid/media/SoundPool$Builder;-><init>()V

    .line 158
    invoke-virtual {v2, v3}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v2

    .line 159
    invoke-virtual {v2, v0}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v0

    sput-object v0, Lcom/yftech/settings/widget/KeypadToneMultiSelectView;->soundPool:Landroid/media/SoundPool;

    goto :goto_0

    .line 163
    :cond_0
    new-instance v0, Landroid/media/SoundPool;

    invoke-direct {v0, v3, v1, v1}, Landroid/media/SoundPool;-><init>(III)V

    sput-object v0, Lcom/yftech/settings/widget/KeypadToneMultiSelectView;->soundPool:Landroid/media/SoundPool;

    .line 166
    :cond_1
    :goto_0
    sget-object v0, Lcom/yftech/settings/widget/KeypadToneMultiSelectView;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v0, p1, v1}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result p1

    sput p1, Lcom/yftech/settings/widget/KeypadToneMultiSelectView;->soundID:I

    .line 168
    sget-object p1, Lcom/yftech/settings/widget/KeypadToneMultiSelectView;->soundPool:Landroid/media/SoundPool;

    new-instance v0, Lcom/yftech/settings/widget/KeypadToneMultiSelectView$3;

    invoke-direct {v0, p0}, Lcom/yftech/settings/widget/KeypadToneMultiSelectView$3;-><init>(Lcom/yftech/settings/widget/KeypadToneMultiSelectView;)V

    invoke-virtual {p1, v0}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    :cond_2
    return-void
.end method

.method private updateOptionView(Landroid/view/View;)V
    .locals 7

    const/16 v0, 0xa

    const/4 v1, 0x0

    .line 132
    :goto_0
    iget v2, p0, Lcom/yftech/settings/widget/KeypadToneMultiSelectView;->viewCount:I

    if-ge v1, v2, :cond_1

    .line 133
    iget-object v2, p0, Lcom/yftech/settings/widget/KeypadToneMultiSelectView;->mContentViews:Landroid/widget/LinearLayout;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 134
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    .line 135
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    const v6, 0x7f0800e4

    if-ne v4, v5, :cond_0

    const v4, 0x7f0700ab

    .line 136
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 137
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0b00ee

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_0
    const v4, 0x7f05006f

    .line 139
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 140
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

    .line 51
    invoke-super {p0}, Lcom/yftech/settings/widget/MultiSelectView;->hidePopupWindow()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/yftech/settings/widget/KeypadToneMultiSelectView;->mSelectedTab:I

    .line 109
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    packed-switch p2, :pswitch_data_0

    goto :goto_1

    .line 113
    :pswitch_0
    iget p0, p0, Lcom/yftech/settings/widget/KeypadToneMultiSelectView;->mSelectedTab:I

    if-nez p0, :cond_0

    const p0, 0x7f0700a9

    .line 114
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    const p0, 0x7f0700a8

    .line 116
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 118
    :goto_0
    sget-object p0, Lcom/yftech/settings/widget/KeypadToneMultiSelectView;->TAG:Ljava/lang/String;

    const-string p1, "onTouch: move"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 121
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/yftech/settings/widget/KeypadToneMultiSelectView;->updateOptionView(Landroid/view/View;)V

    .line 122
    iget p1, p0, Lcom/yftech/settings/widget/KeypadToneMultiSelectView;->mSelectedTab:I

    invoke-direct {p0, p1}, Lcom/yftech/settings/widget/KeypadToneMultiSelectView;->playKeypadTone(I)V

    .line 123
    sget-object p0, Lcom/yftech/settings/widget/KeypadToneMultiSelectView;->TAG:Ljava/lang/String;

    const-string p1, "onTouch: up"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_2
    const/4 p0, 0x1

    return p0

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

    .line 58
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0a006c

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0800a9

    .line 59
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/yftech/settings/widget/KeypadToneMultiSelectView;->mContentViews:Landroid/widget/LinearLayout;

    .line 60
    iget-object v2, p0, Lcom/yftech/settings/widget/KeypadToneMultiSelectView;->mTabTexts:[Ljava/lang/String;

    array-length v2, v2

    iput v2, p0, Lcom/yftech/settings/widget/KeypadToneMultiSelectView;->viewCount:I

    .line 61
    iget-object v2, p0, Lcom/yftech/settings/widget/KeypadToneMultiSelectView;->mTabTexts:[Ljava/lang/String;

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

    .line 62
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    const v11, 0x7f0a006d

    invoke-virtual {v10, v11, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 63
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v11, 0x7f08020c

    .line 64
    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v9, 0x7f08010d

    .line 65
    invoke-virtual {v10, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    .line 66
    invoke-virtual {v9, p0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 67
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 68
    invoke-virtual {v9}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget v11, p0, Lcom/yftech/settings/widget/KeypadToneMultiSelectView;->mSelectedTab:I

    if-ne v9, v11, :cond_0

    goto :goto_1

    :cond_0
    move v8, v4

    :goto_1
    const v9, 0x7f0800e4

    .line 69
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

    .line 70
    iget-object v8, p0, Lcom/yftech/settings/widget/KeypadToneMultiSelectView;->mContentViews:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 74
    :cond_2
    invoke-virtual {v0, v8}, Landroid/view/View;->setFocusable(Z)V

    .line 75
    invoke-virtual {v0, v8}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 76
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 78
    new-instance p1, Lcom/yftech/settings/widget/KeypadToneMultiSelectView$1;

    invoke-direct {p1, p0}, Lcom/yftech/settings/widget/KeypadToneMultiSelectView$1;-><init>(Lcom/yftech/settings/widget/KeypadToneMultiSelectView;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const p1, 0x7f080062

    .line 91
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 92
    new-instance v1, Lcom/yftech/settings/widget/KeypadToneMultiSelectView$2;

    invoke-direct {v1, p0}, Lcom/yftech/settings/widget/KeypadToneMultiSelectView$2;-><init>(Lcom/yftech/settings/widget/KeypadToneMultiSelectView;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method
