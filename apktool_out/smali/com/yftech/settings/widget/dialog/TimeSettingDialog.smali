.class public Lcom/yftech/settings/widget/dialog/TimeSettingDialog;
.super Lcom/yftech/settings/widget/dialog/BaseDialog;
.source "TimeSettingDialog.java"

# interfaces
.implements Lcom/yftech/settings/widget/wheelview/WheelView$OnItemSelectedListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "TimeSettingDialog"


# instance fields
.field private final END_YEAR:I

.field private final START_YEAR:I

.field private final list_big:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final list_little:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final months_big:[Ljava/lang/String;

.field private final months_little:[Ljava/lang/String;

.field private wv_day:Lcom/yftech/settings/widget/wheelview/WheelView;

.field private wv_hour:Lcom/yftech/settings/widget/wheelview/WheelView;

.field private wv_minute:Lcom/yftech/settings/widget/wheelview/WheelView;

.field private wv_month:Lcom/yftech/settings/widget/wheelview/WheelView;

.field private wv_year:Lcom/yftech/settings/widget/wheelview/WheelView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const v0, 0x7f0e0176

    .line 37
    invoke-direct {p0, p1, v0}, Lcom/yftech/settings/widget/dialog/BaseDialog;-><init>(Landroid/content/Context;I)V

    const/16 p1, 0x7e5

    .line 22
    iput p1, p0, Lcom/yftech/settings/widget/dialog/TimeSettingDialog;->START_YEAR:I

    const/16 p1, 0x7f5

    .line 23
    iput p1, p0, Lcom/yftech/settings/widget/dialog/TimeSettingDialog;->END_YEAR:I

    const-string v0, "1"

    const-string v1, "3"

    const-string v2, "5"

    const-string v3, "7"

    const-string v4, "8"

    const-string v5, "10"

    const-string v6, "12"

    .line 25
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/settings/widget/dialog/TimeSettingDialog;->months_big:[Ljava/lang/String;

    const-string p1, "4"

    const-string v0, "6"

    const-string v1, "9"

    const-string v2, "11"

    .line 26
    filled-new-array {p1, v0, v1, v2}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/settings/widget/dialog/TimeSettingDialog;->months_little:[Ljava/lang/String;

    .line 27
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/TimeSettingDialog;->months_big:[Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/settings/widget/dialog/TimeSettingDialog;->list_big:Ljava/util/List;

    .line 28
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/TimeSettingDialog;->months_little:[Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/settings/widget/dialog/TimeSettingDialog;->list_little:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/settings/widget/dialog/TimeSettingDialog;)Lcom/yftech/settings/widget/wheelview/WheelView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/yftech/settings/widget/dialog/TimeSettingDialog;->wv_year:Lcom/yftech/settings/widget/wheelview/WheelView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/yftech/settings/widget/dialog/TimeSettingDialog;)Lcom/yftech/settings/widget/wheelview/WheelView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/yftech/settings/widget/dialog/TimeSettingDialog;->wv_month:Lcom/yftech/settings/widget/wheelview/WheelView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yftech/settings/widget/dialog/TimeSettingDialog;)Lcom/yftech/settings/widget/wheelview/WheelView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/yftech/settings/widget/dialog/TimeSettingDialog;->wv_day:Lcom/yftech/settings/widget/wheelview/WheelView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/yftech/settings/widget/dialog/TimeSettingDialog;)Lcom/yftech/settings/widget/wheelview/WheelView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/yftech/settings/widget/dialog/TimeSettingDialog;->wv_hour:Lcom/yftech/settings/widget/wheelview/WheelView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/yftech/settings/widget/dialog/TimeSettingDialog;)Lcom/yftech/settings/widget/wheelview/WheelView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/yftech/settings/widget/dialog/TimeSettingDialog;->wv_minute:Lcom/yftech/settings/widget/wheelview/WheelView;

    return-object p0
.end method

.method private getNumericWheel(II)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 110
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-gt p1, p2, :cond_0

    .line 112
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "%02d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private setDayItems(III)V
    .locals 3

    const-string v0, "TimeSettingDialog"

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDayItems() year="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " month="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " day="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/yftech/settings/widget/dialog/TimeSettingDialog;->list_big:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x1f

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-le p3, v1, :cond_0

    const-string p1, "TimeSettingDialog"

    const-string p2, "setDayItems() day > 31, reset day to 31"

    .line 139
    invoke-static {p1, p2}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    move p3, v1

    .line 141
    :cond_0
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/TimeSettingDialog;->wv_day:Lcom/yftech/settings/widget/wheelview/WheelView;

    invoke-direct {p0, v2, v1}, Lcom/yftech/settings/widget/dialog/TimeSettingDialog;->getNumericWheel(II)Ljava/util/List;

    move-result-object p0

    sub-int/2addr p3, v2

    invoke-virtual {p1, p0, p3}, Lcom/yftech/settings/widget/wheelview/WheelView;->setItems(Ljava/util/List;I)V

    goto :goto_0

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/yftech/settings/widget/dialog/TimeSettingDialog;->list_little:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    const/16 v0, 0x1e

    if-eqz p2, :cond_3

    if-lt p3, v1, :cond_2

    const-string p1, "TimeSettingDialog"

    const-string p2, "setDayItems() day >= 31, reset day to 30"

    .line 145
    invoke-static {p1, p2}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    move p3, v0

    .line 147
    :cond_2
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/TimeSettingDialog;->wv_day:Lcom/yftech/settings/widget/wheelview/WheelView;

    invoke-direct {p0, v2, v0}, Lcom/yftech/settings/widget/dialog/TimeSettingDialog;->getNumericWheel(II)Ljava/util/List;

    move-result-object p0

    sub-int/2addr p3, v2

    invoke-virtual {p1, p0, p3}, Lcom/yftech/settings/widget/wheelview/WheelView;->setItems(Ljava/util/List;I)V

    goto :goto_0

    .line 149
    :cond_3
    rem-int/lit8 p2, p1, 0x4

    const/16 v1, 0x1d

    if-nez p2, :cond_4

    rem-int/lit8 p2, p1, 0x64

    if-nez p2, :cond_5

    :cond_4
    rem-int/lit16 p1, p1, 0x190

    if-nez p1, :cond_7

    :cond_5
    if-lt p3, v0, :cond_6

    const-string p1, "TimeSettingDialog"

    const-string p2, "setDayItems() day >= 30, reset day to 29"

    .line 152
    invoke-static {p1, p2}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    move p3, v1

    .line 154
    :cond_6
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/TimeSettingDialog;->wv_day:Lcom/yftech/settings/widget/wheelview/WheelView;

    invoke-direct {p0, v2, v1}, Lcom/yftech/settings/widget/dialog/TimeSettingDialog;->getNumericWheel(II)Ljava/util/List;

    move-result-object p0

    sub-int/2addr p3, v2

    invoke-virtual {p1, p0, p3}, Lcom/yftech/settings/widget/wheelview/WheelView;->setItems(Ljava/util/List;I)V

    goto :goto_0

    :cond_7
    const/16 p1, 0x1c

    if-lt p3, v1, :cond_8

    const-string p2, "TimeSettingDialog"

    const-string p3, "setDayItems() day >= 29, reset day to 28"

    .line 158
    invoke-static {p2, p3}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    move p3, p1

    .line 160
    :cond_8
    iget-object p2, p0, Lcom/yftech/settings/widget/dialog/TimeSettingDialog;->wv_day:Lcom/yftech/settings/widget/wheelview/WheelView;

    invoke-direct {p0, v2, p1}, Lcom/yftech/settings/widget/dialog/TimeSettingDialog;->getNumericWheel(II)Ljava/util/List;

    move-result-object p0

    sub-int/2addr p3, v2

    invoke-virtual {p2, p0, p3}, Lcom/yftech/settings/widget/wheelview/WheelView;->setItems(Ljava/util/List;I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 42
    invoke-super {p0, p1}, Lcom/yftech/settings/widget/dialog/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0a0029

    .line 43
    invoke-virtual {p0, p1}, Lcom/yftech/settings/widget/dialog/TimeSettingDialog;->setContentView(I)V

    const/4 p1, 0x0

    .line 45
    invoke-virtual {p0, p1}, Lcom/yftech/settings/widget/dialog/TimeSettingDialog;->setCanceledOnTouchOutside(Z)V

    .line 46
    invoke-virtual {p0, p1}, Lcom/yftech/settings/widget/dialog/TimeSettingDialog;->setCancelable(Z)V

    .line 49
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const v2, 0x7f080243

    .line 50
    invoke-virtual {p0, v2}, Lcom/yftech/settings/widget/dialog/TimeSettingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/yftech/settings/widget/wheelview/WheelView;

    iput-object v2, p0, Lcom/yftech/settings/widget/dialog/TimeSettingDialog;->wv_year:Lcom/yftech/settings/widget/wheelview/WheelView;

    .line 51
    iget-object v2, p0, Lcom/yftech/settings/widget/dialog/TimeSettingDialog;->wv_year:Lcom/yftech/settings/widget/wheelview/WheelView;

    const/16 v3, 0x7e5

    const/16 v4, 0x7f5

    invoke-direct {p0, v3, v4}, Lcom/yftech/settings/widget/dialog/TimeSettingDialog;->getNumericWheel(II)Ljava/util/List;

    move-result-object v3

    add-int/lit16 v4, v0, -0x7e5

    invoke-virtual {v2, v3, v4}, Lcom/yftech/settings/widget/wheelview/WheelView;->setItems(Ljava/util/List;I)V

    .line 52
    iget-object v2, p0, Lcom/yftech/settings/widget/dialog/TimeSettingDialog;->wv_year:Lcom/yftech/settings/widget/wheelview/WheelView;

    invoke-virtual {v2, p0}, Lcom/yftech/settings/widget/wheelview/WheelView;->setOnItemSelectedListener(Lcom/yftech/settings/widget/wheelview/WheelView$OnItemSelectedListener;)V

    .line 55
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v1

    const v3, 0x7f080152

    .line 56
    invoke-virtual {p0, v3}, Lcom/yftech/settings/widget/dialog/TimeSettingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/yftech/settings/widget/wheelview/WheelView;

    iput-object v3, p0, Lcom/yftech/settings/widget/dialog/TimeSettingDialog;->wv_month:Lcom/yftech/settings/widget/wheelview/WheelView;

    .line 57
    iget-object v3, p0, Lcom/yftech/settings/widget/dialog/TimeSettingDialog;->wv_month:Lcom/yftech/settings/widget/wheelview/WheelView;

    const/16 v4, 0xc

    invoke-direct {p0, v1, v4}, Lcom/yftech/settings/widget/dialog/TimeSettingDialog;->getNumericWheel(II)Ljava/util/List;

    move-result-object v1

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v3, v1, v5}, Lcom/yftech/settings/widget/wheelview/WheelView;->setItems(Ljava/util/List;I)V

    .line 58
    iget-object v1, p0, Lcom/yftech/settings/widget/dialog/TimeSettingDialog;->wv_month:Lcom/yftech/settings/widget/wheelview/WheelView;

    invoke-virtual {v1, p0}, Lcom/yftech/settings/widget/wheelview/WheelView;->setOnItemSelectedListener(Lcom/yftech/settings/widget/wheelview/WheelView$OnItemSelectedListener;)V

    .line 61
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const v3, 0x7f0800a6

    .line 62
    invoke-virtual {p0, v3}, Lcom/yftech/settings/widget/dialog/TimeSettingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/yftech/settings/widget/wheelview/WheelView;

    iput-object v3, p0, Lcom/yftech/settings/widget/dialog/TimeSettingDialog;->wv_day:Lcom/yftech/settings/widget/wheelview/WheelView;

    .line 63
    invoke-direct {p0, v0, v2, v1}, Lcom/yftech/settings/widget/dialog/TimeSettingDialog;->setDayItems(III)V

    .line 64
    iget-object v3, p0, Lcom/yftech/settings/widget/dialog/TimeSettingDialog;->wv_day:Lcom/yftech/settings/widget/wheelview/WheelView;

    invoke-virtual {v3, p0}, Lcom/yftech/settings/widget/wheelview/WheelView;->setOnItemSelectedListener(Lcom/yftech/settings/widget/wheelview/WheelView$OnItemSelectedListener;)V

    .line 67
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/16 v5, 0xb

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const v5, 0x7f0800cf

    .line 68
    invoke-virtual {p0, v5}, Lcom/yftech/settings/widget/dialog/TimeSettingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/yftech/settings/widget/wheelview/WheelView;

    iput-object v5, p0, Lcom/yftech/settings/widget/dialog/TimeSettingDialog;->wv_hour:Lcom/yftech/settings/widget/wheelview/WheelView;

    .line 69
    iget-object v5, p0, Lcom/yftech/settings/widget/dialog/TimeSettingDialog;->wv_hour:Lcom/yftech/settings/widget/wheelview/WheelView;

    const/16 v6, 0x17

    invoke-direct {p0, p1, v6}, Lcom/yftech/settings/widget/dialog/TimeSettingDialog;->getNumericWheel(II)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Lcom/yftech/settings/widget/wheelview/WheelView;->setItems(Ljava/util/List;I)V

    .line 70
    iget-object v5, p0, Lcom/yftech/settings/widget/dialog/TimeSettingDialog;->wv_hour:Lcom/yftech/settings/widget/wheelview/WheelView;

    invoke-virtual {v5, p0}, Lcom/yftech/settings/widget/wheelview/WheelView;->setOnItemSelectedListener(Lcom/yftech/settings/widget/wheelview/WheelView$OnItemSelectedListener;)V

    .line 73
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const v5, 0x7f080151

    .line 74
    invoke-virtual {p0, v5}, Lcom/yftech/settings/widget/dialog/TimeSettingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/yftech/settings/widget/wheelview/WheelView;

    iput-object v5, p0, Lcom/yftech/settings/widget/dialog/TimeSettingDialog;->wv_minute:Lcom/yftech/settings/widget/wheelview/WheelView;

    .line 75
    iget-object v5, p0, Lcom/yftech/settings/widget/dialog/TimeSettingDialog;->wv_minute:Lcom/yftech/settings/widget/wheelview/WheelView;

    const/16 v6, 0x3b

    invoke-direct {p0, p1, v6}, Lcom/yftech/settings/widget/dialog/TimeSettingDialog;->getNumericWheel(II)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v5, p1, v4}, Lcom/yftech/settings/widget/wheelview/WheelView;->setItems(Ljava/util/List;I)V

    .line 76
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/TimeSettingDialog;->wv_minute:Lcom/yftech/settings/widget/wheelview/WheelView;

    invoke-virtual {p1, p0}, Lcom/yftech/settings/widget/wheelview/WheelView;->setOnItemSelectedListener(Lcom/yftech/settings/widget/wheelview/WheelView$OnItemSelectedListener;)V

    const-string p1, "TimeSettingDialog"

    .line 78
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate() year="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " month="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " day="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " hour="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " minute="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f08006d

    .line 80
    invoke-virtual {p0, p1}, Lcom/yftech/settings/widget/dialog/TimeSettingDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/yftech/settings/widget/dialog/TimeSettingDialog$1;

    invoke-direct {v0, p0}, Lcom/yftech/settings/widget/dialog/TimeSettingDialog$1;-><init>(Lcom/yftech/settings/widget/dialog/TimeSettingDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f08006e

    .line 87
    invoke-virtual {p0, p1}, Lcom/yftech/settings/widget/dialog/TimeSettingDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/yftech/settings/widget/dialog/TimeSettingDialog$2;

    invoke-direct {v0, p0}, Lcom/yftech/settings/widget/dialog/TimeSettingDialog$2;-><init>(Lcom/yftech/settings/widget/dialog/TimeSettingDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onItemSelected(Lcom/yftech/settings/widget/wheelview/WheelView;ILjava/lang/String;)V
    .locals 1

    .line 119
    invoke-virtual {p1}, Lcom/yftech/settings/widget/wheelview/WheelView;->getId()I

    move-result p3

    const v0, 0x7f080243

    if-ne p3, v0, :cond_0

    const-string p1, "TimeSettingDialog"

    .line 120
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onItemSelected() year selectedIndex="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit16 p2, p2, 0x7e5

    .line 121
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/TimeSettingDialog;->wv_month:Lcom/yftech/settings/widget/wheelview/WheelView;

    invoke-virtual {p1}, Lcom/yftech/settings/widget/wheelview/WheelView;->getSelectedPosition()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iget-object p3, p0, Lcom/yftech/settings/widget/dialog/TimeSettingDialog;->wv_day:Lcom/yftech/settings/widget/wheelview/WheelView;

    invoke-virtual {p3}, Lcom/yftech/settings/widget/wheelview/WheelView;->getSelectedPosition()I

    move-result p3

    add-int/lit8 p3, p3, 0x1

    invoke-direct {p0, p2, p1, p3}, Lcom/yftech/settings/widget/dialog/TimeSettingDialog;->setDayItems(III)V

    goto/16 :goto_0

    .line 122
    :cond_0
    invoke-virtual {p1}, Lcom/yftech/settings/widget/wheelview/WheelView;->getId()I

    move-result p3

    const v0, 0x7f080152

    if-ne p3, v0, :cond_1

    const-string p1, "TimeSettingDialog"

    .line 123
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onItemSelected() month selectedIndex="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/TimeSettingDialog;->wv_year:Lcom/yftech/settings/widget/wheelview/WheelView;

    invoke-virtual {p1}, Lcom/yftech/settings/widget/wheelview/WheelView;->getSelectedPosition()I

    move-result p1

    add-int/lit16 p1, p1, 0x7e5

    add-int/lit8 p2, p2, 0x1

    iget-object p3, p0, Lcom/yftech/settings/widget/dialog/TimeSettingDialog;->wv_day:Lcom/yftech/settings/widget/wheelview/WheelView;

    invoke-virtual {p3}, Lcom/yftech/settings/widget/wheelview/WheelView;->getSelectedPosition()I

    move-result p3

    add-int/lit8 p3, p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/yftech/settings/widget/dialog/TimeSettingDialog;->setDayItems(III)V

    goto :goto_0

    .line 125
    :cond_1
    invoke-virtual {p1}, Lcom/yftech/settings/widget/wheelview/WheelView;->getId()I

    move-result p0

    const p3, 0x7f0800a6

    if-ne p0, p3, :cond_2

    const-string p0, "TimeSettingDialog"

    .line 126
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onItemSelected() day selectedIndex="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :cond_2
    invoke-virtual {p1}, Lcom/yftech/settings/widget/wheelview/WheelView;->getId()I

    move-result p0

    const p3, 0x7f0800cf

    if-ne p0, p3, :cond_3

    const-string p0, "TimeSettingDialog"

    .line 128
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onItemSelected() hour selectedIndex="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 129
    :cond_3
    invoke-virtual {p1}, Lcom/yftech/settings/widget/wheelview/WheelView;->getId()I

    move-result p0

    const p1, 0x7f080151

    if-ne p0, p1, :cond_4

    const-string p0, "TimeSettingDialog"

    .line 130
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onItemSelected() minute selectedIndex="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method
