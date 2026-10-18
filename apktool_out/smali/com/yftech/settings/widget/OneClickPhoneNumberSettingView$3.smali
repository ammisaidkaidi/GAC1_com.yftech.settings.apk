.class Lcom/yftech/settings/widget/OneClickPhoneNumberSettingView$3;
.super Ljava/lang/Object;
.source "OneClickPhoneNumberSettingView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/settings/widget/OneClickPhoneNumberSettingView;->setUpView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/widget/OneClickPhoneNumberSettingView;


# direct methods
.method constructor <init>(Lcom/yftech/settings/widget/OneClickPhoneNumberSettingView;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/yftech/settings/widget/OneClickPhoneNumberSettingView$3;->this$0:Lcom/yftech/settings/widget/OneClickPhoneNumberSettingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-eq p2, p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 65
    :cond_0
    iget-object p0, p0, Lcom/yftech/settings/widget/OneClickPhoneNumberSettingView$3;->this$0:Lcom/yftech/settings/widget/OneClickPhoneNumberSettingView;

    invoke-virtual {p0}, Lcom/yftech/settings/widget/OneClickPhoneNumberSettingView;->hidePopupWindow()V

    const/4 p0, 0x1

    return p0
.end method
