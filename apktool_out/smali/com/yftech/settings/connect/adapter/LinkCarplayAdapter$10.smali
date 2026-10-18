.class Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$10;
.super Ljava/lang/Object;
.source "LinkCarplayAdapter.java"

# interfaces
.implements Lcom/yftech/settings/widget/dialog/CommonDialog$OnBtnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;->showCarplayOpenApDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;


# direct methods
.method constructor <init>(Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter$10;->this$0:Lcom/yftech/settings/connect/adapter/LinkCarplayAdapter;

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

    .line 276
    invoke-static {}, Lcom/yftech/settings/manager/WlanManager;->getInstance()Lcom/yftech/settings/manager/WlanManager;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yftech/settings/manager/WlanManager;->setApEnable(Z)Z

    return-void
.end method
