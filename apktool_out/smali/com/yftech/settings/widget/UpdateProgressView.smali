.class public Lcom/yftech/settings/widget/UpdateProgressView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "UpdateProgressView.java"


# instance fields
.field private clipDrawable:Landroid/graphics/drawable/ClipDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private initView()V
    .locals 1

    const v0, 0x7f07005f

    .line 38
    invoke-virtual {p0, v0}, Lcom/yftech/settings/widget/UpdateProgressView;->setBackgroundResource(I)V

    const/4 v0, 0x0

    .line 39
    invoke-virtual {p0, v0}, Lcom/yftech/settings/widget/UpdateProgressView;->setProgressLevel(I)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 0

    .line 33
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatTextView;->onFinishInflate()V

    .line 34
    invoke-direct {p0}, Lcom/yftech/settings/widget/UpdateProgressView;->initView()V

    return-void
.end method

.method public setProgressLevel(I)V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/yftech/settings/widget/UpdateProgressView;->clipDrawable:Landroid/graphics/drawable/ClipDrawable;

    if-nez v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/yftech/settings/widget/UpdateProgressView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    const v1, 0x7f080171

    .line 49
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ClipDrawable;

    iput-object v0, p0, Lcom/yftech/settings/widget/UpdateProgressView;->clipDrawable:Landroid/graphics/drawable/ClipDrawable;

    .line 51
    :cond_0
    iget-object p0, p0, Lcom/yftech/settings/widget/UpdateProgressView;->clipDrawable:Landroid/graphics/drawable/ClipDrawable;

    mul-int/lit8 p1, p1, 0x64

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z

    return-void
.end method
