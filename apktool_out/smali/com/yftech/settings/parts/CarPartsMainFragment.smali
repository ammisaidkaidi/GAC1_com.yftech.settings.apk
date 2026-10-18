.class public Lcom/yftech/settings/parts/CarPartsMainFragment;
.super Lcom/yftech/settings/BaseFragment;
.source "CarPartsMainFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAB_LIGHT:Ljava/lang/String; = "light"

.field private static final TAB_LOCK:Ljava/lang/String; = "lock"

.field private static final TAB_MORE:Ljava/lang/String; = "more"

.field private static final TAB_REARVIEW:Ljava/lang/String; = "rearview"

.field private static final TAG:Ljava/lang/String; = "CarPartsMainFragment"


# instance fields
.field private SKIP_TO_MORE:I

.field private lineLight:Landroid/view/View;

.field private lineLock:Landroid/view/View;

.field private lineRearview:Landroid/view/View;

.field private mCarPartsLightFragment:Lcom/yftech/settings/parts/CarPartsLightFragment;

.field private mCarPartsLockFragment:Lcom/yftech/settings/parts/CarPartsLockFragment;

.field private mCarPartsMoreFragment:Lcom/yftech/settings/parts/CarPartsMoreFragment;

.field private mCarPartsRearviewFragment:Lcom/yftech/settings/parts/CarPartsRearviewFragment;

.field private mShowTab:Ljava/lang/String;

.field private mSkipToTab:I

.field private tabLight:Landroid/widget/RelativeLayout;

.field private tabLock:Landroid/widget/RelativeLayout;

.field private tabMore:Landroid/widget/RelativeLayout;

