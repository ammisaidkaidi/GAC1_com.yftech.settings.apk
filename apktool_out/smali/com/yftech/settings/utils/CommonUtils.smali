.class public Lcom/yftech/settings/utils/CommonUtils;
.super Ljava/lang/Object;
.source "CommonUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 2

    .line 79
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 83
    :cond_0
    invoke-static {v0}, Lcom/yftech/settings/utils/CommonUtils;->getLimitDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLimitDeviceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0xe

    :try_start_0
    const-string v1, "..."

    .line 71
    invoke-static {p0, v0, v1}, Lcom/yftech/settings/utils/CommonUtils;->subStr(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 73
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object p0
.end method

.method private static isEmojiCharacter(C)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_3

    const/16 v1, 0x9

    if-eq p0, v1, :cond_3

    const/16 v1, 0xa

    if-eq p0, v1, :cond_3

    const/16 v1, 0xd

    if-eq p0, v1, :cond_3

    const/16 v1, 0x20

    if-lt p0, v1, :cond_0

    const v1, 0xd7ff

    if-le p0, v1, :cond_3

    :cond_0
    const v1, 0xe000

    if-lt p0, v1, :cond_1

    const v1, 0xfffd

    if-le p0, v1, :cond_3

    :cond_1
    const/high16 v1, 0x10000

    if-lt p0, v1, :cond_2

    const v1, 0x10ffff

    if-gt p0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    move p0, v0

    :goto_1
    xor-int/2addr p0, v0

    return p0
.end method

.method public static subStr(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    if-eqz p0, :cond_6

    const-string v0, ""

    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 42
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v1, v3, :cond_4

    if-lez p1, :cond_4

    .line 44
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 45
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    array-length v3, v3

    if-le v3, v4, :cond_1

    add-int/lit8 p1, p1, -0x2

    goto :goto_1

    .line 49
    :cond_1
    invoke-static {v2}, Lcom/yftech/settings/utils/CommonUtils;->isEmojiCharacter(C)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 p1, p1, -0x1

    :goto_1
    if-gez p1, :cond_3

    goto :goto_2

    .line 57
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v1, 0x1

    move v6, v2

    move v2, v1

    move v1, v6

    goto :goto_0

    :cond_4
    move v1, v2

    .line 60
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr p0, v4

    if-le p0, v1, :cond_5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_5

    .line 61
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    :goto_3
    const-string p0, ""

    return-object p0
.end method
