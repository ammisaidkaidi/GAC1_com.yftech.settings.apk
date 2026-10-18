.class Lcom/yftech/settings/widget/ClipImageView$2;
.super Ljava/lang/Object;
.source "ClipImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/settings/widget/ClipImageView;->postResetImageMatrix()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/widget/ClipImageView;


# direct methods
.method constructor <init>(Lcom/yftech/settings/widget/ClipImageView;)V
    .locals 0

    .line 378
    iput-object p1, p0, Lcom/yftech/settings/widget/ClipImageView$2;->this$0:Lcom/yftech/settings/widget/ClipImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 381
    iget-object p0, p0, Lcom/yftech/settings/widget/ClipImageView$2;->this$0:Lcom/yftech/settings/widget/ClipImageView;

    invoke-virtual {p0}, Lcom/yftech/settings/widget/ClipImageView;->resetImageMatrix()V

    return-void
.end method
