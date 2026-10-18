.class public Lcom/yftech/settings/BaseFragment;
.super Landroid/app/Fragment;
.source "BaseFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private mIsPower:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private static fixInputMethodManagerLeak(Landroid/content/Context;)V
    .locals 7

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string v0, "input_method"

    .line 59
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v1, "mCurRootView"

    const-string v2, "mServedView"

    const-string v3, "mNextServedView"

    .line 64
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 67
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_5

    .line 68
    aget-object v3, v1, v2

    .line 70
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 71
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x1

    .line 72
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 74
    :cond_2
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 75
    instance-of v5, v4, Landroid/view/View;

    if-eqz v5, :cond_4

    .line 76
    check-cast v4, Landroid/view/View;

    .line 77
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    if-ne v5, p0, :cond_3

    const/4 v4, 0x0

    .line 78
    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    const-string v3, "BaseFragment"

    .line 82
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fixInputMethodManagerLeak break, context is not suitable, get_context="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " dest_context="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/yftech/settings/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    .line 88
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method protected dismissAllDialog()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 49
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    const-string v0, "BaseFragment"

    const-string v1, "onDestroy:  "

    .line 50
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-virtual {p0}, Lcom/yftech/settings/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/settings/BaseFragment;->fixInputMethodManagerLeak(Landroid/content/Context;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 38
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 40
    invoke-virtual {p0}, Lcom/yftech/settings/BaseFragment;->dismissAllDialog()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 21
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 22
    invoke-virtual {p0}, Lcom/yftech/settings/BaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/yftech/settings/BaseActivity;

    invoke-virtual {p1}, Lcom/yftech/settings/BaseActivity;->isPower()Z

    move-result p1

    iput-boolean p1, p0, Lcom/yftech/settings/BaseFragment;->mIsPower:Z

    .line 23
    iget-boolean p1, p0, Lcom/yftech/settings/BaseFragment;->mIsPower:Z

    if-nez p1, :cond_2

    .line 24
    invoke-virtual {p0}, Lcom/yftech/settings/BaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/yftech/settings/BaseActivity;

    invoke-virtual {p1}, Lcom/yftech/settings/BaseActivity;->showPowerToast()V

    .line 25
    invoke-virtual {p0}, Lcom/yftech/settings/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/settings/utils/Utils;->playKeySoundEffect(Landroid/content/Context;)V

    return v0

    .line 28
    :cond_0
    iget-boolean p1, p0, Lcom/yftech/settings/BaseFragment;->mIsPower:Z

    if-nez p1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    return v0

    .line 30
    :cond_1
    iget-boolean p0, p0, Lcom/yftech/settings/BaseFragment;->mIsPower:Z

    if-nez p0, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    if-ne p0, v0, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
