.class Lcom/yftech/settings/connect/adapter/LinkCarplayAvailableAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "LinkCarplayAvailableAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/connect/adapter/LinkCarplayAvailableAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/connect/adapter/LinkCarplayAvailableAdapter;

.field private tvName:Landroid/widget/TextView;

.field private tvState:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/yftech/settings/connect/adapter/LinkCarplayAvailableAdapter;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAvailableAdapter$ViewHolder;->this$0:Lcom/yftech/settings/connect/adapter/LinkCarplayAvailableAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yftech/settings/connect/adapter/LinkCarplayAvailableAdapter;Lcom/yftech/settings/connect/adapter/LinkCarplayAvailableAdapter$1;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/yftech/settings/connect/adapter/LinkCarplayAvailableAdapter$ViewHolder;-><init>(Lcom/yftech/settings/connect/adapter/LinkCarplayAvailableAdapter;)V

    return-void
.end method

.method static synthetic access$100(Lcom/yftech/settings/connect/adapter/LinkCarplayAvailableAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAvailableAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$102(Lcom/yftech/settings/connect/adapter/LinkCarplayAvailableAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAvailableAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/yftech/settings/connect/adapter/LinkCarplayAvailableAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAvailableAdapter$ViewHolder;->tvState:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$202(Lcom/yftech/settings/connect/adapter/LinkCarplayAvailableAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/yftech/settings/connect/adapter/LinkCarplayAvailableAdapter$ViewHolder;->tvState:Landroid/widget/TextView;

    return-object p1
.end method
