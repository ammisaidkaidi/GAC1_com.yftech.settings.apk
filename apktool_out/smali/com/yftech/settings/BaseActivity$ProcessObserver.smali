.class Lcom/yftech/settings/BaseActivity$ProcessObserver;
.super Landroid/app/IProcessObserver$Stub;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/settings/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProcessObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/settings/BaseActivity;


# direct methods
.method private constructor <init>(Lcom/yftech/settings/BaseActivity;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/yftech/settings/BaseActivity$ProcessObserver;->this$0:Lcom/yftech/settings/BaseActivity;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yftech/settings/BaseActivity;Lcom/yftech/settings/BaseActivity$1;)V
    .locals 0

    .line 122
    invoke-direct {p0, p1}, Lcom/yftech/settings/BaseActivity$ProcessObserver;-><init>(Lcom/yftech/settings/BaseActivity;)V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .locals 3

    const-string p0, "BaseActivity->onForegroundActivitiesChanged"

    const-string v0, "sky->onForegroundActivitiesChanged uid %d pid %d fg %b"

    const/4 v1, 0x3

    .line 124
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v1, p2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yftech/settings/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onProcessDied(II)V
    .locals 3

    const-string p0, "BaseActivity->onProcessDied"

    const-string v0, "sky->onProcessDied uid %d pid %d"

    const/4 v1, 0x2

    .line 138
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yftech/settings/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
