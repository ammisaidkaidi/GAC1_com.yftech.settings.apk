.class public Lcom/yftech/settings/aid/DriveAidsMainFragment;
.super Lcom/yftech/settings/BaseFragment;
.source "DriveAidsMainFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAB_ASSISTANCE:Ljava/lang/String; = "assistance"

.field private static final TAB_PARKING:Ljava/lang/String; = "parking"

.field private static final TAB_SAFE:Ljava/lang/String; = "safe"

.field private static final TAB_TIP_MEMORY:Ljava/lang/String; = "tip_memory"

.field private static final TAG:Ljava/lang/String; = "DriveAidsMainFragment"

.field private static mInstance:Lcom/yftech/settings/aid/DriveAidsMainFragment;


# instance fields
.field private lineAssistance:Landroid/view/View;

.field private lineSafe:Landroid/view/View;

.field private lineTipMemory:Landroid/view/View;

.field private mDriveAidsAssistanceFragment:Lcom/yftech/settings/aid/DriveAidsAssistanceFragment;

.field private mDriveAidsParkingFragment:Lcom/yftech/settings/aid/DriveAidsParkingFragment;

.field private mDriveAidsSafeFragment:Lcom/yftech/settings/aid/DriveAidsSafeFragment;

.field private mDriveAidsTipMemoryFragment:Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment;

.field private mShowTab:Ljava/lang/String;

.field private tabAssistance:Landroid/widget/RelativeLayout;

.field private tabParking:Landroid/widget/RelativeLayout;

.field private tabSafe:Landroid/widget/RelativeLayout;

.field private tabTipMemory:Landroid/widget/RelativeLayout;

.field private tvSafe:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/yftech/settings/BaseFragment;-><init>()V

    const-string v0, "tip_memory"

    .line 37
    iput-object v0, p0, Lcom/yftech/settings/aid/DriveAidsMainFragment;->mShowTab:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/yftech/settings/aid/DriveAidsMainFragment;
    .locals 1

    .line 47
    sget-object v0, Lcom/yftech/settings/aid/DriveAidsMainFragment;->mInstance:Lcom/yftech/settings/aid/DriveAidsMainFragment;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/yftech/settings/aid/DriveAidsMainFragment;

    invoke-direct {v0}, Lcom/yftech/settings/aid/DriveAidsMainFragment;-><init>()V

    sput-object v0, Lcom/yftech/settings/aid/DriveAidsMainFragment;->mInstance:Lcom/yftech/settings/aid/DriveAidsMainFragment;

    .line 50
    :cond_0
    sget-object v0, Lcom/yftech/settings/aid/DriveAidsMainFragment;->mInstance:Lcom/yftech/settings/aid/DriveAidsMainFragment;

    return-object v0
.end method

