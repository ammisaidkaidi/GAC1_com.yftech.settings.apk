.class public Lcom/yftech/settings/SettingsActivity;
.super Lcom/yftech/settings/BaseActivity;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAB_AC_SEAT:I = 0x5

.field private static final TAB_CHASSIS_DYNAMIC:I = 0x3

.field private static final TAB_CONNECT:I = 0x0

.field private static final TAB_DISPLAY:I = 0x6

.field private static final TAB_DRIVE:I = 0x2

.field private static final TAB_PARTS:I = 0x4

.field private static final TAB_SOUND:I = 0x1

.field private static final TAB_SYSTEM:I = 0x7

.field private static final TAB_VOICE:I = 0x8

.field private static final TAG:Ljava/lang/String; = "SettingsActivity1"

.field private static final TAG_AC_SEAT:Ljava/lang/String; = "AcSeat"

.field private static final TAG_CHASSIS_DYNAMIC:Ljava/lang/String; = "ChassisDynamic"

.field private static final TAG_CONNECT:Ljava/lang/String; = "Connect"

.field private static final TAG_DISPLAY:Ljava/lang/String; = "Display"

.field private static final TAG_DRIVE:Ljava/lang/String; = "Drive"

.field private static final TAG_PARTS:Ljava/lang/String; = "Parts"

.field private static final TAG_SOUND:Ljava/lang/String; = "Sound"

.field private static final TAG_SYSTEM:Ljava/lang/String; = "System"

.field private static final TAG_VOICE:Ljava/lang/String; = "Voice"


# instance fields
.field private isBack:Z

.field private mAcSeatMainFragment:Lcom/yftech/settings/ac/AcSeatMainFragment;

.field private mCarPartsMainFragment:Lcom/yftech/settings/parts/CarPartsMainFragment;

.field private mCarPlayAvailableListDialog:Lcom/yftech/settings/widget/dialog/CarPlayAvailableListDialog;

.field private mChassisPowerMainFragment:Lcom/yftech/settings/chassis/ChassisPowerMainFragment;

.field private mCheckTab:Landroid/widget/TextView;

.field private mConnectMainFragment:Lcom/yftech/settings/connect/ConnectMainFragment;

.field private mDisplayMainFragment:Lcom/yftech/settings/display/DisplayMainFragment;

.field private mDriveAidsMainFragment:Lcom/yftech/settings/aid/DriveAidsMainFragment;

.field private mExitReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mSoundFragment:Lcom/yftech/settings/sound/SoundFragment;

.field private mSubView:I

.field private mSystemMainFragment:Lcom/yftech/settings/system/SystemMainFragment;

.field private mTabId:I

.field private mVoiceMainFragment:Lcom/yftech/settings/voice/VoiceMainFragment;

.field private menu:Landroid/widget/HorizontalScrollView;

.field private tvAcSeat:Landroid/widget/TextView;

.field private tvChassisDynamic:Landroid/widget/TextView;

.field private tvConnect:Landroid/widget/TextView;

.field private tvDisplay:Landroid/widget/TextView;

.field private tvDrive:Landroid/widget/TextView;

.field private tvParts:Landroid/widget/TextView;

.field private tvSound:Landroid/widget/TextView;

.field private tvSystem:Landroid/widget/TextView;

.field private tvVoice:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/yftech/settings/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 72
    iput v0, p0, Lcom/yftech/settings/SettingsActivity;->mTabId:I

    .line 85
    iput-boolean v0, p0, Lcom/yftech/settings/SettingsActivity;->isBack:Z

    .line 156
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yftech/settings/SettingsActivity;->mHandler:Landroid/os/Handler;

    .line 157
    new-instance v0, Lcom/yftech/settings/SettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/yftech/settings/SettingsActivity$1;-><init>(Lcom/yftech/settings/SettingsActivity;)V

    iput-object v0, p0, Lcom/yftech/settings/SettingsActivity;->mExitReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/settings/SettingsActivity;)Landroid/os/Handler;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/yftech/settings/SettingsActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$102(Lcom/yftech/settings/SettingsActivity;Lcom/yftech/settings/widget/dialog/CarPlayAvailableListDialog;)Lcom/yftech/settings/widget/dialog/CarPlayAvailableListDialog;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/yftech/settings/SettingsActivity;->mCarPlayAvailableListDialog:Lcom/yftech/settings/widget/dialog/CarPlayAvailableListDialog;

    return-object p1
.end method

