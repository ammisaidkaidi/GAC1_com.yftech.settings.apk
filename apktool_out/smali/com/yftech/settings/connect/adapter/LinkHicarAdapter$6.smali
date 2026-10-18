.class Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$6;
.super Ljava/lang/Object;
.source "LinkHicarAdapter.java"

# interfaces
.implements Lcom/yftech/settings/widget/dialog/CommonDialog$OnBtnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;->showIgnoreDialog(Lcom/yftech/car/phonelink/CarLinkDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;

.field final synthetic val$carLinkDevice:Lcom/yftech/car/phonelink/CarLinkDevice;


# direct methods
.method constructor <init>(Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;Lcom/yftech/car/phonelink/CarLinkDevice;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$6;->this$0:Lcom/yftech/settings/connect/adapter/LinkHicarAdapter;

    iput-object p2, p0, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$6;->val$carLinkDevice:Lcom/yftech/car/phonelink/CarLinkDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick()V
    .locals 0

    return-void
.end method

.method public onIconClick()V
    .locals 0

    return-void
.end method

.method public onSureClick()V
    .locals 1

    .line 163
    invoke-static {}, Lcom/yftech/settings/manager/LinkHicarManager;->getInstance()Lcom/yftech/settings/manager/LinkHicarManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/settings/connect/adapter/LinkHicarAdapter$6;->val$carLinkDevice:Lcom/yftech/car/phonelink/CarLinkDevice;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/manager/LinkHicarManager;->ignore(Lcom/yftech/car/phonelink/CarLinkDevice;)V

    return-void
.end method
