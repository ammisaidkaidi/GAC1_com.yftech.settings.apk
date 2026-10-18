.class Lcom/yftech/settings/SettingsActivity$1$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/settings/SettingsActivity$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yftech/settings/SettingsActivity$1;


# direct methods
.method constructor <init>(Lcom/yftech/settings/SettingsActivity$1;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/yftech/settings/SettingsActivity$1$1;->this$1:Lcom/yftech/settings/SettingsActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const-string p0, "SettingsActivity1"

    const-string v0, "exit"

    .line 167
    invoke-static {p0, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 168
    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    return-void
.end method