.method private getTabExtras(Landroid/content/Intent;)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_c

    .line 265
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingsActivity1"

    .line 266
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTabExtras() action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.yftech.intent.action.start.bt.setting"

    .line 267
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "Connect"

    .line 269
    iget-object v0, p0, Lcom/yftech/settings/SettingsActivity;->mConnectMainFragment:Lcom/yftech/settings/connect/ConnectMainFragment;

    if-nez v0, :cond_0

    .line 270
    new-instance v0, Lcom/yftech/settings/connect/ConnectMainFragment;

    invoke-direct {v0}, Lcom/yftech/settings/connect/ConnectMainFragment;-><init>()V

    iput-object v0, p0, Lcom/yftech/settings/SettingsActivity;->mConnectMainFragment:Lcom/yftech/settings/connect/ConnectMainFragment;

    .line 272
    :cond_0
    iget-object p0, p0, Lcom/yftech/settings/SettingsActivity;->mConnectMainFragment:Lcom/yftech/settings/connect/ConnectMainFragment;

    invoke-virtual {p0}, Lcom/yftech/settings/connect/ConnectMainFragment;->setSkipToBt()V

    goto/16 :goto_0

    :cond_1
    const-string v1, "com.yftech.intent.action.start.carplay.setting"

    .line 273
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "Connect"

    const-string v1, "subView"

    const/4 v2, 0x0

    .line 275
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/yftech/settings/SettingsActivity;->mSubView:I

    .line 276
    iget-object p1, p0, Lcom/yftech/settings/SettingsActivity;->mConnectMainFragment:Lcom/yftech/settings/connect/ConnectMainFragment;

    if-nez p1, :cond_2

    .line 277
    new-instance p1, Lcom/yftech/settings/connect/ConnectMainFragment;

    invoke-direct {p1}, Lcom/yftech/settings/connect/ConnectMainFragment;-><init>()V

    iput-object p1, p0, Lcom/yftech/settings/SettingsActivity;->mConnectMainFragment:Lcom/yftech/settings/connect/ConnectMainFragment;

    .line 279
    :cond_2
    iget-object p0, p0, Lcom/yftech/settings/SettingsActivity;->mConnectMainFragment:Lcom/yftech/settings/connect/ConnectMainFragment;

    invoke-virtual {p0}, Lcom/yftech/settings/connect/ConnectMainFragment;->setSkipToLink()V

    move-object p1, v0

    goto/16 :goto_0

    :cond_3
    const-string v1, "com.yftech.intent.action.start.hicar.setting"

    .line 280
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string p1, "Connect"

    .line 282
    iget-object v0, p0, Lcom/yftech/settings/SettingsActivity;->mConnectMainFragment:Lcom/yftech/settings/connect/ConnectMainFragment;

    if-nez v0, :cond_4

    .line 283
    new-instance v0, Lcom/yftech/settings/connect/ConnectMainFragment;

    invoke-direct {v0}, Lcom/yftech/settings/connect/ConnectMainFragment;-><init>()V

    iput-object v0, p0, Lcom/yftech/settings/SettingsActivity;->mConnectMainFragment:Lcom/yftech/settings/connect/ConnectMainFragment;

    .line 285
    :cond_4
    iget-object p0, p0, Lcom/yftech/settings/SettingsActivity;->mConnectMainFragment:Lcom/yftech/settings/connect/ConnectMainFragment;

    invoke-virtual {p0}, Lcom/yftech/settings/connect/ConnectMainFragment;->setSkipToLink()V

    goto :goto_0

    :cond_5
    const-string v1, "com.yftech.intent.action.start.time.setting"

    .line 286
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string p1, "System"

    .line 288
    iget-object v0, p0, Lcom/yftech/settings/SettingsActivity;->mSystemMainFragment:Lcom/yftech/settings/system/SystemMainFragment;

    if-nez v0, :cond_6

    .line 289
    new-instance v0, Lcom/yftech/settings/system/SystemMainFragment;

    invoke-direct {v0}, Lcom/yftech/settings/system/SystemMainFragment;-><init>()V

    iput-object v0, p0, Lcom/yftech/settings/SettingsActivity;->mSystemMainFragment:Lcom/yftech/settings/system/SystemMainFragment;

    .line 291
    :cond_6
    iget-object p0, p0, Lcom/yftech/settings/SettingsActivity;->mSystemMainFragment:Lcom/yftech/settings/system/SystemMainFragment;

    invoke-virtual {p0}, Lcom/yftech/settings/system/SystemMainFragment;->setToTimeSettingFlag()V

    goto :goto_0

    :cond_7
    const-string v1, "com.yftech.intent.action.start.phonenumber.setting"

    .line 292
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string p1, "Parts"

    .line 294
    iget-object v0, p0, Lcom/yftech/settings/SettingsActivity;->mCarPartsMainFragment:Lcom/yftech/settings/parts/CarPartsMainFragment;

    if-nez v0, :cond_8

    .line 295
    new-instance v0, Lcom/yftech/settings/parts/CarPartsMainFragment;

    invoke-direct {v0}, Lcom/yftech/settings/parts/CarPartsMainFragment;-><init>()V

    iput-object v0, p0, Lcom/yftech/settings/SettingsActivity;->mCarPartsMainFragment:Lcom/yftech/settings/parts/CarPartsMainFragment;

    .line 297
    :cond_8
    iget-object p0, p0, Lcom/yftech/settings/SettingsActivity;->mCarPartsMainFragment:Lcom/yftech/settings/parts/CarPartsMainFragment;

    invoke-virtual {p0}, Lcom/yftech/settings/parts/CarPartsMainFragment;->skipToMoreAndShowPhoneNumView()V

    goto :goto_0

    :cond_9
    const-string v1, "com.yftech.intent.action.start.steeringwheelcustombutton.setting"

    .line 298
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p1, "Parts"

    .line 300
    iget-object v0, p0, Lcom/yftech/settings/SettingsActivity;->mCarPartsMainFragment:Lcom/yftech/settings/parts/CarPartsMainFragment;

    if-nez v0, :cond_a

    .line 301
    new-instance v0, Lcom/yftech/settings/parts/CarPartsMainFragment;

    invoke-direct {v0}, Lcom/yftech/settings/parts/CarPartsMainFragment;-><init>()V

    iput-object v0, p0, Lcom/yftech/settings/SettingsActivity;->mCarPartsMainFragment:Lcom/yftech/settings/parts/CarPartsMainFragment;

    .line 303
    :cond_a
    iget-object p0, p0, Lcom/yftech/settings/SettingsActivity;->mCarPartsMainFragment:Lcom/yftech/settings/parts/CarPartsMainFragment;

    invoke-virtual {p0}, Lcom/yftech/settings/parts/CarPartsMainFragment;->skipToMore()V

    goto :goto_0

    .line 305
    :cond_b
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_c

    const-string p1, "activity"

    .line 306
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    const-string p1, "activity"

    .line 307
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_c
    const/4 p1, 0x0

    :goto_0
    const-string p0, "SettingsActivity1"

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTabExtras() tabExtras:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private setChooseTab(Ljava/lang/String;)V
    .locals 12

    .line 177
    iget-object v0, p0, Lcom/yftech/settings/SettingsActivity;->tvConnect:Landroid/widget/TextView;

    const/16 v1, 0x8

    const/4 v2, 0x7

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz p1, :cond_1

    const/4 v10, -0x1

    .line 179
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v11, "AcSeat"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move v10, v4

    goto :goto_0

    :sswitch_1
    const-string v11, "Voice"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move v10, v1

    goto :goto_0

    :sswitch_2
    const-string v11, "Sound"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move v10, v8

    goto :goto_0

    :sswitch_3
    const-string v11, "Parts"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move v10, v5

    goto :goto_0

    :sswitch_4
    const-string v11, "Drive"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move v10, v7

    goto :goto_0

    :sswitch_5
    const-string v11, "ChassisDynamic"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move v10, v6

    goto :goto_0

    :sswitch_6
    const-string v11, "Display"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move v10, v3

    goto :goto_0

    :sswitch_7
    const-string v11, "Connect"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move v10, v9

    goto :goto_0

    :sswitch_8
    const-string v11, "System"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move v10, v2

    :cond_0
    :goto_0
    packed-switch v10, :pswitch_data_0

    goto :goto_1

    .line 214
    :pswitch_0
    iget-object v0, p0, Lcom/yftech/settings/SettingsActivity;->tvVoice:Landroid/widget/TextView;

    goto :goto_2

    .line 209
    :pswitch_1
    iget-object v0, p0, Lcom/yftech/settings/SettingsActivity;->tvSystem:Landroid/widget/TextView;

    .line 211
    iget-object p1, p0, Lcom/yftech/settings/SettingsActivity;->menu:Landroid/widget/HorizontalScrollView;

    const/16 v1, 0x42

    invoke-virtual {p1, v1}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    move v1, v2

    goto :goto_2

    .line 205
    :pswitch_2
    iget-object v0, p0, Lcom/yftech/settings/SettingsActivity;->tvDisplay:Landroid/widget/TextView;

    move v1, v3

    goto :goto_2

    .line 201
    :pswitch_3
    iget-object v0, p0, Lcom/yftech/settings/SettingsActivity;->tvAcSeat:Landroid/widget/TextView;

    move v1, v4

    goto :goto_2

    .line 197
    :pswitch_4
    iget-object v0, p0, Lcom/yftech/settings/SettingsActivity;->tvParts:Landroid/widget/TextView;

    move v1, v5

    goto :goto_2

    .line 193
    :pswitch_5
    iget-object v0, p0, Lcom/yftech/settings/SettingsActivity;->tvChassisDynamic:Landroid/widget/TextView;

    move v1, v6

    goto :goto_2

    .line 189
    :pswitch_6
    iget-object v0, p0, Lcom/yftech/settings/SettingsActivity;->tvDrive:Landroid/widget/TextView;

    move v1, v7

    goto :goto_2

    .line 185
    :pswitch_7
    iget-object v0, p0, Lcom/yftech/settings/SettingsActivity;->tvSound:Landroid/widget/TextView;

    move v1, v8

    goto :goto_2

    .line 181
    :pswitch_8
    iget-object v0, p0, Lcom/yftech/settings/SettingsActivity;->tvConnect:Landroid/widget/TextView;

    :cond_1
    :goto_1
    move v1, v9

    .line 222
    :goto_2
    iget-object p1, p0, Lcom/yftech/settings/SettingsActivity;->mCheckTab:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    .line 223
    iget-object p1, p0, Lcom/yftech/settings/SettingsActivity;->mCheckTab:Landroid/widget/TextView;

    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setSelected(Z)V

    .line 225
    :cond_2
    iput v1, p0, Lcom/yftech/settings/SettingsActivity;->mTabId:I

    .line 226
    iput-object v0, p0, Lcom/yftech/settings/SettingsActivity;->mCheckTab:Landroid/widget/TextView;

    .line 227
    iget-object p0, p0, Lcom/yftech/settings/SettingsActivity;->mCheckTab:Landroid/widget/TextView;

    invoke-virtual {p0, v8}, Landroid/widget/TextView;->setSelected(Z)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6b7ea1b1 -> :sswitch_8
        -0x6412ef36 -> :sswitch_7
        -0x39224f5e -> :sswitch_6
        -0x179928a7 -> :sswitch_5
        0x3f3a96a -> :sswitch_4
        0x4952ac0 -> :sswitch_3
        0x4c5d8ef -> :sswitch_2
        0x4eff112 -> :sswitch_1
        0x74855967 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showCarPlayAvailableListDialog()V
    .locals 2

    .line 618
    iget v0, p0, Lcom/yftech/settings/SettingsActivity;->mSubView:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/yftech/settings/utils/Utils;->isCarPlayCertificate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 619
    new-instance v0, Lcom/yftech/settings/widget/dialog/CarPlayAvailableListDialog;

    invoke-virtual {p0}, Lcom/yftech/settings/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yftech/settings/widget/dialog/CarPlayAvailableListDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yftech/settings/SettingsActivity;->mCarPlayAvailableListDialog:Lcom/yftech/settings/widget/dialog/CarPlayAvailableListDialog;

    .line 620
    iget-object v0, p0, Lcom/yftech/settings/SettingsActivity;->mCarPlayAvailableListDialog:Lcom/yftech/settings/widget/dialog/CarPlayAvailableListDialog;

    invoke-virtual {v0}, Lcom/yftech/settings/widget/dialog/CarPlayAvailableListDialog;->show()V

    .line 621
    iget-object v0, p0, Lcom/yftech/settings/SettingsActivity;->mCarPlayAvailableListDialog:Lcom/yftech/settings/widget/dialog/CarPlayAvailableListDialog;

    new-instance v1, Lcom/yftech/settings/SettingsActivity$2;

    invoke-direct {v1, p0}, Lcom/yftech/settings/SettingsActivity$2;-><init>(Lcom/yftech/settings/SettingsActivity;)V

    invoke-virtual {v0, v1}, Lcom/yftech/settings/widget/dialog/CarPlayAvailableListDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 403
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 489
    :sswitch_0
    iget-object p1, p0, Lcom/yftech/settings/SettingsActivity;->mCheckTab:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yftech/settings/SettingsActivity;->tvVoice:Landroid/widget/TextView;

    if-eq p1, v2, :cond_4

    const/16 p1, 0x8

    .line 490
    invoke-virtual {p0, p1}, Lcom/yftech/settings/SettingsActivity;->showTabFragment(I)V

    .line 491
    iget-object v2, p0, Lcom/yftech/settings/SettingsActivity;->mCheckTab:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 492
    iget-object v1, p0, Lcom/yftech/settings/SettingsActivity;->tvVoice:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 493
    iget-object v0, p0, Lcom/yftech/settings/SettingsActivity;->tvVoice:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/settings/SettingsActivity;->mCheckTab:Landroid/widget/TextView;

    .line 494
    iput p1, p0, Lcom/yftech/settings/SettingsActivity;->mTabId:I

    goto/16 :goto_0

    .line 480
    :sswitch_1
    iget-object p1, p0, Lcom/yftech/settings/SettingsActivity;->mCheckTab:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yftech/settings/SettingsActivity;->tvSystem:Landroid/widget/TextView;

    if-eq p1, v2, :cond_4

    const/4 p1, 0x7

    .line 481
    invoke-virtual {p0, p1}, Lcom/yftech/settings/SettingsActivity;->showTabFragment(I)V

    .line 482
    iget-object v2, p0, Lcom/yftech/settings/SettingsActivity;->mCheckTab:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 483
    iget-object v1, p0, Lcom/yftech/settings/SettingsActivity;->tvSystem:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 484
    iget-object v0, p0, Lcom/yftech/settings/SettingsActivity;->tvSystem:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/settings/SettingsActivity;->mCheckTab:Landroid/widget/TextView;

    .line 485
    iput p1, p0, Lcom/yftech/settings/SettingsActivity;->mTabId:I

    goto/16 :goto_0

    .line 414
    :sswitch_2
    iget-object p1, p0, Lcom/yftech/settings/SettingsActivity;->mCheckTab:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yftech/settings/SettingsActivity;->tvSound:Landroid/widget/TextView;

    if-eq p1, v2, :cond_4

    .line 415
    invoke-virtual {p0, v0}, Lcom/yftech/settings/SettingsActivity;->showTabFragment(I)V

    .line 416
    iget-object p1, p0, Lcom/yftech/settings/SettingsActivity;->mCheckTab:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 417
    iget-object p1, p0, Lcom/yftech/settings/SettingsActivity;->tvSound:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 418
    iget-object p1, p0, Lcom/yftech/settings/SettingsActivity;->tvSound:Landroid/widget/TextView;

    iput-object p1, p0, Lcom/yftech/settings/SettingsActivity;->mCheckTab:Landroid/widget/TextView;

    .line 419
    iput v0, p0, Lcom/yftech/settings/SettingsActivity;->mTabId:I

    goto/16 :goto_0

    .line 447
    :sswitch_3
    iget-object p1, p0, Lcom/yftech/settings/SettingsActivity;->mCheckTab:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yftech/settings/SettingsActivity;->tvParts:Landroid/widget/TextView;

    if-eq p1, v2, :cond_0

    const/4 p1, 0x4

    .line 448
    invoke-virtual {p0, p1}, Lcom/yftech/settings/SettingsActivity;->showTabFragment(I)V

    .line 449
    iget-object v2, p0, Lcom/yftech/settings/SettingsActivity;->mCheckTab:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 450
    iget-object v1, p0, Lcom/yftech/settings/SettingsActivity;->tvParts:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 451
    iget-object v0, p0, Lcom/yftech/settings/SettingsActivity;->tvParts:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/settings/SettingsActivity;->mCheckTab:Landroid/widget/TextView;

    .line 452
    iput p1, p0, Lcom/yftech/settings/SettingsActivity;->mTabId:I

    .line 454
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/settings/SettingsActivity;->isPower()Z

    move-result p1

    if-nez p1, :cond_4

    .line 455
    invoke-virtual {p0}, Lcom/yftech/settings/SettingsActivity;->showPowerToast()V

    goto/16 :goto_0

    .line 423
    :sswitch_4
    iget-object p1, p0, Lcom/yftech/settings/SettingsActivity;->mCheckTab:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yftech/settings/SettingsActivity;->tvDrive:Landroid/widget/TextView;

    if-eq p1, v2, :cond_1

    const/4 p1, 0x2

    .line 424
    invoke-virtual {p0, p1}, Lcom/yftech/settings/SettingsActivity;->showTabFragment(I)V

    .line 425
    iget-object v2, p0, Lcom/yftech/settings/SettingsActivity;->mCheckTab:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 426
    iget-object v1, p0, Lcom/yftech/settings/SettingsActivity;->tvDrive:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 427
    iget-object v0, p0, Lcom/yftech/settings/SettingsActivity;->tvDrive:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/settings/SettingsActivity;->mCheckTab:Landroid/widget/TextView;

    .line 428
    iput p1, p0, Lcom/yftech/settings/SettingsActivity;->mTabId:I

    .line 430
    :cond_1
    invoke-virtual {p0}, Lcom/yftech/settings/SettingsActivity;->isPower()Z

    move-result p1

    if-nez p1, :cond_4

    .line 431
    invoke-virtual {p0}, Lcom/yftech/settings/SettingsActivity;->showPowerToast()V

    goto/16 :goto_0

    .line 471
    :sswitch_5
    iget-object p1, p0, Lcom/yftech/settings/SettingsActivity;->mCheckTab:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yftech/settings/SettingsActivity;->tvDisplay:Landroid/widget/TextView;

    if-eq p1, v2, :cond_4

    const/4 p1, 0x6

    .line 472
    invoke-virtual {p0, p1}, Lcom/yftech/settings/SettingsActivity;->showTabFragment(I)V

    .line 473
    iget-object v2, p0, Lcom/yftech/settings/SettingsActivity;->mCheckTab:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 474
    iget-object v1, p0, Lcom/yftech/settings/SettingsActivity;->tvDisplay:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 475
    iget-object v0, p0, Lcom/yftech/settings/SettingsActivity;->tvDisplay:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/settings/SettingsActivity;->mCheckTab:Landroid/widget/TextView;

    .line 476
    iput p1, p0, Lcom/yftech/settings/SettingsActivity;->mTabId:I

    goto :goto_0

    .line 405
    :sswitch_6
    iget-object p1, p0, Lcom/yftech/settings/SettingsActivity;->mCheckTab:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yftech/settings/SettingsActivity;->tvConnect:Landroid/widget/TextView;

    if-eq p1, v2, :cond_4

    .line 406
    invoke-virtual {p0, v1}, Lcom/yftech/settings/SettingsActivity;->showTabFragment(I)V

    .line 407
    iget-object p1, p0, Lcom/yftech/settings/SettingsActivity;->mCheckTab:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 408
    iget-object p1, p0, Lcom/yftech/settings/SettingsActivity;->tvConnect:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 409
    iget-object p1, p0, Lcom/yftech/settings/SettingsActivity;->tvConnect:Landroid/widget/TextView;

    iput-object p1, p0, Lcom/yftech/settings/SettingsActivity;->mCheckTab:Landroid/widget/TextView;

    .line 410
    iput v1, p0, Lcom/yftech/settings/SettingsActivity;->mTabId:I

    goto :goto_0

    .line 435
    :sswitch_7
    iget-object p1, p0, Lcom/yftech/settings/SettingsActivity;->mCheckTab:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yftech/settings/SettingsActivity;->tvChassisDynamic:Landroid/widget/TextView;

    if-eq p1, v2, :cond_2

    const/4 p1, 0x3

    .line 436
    invoke-virtual {p0, p1}, Lcom/yftech/settings/SettingsActivity;->showTabFragment(I)V

    .line 437
    iget-object v2, p0, Lcom/yftech/settings/SettingsActivity;->mCheckTab:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 438
    iget-object v1, p0, Lcom/yftech/settings/SettingsActivity;->tvChassisDynamic:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 439
    iget-object v0, p0, Lcom/yftech/settings/SettingsActivity;->tvChassisDynamic:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/settings/SettingsActivity;->mCheckTab:Landroid/widget/TextView;

    .line 440
    iput p1, p0, Lcom/yftech/settings/SettingsActivity;->mTabId:I

    .line 442
    :cond_2
    invoke-virtual {p0}, Lcom/yftech/settings/SettingsActivity;->isPower()Z

    move-result p1

    if-nez p1, :cond_4

    .line 443
    invoke-virtual {p0}, Lcom/yftech/settings/SettingsActivity;->showPowerToast()V

    goto :goto_0

    .line 459
    :sswitch_8
    iget-object p1, p0, Lcom/yftech/settings/SettingsActivity;->mCheckTab:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yftech/settings/SettingsActivity;->tvAcSeat:Landroid/widget/TextView;

    if-eq p1, v2, :cond_3

    const/4 p1, 0x5

    .line 460
    invoke-virtual {p0, p1}, Lcom/yftech/settings/SettingsActivity;->showTabFragment(I)V

    .line 461
    iget-object v2, p0, Lcom/yftech/settings/SettingsActivity;->mCheckTab:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 462
    iget-object v1, p0, Lcom/yftech/settings/SettingsActivity;->tvAcSeat:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 463
    iget-object v0, p0, Lcom/yftech/settings/SettingsActivity;->tvAcSeat:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/settings/SettingsActivity;->mCheckTab:Landroid/widget/TextView;

    .line 464
    iput p1, p0, Lcom/yftech/settings/SettingsActivity;->mTabId:I

    .line 466
    :cond_3
    invoke-virtual {p0}, Lcom/yftech/settings/SettingsActivity;->isPower()Z

    move-result p1

    if-nez p1, :cond_4

    .line 467
    invoke-virtual {p0}, Lcom/yftech/settings/SettingsActivity;->showPowerToast()V

    :cond_4
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0801f6 -> :sswitch_8
        0x7f0801fa -> :sswitch_7
        0x7f0801fb -> :sswitch_6
        0x7f080202 -> :sswitch_5
        0x7f080203 -> :sswitch_4
        0x7f08020e -> :sswitch_3
        0x7f080212 -> :sswitch_2
        0x7f080215 -> :sswitch_1
        0x7f08021c -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 90
    invoke-super {p0, p1}, Lcom/yftech/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0a001d

    .line 91
    invoke-virtual {p0, p1}, Lcom/yftech/settings/SettingsActivity;->setContentView(I)V

    .line 93
    invoke-virtual {p0}, Lcom/yftech/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/yftech/settings/SettingsActivity;->getTabExtras(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SettingsActivity1"

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate() activity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f08014e

    .line 96
    invoke-virtual {p0, v0}, Lcom/yftech/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/yftech/settings/SettingsActivity;->menu:Landroid/widget/HorizontalScrollView;

    const v0, 0x7f0801fb

    .line 98
    invoke-virtual {p0, v0}, Lcom/yftech/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/settings/SettingsActivity;->tvConnect:Landroid/widget/TextView;

    const v0, 0x7f080212

    .line 99
    invoke-virtual {p0, v0}, Lcom/yftech/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/settings/SettingsActivity;->tvSound:Landroid/widget/TextView;

    const v0, 0x7f080203

    .line 100
    invoke-virtual {p0, v0}, Lcom/yftech/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/settings/SettingsActivity;->tvDrive:Landroid/widget/TextView;

    const v0, 0x7f0801fa

    .line 101
    invoke-virtual {p0, v0}, Lcom/yftech/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/settings/SettingsActivity;->tvChassisDynamic:Landroid/widget/TextView;

    const v0, 0x7f08020e

    .line 102
    invoke-virtual {p0, v0}, Lcom/yftech/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/settings/SettingsActivity;->tvParts:Landroid/widget/TextView;

    const v0, 0x7f0801f6

    .line 103
    invoke-virtual {p0, v0}, Lcom/yftech/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/settings/SettingsActivity;->tvAcSeat:Landroid/widget/TextView;

    const v0, 0x7f080202

    .line 104
    invoke-virtual {p0, v0}, Lcom/yftech/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/settings/SettingsActivity;->tvDisplay:Landroid/widget/TextView;

    const v0, 0x7f080215

    .line 105
    invoke-virtual {p0, v0}, Lcom/yftech/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/settings/SettingsActivity;->tvSystem:Landroid/widget/TextView;

    const v0, 0x7f08021c

    .line 106
    invoke-virtual {p0, v0}, Lcom/yftech/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/settings/SettingsActivity;->tvVoice:Landroid/widget/TextView;

    .line 108
    iget-object v0, p0, Lcom/yftech/settings/SettingsActivity;->tvDrive:Landroid/widget/TextView;

    invoke-static {}, Lcom/yftech/settings/utils/ConfigUtils;->getInstance()Lcom/yftech/settings/utils/ConfigUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/settings/utils/ConfigUtils;->isAidConfig()Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/yftech/settings/SettingsActivity;->tvParts:Landroid/widget/TextView;

    invoke-static {}, Lcom/yftech/settings/utils/ConfigUtils;->getInstance()Lcom/yftech/settings/utils/ConfigUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/settings/utils/ConfigUtils;->isCarPartsConfig()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/yftech/settings/SettingsActivity;->tvAcSeat:Landroid/widget/TextView;

    invoke-static {}, Lcom/yftech/settings/utils/ConfigUtils;->getInstance()Lcom/yftech/settings/utils/ConfigUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/settings/utils/ConfigUtils;->isAcSeatConfig()Z

    move-result v1

    if-eqz v1, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    invoke-direct {p0, p1}, Lcom/yftech/settings/SettingsActivity;->setChooseTab(Ljava/lang/String;)V

    .line 114
    iget-object p1, p0, Lcom/yftech/settings/SettingsActivity;->tvConnect:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object p1, p0, Lcom/yftech/settings/SettingsActivity;->tvSound:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object p1, p0, Lcom/yftech/settings/SettingsActivity;->tvDrive:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object p1, p0, Lcom/yftech/settings/SettingsActivity;->tvChassisDynamic:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object p1, p0, Lcom/yftech/settings/SettingsActivity;->tvParts:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object p1, p0, Lcom/yftech/settings/SettingsActivity;->tvAcSeat:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object p1, p0, Lcom/yftech/settings/SettingsActivity;->tvDisplay:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object p1, p0, Lcom/yftech/settings/SettingsActivity;->tvSystem:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object p1, p0, Lcom/yftech/settings/SettingsActivity;->tvVoice:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "com.yftech.settings.EXIT"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/yftech/settings/SettingsActivity;->mExitReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, p1}, Lcom/yftech/settings/SettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 150
    invoke-super {p0}, Lcom/yftech/settings/BaseActivity;->onDestroy()V

    const-string v0, "SettingsActivity1"

    const-string v1, "onDestroy: "

    .line 151
    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/yftech/settings/SettingsActivity;->mExitReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/yftech/settings/SettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    .line 633
    iput-boolean v0, p0, Lcom/yftech/settings/SettingsActivity;->isBack:Z

    .line 635
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/settings/SettingsActivity;->finish()V

    .line 636
    invoke-super {p0, p1, p2}, Lcom/yftech/settings/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3

    .line 253
    invoke-super {p0, p1}, Lcom/yftech/settings/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 254
    invoke-direct {p0, p1}, Lcom/yftech/settings/SettingsActivity;->getTabExtras(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SettingsActivity1"

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewIntent() activity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 259
    :cond_0
    invoke-direct {p0, p1}, Lcom/yftech/settings/SettingsActivity;->setChooseTab(Ljava/lang/String;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 592
    invoke-super {p0}, Lcom/yftech/settings/BaseActivity;->onPause()V

    const-string v0, "SettingsActivity1"

    const-string v1, "onPause: "

    .line 593
    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    iget-object v0, p0, Lcom/yftech/settings/SettingsActivity;->mCarPlayAvailableListDialog:Lcom/yftech/settings/widget/dialog/CarPlayAvailableListDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/settings/SettingsActivity;->mCarPlayAvailableListDialog:Lcom/yftech/settings/widget/dialog/CarPlayAvailableListDialog;

    invoke-virtual {v0}, Lcom/yftech/settings/widget/dialog/CarPlayAvailableListDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    iget-object p0, p0, Lcom/yftech/settings/SettingsActivity;->mCarPlayAvailableListDialog:Lcom/yftech/settings/widget/dialog/CarPlayAvailableListDialog;

    invoke-virtual {p0}, Lcom/yftech/settings/widget/dialog/CarPlayAvailableListDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 613
    invoke-super {p0, p1}, Lcom/yftech/settings/BaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string p0, "SettingsActivity1"

    const-string p1, "onRestoreInstanceState: "

    .line 614
    invoke-static {p0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onResume()V
    .locals 5

    .line 232
    invoke-super {p0}, Lcom/yftech/settings/BaseActivity;->onResume()V

    .line 240
    invoke-virtual {p0}, Lcom/yftech/settings/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.yftech.settings.language_change"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "System"

    .line 241
    invoke-direct {p0, v0}, Lcom/yftech/settings/SettingsActivity;->setChooseTab(Ljava/lang/String;)V

    .line 244
    :cond_0
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarPowerManager;->get()Lcom/yftech/vehicle/sdk/CarPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarPowerManager;->getPowerMode()Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerMode;

    move-result-object v0

    const-string v1, "SettingsActivity1"

    .line 245
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResume, tabId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/yftech/settings/SettingsActivity;->mTabId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " powerMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget v0, p0, Lcom/yftech/settings/SettingsActivity;->mTabId:I

    invoke-virtual {p0, v0}, Lcom/yftech/settings/SettingsActivity;->showTabFragment(I)V

    .line 247
    invoke-direct {p0}, Lcom/yftech/settings/SettingsActivity;->showCarPlayAvailableListDialog()V

    .line 248
    invoke-virtual {p0}, Lcom/yftech/settings/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "com.yftech.settings.language_change"

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 607
    invoke-super {p0, p1}, Lcom/yftech/settings/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string p0, "SettingsActivity1"

    const-string p1, "onSaveInstanceState: "

    .line 608
    invoke-static {p0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 586
    invoke-super {p0}, Lcom/yftech/settings/BaseActivity;->onStop()V

    const-string p0, "SettingsActivity1"

    const-string v0, "onStop: "

    .line 587
    invoke-static {p0, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public removeTabFragment(I)V
    .locals 6

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    move-object v1, v0

    goto :goto_0

    .line 563
    :pswitch_0
    iget-object v0, p0, Lcom/yftech/settings/SettingsActivity;->mVoiceMainFragment:Lcom/yftech/settings/voice/VoiceMainFragment;

    if-nez v0, :cond_0

    return-void

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/yftech/settings/SettingsActivity;->mVoiceMainFragment:Lcom/yftech/settings/voice/VoiceMainFragment;

    const-string v1, "Voice"

    goto :goto_0

    .line 556
    :pswitch_1
    iget-object v0, p0, Lcom/yftech/settings/SettingsActivity;->mSystemMainFragment:Lcom/yftech/settings/system/SystemMainFragment;

    if-nez v0, :cond_1

    return-void

    .line 559
    :cond_1
    iget-object v0, p0, Lcom/yftech/settings/SettingsActivity;->mSystemMainFragment:Lcom/yftech/settings/system/SystemMainFragment;

    const-string v1, "System"

    goto :goto_0

    .line 549
    :pswitch_2
    iget-object v0, p0, Lcom/yftech/settings/SettingsActivity;->mDisplayMainFragment:Lcom/yftech/settings/display/DisplayMainFragment;

    if-nez v0, :cond_2

    return-void

    .line 552
    :cond_2
    iget-object v0, p0, Lcom/yftech/settings/SettingsActivity;->mDisplayMainFragment:Lcom/yftech/settings/display/DisplayMainFragment;

    const-string v1, "Display"

    goto :goto_0

    .line 542
    :pswitch_3
    iget-object v0, p0, Lcom/yftech/settings/SettingsActivity;->mAcSeatMainFragment:Lcom/yftech/settings/ac/AcSeatMainFragment;

    if-nez v0, :cond_3

    return-void

    .line 545
    :cond_3
    iget-object v0, p0, Lcom/yftech/settings/SettingsActivity;->mAcSeatMainFragment:Lcom/yftech/settings/ac/AcSeatMainFragment;

    const-string v1, "AcSeat"

    goto :goto_0

    .line 535
    :pswitch_4
    iget-object v0, p0, Lcom/yftech/settings/SettingsActivity;->mCarPartsMainFragment:Lcom/yftech/settings/parts/CarPartsMainFragment;

    if-nez v0, :cond_4

    return-void

    .line 538
    :cond_4
    iget-object v0, p0, Lcom/yftech/settings/SettingsActivity;->mCarPartsMainFragment:Lcom/yftech/settings/parts/CarPartsMainFragment;

    const-string v1, "Parts"

    goto :goto_0

    .line 528
    :pswitch_5
    iget-object v0, p0, Lcom/yftech/settings/SettingsActivity;->mChassisPowerMainFragment:Lcom/yftech/settings/chassis/ChassisPowerMainFragment;

    if-nez v0, :cond_5

    return-void

    .line 531
    :cond_5
    iget-object v0, p0, Lcom/yftech/settings/SettingsActivity;->mChassisPowerMainFragment:Lcom/yftech/settings/chassis/ChassisPowerMainFragment;

    const-string v1, "ChassisDynamic"

    goto :goto_0

    .line 521
    :pswitch_6
    iget-object v0, p0, Lcom/yftech/settings/SettingsActivity;->mDriveAidsMainFragment:Lcom/yftech/settings/aid/DriveAidsMainFragment;

    if-nez v0, :cond_6

    return-void

    .line 524
    :cond_6
    iget-object v0, p0, Lcom/yftech/settings/SettingsActivity;->mDriveAidsMainFragment:Lcom/yftech/settings/aid/DriveAidsMainFragment;

    const-string v1, "Drive"

    goto :goto_0

    .line 514
    :pswitch_7
    iget-object v0, p0, Lcom/yftech/settings/SettingsActivity;->mSoundFragment:Lcom/yftech/settings/sound/SoundFragment;

    if-nez v0, :cond_7

    return-void

    .line 517
    :cond_7
    iget-object v0, p0, Lcom/yftech/settings/SettingsActivity;->mSoundFragment:Lcom/yftech/settings/sound/SoundFragment;

    const-string v1, "Sound"

    goto :goto_0

    .line 507
    :pswitch_8
    iget-object v0, p0, Lcom/yftech/settings/SettingsActivity;->mConnectMainFragment:Lcom/yftech/settings/connect/ConnectMainFragment;

    if-nez v0, :cond_8

    return-void

    .line 510
    :cond_8
    iget-object v0, p0, Lcom/yftech/settings/SettingsActivity;->mConnectMainFragment:Lcom/yftech/settings/connect/ConnectMainFragment;

    const-string v1, "Connect"

    :goto_0
    if-eqz v0, :cond_a

    .line 574
    invoke-virtual {p0}, Lcom/yftech/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    .line 575
    invoke-virtual {p0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    goto :goto_1

    :cond_9
    const/4 v2, 0x0

    :goto_1
    const-string v3, "SettingsActivity1"

    .line 576
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeTabFragment, tabId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", tag:"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", exist:"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", count:"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    invoke-virtual {p0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", destroy:"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/FragmentManager;->isDestroyed()Z

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 576
    invoke-static {v3, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p0

    .line 579
    invoke-virtual {p0, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p0

    .line 580
    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_a
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public showTabFragment(I)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    move-object v3, v2

    move-object v4, v3

    goto/16 :goto_0

    .line 379
    :pswitch_0
    iget-object v3, p0, Lcom/yftech/settings/SettingsActivity;->mVoiceMainFragment:Lcom/yftech/settings/voice/VoiceMainFragment;

    if-nez v3, :cond_0

    .line 380
    new-instance v3, Lcom/yftech/settings/voice/VoiceMainFragment;

    invoke-direct {v3}, Lcom/yftech/settings/voice/VoiceMainFragment;-><init>()V

    iput-object v3, p0, Lcom/yftech/settings/SettingsActivity;->mVoiceMainFragment:Lcom/yftech/settings/voice/VoiceMainFragment;

    .line 382
    :cond_0
    iget-object v3, p0, Lcom/yftech/settings/SettingsActivity;->mVoiceMainFragment:Lcom/yftech/settings/voice/VoiceMainFragment;

    const-string v4, "Voice"

    goto/16 :goto_0

    .line 369
    :pswitch_1
    iget-object v3, p0, Lcom/yftech/settings/SettingsActivity;->mSystemMainFragment:Lcom/yftech/settings/system/SystemMainFragment;

    if-nez v3, :cond_1

    .line 370
    new-instance v3, Lcom/yftech/settings/system/SystemMainFragment;

    invoke-direct {v3}, Lcom/yftech/settings/system/SystemMainFragment;-><init>()V

    iput-object v3, p0, Lcom/yftech/settings/SettingsActivity;->mSystemMainFragment:Lcom/yftech/settings/system/SystemMainFragment;

    .line 372
    :cond_1
    invoke-virtual {p0}, Lcom/yftech/settings/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "com.yftech.settings.language_change"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_2

    .line 373
    iget-object v3, p0, Lcom/yftech/settings/SettingsActivity;->mSystemMainFragment:Lcom/yftech/settings/system/SystemMainFragment;

    invoke-virtual {v3}, Lcom/yftech/settings/system/SystemMainFragment;->setSkipToVehicleInfoFragment()V

    .line 375
    :cond_2
    iget-object v3, p0, Lcom/yftech/settings/SettingsActivity;->mSystemMainFragment:Lcom/yftech/settings/system/SystemMainFragment;

    const-string v4, "System"

    goto/16 :goto_0

    .line 362
    :pswitch_2
    iget-object v3, p0, Lcom/yftech/settings/SettingsActivity;->mDisplayMainFragment:Lcom/yftech/settings/display/DisplayMainFragment;

    if-nez v3, :cond_3

    .line 363
    new-instance v3, Lcom/yftech/settings/display/DisplayMainFragment;

    invoke-direct {v3}, Lcom/yftech/settings/display/DisplayMainFragment;-><init>()V

    iput-object v3, p0, Lcom/yftech/settings/SettingsActivity;->mDisplayMainFragment:Lcom/yftech/settings/display/DisplayMainFragment;

    .line 365
    :cond_3
    iget-object v3, p0, Lcom/yftech/settings/SettingsActivity;->mDisplayMainFragment:Lcom/yftech/settings/display/DisplayMainFragment;

    const-string v4, "Display"

    goto :goto_0

    .line 355
    :pswitch_3
    iget-object v3, p0, Lcom/yftech/settings/SettingsActivity;->mAcSeatMainFragment:Lcom/yftech/settings/ac/AcSeatMainFragment;

    if-nez v3, :cond_4

    .line 356
    new-instance v3, Lcom/yftech/settings/ac/AcSeatMainFragment;

    invoke-direct {v3}, Lcom/yftech/settings/ac/AcSeatMainFragment;-><init>()V

    iput-object v3, p0, Lcom/yftech/settings/SettingsActivity;->mAcSeatMainFragment:Lcom/yftech/settings/ac/AcSeatMainFragment;

    .line 358
    :cond_4
    iget-object v3, p0, Lcom/yftech/settings/SettingsActivity;->mAcSeatMainFragment:Lcom/yftech/settings/ac/AcSeatMainFragment;

    const-string v4, "AcSeat"

    goto :goto_0

    .line 348
    :pswitch_4
    iget-object v3, p0, Lcom/yftech/settings/SettingsActivity;->mCarPartsMainFragment:Lcom/yftech/settings/parts/CarPartsMainFragment;

    if-nez v3, :cond_5

    .line 349
    new-instance v3, Lcom/yftech/settings/parts/CarPartsMainFragment;

    invoke-direct {v3}, Lcom/yftech/settings/parts/CarPartsMainFragment;-><init>()V

    iput-object v3, p0, Lcom/yftech/settings/SettingsActivity;->mCarPartsMainFragment:Lcom/yftech/settings/parts/CarPartsMainFragment;

    .line 351
    :cond_5
    iget-object v3, p0, Lcom/yftech/settings/SettingsActivity;->mCarPartsMainFragment:Lcom/yftech/settings/parts/CarPartsMainFragment;

    const-string v4, "Parts"

    goto :goto_0

    .line 341
    :pswitch_5
    iget-object v3, p0, Lcom/yftech/settings/SettingsActivity;->mChassisPowerMainFragment:Lcom/yftech/settings/chassis/ChassisPowerMainFragment;

    if-nez v3, :cond_6

    .line 342
    new-instance v3, Lcom/yftech/settings/chassis/ChassisPowerMainFragment;

    invoke-direct {v3}, Lcom/yftech/settings/chassis/ChassisPowerMainFragment;-><init>()V

    iput-object v3, p0, Lcom/yftech/settings/SettingsActivity;->mChassisPowerMainFragment:Lcom/yftech/settings/chassis/ChassisPowerMainFragment;

    .line 344
    :cond_6
    iget-object v3, p0, Lcom/yftech/settings/SettingsActivity;->mChassisPowerMainFragment:Lcom/yftech/settings/chassis/ChassisPowerMainFragment;

    const-string v4, "ChassisDynamic"

    goto :goto_0

    .line 334
    :pswitch_6
    iget-object v3, p0, Lcom/yftech/settings/SettingsActivity;->mDriveAidsMainFragment:Lcom/yftech/settings/aid/DriveAidsMainFragment;

    if-nez v3, :cond_7

    .line 335
    new-instance v3, Lcom/yftech/settings/aid/DriveAidsMainFragment;

    invoke-direct {v3}, Lcom/yftech/settings/aid/DriveAidsMainFragment;-><init>()V

    iput-object v3, p0, Lcom/yftech/settings/SettingsActivity;->mDriveAidsMainFragment:Lcom/yftech/settings/aid/DriveAidsMainFragment;

    .line 337
    :cond_7
    iget-object v3, p0, Lcom/yftech/settings/SettingsActivity;->mDriveAidsMainFragment:Lcom/yftech/settings/aid/DriveAidsMainFragment;

    const-string v4, "Drive"

    goto :goto_0

    .line 327
    :pswitch_7
    iget-object v3, p0, Lcom/yftech/settings/SettingsActivity;->mSoundFragment:Lcom/yftech/settings/sound/SoundFragment;

    if-nez v3, :cond_8

    .line 328
    new-instance v3, Lcom/yftech/settings/sound/SoundFragment;

    invoke-direct {v3}, Lcom/yftech/settings/sound/SoundFragment;-><init>()V

    iput-object v3, p0, Lcom/yftech/settings/SettingsActivity;->mSoundFragment:Lcom/yftech/settings/sound/SoundFragment;

    .line 330
    :cond_8
    iget-object v3, p0, Lcom/yftech/settings/SettingsActivity;->mSoundFragment:Lcom/yftech/settings/sound/SoundFragment;

    const-string v4, "Sound"

    goto :goto_0

    .line 320
    :pswitch_8
    iget-object v3, p0, Lcom/yftech/settings/SettingsActivity;->mConnectMainFragment:Lcom/yftech/settings/connect/ConnectMainFragment;

    if-nez v3, :cond_9

    .line 321
    new-instance v3, Lcom/yftech/settings/connect/ConnectMainFragment;

    invoke-direct {v3}, Lcom/yftech/settings/connect/ConnectMainFragment;-><init>()V

    iput-object v3, p0, Lcom/yftech/settings/SettingsActivity;->mConnectMainFragment:Lcom/yftech/settings/connect/ConnectMainFragment;

    .line 323
    :cond_9
    iget-object v3, p0, Lcom/yftech/settings/SettingsActivity;->mConnectMainFragment:Lcom/yftech/settings/connect/ConnectMainFragment;

    const-string v4, "Connect"

    :goto_0
    if-eqz v3, :cond_b

    .line 390
    invoke-virtual {p0}, Lcom/yftech/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    .line 391
    invoke-virtual {p0, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v5

    if-eqz v5, :cond_a

    goto :goto_1

    :cond_a
    move v0, v1

    :goto_1
    const-string v1, "SettingsActivity1"

    .line 392
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showTabFragment, tabId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", tag:"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", exist:"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", count:"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    invoke-virtual {p0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", destroy:"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/FragmentManager;->isDestroyed()Z

    move-result p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 392
    invoke-static {v1, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p0

    const p1, 0x7f080099

    .line 395
    invoke-virtual {p0, p1, v3, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p0

    .line 396
    invoke-virtual {p0, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p0

    .line 397
    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
