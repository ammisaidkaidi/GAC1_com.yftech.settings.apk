.class public Lcom/yftech/settings/widget/dialog/WallpaperDialog;
.super Lcom/yftech/settings/widget/dialog/BaseDialog;
.source "WallpaperDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/settings/widget/dialog/WallpaperDialog$WallpaperBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WallpaperDialog"

.field private static final WALLPAPER_SETTING_ACTION:Ljava/lang/String; = "com.yftech.multimedia.action.wallpaper.setting"


# instance fields
.field private TAB_DEFAULT:I

.field private TAB_USB1:I

.field private defaultWallpaperAdapter:Lcom/yftech/settings/display/adapter/WallpaperDefaultGridViewAdapter;

.field private isDefault:Z

.field private mToast:Landroid/widget/Toast;

.field private mWallpaperAdapter:Lcom/yftech/settings/display/adapter/WallpaperUsbGridViewAdapter;

.field private mWallpaperBroadcastReceiver:Lcom/yftech/settings/widget/dialog/WallpaperDialog$WallpaperBroadcastReceiver;

.field private mWallpaperContainer:Landroid/widget/GridView;

.field private mWallpaperList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;"
        }
    .end annotation
.end field

.field private mWallpaperListener:Lcom/yftech/settings/manager/WallpaperManager$onWallpaperListener;

.field private settingDialog:Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;

.field private tabSelect:I

.field private tempTextView:Landroid/widget/TextView;

.field private tvDefault:Landroid/widget/TextView;

.field private tvUsb1:Landroid/widget/TextView;

.field private usb:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const v0, 0x7f0e0176

    .line 98
    invoke-direct {p0, p1, v0}, Lcom/yftech/settings/widget/dialog/BaseDialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, -0x1

    .line 55
    iput p1, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->TAB_DEFAULT:I

    const/4 p1, 0x0

    .line 56
    iput p1, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->TAB_USB1:I

    .line 65
    new-instance p1, Lcom/yftech/settings/widget/dialog/WallpaperDialog$1;

    invoke-direct {p1, p0}, Lcom/yftech/settings/widget/dialog/WallpaperDialog$1;-><init>(Lcom/yftech/settings/widget/dialog/WallpaperDialog;)V

    iput-object p1, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->mWallpaperListener:Lcom/yftech/settings/manager/WallpaperManager$onWallpaperListener;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 36
    sget-object v0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/yftech/settings/widget/dialog/WallpaperDialog;)Landroid/widget/TextView;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->tvUsb1:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/yftech/settings/widget/dialog/WallpaperDialog;)Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->settingDialog:Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/yftech/settings/widget/dialog/WallpaperDialog;)Lcom/yftech/settings/display/adapter/WallpaperDefaultGridViewAdapter;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->defaultWallpaperAdapter:Lcom/yftech/settings/display/adapter/WallpaperDefaultGridViewAdapter;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/yftech/settings/widget/dialog/WallpaperDialog;)Lcom/yftech/settings/display/adapter/WallpaperUsbGridViewAdapter;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->mWallpaperAdapter:Lcom/yftech/settings/display/adapter/WallpaperUsbGridViewAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yftech/settings/widget/dialog/WallpaperDialog;Landroid/widget/TextView;Z)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->updateUsbExistsView(Landroid/widget/TextView;Z)V

    return-void
.end method

