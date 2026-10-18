.class public Lcom/yftech/settings/widget/VideoView;
.super Landroid/view/SurfaceView;
.source "VideoView.java"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;
.implements Landroid/media/SubtitleController$Anchor;


# static fields
.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PAUSED:I = 0x4

.field private static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field private static final STATE_PLAYING:I = 0x3

.field private static final STATE_PREPARED:I = 0x2

.field private static final STATE_PREPARING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "VideoView"


# instance fields
.field private mAudioAttributes:Landroid/media/AudioAttributes;

.field private mAudioFocusType:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioSession:I

.field private mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mCanPause:Z

.field private mCanSeekBack:Z

.field private mCanSeekForward:Z

.field private mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mContext:Landroid/content/Context;

.field private mCurrentBufferPercentage:I

.field private mCurrentState:I

.field private mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mMediaController:Landroid/widget/MediaController;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private final mPendingSubtitleTracks:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Landroid/util/Pair<",
            "Ljava/io/InputStream;",
            "Landroid/media/MediaFormat;",
            ">;>;"
        }
    .end annotation
.end field

.field mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field mSHCallback:Landroid/view/SurfaceHolder$Callback;

.field private mSeekWhenPrepared:I

.field mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

.field private mSubtitlesChangedListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

.field private mSurfaceHeight:I

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceWidth:I

.field private mTargetState:I

.field private mUri:Landroid/net/Uri;

.field private mVideoHeight:I