.field private tabRearview:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/yftech/settings/BaseFragment;-><init>()V

    const-string v0, "light"

    .line 39
    iput-object v0, p0, Lcom/yftech/settings/parts/CarPartsMainFragment;->mShowTab:Ljava/lang/String;

    const/4 v0, 0x2

    .line 41
    iput v0, p0, Lcom/yftech/settings/parts/CarPartsMainFragment;->SKIP_TO_MORE:I

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/yftech/settings/parts/CarPartsMainFragment;->mSkipToTab:I

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 4

    const v0, 0x7f0801da

    .line 61
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/yftech/settings/parts/CarPartsMainFragment;->tabLight:Landroid/widget/RelativeLayout;

    const v0, 0x7f0801dc

    .line 62
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/yftech/settings/parts/CarPartsMainFragment;->tabLock:Landroid/widget/RelativeLayout;

    const v0, 0x7f0801e0

    .line 63
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/yftech/settings/parts/CarPartsMainFragment;->tabRearview:Landroid/widget/RelativeLayout;

    const v0, 0x7f0801de

    .line 64
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/yftech/settings/parts/CarPartsMainFragment;->tabMore:Landroid/widget/RelativeLayout;

    .line 66
    iget-object p1, p0, Lcom/yftech/settings/parts/CarPartsMainFragment;->tabLight:Landroid/widget/RelativeLayout;

    sget-boolean v0, Lcom/yftech/settings/utils/ConfigUtils;->isCarPartsLightConfig:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 67
    iget-object p1, p0, Lcom/yftech/settings/parts/CarPartsMainFragment;->tabLock:Landroid/widget/RelativeLayout;

    sget-boolean v0, Lcom/yftech/settings/utils/ConfigUtils;->isCarPartsLockConfig:Z

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 68
    iget-object p1, p0, Lcom/yftech/settings/parts/CarPartsMainFragment;->tabRearview:Landroid/widget/RelativeLayout;

    sget-boolean v0, Lcom/yftech/settings/utils/ConfigUtils;->isCarPartsRearviewConfig:Z

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 69
    iget-object p1, p0, Lcom/yftech/settings/parts/CarPartsMainFragment;->tabMore:Landroid/widget/RelativeLayout;

    sget-boolean v0, Lcom/yftech/settings/utils/ConfigUtils;->isCarPartsMoreConfig:Z

    if-eqz v0, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 70
    sget-boolean p1, Lcom/yftech/settings/utils/ConfigUtils;->isCarPartsLightConfig:Z

    const v0, 0x7f070091

    const v1, 0x7f070094

    if-nez p1, :cond_4

    .line 71
    iget-object p1, p0, Lcom/yftech/settings/parts/CarPartsMainFragment;->tabLock:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_3

    .line 72
    :cond_4
    sget-boolean p1, Lcom/yftech/settings/utils/ConfigUtils;->isCarPartsRearviewConfig:Z

    if-nez p1, :cond_5

    sget-boolean p1, Lcom/yftech/settings/utils/ConfigUtils;->isCarPartsMoreConfig:Z

    if-nez p1, :cond_5

    .line 73
    iget-object p1, p0, Lcom/yftech/settings/parts/CarPartsMainFragment;->tabLock:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 75
    :cond_5
    :goto_3
    sget-boolean p1, Lcom/yftech/settings/utils/ConfigUtils;->isCarPartsLightConfig:Z

    if-nez p1, :cond_6

    sget-boolean p1, Lcom/yftech/settings/utils/ConfigUtils;->isCarPartsLockConfig:Z

    if-nez p1, :cond_6

    .line 76
    iget-object p1, p0, Lcom/yftech/settings/parts/CarPartsMainFragment;->tabRearview:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_4

    .line 77
    :cond_6
    sget-boolean p1, Lcom/yftech/settings/utils/ConfigUtils;->isCarPartsMoreConfig:Z

    if-nez p1, :cond_7

    .line 78
    iget-object p1, p0, Lcom/yftech/settings/parts/CarPartsMainFragment;->tabRearview:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    :cond_7
    :goto_4
    const-string p1, "light"

    const-string v0, "lock"

    const-string v1, "more"

    .line 82
    filled-new-array {p1, v0, v1}, [Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    .line 83
    new-array v0, v0, [Z

    sget-boolean v1, Lcom/yftech/settings/utils/ConfigUtils;->isCarPartsLightConfig:Z

    aput-boolean v1, v0, v2

    sget-boolean v1, Lcom/yftech/settings/utils/ConfigUtils;->isCarPartsLockConfig:Z

    const/4 v3, 0x1

    aput-boolean v1, v0, v3

    const/4 v1, 0x2

    sget-boolean v3, Lcom/yftech/settings/utils/ConfigUtils;->isCarPartsMoreConfig:Z

    aput-boolean v3, v0, v1

    .line 84
    :goto_5
    array-length v1, v0

    if-ge v2, v1, :cond_9

    .line 85
    aget-boolean v1, v0, v2

    if-eqz v1, :cond_8

    .line 86
    aget-object p1, p1, v2

    iput-object p1, p0, Lcom/yftech/settings/parts/CarPartsMainFragment;->mShowTab:Ljava/lang/String;

    goto :goto_6

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 91
    :cond_9
    :goto_6
    iget-object p1, p0, Lcom/yftech/settings/parts/CarPartsMainFragment;->tabLight:Landroid/widget/RelativeLayout;

    const v0, 0x7f08012d

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/settings/parts/CarPartsMainFragment;->lineLight:Landroid/view/View;

    .line 92
    iget-object p1, p0, Lcom/yftech/settings/parts/CarPartsMainFragment;->tabLock:Landroid/widget/RelativeLayout;

    const v0, 0x7f08012e

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/settings/parts/CarPartsMainFragment;->lineLock:Landroid/view/View;

    .line 93
    iget-object p1, p0, Lcom/yftech/settings/parts/CarPartsMainFragment;->tabRearview:Landroid/widget/RelativeLayout;

    const v0, 0x7f08012f

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/settings/parts/CarPartsMainFragment;->lineRearview:Landroid/view/View;

    .line 95
    iget-object p1, p0, Lcom/yftech/settings/parts/CarPartsMainFragment;->tabLight:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object p1, p0, Lcom/yftech/settings/parts/CarPartsMainFragment;->tabLock:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object p1, p0, Lcom/yftech/settings/parts/CarPartsMainFragment;->tabRearview:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object p1, p0, Lcom/yftech/settings/parts/CarPartsMainFragment;->tabMore:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object p1, p0, Lcom/yftech/settings/parts/CarPartsMainFragment;->tabLight:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 100
    iget-object p1, p0, Lcom/yftech/settings/parts/CarPartsMainFragment;->tabLock:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 101
    iget-object p1, p0, Lcom/yftech/settings/parts/CarPartsMainFragment;->tabMore:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 102
    iget-object p1, p0, Lcom/yftech/settings/parts/CarPartsMainFragment;->tabRearview:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private showTabFragment(Ljava/lang/String;)V
    .locals 6

    .line 178
    iget-object v0, p0, Lcom/yftech/settings/parts/CarPartsMainFragment;->tabLight:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 179
    iget-object v0, p0, Lcom/yftech/settings/parts/CarPartsMainFragment;->tabLock:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 180
    iget-object v0, p0, Lcom/yftech/settings/parts/CarPartsMainFragment;->tabRearview:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 181
    iget-object v0, p0, Lcom/yftech/settings/parts/CarPartsMainFragment;->tabMore:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 183
    iget-object v0, p0, Lcom/yftech/settings/parts/CarPartsMainFragment;->lineLight:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/yftech/settings/parts/CarPartsMainFragment;->lineLock:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/yftech/settings/parts/CarPartsMainFragment;->lineRearview:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 187
    iput-object p1, p0, Lcom/yftech/settings/parts/CarPartsMainFragment;->mShowTab:Ljava/lang/String;

    const-string v0, "light"

    .line 189
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    .line 190
    iget-object p1, p0, Lcom/yftech/settings/parts/CarPartsMainFragment;->tabLight:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 191
    iget-object p1, p0, Lcom/yftech/settings/parts/CarPartsMainFragment;->lineLight:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 192
    iget-object p1, p0, Lcom/yftech/settings/parts/CarPartsMainFragment;->mCarPartsLightFragment:Lcom/yftech/settings/parts/CarPartsLightFragment;

    if-nez p1, :cond_0

    .line 193
    new-instance p1, Lcom/yftech/settings/parts/CarPartsLightFragment;

    invoke-direct {p1}, Lcom/yftech/settings/parts/CarPartsLightFragment;-><init>()V

    iput-object p1, p0, Lcom/yftech/settings/parts/CarPartsMainFragment;->mCarPartsLightFragment:Lcom/yftech/settings/parts/CarPartsLightFragment;

    .line 195
    :cond_0
    iget-object p1, p0, Lcom/yftech/settings/parts/CarPartsMainFragment;->mCarPartsLightFragment:Lcom/yftech/settings/parts/CarPartsLightFragment;

    goto :goto_0

    :cond_1
    const-string v0, "lock"

    .line 196
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 197
    iget-object p1, p0, Lcom/yftech/settings/parts/CarPartsMainFragment;->tabLock:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 198
    iget-object p1, p0, Lcom/yftech/settings/parts/CarPartsMainFragment;->lineLock:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 199
    iget-object p1, p0, Lcom/yftech/settings/parts/CarPartsMainFragment;->mCarPartsLockFragment:Lcom/yftech/settings/parts/CarPartsLockFragment;

    if-nez p1, :cond_2

    .line 200
    new-instance p1, Lcom/yftech/settings/parts/CarPartsLockFragment;

    invoke-direct {p1}, Lcom/yftech/settings/parts/CarPartsLockFragment;-><init>()V

    iput-object p1, p0, Lcom/yftech/settings/parts/CarPartsMainFragment;->mCarPartsLockFragment:Lcom/yftech/settings/parts/CarPartsLockFragment;

    .line 202
    :cond_2
    iget-object p1, p0, Lcom/yftech/settings/parts/CarPartsMainFragment;->mCarPartsLockFragment:Lcom/yftech/settings/parts/CarPartsLockFragment;

    goto :goto_0

    :cond_3
    const-string v0, "rearview"

    .line 203
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 204
    iget-object p1, p0, Lcom/yftech/settings/parts/CarPartsMainFragment;->tabRearview:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 205
    iget-object p1, p0, Lcom/yftech/settings/parts/CarPartsMainFragment;->lineRearview:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 206
    iget-object p1, p0, Lcom/yftech/settings/parts/CarPartsMainFragment;->mCarPartsRearviewFragment:Lcom/yftech/settings/parts/CarPartsRearviewFragment;

    if-nez p1, :cond_4

    .line 207
    new-instance p1, Lcom/yftech/settings/parts/CarPartsRearviewFragment;

    invoke-direct {p1}, Lcom/yftech/settings/parts/CarPartsRearviewFragment;-><init>()V

    iput-object p1, p0, Lcom/yftech/settings/parts/CarPartsMainFragment;->mCarPartsRearviewFragment:Lcom/yftech/settings/parts/CarPartsRearviewFragment;

    .line 209
    :cond_4
    iget-object p1, p0, Lcom/yftech/settings/parts/CarPartsMainFragment;->mCarPartsRearviewFragment:Lcom/yftech/settings/parts/CarPartsRearviewFragment;

    goto :goto_0

    :cond_5
    const-string v0, "more"

    .line 210
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 211
    iget-object p1, p0, Lcom/yftech/settings/parts/CarPartsMainFragment;->tabMore:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 212
    iget-object p1, p0, Lcom/yftech/settings/parts/CarPartsMainFragment;->mCarPartsMoreFragment:Lcom/yftech/settings/parts/CarPartsMoreFragment;

    if-nez p1, :cond_6

    .line 213
    new-instance p1, Lcom/yftech/settings/parts/CarPartsMoreFragment;

    invoke-direct {p1}, Lcom/yftech/settings/parts/CarPartsMoreFragment;-><init>()V

    iput-object p1, p0, Lcom/yftech/settings/parts/CarPartsMainFragment;->mCarPartsMoreFragment:Lcom/yftech/settings/parts/CarPartsMoreFragment;

    .line 215
    :cond_6
    iget-object p1, p0, Lcom/yftech/settings/parts/CarPartsMainFragment;->mCarPartsMoreFragment:Lcom/yftech/settings/parts/CarPartsMoreFragment;

    goto :goto_0

    :cond_7
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_9

    .line 218
    invoke-virtual {p0}, Lcom/yftech/settings/parts/CarPartsMainFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 219
    iget-object v3, p0, Lcom/yftech/settings/parts/CarPartsMainFragment;->mShowTab:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_8

    move v1, v4

    :cond_8
    const-string v3, "CarPartsMainFragment"

    .line 220
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showTabFragment, showTab:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/yftech/settings/parts/CarPartsMainFragment;->mShowTab:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", exist:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f080099

    iget-object p0, p0, Lcom/yftech/settings/parts/CarPartsMainFragment;->mShowTab:Ljava/lang/String;

    .line 222
    invoke-virtual {v0, v1, p1, p0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p0

    .line 223
    invoke-virtual {p0, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p0

    .line 224
    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_9
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 136
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0801da

    if-eq p1, v0, :cond_3

    const v0, 0x7f0801dc

    if-eq p1, v0, :cond_2

    const v0, 0x7f0801de

    if-eq p1, v0, :cond_1

    const v0, 0x7f0801e0

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "rearview"

    .line 148
    iget-object v0, p0, Lcom/yftech/settings/parts/CarPartsMainFragment;->mShowTab:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "rearview"

    .line 149
    invoke-direct {p0, p1}, Lcom/yftech/settings/parts/CarPartsMainFragment;->showTabFragment(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "more"

    .line 153
    iget-object v0, p0, Lcom/yftech/settings/parts/CarPartsMainFragment;->mShowTab:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "more"

    .line 154
    invoke-direct {p0, p1}, Lcom/yftech/settings/parts/CarPartsMainFragment;->showTabFragment(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "lock"

    .line 143
    iget-object v0, p0, Lcom/yftech/settings/parts/CarPartsMainFragment;->mShowTab:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "lock"

    .line 144
    invoke-direct {p0, p1}, Lcom/yftech/settings/parts/CarPartsMainFragment;->showTabFragment(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p1, "light"

    .line 138
    iget-object v0, p0, Lcom/yftech/settings/parts/CarPartsMainFragment;->mShowTab:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "light"

    .line 139
    invoke-direct {p0, p1}, Lcom/yftech/settings/parts/CarPartsMainFragment;->showTabFragment(Ljava/lang/String;)V

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

    const p3, 0x7f0a0041

    const/4 v0, 0x0

    .line 55
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 56
    invoke-direct {p0, p1}, Lcom/yftech/settings/parts/CarPartsMainFragment;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method public onPause()V
    .locals 1

    .line 118
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onPause()V

    const-string p0, "CarPartsMainFragment"

    const-string v0, "onPause()"

    .line 119
    invoke-static {p0, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 107
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onResume()V

    const-string v0, "CarPartsMainFragment"

    const-string v1, "onResume()"

    .line 108
    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget v0, p0, Lcom/yftech/settings/parts/CarPartsMainFragment;->mSkipToTab:I

    iget v1, p0, Lcom/yftech/settings/parts/CarPartsMainFragment;->SKIP_TO_MORE:I

    if-ne v0, v1, :cond_0

    const-string v0, "more"

    .line 110
    invoke-direct {p0, v0}, Lcom/yftech/settings/parts/CarPartsMainFragment;->showTabFragment(Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/yftech/settings/parts/CarPartsMainFragment;->mShowTab:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/yftech/settings/parts/CarPartsMainFragment;->showTabFragment(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 124
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onStart()V

    const-string p0, "CarPartsMainFragment"

    const-string v0, "onStart()"

    .line 125
    invoke-static {p0, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 130
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onStop()V

    const-string p0, "CarPartsMainFragment"

    const-string v0, "onStop()"

    .line 131
    invoke-static {p0, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public skipToMore()V
    .locals 1

    .line 171
    iget v0, p0, Lcom/yftech/settings/parts/CarPartsMainFragment;->SKIP_TO_MORE:I

    iput v0, p0, Lcom/yftech/settings/parts/CarPartsMainFragment;->mSkipToTab:I

    .line 172
    iget-object v0, p0, Lcom/yftech/settings/parts/CarPartsMainFragment;->mCarPartsMoreFragment:Lcom/yftech/settings/parts/CarPartsMoreFragment;

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Lcom/yftech/settings/parts/CarPartsMoreFragment;

    invoke-direct {v0}, Lcom/yftech/settings/parts/CarPartsMoreFragment;-><init>()V

    iput-object v0, p0, Lcom/yftech/settings/parts/CarPartsMainFragment;->mCarPartsMoreFragment:Lcom/yftech/settings/parts/CarPartsMoreFragment;

    :cond_0
    return-void
.end method

.method public skipToMoreAndShowPhoneNumView()V
    .locals 1

    .line 163
    iget v0, p0, Lcom/yftech/settings/parts/CarPartsMainFragment;->SKIP_TO_MORE:I

    iput v0, p0, Lcom/yftech/settings/parts/CarPartsMainFragment;->mSkipToTab:I

    .line 164
    iget-object v0, p0, Lcom/yftech/settings/parts/CarPartsMainFragment;->mCarPartsMoreFragment:Lcom/yftech/settings/parts/CarPartsMoreFragment;

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Lcom/yftech/settings/parts/CarPartsMoreFragment;

    invoke-direct {v0}, Lcom/yftech/settings/parts/CarPartsMoreFragment;-><init>()V

    iput-object v0, p0, Lcom/yftech/settings/parts/CarPartsMainFragment;->mCarPartsMoreFragment:Lcom/yftech/settings/parts/CarPartsMoreFragment;

    .line 167
    :cond_0
    iget-object p0, p0, Lcom/yftech/settings/parts/CarPartsMainFragment;->mCarPartsMoreFragment:Lcom/yftech/settings/parts/CarPartsMoreFragment;

    invoke-virtual {p0}, Lcom/yftech/settings/parts/CarPartsMoreFragment;->showPhoneNumberView()V

    return-void
.end method
