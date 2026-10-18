.class public Lcom/yftech/settings/widget/MultiSelectViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "MultiSelectViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/settings/widget/MultiSelectViewAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private mSelectedPosition:I

.field private mValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/settings/widget/MultiSelectViewAdapter;->mValues:Ljava/util/List;

    .line 24
    iput-object p1, p0, Lcom/yftech/settings/widget/MultiSelectViewAdapter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/yftech/settings/widget/MultiSelectViewAdapter;->mValues:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/yftech/settings/widget/MultiSelectViewAdapter;->mValues:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 58
    iget-object p2, p0, Lcom/yftech/settings/widget/MultiSelectViewAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0a006d

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 59
    new-instance p3, Lcom/yftech/settings/widget/MultiSelectViewAdapter$ViewHolder;

    invoke-direct {p3, p0, v0}, Lcom/yftech/settings/widget/MultiSelectViewAdapter$ViewHolder;-><init>(Lcom/yftech/settings/widget/MultiSelectViewAdapter;Lcom/yftech/settings/widget/MultiSelectViewAdapter$1;)V

    const v0, 0x7f08010d

    .line 60
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-static {p3, v0}, Lcom/yftech/settings/widget/MultiSelectViewAdapter$ViewHolder;->access$102(Lcom/yftech/settings/widget/MultiSelectViewAdapter$ViewHolder;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    const v0, 0x7f08020c

    .line 61
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p3, v0}, Lcom/yftech/settings/widget/MultiSelectViewAdapter$ViewHolder;->access$202(Lcom/yftech/settings/widget/MultiSelectViewAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v0, 0x7f0800e4

    .line 62
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p3, v0}, Lcom/yftech/settings/widget/MultiSelectViewAdapter$ViewHolder;->access$302(Lcom/yftech/settings/widget/MultiSelectViewAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 63
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/yftech/settings/widget/MultiSelectViewAdapter$ViewHolder;

    .line 67
    :goto_0
    iget-object v0, p0, Lcom/yftech/settings/widget/MultiSelectViewAdapter;->mValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 68
    invoke-static {p3}, Lcom/yftech/settings/widget/MultiSelectViewAdapter$ViewHolder;->access$200(Lcom/yftech/settings/widget/MultiSelectViewAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez p1, :cond_1

    .line 70
    invoke-static {p3}, Lcom/yftech/settings/widget/MultiSelectViewAdapter$ViewHolder;->access$100(Lcom/yftech/settings/widget/MultiSelectViewAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const v1, 0x7f070097

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_1

    .line 72
    :cond_1
    invoke-static {p3}, Lcom/yftech/settings/widget/MultiSelectViewAdapter$ViewHolder;->access$100(Lcom/yftech/settings/widget/MultiSelectViewAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const v1, 0x7f070095

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 74
    :goto_1
    iget p0, p0, Lcom/yftech/settings/widget/MultiSelectViewAdapter;->mSelectedPosition:I

    if-ne p0, p1, :cond_2

    const/4 p0, 0x1

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    .line 75
    :goto_2
    invoke-static {p3}, Lcom/yftech/settings/widget/MultiSelectViewAdapter$ViewHolder;->access$100(Lcom/yftech/settings/widget/MultiSelectViewAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 76
    invoke-static {p3}, Lcom/yftech/settings/widget/MultiSelectViewAdapter$ViewHolder;->access$300(Lcom/yftech/settings/widget/MultiSelectViewAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p0, :cond_3

    const p0, 0x7f0b00ee

    goto :goto_3

    :cond_3
    const p0, 0x7f0b00f0

    :goto_3
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object p2
.end method

.method public updateAdapter(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/yftech/settings/widget/MultiSelectViewAdapter;->mValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 29
    iget-object v0, p0, Lcom/yftech/settings/widget/MultiSelectViewAdapter;->mValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 30
    iput p2, p0, Lcom/yftech/settings/widget/MultiSelectViewAdapter;->mSelectedPosition:I

    .line 31
    invoke-virtual {p0}, Lcom/yftech/settings/widget/MultiSelectViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public updateSelected(I)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/yftech/settings/widget/MultiSelectViewAdapter;->mSelectedPosition:I

    .line 36
    invoke-virtual {p0}, Lcom/yftech/settings/widget/MultiSelectViewAdapter;->notifyDataSetChanged()V

    return-void
.end method
