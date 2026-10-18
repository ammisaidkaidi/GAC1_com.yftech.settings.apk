.class public Lcom/yftech/settings/avdc/AvdcActivity;
.super Lcom/yftech/settings/BaseActivity;
.source "AvdcActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAB_DRIVING_MODE:Ljava/lang/String; = "driving_mode"

.field private static final TAB_MODE_SETTINGS:Ljava/lang/String; = "mode_settings"

.field private static final TAG:Ljava/lang/String; = "AvdcActivity"


# instance fields
.field private isBack:Z

.field private layoutPowerAcc:Landroid/widget/RelativeLayout;

.field private listener:Lcom/yftech/vehicle/sdk/CarPowerManager$CarPowerListener;

.field private mDrivingModeFragment:Lcom/yftech/settings/avdc/DrivingModeFragment;

.field private mHandler:Landroid/os/Handler;

.field private mModeSettingsFragment:Lcom/yftech/settings/avdc/ModeSettingsFragment;

.field private mPowerToast:Landroid/widget/Toast;

.field private mShowTab:Ljava/lang/String;

.field private tabDrivingMode:Landroid/widget/Button;

.field private tabModeSettings:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/yftech/settings/BaseActivity;-><init>()V

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yftech/settings/avdc/AvdcActivity;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/yftech/settings/avdc/AvdcActivity;->isBack:Z

    .line 46
    new-instance v0, Lcom/yftech/settings/avdc/AvdcActivity$1;

    invoke-direct {v0, p0}, Lcom/yftech/settings/avdc/AvdcActivity$1;-><init>(Lcom/yftech/settings/avdc/AvdcActivity;)V

    iput-object v0, p0, Lcom/yftech/settings/avdc/AvdcActivity;->listener:Lcom/yftech/vehicle/sdk/CarPowerManager$CarPowerListener;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/settings/avdc/AvdcActivity;Z)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/yftech/settings/avdc/AvdcActivity;->updateView(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/yftech/settings/avdc/AvdcActivity;)Landroid/os/Handler;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/yftech/settings/avdc/AvdcActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private getTabExtras(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2

    const-string p0, "driving_mode"

    if-eqz p1, :cond_0

    .line 85
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "activity"

    .line 86
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "activity"

    .line 87
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const-string p1, "AvdcActivity"

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTagExtras() tab:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private updateView(Z)V
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/yftech/settings/avdc/AvdcActivity;->layoutPowerAcc:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/yftech/settings/avdc/AvdcActivity;->tabDrivingMode:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 217
    iget-object p0, p0, Lcom/yftech/settings/avdc/AvdcActivity;->tabModeSettings:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method protected getPowerToastStr()Ljava/lang/String;
    .locals 1

    .line 198
    invoke-virtual {p0}, Lcom/yftech/settings/avdc/AvdcActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f0d01b8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 119
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p1, "driving_mode"

    .line 121
    iget-object v0, p0, Lcom/yftech/settings/avdc/AvdcActivity;->mShowTab:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "driving_mode"

    .line 122
    invoke-virtual {p0, p1}, Lcom/yftech/settings/avdc/AvdcActivity;->showTabFragment(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string p1, "mode_settings"

    .line 129
    iget-object v0, p0, Lcom/yftech/settings/avdc/AvdcActivity;->mShowTab:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "mode_settings"

    .line 130
    invoke-virtual {p0, p1}, Lcom/yftech/settings/avdc/AvdcActivity;->showTabFragment(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f080042
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 62
    invoke-super {p0, p1}, Lcom/yftech/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0a001c

    .line 63
    invoke-virtual {p0, p1}, Lcom/yftech/settings/avdc/AvdcActivity;->setContentView(I)V

    const p1, 0x7f080043

    .line 64
    invoke-virtual {p0, p1}, Lcom/yftech/settings/avdc/AvdcActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/yftech/settings/avdc/AvdcActivity;->tabDrivingMode:Landroid/widget/Button;

    const p1, 0x7f080042

    .line 65
    invoke-virtual {p0, p1}, Lcom/yftech/settings/avdc/AvdcActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/yftech/settings/avdc/AvdcActivity;->tabModeSettings:Landroid/widget/Button;

    const p1, 0x7f080117

    .line 66
    invoke-virtual {p0, p1}, Lcom/yftech/settings/avdc/AvdcActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/yftech/settings/avdc/AvdcActivity;->layoutPowerAcc:Landroid/widget/RelativeLayout;

    .line 67
    iget-object p1, p0, Lcom/yftech/settings/avdc/AvdcActivity;->layoutPowerAcc:Landroid/widget/RelativeLayout;

    const v0, 0x7f08000b

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f0d01b8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 69
    iget-object p1, p0, Lcom/yftech/settings/avdc/AvdcActivity;->tabDrivingMode:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object p1, p0, Lcom/yftech/settings/avdc/AvdcActivity;->tabModeSettings:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    invoke-virtual {p0}, Lcom/yftech/settings/avdc/AvdcActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/yftech/settings/avdc/AvdcActivity;->getTabExtras(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/settings/avdc/AvdcActivity;->mShowTab:Ljava/lang/String;

    const-string p1, "AvdcActivity"

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate() showTab:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yftech/settings/avdc/AvdcActivity;->mShowTab:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    .line 223
    iput-boolean v0, p0, Lcom/yftech/settings/avdc/AvdcActivity;->isBack:Z

    .line 225
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/settings/avdc/AvdcActivity;->finish()V

    .line 226
    invoke-super {p0, p1, p2}, Lcom/yftech/settings/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 77
    invoke-super {p0, p1}, Lcom/yftech/settings/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 78
    invoke-direct {p0, p1}, Lcom/yftech/settings/avdc/AvdcActivity;->getTabExtras(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/settings/avdc/AvdcActivity;->mShowTab:Ljava/lang/String;

    const-string p1, "AvdcActivity"

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNewIntent() showTab:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yftech/settings/avdc/AvdcActivity;->mShowTab:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 108
    invoke-super {p0}, Lcom/yftech/settings/BaseActivity;->onPause()V

    const-string v0, "AvdcActivity"

    const-string v1, "onPause: "

    .line 109
    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-boolean v0, p0, Lcom/yftech/settings/avdc/AvdcActivity;->isBack:Z

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/yftech/settings/avdc/AvdcActivity;->mShowTab:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/yftech/settings/avdc/AvdcActivity;->removeTabFragment(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 112
    iput-boolean v0, p0, Lcom/yftech/settings/avdc/AvdcActivity;->isBack:Z

    .line 114
    :cond_0
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarPowerManager;->get()Lcom/yftech/vehicle/sdk/CarPowerManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/settings/avdc/AvdcActivity;->listener:Lcom/yftech/vehicle/sdk/CarPowerManager$CarPowerListener;

    invoke-virtual {v0, p0}, Lcom/yftech/vehicle/sdk/CarPowerManager;->unregisterListener(Lcom/yftech/vehicle/sdk/CarPowerManager$CarPowerListener;)V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 96
    invoke-super {p0}, Lcom/yftech/settings/BaseActivity;->onResume()V

    const-string v0, "AvdcActivity"

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume() showTab:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/settings/avdc/AvdcActivity;->mShowTab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarPowerManager;->get()Lcom/yftech/vehicle/sdk/CarPowerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/settings/avdc/AvdcActivity;->listener:Lcom/yftech/vehicle/sdk/CarPowerManager$CarPowerListener;

    invoke-virtual {v0, v1}, Lcom/yftech/vehicle/sdk/CarPowerManager;->registerListener(Lcom/yftech/vehicle/sdk/CarPowerManager$CarPowerListener;)V

    .line 102
    invoke-virtual {p0}, Lcom/yftech/settings/avdc/AvdcActivity;->isPower()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/yftech/settings/avdc/AvdcActivity;->updateView(Z)V

    .line 103
    iget-object v0, p0, Lcom/yftech/settings/avdc/AvdcActivity;->mShowTab:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/yftech/settings/avdc/AvdcActivity;->showTabFragment(Ljava/lang/String;)V

    return-void
.end method

.method public removeTabFragment(Ljava/lang/String;)V
    .locals 5

    .line 169
    iget-object v0, p0, Lcom/yftech/settings/avdc/AvdcActivity;->tabDrivingMode:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 170
    iget-object v0, p0, Lcom/yftech/settings/avdc/AvdcActivity;->tabModeSettings:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 171
    iput-object p1, p0, Lcom/yftech/settings/avdc/AvdcActivity;->mShowTab:Ljava/lang/String;

    const-string v0, "driving_mode"

    .line 173
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 174
    iget-object p1, p0, Lcom/yftech/settings/avdc/AvdcActivity;->tabDrivingMode:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 175
    iget-object p1, p0, Lcom/yftech/settings/avdc/AvdcActivity;->mDrivingModeFragment:Lcom/yftech/settings/avdc/DrivingModeFragment;

    if-nez p1, :cond_0

    .line 176
    new-instance p1, Lcom/yftech/settings/avdc/DrivingModeFragment;

    invoke-direct {p1}, Lcom/yftech/settings/avdc/DrivingModeFragment;-><init>()V

    iput-object p1, p0, Lcom/yftech/settings/avdc/AvdcActivity;->mDrivingModeFragment:Lcom/yftech/settings/avdc/DrivingModeFragment;

    .line 178
    :cond_0
    iget-object p1, p0, Lcom/yftech/settings/avdc/AvdcActivity;->mDrivingModeFragment:Lcom/yftech/settings/avdc/DrivingModeFragment;

    goto :goto_0

    :cond_1
    const-string v0, "mode_settings"

    .line 179
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 180
    iget-object p1, p0, Lcom/yftech/settings/avdc/AvdcActivity;->tabModeSettings:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 181
    iget-object p1, p0, Lcom/yftech/settings/avdc/AvdcActivity;->mModeSettingsFragment:Lcom/yftech/settings/avdc/ModeSettingsFragment;

    if-nez p1, :cond_2

    .line 182
    new-instance p1, Lcom/yftech/settings/avdc/ModeSettingsFragment;

    invoke-direct {p1}, Lcom/yftech/settings/avdc/ModeSettingsFragment;-><init>()V

    iput-object p1, p0, Lcom/yftech/settings/avdc/AvdcActivity;->mModeSettingsFragment:Lcom/yftech/settings/avdc/ModeSettingsFragment;

    .line 184
    :cond_2
    iget-object p1, p0, Lcom/yftech/settings/avdc/AvdcActivity;->mModeSettingsFragment:Lcom/yftech/settings/avdc/ModeSettingsFragment;

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_5

    .line 187
    invoke-virtual {p0}, Lcom/yftech/settings/avdc/AvdcActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 188
    iget-object v3, p0, Lcom/yftech/settings/avdc/AvdcActivity;->mShowTab:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_4

    move v1, v2

    :cond_4
    const-string v2, "AvdcActivity"

    .line 189
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeTabFragment, showTab:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yftech/settings/avdc/AvdcActivity;->mShowTab:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", exist:"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p0

    .line 191
    invoke-virtual {p0, p1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p0

    .line 192
    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_5
    return-void
.end method

.method protected showPowerToast()V
    .locals 0

    return-void
.end method

.method public showTabFragment(Ljava/lang/String;)V
    .locals 6

    .line 140
    iget-object v0, p0, Lcom/yftech/settings/avdc/AvdcActivity;->tabDrivingMode:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 141
    iget-object v0, p0, Lcom/yftech/settings/avdc/AvdcActivity;->tabModeSettings:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 142
    iput-object p1, p0, Lcom/yftech/settings/avdc/AvdcActivity;->mShowTab:Ljava/lang/String;

    const-string v0, "driving_mode"

    .line 144
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 145
    iget-object p1, p0, Lcom/yftech/settings/avdc/AvdcActivity;->tabDrivingMode:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setSelected(Z)V

    .line 146
    iget-object p1, p0, Lcom/yftech/settings/avdc/AvdcActivity;->mDrivingModeFragment:Lcom/yftech/settings/avdc/DrivingModeFragment;

    if-nez p1, :cond_0

    .line 147
    new-instance p1, Lcom/yftech/settings/avdc/DrivingModeFragment;

    invoke-direct {p1}, Lcom/yftech/settings/avdc/DrivingModeFragment;-><init>()V

    iput-object p1, p0, Lcom/yftech/settings/avdc/AvdcActivity;->mDrivingModeFragment:Lcom/yftech/settings/avdc/DrivingModeFragment;

    .line 149
    :cond_0
    iget-object p1, p0, Lcom/yftech/settings/avdc/AvdcActivity;->mDrivingModeFragment:Lcom/yftech/settings/avdc/DrivingModeFragment;

    goto :goto_0

    :cond_1
    const-string v0, "mode_settings"

    .line 150
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 151
    iget-object p1, p0, Lcom/yftech/settings/avdc/AvdcActivity;->tabModeSettings:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setSelected(Z)V

    .line 152
    iget-object p1, p0, Lcom/yftech/settings/avdc/AvdcActivity;->mModeSettingsFragment:Lcom/yftech/settings/avdc/ModeSettingsFragment;

    if-nez p1, :cond_2

    .line 153
    new-instance p1, Lcom/yftech/settings/avdc/ModeSettingsFragment;

    invoke-direct {p1}, Lcom/yftech/settings/avdc/ModeSettingsFragment;-><init>()V

    iput-object p1, p0, Lcom/yftech/settings/avdc/AvdcActivity;->mModeSettingsFragment:Lcom/yftech/settings/avdc/ModeSettingsFragment;

    .line 155
    :cond_2
    iget-object p1, p0, Lcom/yftech/settings/avdc/AvdcActivity;->mModeSettingsFragment:Lcom/yftech/settings/avdc/ModeSettingsFragment;

    goto :goto_0

    :cond_3
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_5

    .line 158
    invoke-virtual {p0}, Lcom/yftech/settings/avdc/AvdcActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 159
    iget-object v4, p0, Lcom/yftech/settings/avdc/AvdcActivity;->mShowTab:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    if-eqz v4, :cond_4

    move v1, v3

    :cond_4
    const-string v3, "AvdcActivity"

    .line 160
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showTabFragment, showTab:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/yftech/settings/avdc/AvdcActivity;->mShowTab:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", exist:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f080099

    iget-object p0, p0, Lcom/yftech/settings/avdc/AvdcActivity;->mShowTab:Ljava/lang/String;

    .line 162
    invoke-virtual {v0, v1, p1, p0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p0

    .line 163
    invoke-virtual {p0, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p0

    .line 164
    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_5
    return-void
.end method