.field private mVideoWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 98
    invoke-direct {p0, p1, v0}, Lcom/yftech/settings/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 99
    iput-object p1, p0, Lcom/yftech/settings/widget/VideoView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 103
    invoke-direct {p0, p1, p2, v0}, Lcom/yftech/settings/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 107
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/yftech/settings/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 108
    iput-object p1, p0, Lcom/yftech/settings/widget/VideoView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 112
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 55
    new-instance p2, Ljava/util/Vector;

    invoke-direct {p2}, Ljava/util/Vector;-><init>()V

    iput-object p2, p0, Lcom/yftech/settings/widget/VideoView;->mPendingSubtitleTracks:Ljava/util/Vector;

    const/4 p2, 0x0

    .line 66
    iput p2, p0, Lcom/yftech/settings/widget/VideoView;->mCurrentState:I

    .line 67
    iput p2, p0, Lcom/yftech/settings/widget/VideoView;->mTargetState:I

    const/4 p3, 0x0

    .line 70
    iput-object p3, p0, Lcom/yftech/settings/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 71
    iput-object p3, p0, Lcom/yftech/settings/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 p3, 0x1

    .line 88
    iput p3, p0, Lcom/yftech/settings/widget/VideoView;->mAudioFocusType:I

    .line 396
    new-instance p4, Lcom/yftech/settings/widget/VideoView$1;

    invoke-direct {p4, p0}, Lcom/yftech/settings/widget/VideoView$1;-><init>(Lcom/yftech/settings/widget/VideoView;)V

    iput-object p4, p0, Lcom/yftech/settings/widget/VideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 408
    new-instance p4, Lcom/yftech/settings/widget/VideoView$2;

    invoke-direct {p4, p0}, Lcom/yftech/settings/widget/VideoView$2;-><init>(Lcom/yftech/settings/widget/VideoView;)V

    iput-object p4, p0, Lcom/yftech/settings/widget/VideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 470
    new-instance p4, Lcom/yftech/settings/widget/VideoView$3;

    invoke-direct {p4, p0}, Lcom/yftech/settings/widget/VideoView$3;-><init>(Lcom/yftech/settings/widget/VideoView;)V

    iput-object p4, p0, Lcom/yftech/settings/widget/VideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 487
    new-instance p4, Lcom/yftech/settings/widget/VideoView$4;

    invoke-direct {p4, p0}, Lcom/yftech/settings/widget/VideoView$4;-><init>(Lcom/yftech/settings/widget/VideoView;)V

    iput-object p4, p0, Lcom/yftech/settings/widget/VideoView;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 497
    new-instance p4, Lcom/yftech/settings/widget/VideoView$5;

    invoke-direct {p4, p0}, Lcom/yftech/settings/widget/VideoView$5;-><init>(Lcom/yftech/settings/widget/VideoView;)V

    iput-object p4, p0, Lcom/yftech/settings/widget/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 549
    new-instance p4, Lcom/yftech/settings/widget/VideoView$6;

    invoke-direct {p4, p0}, Lcom/yftech/settings/widget/VideoView$6;-><init>(Lcom/yftech/settings/widget/VideoView;)V

    iput-object p4, p0, Lcom/yftech/settings/widget/VideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 601
    new-instance p4, Lcom/yftech/settings/widget/VideoView$7;

    invoke-direct {p4, p0}, Lcom/yftech/settings/widget/VideoView$7;-><init>(Lcom/yftech/settings/widget/VideoView;)V

    iput-object p4, p0, Lcom/yftech/settings/widget/VideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 114
    iput-object p1, p0, Lcom/yftech/settings/widget/VideoView;->mContext:Landroid/content/Context;

    .line 116
    iput p2, p0, Lcom/yftech/settings/widget/VideoView;->mVideoWidth:I

    .line 117
    iput p2, p0, Lcom/yftech/settings/widget/VideoView;->mVideoHeight:I

    .line 119
    iget-object p1, p0, Lcom/yftech/settings/widget/VideoView;->mContext:Landroid/content/Context;

    const-string p4, "audio"

    invoke-virtual {p1, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/yftech/settings/widget/VideoView;->mAudioManager:Landroid/media/AudioManager;

    .line 120
    new-instance p1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {p1, p3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    const/4 p4, 0x3

    .line 121
    invoke-virtual {p1, p4}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/settings/widget/VideoView;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 123
    invoke-virtual {p0}, Lcom/yftech/settings/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/settings/widget/VideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 124
    invoke-virtual {p0}, Lcom/yftech/settings/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1, p4}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 126
    invoke-virtual {p0, p3}, Lcom/yftech/settings/widget/VideoView;->setFocusable(Z)V

    .line 127
    invoke-virtual {p0, p3}, Lcom/yftech/settings/widget/VideoView;->setFocusableInTouchMode(Z)V

    .line 128
    invoke-virtual {p0}, Lcom/yftech/settings/widget/VideoView;->requestFocus()Z

    .line 130
    iput p2, p0, Lcom/yftech/settings/widget/VideoView;->mCurrentState:I

    .line 131
    iput p2, p0, Lcom/yftech/settings/widget/VideoView;->mTargetState:I

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/settings/widget/VideoView;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/yftech/settings/widget/VideoView;->mVideoWidth:I

    return p0
.end method

.method static synthetic access$002(Lcom/yftech/settings/widget/VideoView;I)I
    .locals 0

    .line 41
    iput p1, p0, Lcom/yftech/settings/widget/VideoView;->mVideoWidth:I

    return p1
.end method

.method static synthetic access$100(Lcom/yftech/settings/widget/VideoView;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/yftech/settings/widget/VideoView;->mVideoHeight:I

    return p0
.end method

.method static synthetic access$1000(Lcom/yftech/settings/widget/VideoView;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/yftech/settings/widget/VideoView;->mSurfaceWidth:I

    return p0
.end method

.method static synthetic access$1002(Lcom/yftech/settings/widget/VideoView;I)I
    .locals 0

    .line 41
    iput p1, p0, Lcom/yftech/settings/widget/VideoView;->mSurfaceWidth:I

    return p1
.end method

.method static synthetic access$102(Lcom/yftech/settings/widget/VideoView;I)I
    .locals 0

    .line 41
    iput p1, p0, Lcom/yftech/settings/widget/VideoView;->mVideoHeight:I

    return p1
.end method

.method static synthetic access$1100(Lcom/yftech/settings/widget/VideoView;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/yftech/settings/widget/VideoView;->mSurfaceHeight:I

    return p0
.end method

.method static synthetic access$1102(Lcom/yftech/settings/widget/VideoView;I)I
    .locals 0

    .line 41
    iput p1, p0, Lcom/yftech/settings/widget/VideoView;->mSurfaceHeight:I

    return p1
.end method

.method static synthetic access$1200(Lcom/yftech/settings/widget/VideoView;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/yftech/settings/widget/VideoView;->mTargetState:I

    return p0
.end method

.method static synthetic access$1202(Lcom/yftech/settings/widget/VideoView;I)I
    .locals 0

    .line 41
    iput p1, p0, Lcom/yftech/settings/widget/VideoView;->mTargetState:I

    return p1
.end method

.method static synthetic access$1300(Lcom/yftech/settings/widget/VideoView;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/yftech/settings/widget/VideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/yftech/settings/widget/VideoView;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/yftech/settings/widget/VideoView;->mAudioFocusType:I

    return p0
.end method

.method static synthetic access$1500(Lcom/yftech/settings/widget/VideoView;)Landroid/media/MediaPlayer$OnInfoListener;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/yftech/settings/widget/VideoView;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/yftech/settings/widget/VideoView;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/yftech/settings/widget/VideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/yftech/settings/widget/VideoView;)Landroid/content/Context;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/yftech/settings/widget/VideoView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/yftech/settings/widget/VideoView;I)I
    .locals 0

    .line 41
    iput p1, p0, Lcom/yftech/settings/widget/VideoView;->mCurrentBufferPercentage:I

    return p1
.end method

.method static synthetic access$1902(Lcom/yftech/settings/widget/VideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/yftech/settings/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/yftech/settings/widget/VideoView;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/yftech/settings/widget/VideoView;->openVideo()V

    return-void
.end method

.method static synthetic access$202(Lcom/yftech/settings/widget/VideoView;I)I
    .locals 0

    .line 41
    iput p1, p0, Lcom/yftech/settings/widget/VideoView;->mCurrentState:I

    return p1
.end method

.method static synthetic access$2100(Lcom/yftech/settings/widget/VideoView;Z)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/yftech/settings/widget/VideoView;->release(Z)V

    return-void
.end method

.method static synthetic access$302(Lcom/yftech/settings/widget/VideoView;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/yftech/settings/widget/VideoView;->mCanPause:Z

    return p1
.end method

.method static synthetic access$402(Lcom/yftech/settings/widget/VideoView;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/yftech/settings/widget/VideoView;->mCanSeekBack:Z

    return p1
.end method

.method static synthetic access$502(Lcom/yftech/settings/widget/VideoView;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/yftech/settings/widget/VideoView;->mCanSeekForward:Z

    return p1
.end method

.method static synthetic access$600(Lcom/yftech/settings/widget/VideoView;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/yftech/settings/widget/VideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/yftech/settings/widget/VideoView;)Landroid/media/MediaPlayer;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/yftech/settings/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$800(Lcom/yftech/settings/widget/VideoView;)Landroid/widget/MediaController;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/yftech/settings/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    return-object p0
.end method

.method static synthetic access$900(Lcom/yftech/settings/widget/VideoView;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/yftech/settings/widget/VideoView;->mSeekWhenPrepared:I

    return p0
.end method

.method private attachMediaController()V
    .locals 2

    .line 387
    iget-object v0, p0, Lcom/yftech/settings/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yftech/settings/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_1

    .line 388
    iget-object v0, p0, Lcom/yftech/settings/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0, p0}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 389
    invoke-virtual {p0}, Lcom/yftech/settings/widget/VideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 390
    invoke-virtual {p0}, Lcom/yftech/settings/widget/VideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    move-object v0, p0

    .line 391
    :goto_0
    iget-object v1, p0, Lcom/yftech/settings/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 392
    iget-object v0, p0, Lcom/yftech/settings/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-direct {p0}, Lcom/yftech/settings/widget/VideoView;->isInPlaybackState()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/MediaController;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method private isInPlaybackState()Z
    .locals 3

    .line 789
    iget-object v0, p0, Lcom/yftech/settings/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/yftech/settings/widget/VideoView;->mCurrentState:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/yftech/settings/widget/VideoView;->mCurrentState:I

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/yftech/settings/widget/VideoView;->mCurrentState:I

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private measureAndLayoutSubtitleWidget()V
    .locals 3

    .line 865
    invoke-virtual {p0}, Lcom/yftech/settings/widget/VideoView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/yftech/settings/widget/VideoView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yftech/settings/widget/VideoView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 866
    invoke-virtual {p0}, Lcom/yftech/settings/widget/VideoView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/yftech/settings/widget/VideoView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/yftech/settings/widget/VideoView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 868
    iget-object p0, p0, Lcom/yftech/settings/widget/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    invoke-interface {p0, v0, v1}, Landroid/media/SubtitleTrack$RenderingWidget;->setSize(II)V

    return-void
.end method

.method private openVideo()V
    .locals 7

    .line 304
    iget-object v0, p0, Lcom/yftech/settings/widget/VideoView;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/yftech/settings/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x0

    .line 310
    invoke-direct {p0, v0}, Lcom/yftech/settings/widget/VideoView;->release(Z)V

    .line 312
    iget v1, p0, Lcom/yftech/settings/widget/VideoView;->mAudioFocusType:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    .line 318
    :try_start_0
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v3, p0, Lcom/yftech/settings/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 321
    invoke-virtual {p0}, Lcom/yftech/settings/widget/VideoView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 322
    new-instance v4, Landroid/media/SubtitleController;

    iget-object v5, p0, Lcom/yftech/settings/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 323
    invoke-virtual {v5}, Landroid/media/MediaPlayer;->getMediaTimeProvider()Landroid/media/MediaTimeProvider;

    move-result-object v5

    iget-object v6, p0, Lcom/yftech/settings/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-direct {v4, v3, v5, v6}, Landroid/media/SubtitleController;-><init>(Landroid/content/Context;Landroid/media/MediaTimeProvider;Landroid/media/SubtitleController$Listener;)V

    .line 324
    new-instance v5, Landroid/media/WebVttRenderer;

    invoke-direct {v5, v3}, Landroid/media/WebVttRenderer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroid/media/SubtitleController;->registerRenderer(Landroid/media/SubtitleController$Renderer;)V

    .line 325
    new-instance v5, Landroid/media/TtmlRenderer;

    invoke-direct {v5, v3}, Landroid/media/TtmlRenderer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroid/media/SubtitleController;->registerRenderer(Landroid/media/SubtitleController$Renderer;)V

    .line 326
    new-instance v5, Landroid/media/Cea708CaptionRenderer;

    invoke-direct {v5, v3}, Landroid/media/Cea708CaptionRenderer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroid/media/SubtitleController;->registerRenderer(Landroid/media/SubtitleController$Renderer;)V

    .line 327
    new-instance v5, Landroid/media/ClosedCaptionRenderer;

    invoke-direct {v5, v3}, Landroid/media/ClosedCaptionRenderer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroid/media/SubtitleController;->registerRenderer(Landroid/media/SubtitleController$Renderer;)V

    .line 328
    iget-object v3, p0, Lcom/yftech/settings/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, v4, p0}, Landroid/media/MediaPlayer;->setSubtitleAnchor(Landroid/media/SubtitleController;Landroid/media/SubtitleController$Anchor;)V

    .line 330
    iget v3, p0, Lcom/yftech/settings/widget/VideoView;->mAudioSession:I

    if-eqz v3, :cond_1

    .line 331
    iget-object v3, p0, Lcom/yftech/settings/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v4, p0, Lcom/yftech/settings/widget/VideoView;->mAudioSession:I

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setAudioSessionId(I)V

    goto :goto_0

    .line 333
    :cond_1
    iget-object v3, p0, Lcom/yftech/settings/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v3

    iput v3, p0, Lcom/yftech/settings/widget/VideoView;->mAudioSession:I

    .line 335
    :goto_0
    iget-object v3, p0, Lcom/yftech/settings/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/yftech/settings/widget/VideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 336
    iget-object v3, p0, Lcom/yftech/settings/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/yftech/settings/widget/VideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 337
    iget-object v3, p0, Lcom/yftech/settings/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/yftech/settings/widget/VideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 338
    iget-object v3, p0, Lcom/yftech/settings/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/yftech/settings/widget/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 339
    iget-object v3, p0, Lcom/yftech/settings/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/yftech/settings/widget/VideoView;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 340
    iget-object v3, p0, Lcom/yftech/settings/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/yftech/settings/widget/VideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 341
    iput v0, p0, Lcom/yftech/settings/widget/VideoView;->mCurrentBufferPercentage:I

    .line 342
    iget-object v3, p0, Lcom/yftech/settings/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/yftech/settings/widget/VideoView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/yftech/settings/widget/VideoView;->mUri:Landroid/net/Uri;

    iget-object v6, p0, Lcom/yftech/settings/widget/VideoView;->mHeaders:Ljava/util/Map;

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 343
    iget-object v3, p0, Lcom/yftech/settings/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/yftech/settings/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 344
    iget-object v3, p0, Lcom/yftech/settings/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/yftech/settings/widget/VideoView;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 345
    iget-object v3, p0, Lcom/yftech/settings/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 346
    iget-object v3, p0, Lcom/yftech/settings/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 348
    iget-object v3, p0, Lcom/yftech/settings/widget/VideoView;->mPendingSubtitleTracks:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    :try_start_1
    iget-object v5, p0, Lcom/yftech/settings/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/io/InputStream;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/media/MediaFormat;

    invoke-virtual {v5, v6, v4}, Landroid/media/MediaPlayer;->addSubtitleSource(Ljava/io/InputStream;Landroid/media/MediaFormat;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 352
    :catch_0
    :try_start_2
    iget-object v4, p0, Lcom/yftech/settings/widget/VideoView;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    iget-object v5, p0, Lcom/yftech/settings/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/16 v6, 0x385

    invoke-interface {v4, v5, v6, v0}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z

    goto :goto_1

    .line 359
    :cond_2
    iput v1, p0, Lcom/yftech/settings/widget/VideoView;->mCurrentState:I

    .line 360
    invoke-direct {p0}, Lcom/yftech/settings/widget/VideoView;->attachMediaController()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 374
    iget-object p0, p0, Lcom/yftech/settings/widget/VideoView;->mPendingSubtitleTracks:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->clear()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v3

    :try_start_3
    const-string v4, "VideoView"

    .line 368
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to open content: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/yftech/settings/widget/VideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 369
    iput v2, p0, Lcom/yftech/settings/widget/VideoView;->mCurrentState:I

    .line 370
    iput v2, p0, Lcom/yftech/settings/widget/VideoView;->mTargetState:I

    .line 371
    iget-object v2, p0, Lcom/yftech/settings/widget/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v3, p0, Lcom/yftech/settings/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v2, v3, v1, v0}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 374
    iget-object p0, p0, Lcom/yftech/settings/widget/VideoView;->mPendingSubtitleTracks:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->clear()V

    return-void

    :catch_2
    move-exception v3

    :try_start_4
    const-string v4, "VideoView"

    .line 362
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to open content: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/yftech/settings/widget/VideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 363
    iput v2, p0, Lcom/yftech/settings/widget/VideoView;->mCurrentState:I

    .line 364
    iput v2, p0, Lcom/yftech/settings/widget/VideoView;->mTargetState:I

    .line 365
    iget-object v2, p0, Lcom/yftech/settings/widget/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v3, p0, Lcom/yftech/settings/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v2, v3, v1, v0}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 374
    iget-object p0, p0, Lcom/yftech/settings/widget/VideoView;->mPendingSubtitleTracks:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->clear()V

    return-void

    :goto_2
    iget-object p0, p0, Lcom/yftech/settings/widget/VideoView;->mPendingSubtitleTracks:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->clear()V

    .line 375
    throw v0

    :cond_3
    :goto_3
    return-void
.end method

.method private release(Z)V
    .locals 1

    .line 637
    iget-object v0, p0, Lcom/yftech/settings/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 638
    iget-object v0, p0, Lcom/yftech/settings/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 639
    iget-object v0, p0, Lcom/yftech/settings/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 640
    iput-object v0, p0, Lcom/yftech/settings/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 641
    iget-object v0, p0, Lcom/yftech/settings/widget/VideoView;->mPendingSubtitleTracks:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    const/4 v0, 0x0

    .line 642
    iput v0, p0, Lcom/yftech/settings/widget/VideoView;->mCurrentState:I

    if-eqz p1, :cond_0

    .line 644
    iput v0, p0, Lcom/yftech/settings/widget/VideoView;->mTargetState:I

    .line 646
    :cond_0
    iget p0, p0, Lcom/yftech/settings/widget/VideoView;->mAudioFocusType:I

    :cond_1
    return-void
.end method

.method private toggleMediaControlsVisiblity()V
    .locals 1

    .line 713
    iget-object v0, p0, Lcom/yftech/settings/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 714
    iget-object p0, p0, Lcom/yftech/settings/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {p0}, Landroid/widget/MediaController;->hide()V

    goto :goto_0

    .line 716
    :cond_0
    iget-object p0, p0, Lcom/yftech/settings/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {p0}, Landroid/widget/MediaController;->show()V

    :goto_0
    return-void
.end method


# virtual methods
.method public canPause()Z
    .locals 0

    .line 797
    iget-boolean p0, p0, Lcom/yftech/settings/widget/VideoView;->mCanPause:Z

    return p0
.end method

.method public canSeekBackward()Z
    .locals 0

    .line 802
    iget-boolean p0, p0, Lcom/yftech/settings/widget/VideoView;->mCanSeekBack:Z

    return p0
.end method

.method public canSeekForward()Z
    .locals 0

    .line 807
    iget-boolean p0, p0, Lcom/yftech/settings/widget/VideoView;->mCanSeekForward:Z

    return p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 849
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->draw(Landroid/graphics/Canvas;)V

    .line 851
    iget-object v0, p0, Lcom/yftech/settings/widget/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    if-eqz v0, :cond_0

    .line 852
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 853
    invoke-virtual {p0}, Lcom/yftech/settings/widget/VideoView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/yftech/settings/widget/VideoView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 854
    iget-object p0, p0, Lcom/yftech/settings/widget/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    invoke-interface {p0, p1}, Landroid/media/SubtitleTrack$RenderingWidget;->draw(Landroid/graphics/Canvas;)V

    .line 855
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_0
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    .line 200
    const-class p0, Lcom/yftech/settings/widget/VideoView;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAudioSessionId()I
    .locals 2

    .line 812
    iget v0, p0, Lcom/yftech/settings/widget/VideoView;->mAudioSession:I

    if-nez v0, :cond_0

    .line 813
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 814
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v1

    iput v1, p0, Lcom/yftech/settings/widget/VideoView;->mAudioSession:I

    .line 815
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 817
    :cond_0
    iget p0, p0, Lcom/yftech/settings/widget/VideoView;->mAudioSession:I

    return p0
.end method

.method public getBufferPercentage()I
    .locals 1

    .line 782
    iget-object v0, p0, Lcom/yftech/settings/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 783
    iget p0, p0, Lcom/yftech/settings/widget/VideoView;->mCurrentBufferPercentage:I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 759
    invoke-direct {p0}, Lcom/yftech/settings/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 760
    iget-object p0, p0, Lcom/yftech/settings/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getDuration()I
    .locals 1

    .line 750
    invoke-direct {p0}, Lcom/yftech/settings/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 751
    iget-object p0, p0, Lcom/yftech/settings/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getSubtitleLooper()Landroid/os/Looper;
    .locals 0

    .line 916
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method

.method public isPlaying()Z
    .locals 1

    .line 777
    invoke-direct {p0}, Lcom/yftech/settings/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yftech/settings/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 822
    invoke-super {p0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    .line 824
    iget-object v0, p0, Lcom/yftech/settings/widget/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    if-eqz v0, :cond_0

    .line 825
    iget-object p0, p0, Lcom/yftech/settings/widget/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    invoke-interface {p0}, Landroid/media/SubtitleTrack$RenderingWidget;->onAttachedToWindow()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 831
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    .line 833
    iget-object v0, p0, Lcom/yftech/settings/widget/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    if-eqz v0, :cond_0

    .line 834
    iget-object p0, p0, Lcom/yftech/settings/widget/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    invoke-interface {p0}, Landroid/media/SubtitleTrack$RenderingWidget;->onDetachedFromWindow()V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/16 v1, 0x18

    if-eq p1, v1, :cond_0

    const/16 v1, 0x19

    if-eq p1, v1, :cond_0

    const/16 v1, 0xa4

    if-eq p1, v1, :cond_0

    const/16 v1, 0x52

    if-eq p1, v1, :cond_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 680
    :goto_0
    invoke-direct {p0}, Lcom/yftech/settings/widget/VideoView;->isInPlaybackState()Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/yftech/settings/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v1, :cond_9

    const/16 v1, 0x4f

    if-eq p1, v1, :cond_7

    const/16 v1, 0x55

    if-ne p1, v1, :cond_1

    goto :goto_2

    :cond_1
    const/16 v1, 0x7e

    if-ne p1, v1, :cond_3

    .line 692
    iget-object p1, p0, Lcom/yftech/settings/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_2

    .line 693
    invoke-virtual {p0}, Lcom/yftech/settings/widget/VideoView;->start()V

    .line 694
    iget-object p0, p0, Lcom/yftech/settings/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {p0}, Landroid/widget/MediaController;->hide()V

    :cond_2
    return v0

    :cond_3
    const/16 v1, 0x56

    if-eq p1, v1, :cond_5

    const/16 v1, 0x7f

    if-ne p1, v1, :cond_4

    goto :goto_1

    .line 705
    :cond_4
    invoke-direct {p0}, Lcom/yftech/settings/widget/VideoView;->toggleMediaControlsVisiblity()V

    goto :goto_4

    .line 699
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/yftech/settings/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 700
    invoke-virtual {p0}, Lcom/yftech/settings/widget/VideoView;->pause()V

    .line 701
    iget-object p0, p0, Lcom/yftech/settings/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {p0}, Landroid/widget/MediaController;->show()V

    :cond_6
    return v0

    .line 683
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/yftech/settings/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 684
    invoke-virtual {p0}, Lcom/yftech/settings/widget/VideoView;->pause()V

    .line 685
    iget-object p0, p0, Lcom/yftech/settings/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {p0}, Landroid/widget/MediaController;->show()V

    goto :goto_3

    .line 687
    :cond_8
    invoke-virtual {p0}, Lcom/yftech/settings/widget/VideoView;->start()V

    .line 688
    iget-object p0, p0, Lcom/yftech/settings/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {p0}, Landroid/widget/MediaController;->hide()V

    :goto_3
    return v0

    .line 709
    :cond_9
    :goto_4
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 840
    invoke-super/range {p0 .. p5}, Landroid/view/SurfaceView;->onLayout(ZIIII)V

    .line 842
    iget-object p1, p0, Lcom/yftech/settings/widget/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    if-eqz p1, :cond_0

    .line 843
    invoke-direct {p0}, Lcom/yftech/settings/widget/VideoView;->measureAndLayoutSubtitleWidget()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 139
    iget v0, p0, Lcom/yftech/settings/widget/VideoView;->mVideoWidth:I

    invoke-static {v0, p1}, Lcom/yftech/settings/widget/VideoView;->getDefaultSize(II)I

    move-result v0

    .line 140
    iget v1, p0, Lcom/yftech/settings/widget/VideoView;->mVideoHeight:I

    invoke-static {v1, p2}, Lcom/yftech/settings/widget/VideoView;->getDefaultSize(II)I

    move-result v1

    .line 141
    iget v2, p0, Lcom/yftech/settings/widget/VideoView;->mVideoWidth:I

    if-lez v2, :cond_7

    iget v2, p0, Lcom/yftech/settings/widget/VideoView;->mVideoHeight:I

    if-lez v2, :cond_7

    .line 143
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 144
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 145
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 146
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_1

    if-ne v1, v2, :cond_1

    .line 154
    iget v0, p0, Lcom/yftech/settings/widget/VideoView;->mVideoWidth:I

    mul-int/2addr v0, p2

    iget v1, p0, Lcom/yftech/settings/widget/VideoView;->mVideoHeight:I

    mul-int/2addr v1, p1

    if-ge v0, v1, :cond_0

    .line 156
    iget p1, p0, Lcom/yftech/settings/widget/VideoView;->mVideoWidth:I

    mul-int/2addr p1, p2

    iget v0, p0, Lcom/yftech/settings/widget/VideoView;->mVideoHeight:I

    div-int v0, p1, v0

    move p1, v0

    goto :goto_2

    .line 157
    :cond_0
    iget v0, p0, Lcom/yftech/settings/widget/VideoView;->mVideoWidth:I

    mul-int/2addr v0, p2

    iget v1, p0, Lcom/yftech/settings/widget/VideoView;->mVideoHeight:I

    mul-int/2addr v1, p1

    if-le v0, v1, :cond_8

    .line 159
    iget p2, p0, Lcom/yftech/settings/widget/VideoView;->mVideoHeight:I

    mul-int/2addr p2, p1

    iget v0, p0, Lcom/yftech/settings/widget/VideoView;->mVideoWidth:I

    div-int v1, p2, v0

    goto :goto_1

    :cond_1
    const/high16 v3, -0x80000000

    if-ne v0, v2, :cond_3

    .line 164
    iget v0, p0, Lcom/yftech/settings/widget/VideoView;->mVideoHeight:I

    mul-int/2addr v0, p1

    iget v2, p0, Lcom/yftech/settings/widget/VideoView;->mVideoWidth:I

    div-int/2addr v0, v2

    if-ne v1, v3, :cond_2

    if-le v0, p2, :cond_2

    goto :goto_2

    :cond_2
    move p2, v0

    goto :goto_2

    :cond_3
    if-ne v1, v2, :cond_5

    .line 172
    iget v1, p0, Lcom/yftech/settings/widget/VideoView;->mVideoWidth:I

    mul-int/2addr v1, p2

    iget v2, p0, Lcom/yftech/settings/widget/VideoView;->mVideoHeight:I

    div-int/2addr v1, v2

    if-ne v0, v3, :cond_4

    if-le v1, p1, :cond_4

    goto :goto_2

    :cond_4
    move p1, v1

    goto :goto_2

    .line 179
    :cond_5
    iget v2, p0, Lcom/yftech/settings/widget/VideoView;->mVideoWidth:I

    .line 180
    iget v4, p0, Lcom/yftech/settings/widget/VideoView;->mVideoHeight:I

    if-ne v1, v3, :cond_6

    if-le v4, p2, :cond_6

    .line 184
    iget v1, p0, Lcom/yftech/settings/widget/VideoView;->mVideoWidth:I

    mul-int/2addr v1, p2

    iget v2, p0, Lcom/yftech/settings/widget/VideoView;->mVideoHeight:I

    div-int/2addr v1, v2

    goto :goto_0

    :cond_6
    move v1, v2

    move p2, v4

    :goto_0
    if-ne v0, v3, :cond_4

    if-le v1, p1, :cond_4

    .line 189
    iget p2, p0, Lcom/yftech/settings/widget/VideoView;->mVideoHeight:I

    mul-int/2addr p2, p1

    iget v0, p0, Lcom/yftech/settings/widget/VideoView;->mVideoWidth:I

    div-int v1, p2, v0

    goto :goto_1

    :cond_7
    move p1, v0

    :goto_1
    move p2, v1

    .line 195
    :cond_8
    :goto_2
    invoke-virtual {p0, p1, p2}, Lcom/yftech/settings/widget/VideoView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 654
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 655
    invoke-direct {p0}, Lcom/yftech/settings/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/settings/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 656
    invoke-direct {p0}, Lcom/yftech/settings/widget/VideoView;->toggleMediaControlsVisiblity()V

    .line 658
    :cond_0
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 663
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 664
    invoke-direct {p0}, Lcom/yftech/settings/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/settings/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 665
    invoke-direct {p0}, Lcom/yftech/settings/widget/VideoView;->toggleMediaControlsVisiblity()V

    .line 667
    :cond_0
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public pause()V
    .locals 2

    .line 731
    invoke-direct {p0}, Lcom/yftech/settings/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    .line 732
    iget-object v0, p0, Lcom/yftech/settings/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Lcom/yftech/settings/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 734
    iput v1, p0, Lcom/yftech/settings/widget/VideoView;->mCurrentState:I

    .line 737
    :cond_0
    iput v1, p0, Lcom/yftech/settings/widget/VideoView;->mTargetState:I

    return-void
.end method

.method public resolveAdjustedSize(II)I
    .locals 0

    .line 204
    invoke-static {p1, p2}, Lcom/yftech/settings/widget/VideoView;->getDefaultSize(II)I

    move-result p0

    return p0
.end method

.method public resume()V
    .locals 0

    .line 745
    invoke-direct {p0}, Lcom/yftech/settings/widget/VideoView;->openVideo()V

    return-void
.end method

.method public seekTo(I)V
    .locals 1

    .line 767
    invoke-direct {p0}, Lcom/yftech/settings/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 768
    iget-object v0, p0, Lcom/yftech/settings/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    const/4 p1, 0x0

    .line 769
    iput p1, p0, Lcom/yftech/settings/widget/VideoView;->mSeekWhenPrepared:I

    goto :goto_0

    .line 771
    :cond_0
    iput p1, p0, Lcom/yftech/settings/widget/VideoView;->mSeekWhenPrepared:I

    :goto_0
    return-void
.end method

.method public setAudioAttributes(Landroid/media/AudioAttributes;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 276
    iput-object p1, p0, Lcom/yftech/settings/widget/VideoView;->mAudioAttributes:Landroid/media/AudioAttributes;

    return-void

    .line 274
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illegal null AudioAttributes"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setAudioFocusRequest(I)V
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 263
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal audio focus type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 265
    :cond_1
    :goto_0
    iput p1, p0, Lcom/yftech/settings/widget/VideoView;->mAudioFocusType:I

    return-void
.end method

.method public setMediaController(Landroid/widget/MediaController;)V
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/yftech/settings/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/yftech/settings/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 382
    :cond_0
    iput-object p1, p0, Lcom/yftech/settings/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    .line 383
    invoke-direct {p0}, Lcom/yftech/settings/widget/VideoView;->attachMediaController()V

    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0

    .line 575
    iput-object p1, p0, Lcom/yftech/settings/widget/VideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0

    .line 588
    iput-object p1, p0, Lcom/yftech/settings/widget/VideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .locals 0

    .line 598
    iput-object p1, p0, Lcom/yftech/settings/widget/VideoView;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0

    .line 564
    iput-object p1, p0, Lcom/yftech/settings/widget/VideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-void
.end method

.method public setSubtitleWidget(Landroid/media/SubtitleTrack$RenderingWidget;)V
    .locals 3

    .line 874
    iget-object v0, p0, Lcom/yftech/settings/widget/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    if-ne v0, p1, :cond_0

    return-void

    .line 878
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/settings/widget/VideoView;->isAttachedToWindow()Z

    move-result v0

    .line 879
    iget-object v1, p0, Lcom/yftech/settings/widget/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    .line 881
    iget-object v1, p0, Lcom/yftech/settings/widget/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    invoke-interface {v1}, Landroid/media/SubtitleTrack$RenderingWidget;->onDetachedFromWindow()V

    .line 884
    :cond_1
    iget-object v1, p0, Lcom/yftech/settings/widget/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/media/SubtitleTrack$RenderingWidget;->setOnChangedListener(Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;)V

    .line 887
    :cond_2
    iput-object p1, p0, Lcom/yftech/settings/widget/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    if-eqz p1, :cond_4

    .line 890
    iget-object v1, p0, Lcom/yftech/settings/widget/VideoView;->mSubtitlesChangedListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    if-nez v1, :cond_3

    .line 891
    new-instance v1, Lcom/yftech/settings/widget/VideoView$8;

    invoke-direct {v1, p0}, Lcom/yftech/settings/widget/VideoView$8;-><init>(Lcom/yftech/settings/widget/VideoView;)V

    iput-object v1, p0, Lcom/yftech/settings/widget/VideoView;->mSubtitlesChangedListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    :cond_3
    const/4 v1, 0x0

    .line 899
    invoke-virtual {p0, v1}, Lcom/yftech/settings/widget/VideoView;->setWillNotDraw(Z)V

    .line 900
    iget-object v1, p0, Lcom/yftech/settings/widget/VideoView;->mSubtitlesChangedListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    invoke-interface {p1, v1}, Landroid/media/SubtitleTrack$RenderingWidget;->setOnChangedListener(Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;)V

    if-eqz v0, :cond_5

    .line 903
    invoke-interface {p1}, Landroid/media/SubtitleTrack$RenderingWidget;->onAttachedToWindow()V

    .line 904
    invoke-virtual {p0}, Lcom/yftech/settings/widget/VideoView;->requestLayout()V

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    .line 907
    invoke-virtual {p0, p1}, Lcom/yftech/settings/widget/VideoView;->setWillNotDraw(Z)V

    .line 910
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/yftech/settings/widget/VideoView;->invalidate()V

    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 0

    .line 213
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yftech/settings/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    .line 222
    invoke-virtual {p0, p1, v0}, Lcom/yftech/settings/widget/VideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 236
    iput-object p1, p0, Lcom/yftech/settings/widget/VideoView;->mUri:Landroid/net/Uri;

    .line 237
    iput-object p2, p0, Lcom/yftech/settings/widget/VideoView;->mHeaders:Ljava/util/Map;

    const/4 p1, 0x0

    .line 238
    iput p1, p0, Lcom/yftech/settings/widget/VideoView;->mSeekWhenPrepared:I

    .line 239
    invoke-direct {p0}, Lcom/yftech/settings/widget/VideoView;->openVideo()V

    .line 240
    invoke-virtual {p0}, Lcom/yftech/settings/widget/VideoView;->requestLayout()V

    .line 241
    invoke-virtual {p0}, Lcom/yftech/settings/widget/VideoView;->invalidate()V

    return-void
.end method

.method public start()V
    .locals 2

    .line 722
    invoke-direct {p0}, Lcom/yftech/settings/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    .line 723
    iget-object v0, p0, Lcom/yftech/settings/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 724
    iput v1, p0, Lcom/yftech/settings/widget/VideoView;->mCurrentState:I

    .line 726
    :cond_0
    iput v1, p0, Lcom/yftech/settings/widget/VideoView;->mTargetState:I

    return-void
.end method

.method public stopPlayback()V
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/yftech/settings/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/yftech/settings/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 295
    iget-object v0, p0, Lcom/yftech/settings/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 296
    iput-object v0, p0, Lcom/yftech/settings/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    .line 297
    iput v0, p0, Lcom/yftech/settings/widget/VideoView;->mCurrentState:I

    .line 298
    iput v0, p0, Lcom/yftech/settings/widget/VideoView;->mTargetState:I

    :cond_0
    return-void
.end method

.method public suspend()V
    .locals 1

    const/4 v0, 0x0

    .line 741
    invoke-direct {p0, v0}, Lcom/yftech/settings/widget/VideoView;->release(Z)V

    return-void
.end method
