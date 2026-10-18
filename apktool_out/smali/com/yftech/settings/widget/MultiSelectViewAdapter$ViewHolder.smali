.class Lcom/yftech/settings/widget/MultiSelectViewAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "MultiSelectViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/widget/MultiSelectViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field private ivChoose:Landroid/widget/ImageView;

.field private layout:Landroid/widget/RelativeLayout;

.field final synthetic this$0:Lcom/yftech/settings/widget/MultiSelectViewAdapter;

.field private tvName:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/yftech/settings/widget/MultiSelectViewAdapter;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/yftech/settings/widget/MultiSelectViewAdapter$ViewHolder;->this$0:Lcom/yftech/settings/widget/MultiSelectViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yftech/settings/widget/MultiSelectViewAdapter;Lcom/yftech/settings/widget/MultiSelectViewAdapter$1;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lcom/yftech/settings/widget/MultiSelectViewAdapter$ViewHolder;-><init>(Lcom/yftech/settings/widget/MultiSelectViewAdapter;)V

    return-void
.end method

.method static synthetic access$100(Lcom/yftech/settings/widget/MultiSelectViewAdapter$ViewHolder;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/yftech/settings/widget/MultiSelectViewAdapter$ViewHolder;->layout:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$102(Lcom/yftech/settings/widget/MultiSelectViewAdapter$ViewHolder;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/yftech/settings/widget/MultiSelectViewAdapter$ViewHolder;->layout:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method static synthetic access$200(Lcom/yftech/settings/widget/MultiSelectViewAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/yftech/settings/widget/MultiSelectViewAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$202(Lcom/yftech/settings/widget/MultiSelectViewAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/yftech/settings/widget/MultiSelectViewAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$300(Lcom/yftech/settings/widget/MultiSelectViewAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/yftech/settings/widget/MultiSelectViewAdapter$ViewHolder;->ivChoose:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$302(Lcom/yftech/settings/widget/MultiSelectViewAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/yftech/settings/widget/MultiSelectViewAdapter$ViewHolder;->ivChoose:Landroid/widget/ImageView;

    return-object p1
.end method
