.class Lcom/yftech/settings/widget/MultiSelectView$3;
.super Ljava/lang/Object;
.source "MultiSelectView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/settings/widget/MultiSelectView;->setUpView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/widget/MultiSelectView;


# direct methods
.method constructor <init>(Lcom/yftech/settings/widget/MultiSelectView;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/yftech/settings/widget/MultiSelectView$3;->this$0:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 248
    iget-object p1, p0, Lcom/yftech/settings/widget/MultiSelectView$3;->this$0:Lcom/yftech/settings/widget/MultiSelectView;

    iput p3, p1, Lcom/yftech/settings/widget/MultiSelectView;->mSelectedTab:I

    .line 249
    iget-object p1, p0, Lcom/yftech/settings/widget/MultiSelectView$3;->this$0:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-static {p1}, Lcom/yftech/settings/widget/MultiSelectView;->access$000(Lcom/yftech/settings/widget/MultiSelectView;)Lcom/yftech/settings/widget/MultiSelectViewAdapter;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/settings/widget/MultiSelectView$3;->this$0:Lcom/yftech/settings/widget/MultiSelectView;

    iget p0, p0, Lcom/yftech/settings/widget/MultiSelectView;->mSelectedTab:I

    invoke-virtual {p1, p0}, Lcom/yftech/settings/widget/MultiSelectViewAdapter;->updateSelected(I)V

    return-void
.end method
