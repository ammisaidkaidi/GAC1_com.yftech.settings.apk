.class public Lcom/yftech/settings/parts/CarPartsRearviewFragment;
.super Lcom/yftech/settings/BaseFragment;
.source "CarPartsRearviewFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private btnRearviewMirrorReverseTurnDown:Landroid/widget/Button;

.field private mCarPartsModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yftech/settings/manager/BaseManager$ModelCallback<",
            "Lcom/yftech/settings/manager/CarPartsManager$Function;",
            ">;"
        }
    .end annotation
.end field

.field private mRearViewTipDialog:Lcom/yftech/settings/widget/dialog/RearViewTipDialog;

.field private mSwRearviewMirrorAutoFold:Lcom/yftech/settings/widget/Switcher;

.field private mSwRearviewMirrorReverseTurnDown:Lcom/yftech/settings/widget/Switcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/yftech/settings/BaseFragment;-><init>()V

    .line 33
    new-instance v0, Lcom/yftech/settings/parts/CarPartsRearviewFragment$1;

    invoke-direct {v0, p0}, Lcom/yftech/settings/parts/CarPartsRearviewFragment$1;-><init>(Lcom/yftech/settings/parts/CarPartsRearviewFragment;)V

    iput-object v0, p0, Lcom/yftech/settings/parts/CarPartsRearviewFragment;->mCarPartsModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/settings/parts/CarPartsRearviewFragment;Lcom/yftech/settings/manager/CarPartsManager$Function;Z)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/parts/CarPartsRearviewFragment;->setSwitcherView(Lcom/yftech/settings/manager/CarPartsManager$Function;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/yftech/settings/parts/CarPartsRearviewFragment;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/yftech/settings/parts/CarPartsRearviewFragment;->initViewData()V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 8

    const v0, 0x7f080174

    .line 80
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 81
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v2

    sget-object v3, Lcom/yftech/settings/manager/CarPartsManager$Function;->OSRM_AUTO_FOLD_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v2, v3}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 83
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    const v5, 0x7f0801bb

    const v6, 0x7f080218

    if-nez v2, :cond_1

    .line 84
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v7, 0x7f0d014e

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(I)V

    const v2, 0x7f0801ff

    .line 85
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v7, 0x7f0d014f

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(I)V

    .line 86
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yftech/settings/widget/Switcher;

    iput-object v1, p0, Lcom/yftech/settings/parts/CarPartsRearviewFragment;->mSwRearviewMirrorAutoFold:Lcom/yftech/settings/widget/Switcher;

    .line 87
    iget-object v1, p0, Lcom/yftech/settings/parts/CarPartsRearviewFragment;->mSwRearviewMirrorAutoFold:Lcom/yftech/settings/widget/Switcher;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yftech/settings/widget/Switcher;->setTag(Ljava/lang/Object;)V

    .line 88
    iget-object v0, p0, Lcom/yftech/settings/parts/CarPartsRearviewFragment;->mSwRearviewMirrorAutoFold:Lcom/yftech/settings/widget/Switcher;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/widget/Switcher;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 89
    iget-object v0, p0, Lcom/yftech/settings/parts/CarPartsRearviewFragment;->mSwRearviewMirrorAutoFold:Lcom/yftech/settings/widget/Switcher;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/widget/Switcher;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    const v0, 0x7f080175

    .line 93
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 94
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/CarPartsManager$Function;->OSRM_TURN_DOWN_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v3, v4

    :cond_2
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 97
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 98
    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0d0150

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 99
    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yftech/settings/widget/Switcher;

    iput-object v1, p0, Lcom/yftech/settings/parts/CarPartsRearviewFragment;->mSwRearviewMirrorReverseTurnDown:Lcom/yftech/settings/widget/Switcher;

    .line 100
    iget-object v1, p0, Lcom/yftech/settings/parts/CarPartsRearviewFragment;->mSwRearviewMirrorReverseTurnDown:Lcom/yftech/settings/widget/Switcher;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yftech/settings/widget/Switcher;->setTag(Ljava/lang/Object;)V

    .line 101
    iget-object v1, p0, Lcom/yftech/settings/parts/CarPartsRearviewFragment;->mSwRearviewMirrorReverseTurnDown:Lcom/yftech/settings/widget/Switcher;

    invoke-virtual {v1, p0}, Lcom/yftech/settings/widget/Switcher;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 102
    iget-object v1, p0, Lcom/yftech/settings/parts/CarPartsRearviewFragment;->mSwRearviewMirrorReverseTurnDown:Lcom/yftech/settings/widget/Switcher;

    invoke-virtual {v1, p0}, Lcom/yftech/settings/widget/Switcher;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v1, 0x7f080070

    .line 104
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/yftech/settings/parts/CarPartsRearviewFragment;->btnRearviewMirrorReverseTurnDown:Landroid/widget/Button;

    .line 105
    iget-object p1, p0, Lcom/yftech/settings/parts/CarPartsRearviewFragment;->btnRearviewMirrorReverseTurnDown:Landroid/widget/Button;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 106
    iget-object p1, p0, Lcom/yftech/settings/parts/CarPartsRearviewFragment;->btnRearviewMirrorReverseTurnDown:Landroid/widget/Button;

    const v0, 0x7f0d0152

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 107
    iget-object p1, p0, Lcom/yftech/settings/parts/CarPartsRearviewFragment;->btnRearviewMirrorReverseTurnDown:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object p1, p0, Lcom/yftech/settings/parts/CarPartsRearviewFragment;->btnRearviewMirrorReverseTurnDown:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_3
    return-void
