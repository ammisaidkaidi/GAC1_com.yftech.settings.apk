.class public Lcom/yftech/settings/widget/FixItemListView;
.super Landroid/widget/ListView;
.source "FixItemListView.java"


# instance fields
.field private mMaxItemCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private resetListViewHeight()V
    .locals 4

    .line 39
    invoke-virtual {p0}, Lcom/yftech/settings/widget/FixItemListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 40
    iget v1, p0, Lcom/yftech/settings/widget/FixItemListView;->mMaxItemCount:I

    if-eqz v1, :cond_2

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 43
    invoke-interface {v0, v2, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 44
    invoke-virtual {v1, v2, v2}, Landroid/view/View;->measure(II)V

    .line 45
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 46
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 48
    iget v2, p0, Lcom/yftech/settings/widget/FixItemListView;->mMaxItemCount:I

    const/4 v3, -0x1

    if-gt v0, v2, :cond_1

    .line 49
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 51
    :cond_1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/yftech/settings/widget/FixItemListView;->mMaxItemCount:I

    mul-int/2addr v1, v2

    invoke-direct {v0, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 53
    :goto_0
    invoke-virtual {p0, v0}, Lcom/yftech/settings/widget/FixItemListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 11
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/yftech/settings/widget/FixItemListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0

    .line 29
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 30
    invoke-direct {p0}, Lcom/yftech/settings/widget/FixItemListView;->resetListViewHeight()V

    return-void
.end method

.method public setFixItemCount(I)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/yftech/settings/widget/FixItemListView;->mMaxItemCount:I

    .line 35
    invoke-direct {p0}, Lcom/yftech/settings/widget/FixItemListView;->resetListViewHeight()V

    return-void
.end method