.method static synthetic access$302(Lcom/yftech/settings/widget/dialog/WallpaperDialog;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->usb:I

    return p1
.end method

.method static synthetic access$400(Lcom/yftech/settings/widget/dialog/WallpaperDialog;)Landroid/widget/TextView;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->tempTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$402(Lcom/yftech/settings/widget/dialog/WallpaperDialog;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->tempTextView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$500(Lcom/yftech/settings/widget/dialog/WallpaperDialog;)Landroid/widget/TextView;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->tvDefault:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/yftech/settings/widget/dialog/WallpaperDialog;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->tabSelect:I

    return p0
.end method

.method static synthetic access$602(Lcom/yftech/settings/widget/dialog/WallpaperDialog;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->tabSelect:I

    return p1
.end method

.method static synthetic access$700(Lcom/yftech/settings/widget/dialog/WallpaperDialog;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->TAB_DEFAULT:I

    return p0
.end method

.method static synthetic access$800(Lcom/yftech/settings/widget/dialog/WallpaperDialog;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->updateWallpaperContainer(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/yftech/settings/widget/dialog/WallpaperDialog;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->isDefault:Z

    return p0
.end method

.method static synthetic access$902(Lcom/yftech/settings/widget/dialog/WallpaperDialog;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->isDefault:Z

    return p1
.end method

.method private initData()V
    .locals 3

    .line 148
    new-instance v0, Lcom/yftech/settings/display/adapter/WallpaperDefaultGridViewAdapter;

    invoke-virtual {p0}, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/yftech/settings/manager/WallpaperManager;->getInstance()Lcom/yftech/settings/manager/WallpaperManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yftech/settings/manager/WallpaperManager;->getDefaultWallpaper()[I

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yftech/settings/display/adapter/WallpaperDefaultGridViewAdapter;-><init>(Landroid/content/Context;[I)V

    iput-object v0, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->defaultWallpaperAdapter:Lcom/yftech/settings/display/adapter/WallpaperDefaultGridViewAdapter;

    .line 150
    invoke-static {}, Lcom/yftech/settings/manager/WallpaperManager;->getInstance()Lcom/yftech/settings/manager/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/settings/manager/WallpaperManager;->getUsbIndexes()[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 152
    iget v1, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->TAB_USB1:I

    aget-byte v0, v0, v1

    iput v0, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->usb:I

    .line 156
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 157
    new-instance v1, Ljava/util/Locale;

    const-string v2, "ru"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/Locale;

    const-string v2, "es"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 160
    :cond_1
    iget-object p0, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->tvDefault:Landroid/widget/TextView;

    const/16 v0, 0x31

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setGravity(I)V

    :cond_2
    return-void
.end method

.method private initView()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceAsColor"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->tvUsb1:Landroid/widget/TextView;

    invoke-static {}, Lcom/yftech/settings/manager/WallpaperManager;->getInstance()Lcom/yftech/settings/manager/WallpaperManager;

    move-result-object v1

    iget v2, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->TAB_USB1:I

    invoke-virtual {v1, v2}, Lcom/yftech/settings/manager/WallpaperManager;->isUsbExists(I)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->updateUsbExistsView(Landroid/widget/TextView;Z)V

    .line 143
    iget v0, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->TAB_DEFAULT:I

    invoke-direct {p0, v0}, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->updateWallpaperContainer(I)V

    return-void
.end method

.method private showToast()V
    .locals 3

    .line 278
    iget-object v0, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    const/4 v0, 0x0

    .line 280
    iput-object v0, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->mToast:Landroid/widget/Toast;

    .line 282
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d01b7

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->mToast:Landroid/widget/Toast;

    .line 283
    iget-object p0, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private updateUsbExistsView(Landroid/widget/TextView;Z)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceAsColor"
        }
    .end annotation

    const/16 p0, 0xff

    if-eqz p2, :cond_0

    const/16 v0, 0xb3

    .line 230
    invoke-static {v0, p0, p0, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x33

    .line 232
    invoke-static {v0, p0, p0, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 234
    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setClickable(Z)V

    return-void
.end method

.method private updateWallpaperContainer(I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 216
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->mWallpaperContainer:Landroid/widget/GridView;

    iget-object p0, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->defaultWallpaperAdapter:Lcom/yftech/settings/display/adapter/WallpaperDefaultGridViewAdapter;

    invoke-virtual {p1, p0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 218
    :cond_0
    invoke-static {}, Lcom/yftech/settings/manager/WallpaperManager;->getInstance()Lcom/yftech/settings/manager/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yftech/settings/manager/WallpaperManager;->getPhotos(I)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->mWallpaperList:Ljava/util/List;

    .line 219
    sget-object p1, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateWallpaperContainer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->mWallpaperList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->mWallpaperList:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 221
    new-instance p1, Lcom/yftech/settings/display/adapter/WallpaperUsbGridViewAdapter;

    invoke-virtual {p0}, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->mWallpaperList:Ljava/util/List;

    invoke-direct {p1, v0, v1}, Lcom/yftech/settings/display/adapter/WallpaperUsbGridViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->mWallpaperAdapter:Lcom/yftech/settings/display/adapter/WallpaperUsbGridViewAdapter;

    .line 223
    :cond_1
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->mWallpaperContainer:Landroid/widget/GridView;

    iget-object p0, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->mWallpaperAdapter:Lcom/yftech/settings/display/adapter/WallpaperUsbGridViewAdapter;

    invoke-virtual {p1, p0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 272
    invoke-super {p0}, Lcom/yftech/settings/widget/dialog/BaseDialog;->dismiss()V

    .line 273
    iget-object v0, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->settingDialog:Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->settingDialog:Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;

    invoke-virtual {v0}, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    iget-object p0, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->settingDialog:Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;

    invoke-virtual {p0}, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    .line 166
    invoke-super {p0}, Lcom/yftech/settings/widget/dialog/BaseDialog;->onAttachedToWindow()V

    .line 167
    invoke-static {}, Lcom/yftech/settings/manager/WallpaperManager;->getInstance()Lcom/yftech/settings/manager/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/settings/manager/WallpaperManager;->init()V

    .line 168
    invoke-static {}, Lcom/yftech/settings/manager/WallpaperManager;->getInstance()Lcom/yftech/settings/manager/WallpaperManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->mWallpaperListener:Lcom/yftech/settings/manager/WallpaperManager$onWallpaperListener;

    invoke-virtual {v0, v1}, Lcom/yftech/settings/manager/WallpaperManager;->setOnWallpaperListener(Lcom/yftech/settings/manager/WallpaperManager$onWallpaperListener;)V

    .line 169
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.yftech.multimedia.action.wallpaper.setting"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 170
    new-instance v1, Lcom/yftech/settings/widget/dialog/WallpaperDialog$WallpaperBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/yftech/settings/widget/dialog/WallpaperDialog$WallpaperBroadcastReceiver;-><init>(Lcom/yftech/settings/widget/dialog/WallpaperDialog;Lcom/yftech/settings/widget/dialog/WallpaperDialog$1;)V

    iput-object v1, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->mWallpaperBroadcastReceiver:Lcom/yftech/settings/widget/dialog/WallpaperDialog$WallpaperBroadcastReceiver;

    .line 171
    invoke-virtual {p0}, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->mWallpaperBroadcastReceiver:Lcom/yftech/settings/widget/dialog/WallpaperDialog$WallpaperBroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 183
    iget-object v0, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->tempTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 184
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f08022e

    const/4 v2, 0x1

    if-eq p1, v0, :cond_1

    const v0, 0x7f080230

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 192
    :cond_0
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->tvUsb1:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 193
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->tvUsb1:Landroid/widget/TextView;

    iput-object p1, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->tempTextView:Landroid/widget/TextView;

    .line 194
    iget p1, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->usb:I

    iput p1, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->tabSelect:I

    .line 195
    iput-boolean v1, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->isDefault:Z

    goto :goto_0

    .line 186
    :cond_1
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->tvDefault:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 187
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->tvDefault:Landroid/widget/TextView;

    iput-object p1, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->tempTextView:Landroid/widget/TextView;

    .line 188
    iget p1, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->TAB_DEFAULT:I

    iput p1, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->tabSelect:I

    .line 189
    iput-boolean v2, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->isDefault:Z

    .line 199
    :goto_0
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->tvUsb1:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->isSelected()Z

    move-result p1

    const/16 v0, 0xff

    if-eqz p1, :cond_2

    .line 200
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->tvUsb1:Landroid/widget/TextView;

    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 202
    :cond_2
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->tvUsb1:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->isClickable()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 203
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->tvUsb1:Landroid/widget/TextView;

    const/16 v1, 0xb3

    invoke-static {v1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 206
    :cond_3
    :goto_1
    iget p1, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->tabSelect:I

    invoke-direct {p0, p1}, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->updateWallpaperContainer(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 103
    invoke-super {p0, p1}, Lcom/yftech/settings/widget/dialog/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0a002b

    .line 104
    invoke-virtual {p0, p1}, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->setContentView(I)V

    .line 105
    invoke-virtual {p0}, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/Window;->setDimAmount(F)V

    .line 106
    invoke-virtual {p0}, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x803

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    const/4 p1, 0x1

    .line 107
    invoke-virtual {p0, p1}, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->setCanceledOnTouchOutside(Z)V

    .line 108
    invoke-virtual {p0, p1}, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->setCancelable(Z)V

    const v0, 0x7f08022e

    .line 110
    invoke-virtual {p0, v0}, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->tvDefault:Landroid/widget/TextView;

    const v0, 0x7f080230

    .line 111
    invoke-virtual {p0, v0}, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->tvUsb1:Landroid/widget/TextView;

    const v0, 0x7f0800ae

    .line 112
    invoke-virtual {p0, v0}, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->mWallpaperContainer:Landroid/widget/GridView;

    .line 114
    iget-object v0, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->tvDefault:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->tempTextView:Landroid/widget/TextView;

    .line 115
    iput-boolean p1, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->isDefault:Z

    .line 116
    iget-object v0, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->tvDefault:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 118
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->tvDefault:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->tvUsb1:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->mWallpaperContainer:Landroid/widget/GridView;

    invoke-virtual {p1, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 121
    new-instance p1, Lcom/yftech/settings/widget/dialog/WallpaperDialog$2;

    invoke-direct {p1, p0}, Lcom/yftech/settings/widget/dialog/WallpaperDialog$2;-><init>(Lcom/yftech/settings/widget/dialog/WallpaperDialog;)V

    invoke-virtual {p0, p1}, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 176
    invoke-super {p0}, Lcom/yftech/settings/widget/dialog/BaseDialog;->onDetachedFromWindow()V

    .line 177
    invoke-static {}, Lcom/yftech/settings/manager/WallpaperManager;->getInstance()Lcom/yftech/settings/manager/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/settings/manager/WallpaperManager;->dInit()V

    .line 178
    invoke-virtual {p0}, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->mWallpaperBroadcastReceiver:Lcom/yftech/settings/widget/dialog/WallpaperDialog$WallpaperBroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 239
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->settingDialog:Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->settingDialog:Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;

    invoke-virtual {p1}, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 240
    sget-object p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->TAG:Ljava/lang/String;

    const-string p1, "settingDialog.isShowing()"

    invoke-static {p0, p1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 243
    :cond_0
    new-instance p1, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;

    invoke-virtual {p0}, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->settingDialog:Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;

    .line 244
    iget-boolean p1, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->isDefault:Z

    if-eqz p1, :cond_1

    .line 245
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->settingDialog:Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;

    invoke-virtual {p1}, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->show()V

    .line 246
    iget-object p0, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->settingDialog:Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;

    invoke-static {}, Lcom/yftech/settings/manager/WallpaperManager;->getInstance()Lcom/yftech/settings/manager/WallpaperManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/settings/manager/WallpaperManager;->getDefaultWallpaper()[I

    move-result-object p1

    aget p1, p1, p3

    invoke-virtual {p0, p1}, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->setImageById(I)V

    goto :goto_0

    .line 248
    :cond_1
    iget-object p1, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->mWallpaperList:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/car/media/data/entity/MediaFile;

    .line 249
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getTab()I

    move-result p2

    const/4 p3, -0x1

    if-eq p2, p3, :cond_2

    .line 250
    iget-object p2, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->settingDialog:Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;

    invoke-virtual {p2, p1}, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->setImagePath(Lcom/yftech/car/media/data/entity/MediaFile;)V

    .line 251
    iget-object p0, p0, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->settingDialog:Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;

    invoke-virtual {p0}, Lcom/yftech/settings/widget/dialog/WallpaperSettingDialog;->show()V

    goto :goto_0

    .line 253
    :cond_2
    invoke-direct {p0}, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->showToast()V

    :goto_0
    return-void
.end method

.method public show()V
    .locals 0

    .line 135
    invoke-super {p0}, Lcom/yftech/settings/widget/dialog/BaseDialog;->show()V

    .line 136
    invoke-direct {p0}, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->initData()V

    .line 137
    invoke-direct {p0}, Lcom/yftech/settings/widget/dialog/WallpaperDialog;->initView()V

    return-void
.end method