.end method

.method private initViewData()V
    .locals 3

    .line 113
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/CarPartsManager$Function;->OSRM_AUTO_FOLD_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->OSRM_AUTO_FOLD_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/CarPartsManager$Function;->OSRM_AUTO_FOLD_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/CarPartsManager;->getEnabled(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/parts/CarPartsRearviewFragment;->setSwitcherView(Lcom/yftech/settings/manager/CarPartsManager$Function;Z)V

    .line 116
    :cond_0
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v0

    sget-object v1, Lcom/yftech/settings/manager/CarPartsManager$Function;->OSRM_TURN_DOWN_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->OSRM_TURN_DOWN_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/CarPartsManager$Function;->OSRM_TURN_DOWN_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/CarPartsManager;->getEnabled(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/parts/CarPartsRearviewFragment;->setSwitcherView(Lcom/yftech/settings/manager/CarPartsManager$Function;Z)V

    .line 119
    :cond_1
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->OSRM_TURN_DOWN_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {p0, v0}, Lcom/yftech/settings/manager/CarPartsManager;->getFunctionPresent(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    return-void
.end method

.method private setSwitcherView(Lcom/yftech/settings/manager/CarPartsManager$Function;Z)V
    .locals 1

    .line 160
    sget-object v0, Lcom/yftech/settings/parts/CarPartsRearviewFragment$3;->$SwitchMap$com$yftech$settings$manager$CarPartsManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/CarPartsManager$Function;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_1

    .line 165
    :pswitch_0
    iget-object p1, p0, Lcom/yftech/settings/parts/CarPartsRearviewFragment;->mSwRearviewMirrorReverseTurnDown:Lcom/yftech/settings/widget/Switcher;

    .line 167
    iget-object p0, p0, Lcom/yftech/settings/parts/CarPartsRearviewFragment;->btnRearviewMirrorReverseTurnDown:Landroid/widget/Button;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 162
    :pswitch_1
    iget-object p1, p0, Lcom/yftech/settings/parts/CarPartsRearviewFragment;->mSwRearviewMirrorAutoFold:Lcom/yftech/settings/widget/Switcher;

    :goto_1
    if-eqz p1, :cond_2

    .line 171
    invoke-virtual {p1}, Lcom/yftech/settings/widget/Switcher;->isChecked()Z

    move-result p0

    if-ne p0, p2, :cond_1

    return-void

    .line 174
    :cond_1
    invoke-virtual {p1, p2}, Lcom/yftech/settings/widget/Switcher;->setChecked(Z)V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showConfirmDialog()V
    .locals 3

    .line 179
    new-instance v0, Lcom/yftech/settings/widget/dialog/RearViewTipDialog;

    invoke-virtual {p0}, Lcom/yftech/settings/parts/CarPartsRearviewFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/yftech/settings/parts/CarPartsRearviewFragment$2;

    invoke-direct {v2, p0}, Lcom/yftech/settings/parts/CarPartsRearviewFragment$2;-><init>(Lcom/yftech/settings/parts/CarPartsRearviewFragment;)V

    invoke-direct {v0, v1, v2}, Lcom/yftech/settings/widget/dialog/RearViewTipDialog;-><init>(Landroid/content/Context;Lcom/yftech/settings/widget/dialog/RearViewTipDialog$OnBtnClickListener;)V

    iput-object v0, p0, Lcom/yftech/settings/parts/CarPartsRearviewFragment;->mRearViewTipDialog:Lcom/yftech/settings/widget/dialog/RearViewTipDialog;

    .line 195
    iget-object p0, p0, Lcom/yftech/settings/parts/CarPartsRearviewFragment;->mRearViewTipDialog:Lcom/yftech/settings/widget/dialog/RearViewTipDialog;

    invoke-virtual {p0}, Lcom/yftech/settings/widget/dialog/RearViewTipDialog;->show()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 138
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isPressed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 141
    :cond_0
    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->UNKNOWN:Lcom/yftech/settings/manager/CarPartsManager$Function;

    .line 142
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 147
    :pswitch_0
    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->OSRM_TURN_DOWN_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    .line 148
    iget-object p0, p0, Lcom/yftech/settings/parts/CarPartsRearviewFragment;->btnRearviewMirrorReverseTurnDown:Landroid/widget/Button;

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 144
    :pswitch_1
    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->OSRM_AUTO_FOLD_ENABLED:Lcom/yftech/settings/manager/CarPartsManager$Function;

    .line 153
    :goto_1
    sget-object p0, Lcom/yftech/settings/manager/CarPartsManager$Function;->UNKNOWN:Lcom/yftech/settings/manager/CarPartsManager$Function;

    if-eq v0, p0, :cond_2

    .line 154
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object p0

    invoke-virtual {p0, v0, p2}, Lcom/yftech/settings/manager/CarPartsManager;->setEnabled(Lcom/yftech/settings/manager/CarPartsManager$Function;Z)Z

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f080174
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 126
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v0, 0x7f080175

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object p1

    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->OSRM_TURN_DOWN_VALUE:Lcom/yftech/settings/manager/CarPartsManager$Function;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleSaveCmd;->START:Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleSaveCmd;

    invoke-virtual {p1, v0, v1}, Lcom/yftech/settings/manager/CarPartsManager;->setValue(Lcom/yftech/settings/manager/CarPartsManager$Function;Ljava/lang/Object;)Z

    .line 129
    invoke-direct {p0}, Lcom/yftech/settings/parts/CarPartsRearviewFragment;->showConfirmDialog()V

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

    const p3, 0x7f0a0043

    const/4 v0, 0x0

    .line 59
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 60
    invoke-direct {p0, p1}, Lcom/yftech/settings/parts/CarPartsRearviewFragment;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method public onPause()V
    .locals 1

    .line 73
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onPause()V

    .line 74
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/settings/parts/CarPartsRearviewFragment;->mCarPartsModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/manager/CarPartsManager;->unregisterModelCallback(Lcom/yftech/settings/manager/BaseManager$ModelCallback;)V

    .line 75
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/settings/manager/CarPartsManager$Function;->STOP_TIMEOUT_ACTION:Lcom/yftech/settings/manager/CarPartsManager$Function;

    invoke-virtual {p0, v0}, Lcom/yftech/settings/manager/CarPartsManager;->setAction(Lcom/yftech/settings/manager/CarPartsManager$Function;)Z

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 66
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onResume()V

    .line 67
    invoke-direct {p0}, Lcom/yftech/settings/parts/CarPartsRearviewFragment;->initViewData()V

    .line 68
    invoke-static {}, Lcom/yftech/settings/manager/CarPartsManager;->getInstance()Lcom/yftech/settings/manager/CarPartsManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/settings/parts/CarPartsRearviewFragment;->mCarPartsModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/manager/CarPartsManager;->registerModelCallback(Lcom/yftech/settings/manager/BaseManager$ModelCallback;)V

    return-void
.end method
