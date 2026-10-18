.class Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "BluetoothPairedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field private ivIconCarplay:Landroid/widget/ImageView;

.field private layoutName:Landroid/widget/RelativeLayout;

.field private llDetails:Landroid/widget/LinearLayout;

.field private swSyncMedia:Lcom/yftech/settings/widget/Switcher;

.field private swSyncPhone:Lcom/yftech/settings/widget/Switcher;

.field final synthetic this$0:Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;

.field private tvDetails:Landroid/widget/TextView;

.field private tvDisconnect:Landroid/widget/TextView;

.field private tvIgnore:Landroid/widget/TextView;

.field private tvName:Landroid/widget/TextView;

.field private tvState:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;->this$0:Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$1;)V
    .locals 0

    .line 283
    invoke-direct {p0, p1}, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;-><init>(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter;)V

    return-void
.end method

.method static synthetic access$100(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 283
    iget-object p0, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;->layoutName:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 283
    iget-object p0, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;->ivIconCarplay:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;->ivIconCarplay:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$102(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;->layoutName:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method static synthetic access$200(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 283
    iget-object p0, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$202(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$300(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 283
    iget-object p0, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;->tvDetails:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$302(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;->tvDetails:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$400(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 283
    iget-object p0, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;->tvState:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$402(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;->tvState:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$500(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;)Landroid/widget/LinearLayout;
    .locals 0

    .line 283
    iget-object p0, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;->llDetails:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$502(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;->llDetails:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic access$600(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;)Lcom/yftech/settings/widget/Switcher;
    .locals 0

    .line 283
    iget-object p0, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;->swSyncPhone:Lcom/yftech/settings/widget/Switcher;

    return-object p0
.end method

.method static synthetic access$602(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;Lcom/yftech/settings/widget/Switcher;)Lcom/yftech/settings/widget/Switcher;
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;->swSyncPhone:Lcom/yftech/settings/widget/Switcher;

    return-object p1
.end method

.method static synthetic access$700(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;)Lcom/yftech/settings/widget/Switcher;
    .locals 0

    .line 283
    iget-object p0, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;->swSyncMedia:Lcom/yftech/settings/widget/Switcher;

    return-object p0
.end method

.method static synthetic access$702(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;Lcom/yftech/settings/widget/Switcher;)Lcom/yftech/settings/widget/Switcher;
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;->swSyncMedia:Lcom/yftech/settings/widget/Switcher;

    return-object p1
.end method

.method static synthetic access$800(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 283
    iget-object p0, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;->tvDisconnect:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$802(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;->tvDisconnect:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$900(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 283
    iget-object p0, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;->tvIgnore:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$902(Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/yftech/settings/connect/adapter/BluetoothPairedAdapter$ViewHolder;->tvIgnore:Landroid/widget/TextView;

    return-object p1
.end method
