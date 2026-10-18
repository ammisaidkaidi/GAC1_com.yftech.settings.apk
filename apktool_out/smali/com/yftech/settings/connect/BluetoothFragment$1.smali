.class Lcom/yftech/settings/connect/BluetoothFragment$1;
.super Ljava/lang/Object;
.source "BluetoothFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/settings/connect/BluetoothFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/connect/BluetoothFragment;


# direct methods
.method constructor <init>(Lcom/yftech/settings/connect/BluetoothFragment;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/yftech/settings/connect/BluetoothFragment$1;->this$0:Lcom/yftech/settings/connect/BluetoothFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 133
    iget-object p0, p0, Lcom/yftech/settings/connect/BluetoothFragment$1;->this$0:Lcom/yftech/settings/connect/BluetoothFragment;

    invoke-static {p0, p3}, Lcom/yftech/settings/connect/BluetoothFragment;->access$000(Lcom/yftech/settings/connect/BluetoothFragment;I)V

    return-void
.end method
