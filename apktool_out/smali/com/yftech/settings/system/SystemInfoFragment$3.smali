.class Lcom/yftech/settings/system/SystemInfoFragment$3;
.super Ljava/lang/Object;
.source "SystemInfoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/settings/system/SystemInfoFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/system/SystemInfoFragment;


# direct methods
.method constructor <init>(Lcom/yftech/settings/system/SystemInfoFragment;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/yftech/settings/system/SystemInfoFragment$3;->this$0:Lcom/yftech/settings/system/SystemInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 113
    iget-object p1, p0, Lcom/yftech/settings/system/SystemInfoFragment$3;->this$0:Lcom/yftech/settings/system/SystemInfoFragment;

    invoke-static {p1}, Lcom/yftech/settings/system/SystemInfoFragment;->access$300(Lcom/yftech/settings/system/SystemInfoFragment;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "system_version"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 114
    iget-object p1, p0, Lcom/yftech/settings/system/SystemInfoFragment$3;->this$0:Lcom/yftech/settings/system/SystemInfoFragment;

    iget-object v1, p0, Lcom/yftech/settings/system/SystemInfoFragment$3;->this$0:Lcom/yftech/settings/system/SystemInfoFragment;

    invoke-static {v1}, Lcom/yftech/settings/system/SystemInfoFragment;->access$000(Lcom/yftech/settings/system/SystemInfoFragment;)I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {p1, v1}, Lcom/yftech/settings/system/SystemInfoFragment;->access$002(Lcom/yftech/settings/system/SystemInfoFragment;I)I

    goto :goto_0

    .line 116
    :cond_0
    iget-object p1, p0, Lcom/yftech/settings/system/SystemInfoFragment$3;->this$0:Lcom/yftech/settings/system/SystemInfoFragment;

    invoke-static {p1, v0}, Lcom/yftech/settings/system/SystemInfoFragment;->access$002(Lcom/yftech/settings/system/SystemInfoFragment;I)I

    .line 118
    :goto_0
    iget-object p1, p0, Lcom/yftech/settings/system/SystemInfoFragment$3;->this$0:Lcom/yftech/settings/system/SystemInfoFragment;

    const-string v0, "system_info_restore_factory"

    invoke-static {p1, v0}, Lcom/yftech/settings/system/SystemInfoFragment;->access$302(Lcom/yftech/settings/system/SystemInfoFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 119
    iget-object p0, p0, Lcom/yftech/settings/system/SystemInfoFragment$3;->this$0:Lcom/yftech/settings/system/SystemInfoFragment;

    invoke-virtual {p0}, Lcom/yftech/settings/system/SystemInfoFragment;->setCountDown()V

    return-void
.end method
