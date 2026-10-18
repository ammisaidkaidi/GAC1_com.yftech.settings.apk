.class Lcom/yftech/settings/widget/KeypadToneMultiSelectView$3;
.super Ljava/lang/Object;
.source "KeypadToneMultiSelectView.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/settings/widget/KeypadToneMultiSelectView;->playKeypadTone(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/widget/KeypadToneMultiSelectView;


# direct methods
.method constructor <init>(Lcom/yftech/settings/widget/KeypadToneMultiSelectView;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/yftech/settings/widget/KeypadToneMultiSelectView$3;->this$0:Lcom/yftech/settings/widget/KeypadToneMultiSelectView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 7

    .line 172
    invoke-static {}, Lcom/yftech/settings/widget/KeypadToneMultiSelectView;->access$000()I

    move-result v1

    const v2, 0x3f19999a    # 0.6f

    const v3, 0x3f19999a    # 0.6f

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p1

    .line 171
    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    return-void
.end method