.method private initView(Landroid/view/View;)V
    .locals 4

    const v0, 0x7f0801e4

    .line 62
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/yftech/settings/aid/DriveAidsMainFragment;->tabTipMemory:Landroid/widget/RelativeLayout;

    const v0, 0x7f0801e1

    .line 63
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/yftech/settings/aid/DriveAidsMainFragment;->tabSafe:Landroid/widget/RelativeLayout;

    const v0, 0x7f0801d6

    .line 64
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/yftech/settings/aid/DriveAidsMainFragment;->tabAssistance:Landroid/widget/RelativeLayout;

    const v0, 0x7f0801df

    .line 65
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/yftech/settings/aid/DriveAidsMainFragment;->tabParking:Landroid/widget/RelativeLayout;

    .line 67
    iget-object v0, p0, Lcom/yftech/settings/aid/DriveAidsMainFragment;->tabTipMemory:Landroid/widget/RelativeLayout;

    sget-boolean v1, Lcom/yftech/settings/utils/ConfigUtils;->isAidTipMemoryConfig:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Lcom/yftech/settings/aid/DriveAidsMainFragment;->tabSafe:Landroid/widget/RelativeLayout;

    sget-boolean v1, Lcom/yftech/settings/utils/ConfigUtils;->isAidsSafeConfig:Z

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lcom/yftech/settings/aid/DriveAidsMainFragment;->tabAssistance:Landroid/widget/RelativeLayout;

    sget-boolean v1, Lcom/yftech/settings/utils/ConfigUtils;->isAidsAssistanceConfig:Z

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Lcom/yftech/settings/aid/DriveAidsMainFragment;->tabParking:Landroid/widget/RelativeLayout;

    sget-boolean v1, Lcom/yftech/settings/utils/ConfigUtils;->isAidsParkingConfig:Z

    if-eqz v1, :cond_3

    move v2, v3

    :cond_3
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 71
    sget-boolean v0, Lcom/yftech/settings/utils/ConfigUtils;->isAidTipMemoryConfig:Z

    const v1, 0x7f070091

    const v2, 0x7f070094

    if-nez v0, :cond_4

    .line 72
    iget-object v0, p0, Lcom/yftech/settings/aid/DriveAidsMainFragment;->tabSafe:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_3

    .line 73
    :cond_4
    sget-boolean v0, Lcom/yftech/settings/utils/ConfigUtils;->isAidsAssistanceConfig:Z

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/yftech/settings/utils/ConfigUtils;->isAidsParkingConfig:Z

    if-nez v0, :cond_5

    .line 74
    iget-object v0, p0, Lcom/yftech/settings/aid/DriveAidsMainFragment;->tabSafe:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 76
    :cond_5
    :goto_3
    sget-boolean v0, Lcom/yftech/settings/utils/ConfigUtils;->isAidTipMemoryConfig:Z

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/yftech/settings/utils/ConfigUtils;->isAidsSafeConfig:Z

    if-nez v0, :cond_6

    .line 77
    iget-object v0, p0, Lcom/yftech/settings/aid/DriveAidsMainFragment;->tabAssistance:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_4

    .line 78
    :cond_6
    sget-boolean v0, Lcom/yftech/settings/utils/ConfigUtils;->isAidsParkingConfig:Z

    if-nez v0, :cond_7

    .line 79
    iget-object v0, p0, Lcom/yftech/settings/aid/DriveAidsMainFragment;->tabAssistance:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    :cond_7
    :goto_4
    const v0, 0x7f080210

    .line 81
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/yftech/settings/aid/DriveAidsMainFragment;->tvSafe:Landroid/widget/TextView;

    const-string p1, "tip_memory"

    const-string v0, "safe"

    const-string v1, "assistance"

    const-string v2, "parking"

    .line 84
    filled-new-array {p1, v0, v1, v2}, [Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x4

    .line 85
    new-array v0, v0, [Z

    sget-boolean v1, Lcom/yftech/settings/utils/ConfigUtils;->isAidTipMemoryConfig:Z

    aput-boolean v1, v0, v3

    sget-boolean v1, Lcom/yftech/settings/utils/ConfigUtils;->isAidsSafeConfig:Z

    const/4 v2, 0x1

    aput-boolean v1, v0, v2

    const/4 v1, 0x2

    sget-boolean v2, Lcom/yftech/settings/utils/ConfigUtils;->isAidsAssistanceConfig:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x3

    sget-boolean v2, Lcom/yftech/settings/utils/ConfigUtils;->isAidsParkingConfig:Z

    aput-boolean v2, v0, v1

    .line 86
    :goto_5
    array-length v1, v0

    if-ge v3, v1, :cond_9

    .line 87
    aget-boolean v1, v0, v3

    if-eqz v1, :cond_8

    .line 88
    aget-object p1, p1, v3

    iput-object p1, p0, Lcom/yftech/settings/aid/DriveAidsMainFragment;->mShowTab:Ljava/lang/String;

    goto :goto_6

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 93
    :cond_9
    :goto_6
    iget-object p1, p0, Lcom/yftech/settings/aid/DriveAidsMainFragment;->tabTipMemory:Landroid/widget/RelativeLayout;

    const v0, 0x7f080132

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/settings/aid/DriveAidsMainFragment;->lineTipMemory:Landroid/view/View;

    .line 94
    iget-object p1, p0, Lcom/yftech/settings/aid/DriveAidsMainFragment;->tabSafe:Landroid/widget/RelativeLayout;

    const v0, 0x7f080130

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/settings/aid/DriveAidsMainFragment;->lineSafe:Landroid/view/View;

    .line 95
    iget-object p1, p0, Lcom/yftech/settings/aid/DriveAidsMainFragment;->tabAssistance:Landroid/widget/RelativeLayout;

    const v0, 0x7f08012a

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/settings/aid/DriveAidsMainFragment;->lineAssistance:Landroid/view/View;

    .line 97
    iget-object p1, p0, Lcom/yftech/settings/aid/DriveAidsMainFragment;->tabTipMemory:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object p1, p0, Lcom/yftech/settings/aid/DriveAidsMainFragment;->tabTipMemory:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 99
    iget-object p1, p0, Lcom/yftech/settings/aid/DriveAidsMainFragment;->tabSafe:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object p1, p0, Lcom/yftech/settings/aid/DriveAidsMainFragment;->tabSafe:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 101
    iget-object p1, p0, Lcom/yftech/settings/aid/DriveAidsMainFragment;->tabAssistance:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object p1, p0, Lcom/yftech/settings/aid/DriveAidsMainFragment;->tabAssistance:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 103
    iget-object p1, p0, Lcom/yftech/settings/aid/DriveAidsMainFragment;->tabParking:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object p1, p0, Lcom/yftech/settings/aid/DriveAidsMainFragment;->tabParking:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 106
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    .line 107
    new-instance v0, Ljava/util/Locale;

    const-string v1, "ru"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 108
    iget-object p0, p0, Lcom/yftech/settings/aid/DriveAidsMainFragment;->tvSafe:Landroid/widget/TextView;

    const/high16 p1, 0x41f00000    # 30.0f

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_a
    return-void
.end method

.method private invisibleLine(Ljava/lang/String;)V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/yftech/settings/aid/DriveAidsMainFragment;->lineTipMemory:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Lcom/yftech/settings/aid/DriveAidsMainFragment;->lineSafe:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 218
    iget-object p0, p0, Lcom/yftech/settings/aid/DriveAidsMainFragment;->lineAssistance:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    const-string p0, "safe"

    .line 219
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "parking"

    .line 221
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, "assistance"

    .line 223
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const-string p0, "tip_memory"

    .line 225
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private showTabFragment(Ljava/lang/String;)V
    .locals 6

    .line 165
    iget-object v0, p0, Lcom/yftech/settings/aid/DriveAidsMainFragment;->tabSafe:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 166
    iget-object v0, p0, Lcom/yftech/settings/aid/DriveAidsMainFragment;->tabParking:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 167
    iget-object v0, p0, Lcom/yftech/settings/aid/DriveAidsMainFragment;->tabAssistance:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 168
    iget-object v0, p0, Lcom/yftech/settings/aid/DriveAidsMainFragment;->tabTipMemory:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 170
    iget-object v0, p0, Lcom/yftech/settings/aid/DriveAidsMainFragment;->lineTipMemory:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/yftech/settings/aid/DriveAidsMainFragment;->lineSafe:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/yftech/settings/aid/DriveAidsMainFragment;->lineAssistance:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 174
    iput-object p1, p0, Lcom/yftech/settings/aid/DriveAidsMainFragment;->mShowTab:Ljava/lang/String;

    const-string v0, "safe"

    .line 176
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    .line 177
    iget-object p1, p0, Lcom/yftech/settings/aid/DriveAidsMainFragment;->tabSafe:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 178
    iget-object p1, p0, Lcom/yftech/settings/aid/DriveAidsMainFragment;->lineSafe:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 179
    iget-object p1, p0, Lcom/yftech/settings/aid/DriveAidsMainFragment;->mDriveAidsSafeFragment:Lcom/yftech/settings/aid/DriveAidsSafeFragment;

    if-nez p1, :cond_0

    .line 180
    new-instance p1, Lcom/yftech/settings/aid/DriveAidsSafeFragment;

    invoke-direct {p1}, Lcom/yftech/settings/aid/DriveAidsSafeFragment;-><init>()V

    iput-object p1, p0, Lcom/yftech/settings/aid/DriveAidsMainFragment;->mDriveAidsSafeFragment:Lcom/yftech/settings/aid/DriveAidsSafeFragment;

    .line 182
    :cond_0
    iget-object p1, p0, Lcom/yftech/settings/aid/DriveAidsMainFragment;->mDriveAidsSafeFragment:Lcom/yftech/settings/aid/DriveAidsSafeFragment;

    goto :goto_0

    :cond_1
    const-string v0, "parking"

    .line 183
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 184
    iget-object p1, p0, Lcom/yftech/settings/aid/DriveAidsMainFragment;->tabParking:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 185
    iget-object p1, p0, Lcom/yftech/settings/aid/DriveAidsMainFragment;->mDriveAidsParkingFragment:Lcom/yftech/settings/aid/DriveAidsParkingFragment;

    if-nez p1, :cond_2

    .line 186
    new-instance p1, Lcom/yftech/settings/aid/DriveAidsParkingFragment;

    invoke-direct {p1}, Lcom/yftech/settings/aid/DriveAidsParkingFragment;-><init>()V

    iput-object p1, p0, Lcom/yftech/settings/aid/DriveAidsMainFragment;->mDriveAidsParkingFragment:Lcom/yftech/settings/aid/DriveAidsParkingFragment;

    .line 188
    :cond_2
    iget-object p1, p0, Lcom/yftech/settings/aid/DriveAidsMainFragment;->mDriveAidsParkingFragment:Lcom/yftech/settings/aid/DriveAidsParkingFragment;

    goto :goto_0

    :cond_3
    const-string v0, "assistance"

    .line 189
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 190
    iget-object p1, p0, Lcom/yftech/settings/aid/DriveAidsMainFragment;->tabAssistance:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 191
    iget-object p1, p0, Lcom/yftech/settings/aid/DriveAidsMainFragment;->lineAssistance:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 192
    iget-object p1, p0, Lcom/yftech/settings/aid/DriveAidsMainFragment;->mDriveAidsAssistanceFragment:Lcom/yftech/settings/aid/DriveAidsAssistanceFragment;

    if-nez p1, :cond_4

    .line 193
    new-instance p1, Lcom/yftech/settings/aid/DriveAidsAssistanceFragment;

    invoke-direct {p1}, Lcom/yftech/settings/aid/DriveAidsAssistanceFragment;-><init>()V

    iput-object p1, p0, Lcom/yftech/settings/aid/DriveAidsMainFragment;->mDriveAidsAssistanceFragment:Lcom/yftech/settings/aid/DriveAidsAssistanceFragment;

    .line 195
    :cond_4
    iget-object p1, p0, Lcom/yftech/settings/aid/DriveAidsMainFragment;->mDriveAidsAssistanceFragment:Lcom/yftech/settings/aid/DriveAidsAssistanceFragment;

    goto :goto_0

    :cond_5
    const-string v0, "tip_memory"

    .line 196
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 197
    iget-object p1, p0, Lcom/yftech/settings/aid/DriveAidsMainFragment;->tabTipMemory:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 198
    iget-object p1, p0, Lcom/yftech/settings/aid/DriveAidsMainFragment;->lineTipMemory:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 199
    iget-object p1, p0, Lcom/yftech/settings/aid/DriveAidsMainFragment;->mDriveAidsTipMemoryFragment:Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment;

    if-nez p1, :cond_6

    .line 200
    new-instance p1, Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment;

    invoke-direct {p1}, Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment;-><init>()V

    iput-object p1, p0, Lcom/yftech/settings/aid/DriveAidsMainFragment;->mDriveAidsTipMemoryFragment:Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment;

    .line 202
    :cond_6
    iget-object p1, p0, Lcom/yftech/settings/aid/DriveAidsMainFragment;->mDriveAidsTipMemoryFragment:Lcom/yftech/settings/aid/DriveAidsTipMemoryFragment;

    goto :goto_0

    :cond_7
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_9

    .line 205
    invoke-virtual {p0}, Lcom/yftech/settings/aid/DriveAidsMainFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 206
    iget-object v3, p0, Lcom/yftech/settings/aid/DriveAidsMainFragment;->mShowTab:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_8

    move v1, v4

    :cond_8
    const-string v3, "DriveAidsMainFragment"

    .line 207
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showTabFragment, showTab:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/yftech/settings/aid/DriveAidsMainFragment;->mShowTab:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", exist:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f080099

    iget-object p0, p0, Lcom/yftech/settings/aid/DriveAidsMainFragment;->mShowTab:Ljava/lang/String;

    .line 209
    invoke-virtual {v0, v1, p1, p0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p0

    .line 210
    invoke-virtual {p0, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p0

    .line 211
    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_9
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 139
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0801d6

    if-eq p1, v0, :cond_3

    const v0, 0x7f0801df

    if-eq p1, v0, :cond_2

    const v0, 0x7f0801e1

    if-eq p1, v0, :cond_1

    const v0, 0x7f0801e4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "tip_memory"

    .line 141
    iget-object v0, p0, Lcom/yftech/settings/aid/DriveAidsMainFragment;->mShowTab:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "tip_memory"

    .line 142
    invoke-direct {p0, p1}, Lcom/yftech/settings/aid/DriveAidsMainFragment;->showTabFragment(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "safe"

    .line 146
    iget-object v0, p0, Lcom/yftech/settings/aid/DriveAidsMainFragment;->mShowTab:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "safe"

    .line 147
    invoke-direct {p0, p1}, Lcom/yftech/settings/aid/DriveAidsMainFragment;->showTabFragment(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "parking"

    .line 151
    iget-object v0, p0, Lcom/yftech/settings/aid/DriveAidsMainFragment;->mShowTab:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "parking"

    .line 152
    invoke-direct {p0, p1}, Lcom/yftech/settings/aid/DriveAidsMainFragment;->showTabFragment(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p1, "assistance"

    .line 156
    iget-object v0, p0, Lcom/yftech/settings/aid/DriveAidsMainFragment;->mShowTab:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "assistance"

    .line 157
    invoke-direct {p0, p1}, Lcom/yftech/settings/aid/DriveAidsMainFragment;->showTabFragment(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const p3, 0x7f0a002f

    const/4 v0, 0x0

    .line 56
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 57
    invoke-direct {p0, p1}, Lcom/yftech/settings/aid/DriveAidsMainFragment;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method public onPause()V
    .locals 1

    .line 121
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onPause()V

    const-string p0, "DriveAidsMainFragment"

    const-string v0, "onPause()"

    .line 122
    invoke-static {p0, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 114
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onResume()V

    const-string v0, "DriveAidsMainFragment"

    const-string v1, "onResume()"

    .line 115
    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/yftech/settings/aid/DriveAidsMainFragment;->mShowTab:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/yftech/settings/aid/DriveAidsMainFragment;->showTabFragment(Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 127
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onStart()V

    const-string p0, "DriveAidsMainFragment"

    const-string v0, "onStart()"

    .line 128
    invoke-static {p0, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 133
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onStop()V

    const-string p0, "DriveAidsMainFragment"

    const-string v0, "onStop()"

    .line 134
    invoke-static {p0, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
