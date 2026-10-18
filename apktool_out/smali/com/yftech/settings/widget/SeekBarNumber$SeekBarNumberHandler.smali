.class Lcom/yftech/settings/widget/SeekBarNumber$SeekBarNumberHandler;
.super Lcom/yftech/settings/widget/BaseHandler;
.source "SeekBarNumber.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/widget/SeekBarNumber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SeekBarNumberHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yftech/settings/widget/BaseHandler<",
        "Lcom/yftech/settings/widget/SeekBarNumber;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/yftech/settings/widget/SeekBarNumber;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/yftech/settings/widget/BaseHandler;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public handleMessageProcess(Landroid/os/Message;Lcom/yftech/settings/widget/SeekBarNumber;)V
    .locals 0

    .line 37
    invoke-static {p2, p1}, Lcom/yftech/settings/widget/SeekBarNumber;->access$000(Lcom/yftech/settings/widget/SeekBarNumber;Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic handleMessageProcess(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 0

    .line 29
    check-cast p2, Lcom/yftech/settings/widget/SeekBarNumber;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/settings/widget/SeekBarNumber$SeekBarNumberHandler;->handleMessageProcess(Landroid/os/Message;Lcom/yftech/settings/widget/SeekBarNumber;)V

    return-void
.end method
