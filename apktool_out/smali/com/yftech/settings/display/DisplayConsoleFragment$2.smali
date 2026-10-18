.class Lcom/yftech/settings/display/DisplayConsoleFragment$2;
.super Ljava/lang/Object;
.source "DisplayConsoleFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/display/DisplayConsoleFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/display/DisplayConsoleFragment;


# direct methods
.method constructor <init>(Lcom/yftech/settings/display/DisplayConsoleFragment;)V
    .locals 0

    .line 350
    iput-object p1, p0, Lcom/yftech/settings/display/DisplayConsoleFragment$2;->this$0:Lcom/yftech/settings/display/DisplayConsoleFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/yftech/settings/display/DisplayConsoleFragment$2;->this$0:Lcom/yftech/settings/display/DisplayConsoleFragment;

    invoke-static {v0}, Lcom/yftech/settings/display/DisplayConsoleFragment;->access$300(Lcom/yftech/settings/display/DisplayConsoleFragment;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/yftech/settings/display/DisplayConsoleFragment$2;->this$0:Lcom/yftech/settings/display/DisplayConsoleFragment;

    invoke-static {v0}, Lcom/yftech/settings/display/DisplayConsoleFragment;->access$300(Lcom/yftech/settings/display/DisplayConsoleFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 355
    iget-object p0, p0, Lcom/yftech/settings/display/DisplayConsoleFragment$2;->this$0:Lcom/yftech/settings/display/DisplayConsoleFragment;

    invoke-static {p0}, Lcom/yftech/settings/display/DisplayConsoleFragment;->access$600(Lcom/yftech/settings/display/DisplayConsoleFragment;)Lcom/yftech/settings/widget/RoundedImageView;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/yftech/settings/widget/RoundedImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
