.class public Lcom/yftech/settings/ac/SeatFragment;
.super Lcom/yftech/settings/BaseFragment;
.source "SeatFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mCarPartsModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yftech/settings/manager/BaseManager$ModelCallback<",
            "Lcom/yftech/settings/manager/CarPartsManager$Function;",
            ">;"
        }
    .end annotation
.end field

.field private mSwSeatDriverConvenientAccess:Lcom/yftech/settings/widget/Switcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/yftech/settings/BaseFragment;-><init>()V

    .line 22
    new-instance v0, Lcom/yftech/settings/ac/SeatFragment$1;

    invoke-direct {v0, p0}, Lcom/yftech/settings/ac/SeatFragment$1;-><init>(Lcom/yftech/settings/ac/SeatFragment;)V

    iput-object v0, p0, Lcom/yftech/settings/ac/SeatFragment;->mCarPartsModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/settings/ac/SeatFragment;Lcom/yftech/settings/manager/CarPartsManager$Function;Z)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/ac/SeatFragment;->setSwitcherView(Lcom/yftech/settings/manager/CarPartsManager$Function;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/yftech/settings/ac/SeatFragment;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/yftech/settings/ac/SeatFragment;->initViewData()V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f08018a

    .line 68
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 69
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/CarPartsManager$Function;->SEAT_DRIVER_CONVENIENT_ACCESS_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 71
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    const v1, 0x7f080218

    .line 72
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0d0156

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f0801ff

    .line 73
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0d0157

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f0801bb

    .line 74
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/yftech/settings/widget/Switcher;

    iput-object p1, p0, Lcom/yftech/settings/ac/SeatFragment;->mSwSeatDriverConvenientAccess:Lcom/yftech/settings/widget/Switcher;

    .line 75
    iget-object p1, p0, Lcom/yftech/settings/ac/SeatFragment;->mSwSeatDriverConvenientAccess:Lcom/yftech/settings/widget/Switcher;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yftech/settings/widget/Switcher;->setTag(Ljava/lang/Object;)V

    .line 76
    iget-object p1, p0, Lcom/yftech/settings/ac/SeatFragment;->mSwSeatDriverConvenientAccess:Lcom/yftech/settings/widget/Switcher;

    invoke-virtual {p1, p0}, Lcom/yftech/settings/widget/Switcher;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 77
    iget-object p1, p0, Lcom/yftech/settings/ac/SeatFragment;->mSwSeatDriverConvenientAccess:Lcom/yftech/settings/widget/Switcher;

    invoke-virtual {p1, p0}, Lcom/yftech/settings/widget/Switcher;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    return-void
.end method

.method private initViewData()V
    .locals 3

    .line 82
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/CarPartsManager$Function;->SEAT_DRIVER_CONVENIENT_ACCESS_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->SEAT_DRIVER_CONVENIENT_ACCESS_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/CarPartsManager$Function;->SEAT_DRIVER_CONVENIENT_ACCESS_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/CarPartsManager;->getEnabled(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/ac/SeatFragment;->setSwitcherView(Lcom/yftech/settings/manager/CarPartsManager$Function;Z)V

    :cond_0
    return-void
.end method

.method private setSwitcherView(Lcom/yftech/settings/manager/CarPartsManager$Function;Z)V
    .locals 1

    .line 107
    sget-object v0, Lcom/yftech/settings/ac/SeatFragment$2;->$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/CarPartsManager$Function;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 109
    :cond_0
    iget-object p0, p0, Lcom/yftech/settings/ac/SeatFragment;->mSwSeatDriverConvenientAccess:Lcom/yftech/settings/widget/Switcher;

    :goto_0
    if-eqz p0, :cond_2

    .line 115
    invoke-virtual {p0}, Lcom/yftech/settings/widget/Switcher;->isChecked()Z

    move-result p1

    if-ne p1, p2, :cond_1

    return-void

    .line 118
    :cond_1
    invoke-virtual {p0, p2}, Lcom/yftech/settings/widget/Switcher;->setChecked(Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 89
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isPressed()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 92
    :cond_0
    sget-object p0, Lcom/yftech/settings/manager/CarPartsManager$Function;->UNKNOWN:Lcom/yftech/settings/manager/CarPartsManager$Function;

    .line 93
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v0, 0x7f08018a

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 95
    :cond_1
    sget-object p0, Lcom/yftech/settings/manager/CarPartsManager$Function;->SEAT_DRIVER_CONVENIENT_ACCESS_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    .line 100
    :goto_0
    sget-object p1, Lcom/yftech/settings/manager/CarPartsManager$Function;->UNKNOWN:Lcom/yftech/settings/manager/CarPartsManager$Function;

    if-eq p0, p1, :cond_2

    .line 101
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/yftech/settings/manager/CarPartsManager;->setEnabled(Lcom/yftech/settings/manager/CarPartsManager$Function;Z)Z

    :cond_2
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

    const p3, 0x7f0a0044

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 49
    invoke-direct {p0, p1}, Lcom/yftech/settings/ac/SeatFragment;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method public onPause()V
    .locals 1

    .line 62
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onPause()V

    .line 63
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/settings/ac/SeatFragment;->mCarPartsModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/manager/CarPartsManager;->unregisterModelCallback(Lcom/yftech/settings/manager/BaseManager$ModelCallback;)V

    .line 64
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->STOP_TIMEOUT_ACTION:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {p0, v0}, Lcom/yftech/settings/manager/CarPartsManager;->setAction(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 55
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onResume()V

    .line 56
    invoke-direct {p0}, Lcom/yftech/settings/ac/SeatFragment;->initViewData()V

    .line 57
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/settings/ac/SeatFragment;->mCarPartsModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/manager/CarPartsManager;->registerModelCallback(Lcom/yftech/settings/manager/BaseManager$ModelCallback;)V

    return-void
.end method
