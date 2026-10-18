.class public Lcom/yftech/settings/widget/VerticalUpSeekBar;
.super Landroidx/appcompat/widget/AppCompatSeekBar;
.source "VerticalUpSeekBar.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VerticalUpSeekBar"


# instance fields
.field i:I

.field private mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 17
    iput p1, p0, Lcom/yftech/settings/widget/VerticalUpSeekBar;->i:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 17
    iput p1, p0, Lcom/yftech/settings/widget/VerticalUpSeekBar;->i:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 17
    iput p1, p0, Lcom/yftech/settings/widget/VerticalUpSeekBar;->i:I

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    const/high16 v0, -0x3d4c0000    # -90.0f

    .line 47
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 49
    invoke-virtual {p0}, Lcom/yftech/settings/widget/VerticalUpSeekBar;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 50
    sget-object v0, Lcom/yftech/settings/widget/VerticalUpSeekBar;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDraw:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/yftech/settings/widget/VerticalUpSeekBar;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatSeekBar;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 0

    monitor-enter p0

    .line 41
    :try_start_0
    invoke-super {p0, p2, p1}, Landroidx/appcompat/widget/AppCompatSeekBar;->onMeasure(II)V

    .line 42
    invoke-virtual {p0}, Lcom/yftech/settings/widget/VerticalUpSeekBar;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0}, Lcom/yftech/settings/widget/VerticalUpSeekBar;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/yftech/settings/widget/VerticalUpSeekBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 40
    monitor-exit p0

    throw p1
.end method

.method onProgressChanged()V
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/yftech/settings/widget/VerticalUpSeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/yftech/settings/widget/VerticalUpSeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    iget v1, p0, Lcom/yftech/settings/widget/VerticalUpSeekBar;->i:I

    const/4 v2, 0x1

    invoke-interface {v0, p0, v1, v2}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 36
    invoke-super {p0, p2, p1, p4, p3}, Landroidx/appcompat/widget/AppCompatSeekBar;->onSizeChanged(IIII)V

    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/yftech/settings/widget/VerticalUpSeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/yftech/settings/widget/VerticalUpSeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p0}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_0
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/yftech/settings/widget/VerticalUpSeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/yftech/settings/widget/VerticalUpSeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p0}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 75
    invoke-virtual {p0}, Lcom/yftech/settings/widget/VerticalUpSeekBar;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 79
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 85
    :pswitch_0
    invoke-virtual {p0}, Lcom/yftech/settings/widget/VerticalUpSeekBar;->getMax()I

    move-result v0

    invoke-virtual {p0}, Lcom/yftech/settings/widget/VerticalUpSeekBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    mul-float/2addr v2, p1

    invoke-virtual {p0}, Lcom/yftech/settings/widget/VerticalUpSeekBar;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v2, p1

    float-to-int p1, v2

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/yftech/settings/widget/VerticalUpSeekBar;->i:I

    .line 87
    iget p1, p0, Lcom/yftech/settings/widget/VerticalUpSeekBar;->i:I

    invoke-virtual {p0, p1}, Lcom/yftech/settings/widget/VerticalUpSeekBar;->setProgress(I)V

    .line 88
    sget-object p1, Lcom/yftech/settings/widget/VerticalUpSeekBar;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Move->progress="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/yftech/settings/widget/VerticalUpSeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/yftech/settings/widget/VerticalUpSeekBar;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/yftech/settings/widget/VerticalUpSeekBar;->getHeight()I

    move-result v0

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/yftech/settings/widget/VerticalUpSeekBar;->onSizeChanged(IIII)V

    .line 91
    sget-object p1, Lcom/yftech/settings/widget/VerticalUpSeekBar;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDraw->width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/yftech/settings/widget/VerticalUpSeekBar;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/yftech/settings/widget/VerticalUpSeekBar;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/yftech/settings/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/yftech/settings/widget/VerticalUpSeekBar;->onProgressChanged()V

    goto :goto_0

    .line 96
    :pswitch_1
    invoke-virtual {p0}, Lcom/yftech/settings/widget/VerticalUpSeekBar;->onStopTrackingTouch()V

    goto :goto_0

    .line 81
    :pswitch_2
    invoke-virtual {p0}, Lcom/yftech/settings/widget/VerticalUpSeekBar;->onStartTrackingTouch()V

    :goto_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/yftech/settings/widget/VerticalUpSeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 2

    monitor-enter p0

    .line 105
    :try_start_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatSeekBar;->setProgress(I)V

    .line 106
    invoke-virtual {p0}, Lcom/yftech/settings/widget/VerticalUpSeekBar;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/yftech/settings/widget/VerticalUpSeekBar;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/yftech/settings/widget/VerticalUpSeekBar;->onSizeChanged(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 104
    monitor-exit p0

    throw p1
.end method
