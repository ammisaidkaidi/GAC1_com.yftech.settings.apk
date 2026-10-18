.class public Lcom/yftech/settings/manager/VoiceSettingsManager;
.super Lcom/yftech/settings/manager/BaseManager;
.source "VoiceSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/settings/manager/VoiceSettingsManager$Function;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yftech/settings/manager/BaseManager<",
        "Lcom/yftech/settings/manager/VoiceSettingsManager$Function;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VoiceSettingsManager"

.field private static sVoiceSettingsManager:Lcom/yftech/settings/manager/VoiceSettingsManager;


# instance fields
.field private FREE_WAKE_UP_DURATION_TYPE:[I

.field private RECOGNITION_ENGINE_TYPE:[I

.field private SPEAK_SETTING_TYPE:[I


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Lcom/yftech/settings/manager/BaseManager;-><init>()V

    const/4 v0, 0x4

    .line 21
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/yftech/settings/manager/VoiceSettingsManager;->FREE_WAKE_UP_DURATION_TYPE:[I

    const/4 v1, 0x2

    .line 22
    new-array v1, v1, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/yftech/settings/manager/VoiceSettingsManager;->RECOGNITION_ENGINE_TYPE:[I

    .line 23
    new-array v0, v0, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/yftech/settings/manager/VoiceSettingsManager;->SPEAK_SETTING_TYPE:[I

    return-void

    nop

    :array_0
    .array-data 4
        0xf
        0x1e
        0x3c
        0x5a
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data
.end method

.method public static declared-synchronized getInstance()Lcom/yftech/settings/manager/VoiceSettingsManager;
    .locals 2

    const-class v0, Lcom/yftech/settings/manager/VoiceSettingsManager;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lcom/yftech/settings/manager/VoiceSettingsManager;->sVoiceSettingsManager:Lcom/yftech/settings/manager/VoiceSettingsManager;

    if-nez v1, :cond_0

    .line 32
    new-instance v1, Lcom/yftech/settings/manager/VoiceSettingsManager;

    invoke-direct {v1}, Lcom/yftech/settings/manager/VoiceSettingsManager;-><init>()V

    sput-object v1, Lcom/yftech/settings/manager/VoiceSettingsManager;->sVoiceSettingsManager:Lcom/yftech/settings/manager/VoiceSettingsManager;

    .line 34
    :cond_0
    sget-object v1, Lcom/yftech/settings/manager/VoiceSettingsManager;->sVoiceSettingsManager:Lcom/yftech/settings/manager/VoiceSettingsManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 30
    monitor-exit v0

    throw v1
.end method

.method private getVoiceCustomWakeUpWord()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method private getVoiceFreeWakeUpDuration()I
    .locals 3

    const/4 v0, 0x0

    .line 128
    :goto_0
    iget-object v1, p0, Lcom/yftech/settings/manager/VoiceSettingsManager;->FREE_WAKE_UP_DURATION_TYPE:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 129
    iget-object v1, p0, Lcom/yftech/settings/manager/VoiceSettingsManager;->FREE_WAKE_UP_DURATION_TYPE:[I

    aget v1, v1, v0

    const/16 v2, 0xf

    if-ne v1, v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private getVoiceFreeWakeUpSettingEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private getVoiceRecognitionEngine()I
    .locals 2

    const/4 v0, 0x0

    .line 148
    :goto_0
    iget-object v1, p0, Lcom/yftech/settings/manager/VoiceSettingsManager;->RECOGNITION_ENGINE_TYPE:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 149
    iget-object v1, p0, Lcom/yftech/settings/manager/VoiceSettingsManager;->RECOGNITION_ENGINE_TYPE:[I

    aget v1, v1, v0

    if-nez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private getVoiceSpeakSetting()I
    .locals 2

    const/4 v0, 0x0

    .line 168
    :goto_0
    iget-object v1, p0, Lcom/yftech/settings/manager/VoiceSettingsManager;->SPEAK_SETTING_TYPE:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 169
    iget-object v1, p0, Lcom/yftech/settings/manager/VoiceSettingsManager;->SPEAK_SETTING_TYPE:[I

    aget v1, v1, v0

    if-nez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private getVoiceWakeUpEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private setVoiceCustomWakeUpWord(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private setVoiceFreeWakeUpDuration(I)Z
    .locals 0

    if-ltz p1, :cond_0

    .line 139
    iget-object p0, p0, Lcom/yftech/settings/manager/VoiceSettingsManager;->FREE_WAKE_UP_DURATION_TYPE:[I

    array-length p0, p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private setVoiceFreeWakeUpSettingEnabled(Z)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private setVoiceRecognitionEngine(I)Z
    .locals 0

    if-ltz p1, :cond_0

    .line 159
    iget-object p0, p0, Lcom/yftech/settings/manager/VoiceSettingsManager;->RECOGNITION_ENGINE_TYPE:[I

    array-length p0, p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private setVoiceSpeakSetting(I)Z
    .locals 0

    if-ltz p1, :cond_0

    .line 179
    iget-object p0, p0, Lcom/yftech/settings/manager/VoiceSettingsManager;->SPEAK_SETTING_TYPE:[I

    array-length p0, p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private setVoiceWakeUpEnabled(Z)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public deInit()V
    .locals 0

    .line 44
    invoke-super {p0}, Lcom/yftech/settings/manager/BaseManager;->deInit()V

    return-void
.end method

.method public getEnabled(Lcom/yftech/settings/manager/VoiceSettingsManager$Function;)Z
    .locals 1

    .line 80
    sget-object v0, Lcom/yftech/settings/manager/VoiceSettingsManager$1;->$SwitchMap$com$yftech$settings$manager$VoiceSettingsManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    .line 84
    :pswitch_0
    invoke-direct {p0}, Lcom/yftech/settings/manager/VoiceSettingsManager;->getVoiceFreeWakeUpSettingEnabled()Z

    move-result p0

    return p0

    .line 82
    :pswitch_1
    invoke-direct {p0}, Lcom/yftech/settings/manager/VoiceSettingsManager;->getVoiceWakeUpEnabled()Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic getEnabled(Ljava/lang/Object;)Z
    .locals 0

    .line 7
    check-cast p1, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;

    invoke-virtual {p0, p1}, Lcom/yftech/settings/manager/VoiceSettingsManager;->getEnabled(Lcom/yftech/settings/manager/VoiceSettingsManager$Function;)Z

    move-result p0

    return p0
.end method

.method public getOption(Lcom/yftech/settings/manager/VoiceSettingsManager$Function;)I
    .locals 1

    .line 49
    sget-object v0, Lcom/yftech/settings/manager/VoiceSettingsManager$1;->$SwitchMap$com$yftech$settings$manager$VoiceSettingsManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p0, -0x1

    return p0

    .line 55
    :pswitch_0
    invoke-direct {p0}, Lcom/yftech/settings/manager/VoiceSettingsManager;->getVoiceSpeakSetting()I

    move-result p0

    return p0

    .line 53
    :pswitch_1
    invoke-direct {p0}, Lcom/yftech/settings/manager/VoiceSettingsManager;->getVoiceRecognitionEngine()I

    move-result p0

    return p0

    .line 51
    :pswitch_2
    invoke-direct {p0}, Lcom/yftech/settings/manager/VoiceSettingsManager;->getVoiceFreeWakeUpDuration()I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic getOption(Ljava/lang/Object;)I
    .locals 0

    .line 7
    check-cast p1, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;

    invoke-virtual {p0, p1}, Lcom/yftech/settings/manager/VoiceSettingsManager;->getOption(Lcom/yftech/settings/manager/VoiceSettingsManager$Function;)I

    move-result p0

    return p0
.end method

.method public getValue(Lcom/yftech/settings/manager/VoiceSettingsManager$Function;)Ljava/lang/Object;
    .locals 1

    .line 106
    sget-object v0, Lcom/yftech/settings/manager/VoiceSettingsManager$1;->$SwitchMap$com$yftech$settings$manager$VoiceSettingsManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 p0, -0x1

    .line 110
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 108
    :cond_0
    invoke-direct {p0}, Lcom/yftech/settings/manager/VoiceSettingsManager;->getVoiceCustomWakeUpWord()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 7
    check-cast p1, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;

    invoke-virtual {p0, p1}, Lcom/yftech/settings/manager/VoiceSettingsManager;->getValue(Lcom/yftech/settings/manager/VoiceSettingsManager$Function;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-super {p0, p1}, Lcom/yftech/settings/manager/BaseManager;->init(Landroid/content/Context;)V

    return-void
.end method

.method public setEnabled(Lcom/yftech/settings/manager/VoiceSettingsManager$Function;Z)Z
    .locals 3

    .line 92
    sget-object v0, Lcom/yftech/settings/manager/VoiceSettingsManager$1;->$SwitchMap$com$yftech$settings$manager$VoiceSettingsManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    .line 97
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/VoiceSettingsManager;->setVoiceFreeWakeUpSettingEnabled(Z)Z

    move-result p0

    goto :goto_0

    .line 94
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/VoiceSettingsManager;->setVoiceWakeUpEnabled(Z)Z

    move-result p0

    :goto_0
    const-string v0, "VoiceSettingsManager"

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnabled function:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", enable:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", result:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic setEnabled(Ljava/lang/Object;Z)Z
    .locals 0

    .line 7
    check-cast p1, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/settings/manager/VoiceSettingsManager;->setEnabled(Lcom/yftech/settings/manager/VoiceSettingsManager$Function;Z)Z

    move-result p0

    return p0
.end method

.method public setOption(Lcom/yftech/settings/manager/VoiceSettingsManager$Function;I)Z
    .locals 3

    .line 63
    sget-object v0, Lcom/yftech/settings/manager/VoiceSettingsManager$1;->$SwitchMap$com$yftech$settings$manager$VoiceSettingsManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    .line 71
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/VoiceSettingsManager;->setVoiceSpeakSetting(I)Z

    move-result p0

    goto :goto_0

    .line 68
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/VoiceSettingsManager;->setVoiceRecognitionEngine(I)Z

    move-result p0

    goto :goto_0

    .line 65
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/VoiceSettingsManager;->setVoiceFreeWakeUpDuration(I)Z

    move-result p0

    :goto_0
    const-string v0, "VoiceSettingsManager"

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOption function:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", index:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", result:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic setOption(Ljava/lang/Object;I)Z
    .locals 0

    .line 7
    check-cast p1, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/settings/manager/VoiceSettingsManager;->setOption(Lcom/yftech/settings/manager/VoiceSettingsManager$Function;I)Z

    move-result p0

    return p0
.end method

.method public setValue(Lcom/yftech/settings/manager/VoiceSettingsManager$Function;Ljava/lang/Object;)Z
    .locals 2

    .line 116
    sget-object v0, Lcom/yftech/settings/manager/VoiceSettingsManager$1;->$SwitchMap$com$yftech$settings$manager$VoiceSettingsManager$Function:[I

    invoke-virtual {p1}, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 118
    :cond_0
    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/yftech/settings/manager/VoiceSettingsManager;->setVoiceCustomWakeUpWord(Ljava/lang/String;)Z

    move-result p0

    :goto_0
    const-string p2, "VoiceSettingsManager"

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setValue function:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", result:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 7
    check-cast p1, Lcom/yftech/settings/manager/VoiceSettingsManager$Function;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/settings/manager/VoiceSettingsManager;->setValue(Lcom/yftech/settings/manager/VoiceSettingsManager$Function;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
