.class Lcom/yftech/settings/widget/MultiSelectView$2;
.super Ljava/lang/Object;
.source "MultiSelectView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/settings/widget/MultiSelectView;->inflateAndFindView(Landroid/content/Context;)V
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

    .line 61
    iput-object p1, p0, Lcom/yftech/settings/widget/MultiSelectView$2;->this$0:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/yftech/settings/widget/MultiSelectView$2;->this$0:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-virtual {p0}, Lcom/yftech/settings/widget/MultiSelectView;->showPopupWindow()V

    return-void
.end method
