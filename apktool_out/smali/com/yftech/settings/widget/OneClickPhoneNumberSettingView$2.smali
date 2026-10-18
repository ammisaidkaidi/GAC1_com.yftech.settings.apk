.class Lcom/yftech/settings/widget/OneClickPhoneNumberSettingView$2;
.super Ljava/lang/Object;
.source "OneClickPhoneNumberSettingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 49
    iput-object p1, p0, Lcom/yftech/settings/widget/OneClickPhoneNumberSettingView$2;->this$0:Lcom/yftech/settings/widget/OneClickPhoneNumberSettingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/yftech/settings/widget/OneClickPhoneNumberSettingView$2;->this$0:Lcom/yftech/settings/widget/OneClickPhoneNumberSettingView;

    invoke-virtual {p0}, Lcom/yftech/settings/widget/OneClickPhoneNumberSettingView;->hidePopupWindow()V

    return-void
.end method
