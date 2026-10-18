.class public Lcom/yftech/settings/voice/VoiceSettingsFragment;
.super Lcom/yftech/settings/BaseFragment;
.source "VoiceSettingsFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/yftech/settings/widget/MultiSelectView$OnSwitchListener;


# instance fields
.field private mModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yftech/settings/manager/BaseManager$ModelCallback<",
            "Lcom/yftech/settings/manager/VoiceSettingsManager$Function;",
            ">;"
        }
    .end annotation
.end field

.field private mSmbVoiceFreeWakeUpDuration:Lcom/yftech/settings/widget/MultiSelectView;

.field private mSmbVoiceRecognitionEngine:Lcom/yftech/settings/widget/MultiSelectView;

.field private mSmbVoiceSpeakSetting:Lcom/yftech/settings/widget/MultiSelectView;

.field private mSwVoiceFreeWakeUpSetting:Lcom/yftech/settings/widget/Switcher;

.field private mSwVoiceWakeUp:Lcom/yftech/settings/widget/Switcher;

.field private mTvVoiceCustomWakeUpWord:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/yftech/settings/BaseFragment;-><init>()V

    .line 30
    new-instance v0, Lcom/yftech/settings/voice/VoiceSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/yftech/settings/voice/VoiceSettingsFragment$1;-><init>(Lcom/yftech/settings/voice/VoiceSettingsFragment;)V

    iput-object v0, p0, Lcom/yftech/settings/voice/VoiceSettingsFragment;->mModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/settings/voice/VoiceSettingsFragment;Lcom/yftech/settings/manager/VoiceSettingsManager$Function;Z)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/voice/VoiceSettingsFragment;->setSwitcherView(Lcom/yftech/settings/manager/VoiceSettingsManager$Function;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/yftech/settings/voice/VoiceSettingsFragment;Lcom/yftech/settings/manager/VoiceSettingsManager$Function;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/voice/VoiceSettingsFragment;->setSwitchMultiButtonView(Lcom/yftech/settings/manager/VoiceSettingsManager$Function;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/yftech/settings/voice/VoiceSettingsFragment;Lcom/yftech/settings/manager/VoiceSettingsManager$Function;Ljava/lang/Object;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/voice/VoiceSettingsFragment;->setValueView(Lcom/yftech/settings/manager/VoiceSettingsManager$Function;Ljava/lang/Object;)V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 8

    const v0, 0x7f0801ce

    .line 69
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x7f080218

    .line 70
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0d01aa

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    const v3, 0x7f0801ff

    .line 71
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0d01ab

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    const v4, 0x7f0801bb

    .line 72
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/yftech/settings/widget/Switcher;

    iput-object v5, p0, Lcom/yftech/settings/voice/VoiceSettingsFragment;->mSwVoiceWakeUp:Lcom/yftech/settings/widget/Switcher;

    .line 73
    iget-object v5, p0, Lcom/yftech/settings/voice/VoiceSettingsFragment;->mSwVoiceWakeUp:Lcom/yftech/settings/widget/Switcher;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/yftech/settings/widget/Switcher;->setTag(Ljava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lcom/yftech/settings/voice/VoiceSettingsFragment;->mSwVoiceWakeUp:Lcom/yftech/settings/widget/Switcher;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/widget/Switcher;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const/4 v0, 0x0

    .line 75
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v1, 0x7f0801c9

    .line 78
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 79
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0d01a3

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 80
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v6, 0x7f0d01a4

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    const v3, 0x7f0801fd

    .line 81
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/yftech/settings/voice/VoiceSettingsFragment;->mTvVoiceCustomWakeUpWord:Landroid/widget/TextView;

    .line 82
    iget-object v3, p0, Lcom/yftech/settings/voice/VoiceSettingsFragment;->mTvVoiceCustomWakeUpWord:Landroid/widget/TextView;

    const-string v6, "#DD9D09"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const v3, 0x7f080070

    .line 83
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 84
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    const-string v1, ""

    .line 85
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0b0106

    .line 86
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 87
    invoke-virtual {v3}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/16 v6, 0x38

    .line 88
    iput v6, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 89
    iput v6, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 90
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v1, 0x7f0801ca

    .line 95
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 96
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0d01a6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    const v5, 0x7f080158

    .line 97
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/yftech/settings/widget/MultiSelectView;

    iput-object v6, p0, Lcom/yftech/settings/voice/VoiceSettingsFragment;->mSmbVoiceFreeWakeUpDuration:Lcom/yftech/settings/widget/MultiSelectView;

    .line 98
    iget-object v6, p0, Lcom/yftech/settings/voice/VoiceSettingsFragment;->mSmbVoiceFreeWakeUpDuration:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/yftech/settings/widget/MultiSelectView;->setTag(Ljava/lang/Object;)V

    .line 99
    iget-object v1, p0, Lcom/yftech/settings/voice/VoiceSettingsFragment;->mSmbVoiceFreeWakeUpDuration:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-virtual {p0}, Lcom/yftech/settings/voice/VoiceSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020029

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/yftech/settings/widget/MultiSelectView;->setText([Ljava/lang/String;)Lcom/yftech/settings/widget/MultiSelectView;

    .line 100
    iget-object v1, p0, Lcom/yftech/settings/voice/VoiceSettingsFragment;->mSmbVoiceFreeWakeUpDuration:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-virtual {v1, p0}, Lcom/yftech/settings/widget/MultiSelectView;->setOnSwitchListener(Lcom/yftech/settings/widget/MultiSelectView$OnSwitchListener;)Lcom/yftech/settings/widget/MultiSelectView;

    .line 101
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v1, 0x7f0801cb

    .line 104
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 105
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0d01a7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 106
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/yftech/settings/widget/Switcher;

    iput-object v4, p0, Lcom/yftech/settings/voice/VoiceSettingsFragment;->mSwVoiceFreeWakeUpSetting:Lcom/yftech/settings/widget/Switcher;

    .line 107
    iget-object v4, p0, Lcom/yftech/settings/voice/VoiceSettingsFragment;->mSwVoiceFreeWakeUpSetting:Lcom/yftech/settings/widget/Switcher;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/yftech/settings/widget/Switcher;->setTag(Ljava/lang/Object;)V

    .line 108
    iget-object v1, p0, Lcom/yftech/settings/voice/VoiceSettingsFragment;->mSwVoiceFreeWakeUpSetting:Lcom/yftech/settings/widget/Switcher;

    invoke-virtual {v1, p0}, Lcom/yftech/settings/widget/Switcher;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 109
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v1, 0x7f0801cc

    .line 112
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 113
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v6, 0x7f0d01a8

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 114
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/yftech/settings/widget/MultiSelectView;

    iput-object v4, p0, Lcom/yftech/settings/voice/VoiceSettingsFragment;->mSmbVoiceRecognitionEngine:Lcom/yftech/settings/widget/MultiSelectView;

    .line 115
    iget-object v4, p0, Lcom/yftech/settings/voice/VoiceSettingsFragment;->mSmbVoiceRecognitionEngine:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/yftech/settings/widget/MultiSelectView;->setTag(Ljava/lang/Object;)V

    .line 116
    iget-object v1, p0, Lcom/yftech/settings/voice/VoiceSettingsFragment;->mSmbVoiceRecognitionEngine:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-virtual {p0}, Lcom/yftech/settings/voice/VoiceSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f02002a

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/yftech/settings/widget/MultiSelectView;->setText([Ljava/lang/String;)Lcom/yftech/settings/widget/MultiSelectView;

    .line 117
    iget-object v1, p0, Lcom/yftech/settings/voice/VoiceSettingsFragment;->mSmbVoiceRecognitionEngine:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-virtual {v1, p0}, Lcom/yftech/settings/widget/MultiSelectView;->setOnSwitchListener(Lcom/yftech/settings/widget/MultiSelectView$OnSwitchListener;)Lcom/yftech/settings/widget/MultiSelectView;

    .line 118
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v1, 0x7f0801cd

    .line 121
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 122
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0d01a9

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 123
    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/yftech/settings/widget/MultiSelectView;

    iput-object v2, p0, Lcom/yftech/settings/voice/VoiceSettingsFragment;->mSmbVoiceSpeakSetting:Lcom/yftech/settings/widget/MultiSelectView;

    .line 124
    iget-object v2, p0, Lcom/yftech/settings/voice/VoiceSettingsFragment;->mSmbVoiceSpeakSetting:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/yftech/settings/widget/MultiSelectView;->setTag(Ljava/lang/Object;)V

    .line 125
    iget-object v1, p0, Lcom/yftech/settings/voice/VoiceSettingsFragment;->mSmbVoiceSpeakSetting:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-virtual {p0}, Lcom/yftech/settings/voice/VoiceSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02002b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yftech/settings/widget/MultiSelectView;->setText([Ljava/lang/String;)Lcom/yftech/settings/widget/MultiSelectView;

    .line 126
    iget-object v1, p0, Lcom/yftech/settings/voice/VoiceSettingsFragment;->mSmbVoiceSpeakSetting:Lcom/yftech/settings/widget/MultiSelectView;

    invoke-virtual {v1, p0}, Lcom/yftech/settings/widget/MultiSelectView;->setOnSwitchListener(Lcom/yftech/settings/widget/MultiSelectView$OnSwitchListener;)Lcom/yftech/settings/widget/MultiSelectView;

    .line 127
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private initViewData()V
    .locals 3

    .line 144
    sget-object v0, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;->WAKE_UP_ENABLE:Lcom/yftech/settings/manager/VoiceSettingsManager$Function;

    invoke-static {}, Lcom/yftech/settings/manager/VoiceSettingsManager;->getInstance()Lcom/yftech/settings/manager/VoiceSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;->WAKE_UP_ENABLE:Lcom/yftech/settings/manager/VoiceSettingsManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/VoiceSettingsManager;->getEnabled(Lcom/yftech/settings/manager/VoiceSettingsManager$Function;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/voice/VoiceSettingsFragment;->setSwitcherView(Lcom/yftech/settings/manager/VoiceSettingsManager$Function;Z)V

    .line 145
    sget-object v0, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;->FREE_WAKE_UP_SETTING_ENABLE:Lcom/yftech/settings/manager/VoiceSettingsManager$Function;

    invoke-static {}, Lcom/yftech/settings/manager/VoiceSettingsManager;->getInstance()Lcom/yftech/settings/manager/VoiceSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;->FREE_WAKE_UP_SETTING_ENABLE:Lcom/yftech/settings/manager/VoiceSettingsManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/VoiceSettingsManager;->getEnabled(Lcom/yftech/settings/manager/VoiceSettingsManager$Function;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/voice/VoiceSettingsFragment;->setSwitcherView(Lcom/yftech/settings/manager/VoiceSettingsManager$Function;Z)V

    .line 146
    sget-object v0, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;->FREE_WAKE_UP_DURATION_OPTION:Lcom/yftech/settings/manager/VoiceSettingsManager$Function;

    invoke-static {}, Lcom/yftech/settings/manager/VoiceSettingsManager;->getInstance()Lcom/yftech/settings/manager/VoiceSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;->FREE_WAKE_UP_DURATION_OPTION:Lcom/yftech/settings/manager/VoiceSettingsManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/VoiceSettingsManager;->getOption(Lcom/yftech/settings/manager/VoiceSettingsManager$Function;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/voice/VoiceSettingsFragment;->setSwitchMultiButtonView(Lcom/yftech/settings/manager/VoiceSettingsManager$Function;I)V

    .line 147
    sget-object v0, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;->RECOGNITION_ENGINE_OPTION:Lcom/yftech/settings/manager/VoiceSettingsManager$Function;

    invoke-static {}, Lcom/yftech/settings/manager/VoiceSettingsManager;->getInstance()Lcom/yftech/settings/manager/VoiceSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;->RECOGNITION_ENGINE_OPTION:Lcom/yftech/settings/manager/VoiceSettingsManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/VoiceSettingsManager;->getOption(Lcom/yftech/settings/manager/VoiceSettingsManager$Function;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/voice/VoiceSettingsFragment;->setSwitchMultiButtonView(Lcom/yftech/settings/manager/VoiceSettingsManager$Function;I)V

    .line 148
    sget-object v0, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;->SPEAK_SETTING_OPTION:Lcom/yftech/settings/manager/VoiceSettingsManager$Function;

    invoke-static {}, Lcom/yftech/settings/manager/VoiceSettingsManager;->getInstance()Lcom/yftech/settings/manager/VoiceSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;->SPEAK_SETTING_OPTION:Lcom/yftech/settings/manager/VoiceSettingsManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/VoiceSettingsManager;->getOption(Lcom/yftech/settings/manager/VoiceSettingsManager$Function;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/voice/VoiceSettingsFragment;->setSwitchMultiButtonView(Lcom/yftech/settings/manager/VoiceSettingsManager$Function;I)V

    .line 149
    sget-object v0, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;->CUSTOM_WAKE_UP_WORD_VALUE:Lcom/yftech/settings/manager/VoiceSettingsManager$Function;

    invoke-static {}, Lcom/yftech/settings/manager/VoiceSettingsManager;->getInstance()Lcom/yftech/settings/manager/VoiceSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;->CUSTOM_WAKE_UP_WORD_VALUE:Lcom/yftech/settings/manager/VoiceSettingsManager$Function;

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/VoiceSettingsManager;->getValue(Lcom/yftech/settings/manager/VoiceSettingsManager$Function;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/voice/VoiceSettingsFragment;->setValueView(Lcom/yftech/settings/manager/VoiceSettingsManager$Function;Ljava/lang/Object;)V

    return-void
.end method

.method private setSwitchMultiButtonView(Lcom/yftech/settings/manager/VoiceSettingsManager$Function;I)V
    .locals 1

    .line 210
    sget-object v0, Lcom/yftech/settings/voice/VoiceSettingsFragment$2;->$SwitchMap$com$yftech$settings$manager$VoiceSettingsManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    .line 218
    :pswitch_0
    iget-object p0, p0, Lcom/yftech/settings/voice/VoiceSettingsFragment;->mSmbVoiceSpeakSetting:Lcom/yftech/settings/widget/MultiSelectView;

    goto :goto_0

    .line 215
    :pswitch_1
    iget-object p0, p0, Lcom/yftech/settings/voice/VoiceSettingsFragment;->mSmbVoiceRecognitionEngine:Lcom/yftech/settings/widget/MultiSelectView;

    goto :goto_0

    .line 212
    :pswitch_2
    iget-object p0, p0, Lcom/yftech/settings/voice/VoiceSettingsFragment;->mSmbVoiceFreeWakeUpDuration:Lcom/yftech/settings/widget/MultiSelectView;

    :goto_0
    if-eqz p0, :cond_1

    .line 224
    invoke-virtual {p0}, Lcom/yftech/settings/widget/MultiSelectView;->getTabNum()I

    move-result p1

    if-ne p1, p2, :cond_0

    return-void

    .line 227
    :cond_0
    invoke-virtual {p0, p2}, Lcom/yftech/settings/widget/MultiSelectView;->setSelectedTab(I)Lcom/yftech/settings/widget/MultiSelectView;

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setSwitcherView(Lcom/yftech/settings/manager/VoiceSettingsManager$Function;Z)V
    .locals 1

    .line 233
    sget-object v0, Lcom/yftech/settings/voice/VoiceSettingsFragment$2;->$SwitchMap$com$yftech$settings$manager$VoiceSettingsManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    .line 238
    :pswitch_0
    iget-object p0, p0, Lcom/yftech/settings/voice/VoiceSettingsFragment;->mSwVoiceFreeWakeUpSetting:Lcom/yftech/settings/widget/Switcher;

    goto :goto_0

    .line 235
    :pswitch_1
    iget-object p0, p0, Lcom/yftech/settings/voice/VoiceSettingsFragment;->mSwVoiceWakeUp:Lcom/yftech/settings/widget/Switcher;

    :goto_0
    if-eqz p0, :cond_1

    .line 244
    invoke-virtual {p0}, Lcom/yftech/settings/widget/Switcher;->isChecked()Z

    move-result p1

    if-ne p1, p2, :cond_0

    return-void

    .line 247
    :cond_0
    invoke-virtual {p0, p2}, Lcom/yftech/settings/widget/Switcher;->setChecked(Z)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setValueView(Lcom/yftech/settings/manager/VoiceSettingsManager$Function;Ljava/lang/Object;)V
    .locals 1

    .line 252
    sget-object v0, Lcom/yftech/settings/voice/VoiceSettingsFragment$2;->$SwitchMap$com$yftech$settings$manager$VoiceSettingsManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 254
    :cond_0
    iget-object p0, p0, Lcom/yftech/settings/voice/VoiceSettingsFragment;->mTvVoiceCustomWakeUpWord:Landroid/widget/TextView;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 165
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isPressed()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 168
    :cond_0
    sget-object p0, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;->UNKNOWN:Lcom/yftech/settings/manager/VoiceSettingsManager$Function;

    .line 169
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v0, 0x7f0801cb

    if-eq p1, v0, :cond_2

    const v0, 0x7f0801ce

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 171
    :cond_1
    sget-object p0, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;->WAKE_UP_ENABLE:Lcom/yftech/settings/manager/VoiceSettingsManager$Function;

    goto :goto_0

    .line 174
    :cond_2
    sget-object p0, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;->FREE_WAKE_UP_SETTING_ENABLE:Lcom/yftech/settings/manager/VoiceSettingsManager$Function;

    .line 179
    :goto_0
    sget-object p1, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;->UNKNOWN:Lcom/yftech/settings/manager/VoiceSettingsManager$Function;

    if-eq p0, p1, :cond_3

    .line 180
    invoke-static {}, Lcom/yftech/settings/manager/VoiceSettingsManager;->getInstance()Lcom/yftech/settings/manager/VoiceSettingsManager;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/yftech/settings/manager/VoiceSettingsManager;->setEnabled(Lcom/yftech/settings/manager/VoiceSettingsManager$Function;Z)Z

    :cond_3
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 154
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const p1, 0x7f0801c9

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

    const p3, 0x7f0a004d

    const/4 v0, 0x0

    .line 62
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 63
    invoke-direct {p0, p1}, Lcom/yftech/settings/voice/VoiceSettingsFragment;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method public onPause()V
    .locals 1

    .line 139
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onPause()V

    .line 140
    invoke-static {}, Lcom/yftech/settings/manager/VoiceSettingsManager;->getInstance()Lcom/yftech/settings/manager/VoiceSettingsManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/settings/voice/VoiceSettingsFragment;->mModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/manager/VoiceSettingsManager;->unregisterModelCallback(Lcom/yftech/settings/manager/BaseManager$ModelCallback;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 132
    invoke-super {p0}, Lcom/yftech/settings/BaseFragment;->onResume()V

    .line 133
    invoke-direct {p0}, Lcom/yftech/settings/voice/VoiceSettingsFragment;->initViewData()V

    .line 134
    invoke-static {}, Lcom/yftech/settings/manager/VoiceSettingsManager;->getInstance()Lcom/yftech/settings/manager/VoiceSettingsManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/settings/voice/VoiceSettingsFragment;->mModelCallback:Lcom/yftech/settings/manager/BaseManager$ModelCallback;

    invoke-virtual {v0, p0}, Lcom/yftech/settings/manager/VoiceSettingsManager;->registerModelCallback(Lcom/yftech/settings/manager/BaseManager$ModelCallback;)V

    return-void
.end method

.method public onSwitch(Lcom/yftech/settings/widget/MultiSelectView;ILjava/lang/String;Z)V
    .locals 0

    if-nez p4, :cond_0

    return-void

    .line 189
    :cond_0
    sget-object p0, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;->UNKNOWN:Lcom/yftech/settings/manager/VoiceSettingsManager$Function;

    .line 190
    invoke-virtual {p1}, Lcom/yftech/settings/widget/MultiSelectView;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 198
    :pswitch_1
    sget-object p0, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;->SPEAK_SETTING_OPTION:Lcom/yftech/settings/manager/VoiceSettingsManager$Function;

    goto :goto_0

    .line 195
    :pswitch_2
    sget-object p0, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;->RECOGNITION_ENGINE_OPTION:Lcom/yftech/settings/manager/VoiceSettingsManager$Function;

    goto :goto_0

    .line 192
    :pswitch_3
    sget-object p0, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;->FREE_WAKE_UP_DURATION_OPTION:Lcom/yftech/settings/manager/VoiceSettingsManager$Function;

    .line 203
    :goto_0
    sget-object p1, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;->UNKNOWN:Lcom/yftech/settings/manager/VoiceSettingsManager$Function;

    if-eq p0, p1, :cond_1

    .line 204
    invoke-static {}, Lcom/yftech/settings/manager/VoiceSettingsManager;->getInstance()Lcom/yftech/settings/manager/VoiceSettingsManager;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/yftech/settings/manager/VoiceSettingsManager;->setOption(Lcom/yftech/settings/manager/VoiceSettingsManager$Function;I)Z

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0801ca
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
