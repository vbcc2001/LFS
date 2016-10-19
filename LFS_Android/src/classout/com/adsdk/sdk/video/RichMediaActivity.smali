.class public Lcom/adsdk/sdk/video/RichMediaActivity;
.super Landroid/app/Activity;


# static fields
.field public static final TYPE_BROWSER:I = 0x0

.field public static final TYPE_INTERSTITIAL:I = 0x2

.field public static final TYPE_UNKNOWN:I = -0x1

.field public static final TYPE_VIDEO:I = 0x1


# instance fields
.field private mAd:Lcom/adsdk/sdk/video/RichMediaAd;

.field private mCanClose:Z

.field private mCheckProgressTask:Ljava/lang/Runnable;

.field private mCustomVideoView:Landroid/widget/VideoView;

.field private mCustomView:Landroid/widget/FrameLayout;

.field private mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private mEnterAnim:I

.field private mExitAnim:I

.field private mHandler:Lcom/adsdk/sdk/video/RichMediaActivity$ResourceHandler;

.field protected mInterstitialAutocloseReset:Z

.field private mInterstitialAutocloseTimer:Ljava/util/Timer;

.field private mInterstitialCanCloseTimer:Ljava/util/Timer;

.field private final mInterstitialClickListener:Landroid/view/View$OnClickListener;

.field private mInterstitialController:Lcom/adsdk/sdk/video/InterstitialController;

.field private mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

.field private mInterstitialLoadingTimer:Ljava/util/Timer;

.field private mInterstitialView:Lcom/adsdk/sdk/video/WebFrame;

.field private mLoadingView:Landroid/widget/FrameLayout;

.field private mMediaController:Lcom/adsdk/sdk/video/MediaController;

.field mOnInterstitialLoadedListener:Lcom/adsdk/sdk/video/WebViewClient$OnPageLoadedListener;

.field mOnInterstitialSkipListener:Landroid/view/View$OnClickListener;

.field mOnResetAutocloseListener:Lcom/adsdk/sdk/video/InterstitialController$OnResetAutocloseListener;

.field mOnVideoCanCloseEventListener:Lcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;

.field mOnVideoCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field mOnVideoErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field mOnVideoInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field mOnVideoPauseListener:Lcom/adsdk/sdk/video/MediaController$OnPauseListener;

.field mOnVideoPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field mOnVideoReplayListener:Lcom/adsdk/sdk/video/MediaController$OnReplayListener;

.field mOnVideoSkipListener:Landroid/view/View$OnClickListener;

.field mOnVideoStartListener:Lcom/adsdk/sdk/video/SDKVideoView$OnStartListener;

.field mOnVideoTimeEventListener:Lcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;

.field mOnVideoUnpauseListener:Lcom/adsdk/sdk/video/MediaController$OnUnpauseListener;

.field mOnWebBrowserLoadedListener:Lcom/adsdk/sdk/video/WebViewClient$OnPageLoadedListener;

.field private final mOverlayClickListener:Landroid/view/View$OnClickListener;

.field private final mOverlayShowListener:Lcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;

.field private mOverlayView:Lcom/adsdk/sdk/video/WebFrame;

.field private mPageLoaded:Z

.field private mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

.field private mResult:Z

.field private mRootLayout:Landroid/widget/FrameLayout;

.field private mSkipButton:Landroid/widget/ImageView;

.field protected mTimeTest:I

.field private mType:I

.field private mVideoData:Lcom/adsdk/sdk/video/VideoData;

.field private mVideoHeight:I

.field private mVideoLastPosition:I

.field private mVideoLayout:Landroid/widget/FrameLayout;

.field private mVideoTimeoutTimer:Ljava/util/Timer;

.field private mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

.field private mVideoWidth:I

.field private mWebBrowserView:Lcom/adsdk/sdk/video/WebFrame;

.field private mWindowHeight:I

.field private mWindowWidth:I

.field marginArg:I

.field metrics:Landroid/util/DisplayMetrics;

.field paddingArg:I

.field skipButtonSizeLand:I

.field skipButtonSizePort:I

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mPageLoaded:Z

    const/4 v0, 0x5

    iput v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->paddingArg:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->marginArg:I

    const/16 v0, 0x32

    iput v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->skipButtonSizeLand:I

    const/16 v0, 0x28

    iput v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->skipButtonSizePort:I

    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$1;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$1;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOverlayShowListener:Lcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;

    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$2;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$2;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOverlayClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$3;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$3;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$4;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$4;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$5;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$5;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCheckProgressTask:Ljava/lang/Runnable;

    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$6;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$6;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$7;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$7;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$8;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$8;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoStartListener:Lcom/adsdk/sdk/video/SDKVideoView$OnStartListener;

    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$9;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$9;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoPauseListener:Lcom/adsdk/sdk/video/MediaController$OnPauseListener;

    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$10;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$10;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoUnpauseListener:Lcom/adsdk/sdk/video/MediaController$OnUnpauseListener;

    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$11;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$11;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoTimeEventListener:Lcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;

    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$12;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$12;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoCanCloseEventListener:Lcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;

    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$13;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$13;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoSkipListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$14;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$14;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoReplayListener:Lcom/adsdk/sdk/video/MediaController$OnReplayListener;

    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$15;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$15;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$16;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$16;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnInterstitialSkipListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$17;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$17;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnResetAutocloseListener:Lcom/adsdk/sdk/video/InterstitialController$OnResetAutocloseListener;

    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$18;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$18;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnInterstitialLoadedListener:Lcom/adsdk/sdk/video/WebViewClient$OnPageLoadedListener;

    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$19;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$19;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnWebBrowserLoadedListener:Lcom/adsdk/sdk/video/WebViewClient$OnPageLoadedListener;

    return-void
.end method

.method static synthetic access$0(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/WebFrame;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOverlayView:Lcom/adsdk/sdk/video/WebFrame;

    return-object v0
.end method

.method static synthetic access$1(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/MediaController;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    return-object v0
.end method

.method static synthetic access$10(Lcom/adsdk/sdk/video/RichMediaActivity;)I
    .registers 2

    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mEnterAnim:I

    return v0
.end method

.method static synthetic access$11(Lcom/adsdk/sdk/video/RichMediaActivity;)I
    .registers 2

    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mExitAnim:I

    return v0
.end method

.method static synthetic access$12(Lcom/adsdk/sdk/video/RichMediaActivity;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mResult:Z

    return-void
.end method

.method static synthetic access$13(Lcom/adsdk/sdk/video/RichMediaActivity;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCanClose:Z

    return-void
.end method

.method static synthetic access$14(Lcom/adsdk/sdk/video/RichMediaActivity;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mSkipButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$15(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/ResourceManager;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    return-object v0
.end method

.method static synthetic access$16(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/InterstitialController;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialController:Lcom/adsdk/sdk/video/InterstitialController;

    return-object v0
.end method

.method static synthetic access$17(Lcom/adsdk/sdk/video/RichMediaActivity;)Ljava/util/Timer;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialAutocloseTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$18(Lcom/adsdk/sdk/video/RichMediaActivity;Ljava/util/Timer;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialAutocloseTimer:Ljava/util/Timer;

    return-void
.end method

.method static synthetic access$19(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/InterstitialData;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    return-object v0
.end method

.method static synthetic access$2(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/SDKVideoView;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

    return-object v0
.end method

.method static synthetic access$20(Lcom/adsdk/sdk/video/RichMediaActivity;)Ljava/util/Timer;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialCanCloseTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$21(Lcom/adsdk/sdk/video/RichMediaActivity;Ljava/util/Timer;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialCanCloseTimer:Ljava/util/Timer;

    return-void
.end method

.method static synthetic access$22(Lcom/adsdk/sdk/video/RichMediaActivity;)Ljava/util/Timer;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialLoadingTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$23(Lcom/adsdk/sdk/video/RichMediaActivity;Ljava/util/Timer;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialLoadingTimer:Ljava/util/Timer;

    return-void
.end method

.method static synthetic access$24(Lcom/adsdk/sdk/video/RichMediaActivity;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mPageLoaded:Z

    return-void
.end method

.method static synthetic access$3(Lcom/adsdk/sdk/video/RichMediaActivity;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCheckProgressTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$4(Lcom/adsdk/sdk/video/RichMediaActivity;)Ljava/util/Timer;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoTimeoutTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$5(Lcom/adsdk/sdk/video/RichMediaActivity;Ljava/util/Timer;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoTimeoutTimer:Ljava/util/Timer;

    return-void
.end method

.method static synthetic access$6(Lcom/adsdk/sdk/video/RichMediaActivity;)Landroid/widget/FrameLayout;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mLoadingView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$7(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/VideoData;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    return-object v0
.end method

.method static synthetic access$8(Lcom/adsdk/sdk/video/RichMediaActivity;)I
    .registers 2

    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mType:I

    return v0
.end method

.method static synthetic access$9(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/RichMediaAd;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mAd:Lcom/adsdk/sdk/video/RichMediaAd;

    return-object v0
.end method

.method private initInterstitialView()V
    .registers 9

    const/4 v4, -0x1

    const/16 v7, -0x12

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mAd:Lcom/adsdk/sdk/video/RichMediaAd;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/RichMediaAd;->getInterstitial()Lcom/adsdk/sdk/video/InterstitialData;

    move-result-object v0

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iput-boolean v5, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialAutocloseReset:Z

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget v0, v0, Lcom/adsdk/sdk/video/InterstitialData;->orientation:I

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->setRequestedOrientation(I)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/adsdk/sdk/video/WebFrame;

    invoke-direct {v1, p0, v6, v5, v5}, Lcom/adsdk/sdk/video/WebFrame;-><init>(Landroid/app/Activity;ZZZ)V

    iput-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialView:Lcom/adsdk/sdk/video/WebFrame;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialView:Lcom/adsdk/sdk/video/WebFrame;

    invoke-virtual {v1, v5}, Lcom/adsdk/sdk/video/WebFrame;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialView:Lcom/adsdk/sdk/video/WebFrame;

    iget-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnInterstitialLoadedListener:Lcom/adsdk/sdk/video/WebViewClient$OnPageLoadedListener;

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/video/WebFrame;->setOnPageLoadedListener(Lcom/adsdk/sdk/video/WebViewClient$OnPageLoadedListener;)V

    new-instance v1, Lcom/adsdk/sdk/video/InterstitialController;

    iget-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    invoke-direct {v1, p0, v2}, Lcom/adsdk/sdk/video/InterstitialController;-><init>(Landroid/content/Context;Lcom/adsdk/sdk/video/InterstitialData;)V

    iput-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialController:Lcom/adsdk/sdk/video/InterstitialController;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialController:Lcom/adsdk/sdk/video/InterstitialController;

    iget-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialView:Lcom/adsdk/sdk/video/WebFrame;

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/video/InterstitialController;->setBrowser(Lcom/adsdk/sdk/video/InterstitialController$BrowserControl;)V

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialController:Lcom/adsdk/sdk/video/InterstitialController;

    iget-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialView:Lcom/adsdk/sdk/video/WebFrame;

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/video/InterstitialController;->setBrowserView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialController:Lcom/adsdk/sdk/video/InterstitialController;

    iget-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnResetAutocloseListener:Lcom/adsdk/sdk/video/InterstitialController$OnResetAutocloseListener;

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/video/InterstitialController;->setOnResetAutocloseListener(Lcom/adsdk/sdk/video/InterstitialController$OnResetAutocloseListener;)V

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialController:Lcom/adsdk/sdk/video/InterstitialController;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    invoke-direct {v2, v4, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-boolean v1, v1, Lcom/adsdk/sdk/video/InterstitialData;->showNavigationBars:Z

    if-eqz v1, :cond_63

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialController:Lcom/adsdk/sdk/video/InterstitialController;

    invoke-virtual {v1, v5}, Lcom/adsdk/sdk/video/InterstitialController;->show(I)V

    :cond_63
    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-boolean v1, v1, Lcom/adsdk/sdk/video/InterstitialData;->showSkipButton:Z

    if-eqz v1, :cond_162

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mSkipButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mSkipButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    iget v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->skipButtonSizeLand:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v6, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x3fb999999999999aL

    mul-double/2addr v1, v3

    double-to-int v1, v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x35

    invoke-direct {v2, v1, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget v1, v1, Lcom/adsdk/sdk/video/InterstitialData;->orientation:I

    if-ne v1, v6, :cond_139

    const/high16 v1, 0x41000000

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v6, v1, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :goto_c3
    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-object v1, v1, Lcom/adsdk/sdk/video/InterstitialData;->skipButtonImage:Ljava/lang/String;

    if-eqz v1, :cond_14e

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-object v1, v1, Lcom/adsdk/sdk/video/InterstitialData;->skipButtonImage:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_14e

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mSkipButton:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    iget-object v3, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-object v3, v3, Lcom/adsdk/sdk/video/InterstitialData;->skipButtonImage:Ljava/lang/String;

    invoke-virtual {v1, p0, v3, v7}, Lcom/adsdk/sdk/video/ResourceManager;->fetchResource(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_e2
    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mSkipButton:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnInterstitialSkipListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget v1, v1, Lcom/adsdk/sdk/video/InterstitialData;->showSkipButtonAfter:I

    if-lez v1, :cond_15a

    iput-boolean v5, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCanClose:Z

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mSkipButton:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialLoadingTimer:Ljava/util/Timer;

    if-nez v1, :cond_10f

    new-instance v1, Lcom/adsdk/sdk/video/RichMediaActivity$InterstitialLoadingTimeoutTask;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$InterstitialLoadingTimeoutTask;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    iput-object v3, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialLoadingTimer:Ljava/util/Timer;

    iget-object v3, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialLoadingTimer:Ljava/util/Timer;

    const-wide/16 v4, 0x2710

    invoke-virtual {v3, v1, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_10f
    :goto_10f
    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mSkipButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_114
    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialView:Lcom/adsdk/sdk/video/WebFrame;

    iget-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/video/WebFrame;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget v0, v0, Lcom/adsdk/sdk/video/InterstitialData;->interstitialType:I

    packed-switch v0, :pswitch_data_17a

    :goto_127
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialView:Lcom/adsdk/sdk/video/WebFrame;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/WebFrame;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->i(Ljava/lang/String;)V

    return-void

    :cond_139
    const/high16 v1, 0x41200000

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v6, v1, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_c3

    :cond_14e
    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mSkipButton:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    invoke-virtual {v3, p0, v7}, Lcom/adsdk/sdk/video/ResourceManager;->getResource(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_e2

    :cond_15a
    iput-boolean v6, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCanClose:Z

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mSkipButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_10f

    :cond_162
    iput-boolean v5, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCanClose:Z

    goto :goto_114

    :pswitch_165
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialView:Lcom/adsdk/sdk/video/WebFrame;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-object v1, v1, Lcom/adsdk/sdk/video/InterstitialData;->interstitialMarkup:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/WebFrame;->setMarkup(Ljava/lang/String;)V

    goto :goto_127

    :pswitch_16f
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialView:Lcom/adsdk/sdk/video/WebFrame;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-object v1, v1, Lcom/adsdk/sdk/video/InterstitialData;->interstitialUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/WebFrame;->loadUrl(Ljava/lang/String;)V

    goto :goto_127

    nop

    :pswitch_data_17a
    .packed-switch 0x0
        :pswitch_16f
        :pswitch_165
    .end packed-switch
.end method

.method private initRootLayout()V
    .registers 3

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mRootLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mRootLayout:Landroid/widget/FrameLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-void
.end method

.method private initVideoView()V
    .registers 11

    const/16 v9, 0x11

    const-wide v7, 0x3fbe666666666666L

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mAd:Lcom/adsdk/sdk/video/RichMediaAd;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/RichMediaAd;->getVideo()Lcom/adsdk/sdk/video/VideoData;

    move-result-object v0

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget v0, v0, Lcom/adsdk/sdk/video/VideoData;->orientation:I

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->setRequestedOrientation(I)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget v0, v0, Lcom/adsdk/sdk/video/VideoData;->orientation:I

    if-nez v0, :cond_27c

    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowWidth:I

    iget v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowHeight:I

    if-ge v0, v1, :cond_2d

    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowWidth:I

    iget v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowHeight:I

    iput v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowWidth:I

    iput v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowHeight:I

    :cond_2d
    :goto_2d
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget v0, v0, Lcom/adsdk/sdk/video/VideoData;->width:I

    iput v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoWidth:I

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget v0, v0, Lcom/adsdk/sdk/video/VideoData;->height:I

    iput v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoHeight:I

    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoWidth:I

    if-gtz v0, :cond_28c

    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowWidth:I

    iput v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoWidth:I

    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowHeight:I

    iput v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoHeight:I

    :cond_45
    :goto_45
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Video size ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoLayout:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/adsdk/sdk/video/SDKVideoView;

    iget v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoWidth:I

    iget v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoHeight:I

    iget-object v3, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget v3, v3, Lcom/adsdk/sdk/video/VideoData;->display:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/adsdk/sdk/video/SDKVideoView;-><init>(Landroid/content/Context;III)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-boolean v0, v0, Lcom/adsdk/sdk/video/VideoData;->showHtmlOverlay:Z

    if-eqz v0, :cond_fa

    new-instance v0, Lcom/adsdk/sdk/video/WebFrame;

    invoke-direct {v0, p0, v4, v4, v4}, Lcom/adsdk/sdk/video/WebFrame;-><init>(Landroid/app/Activity;ZZZ)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOverlayView:Lcom/adsdk/sdk/video/WebFrame;

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOverlayView:Lcom/adsdk/sdk/video/WebFrame;

    invoke-virtual {v0, v4}, Lcom/adsdk/sdk/video/WebFrame;->setEnableZoom(Z)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOverlayView:Lcom/adsdk/sdk/video/WebFrame;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOverlayClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/WebFrame;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOverlayView:Lcom/adsdk/sdk/video/WebFrame;

    invoke-virtual {v0, v4}, Lcom/adsdk/sdk/video/WebFrame;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget v0, v0, Lcom/adsdk/sdk/video/VideoData;->showHtmlOverlayAfter:I

    if-lez v0, :cond_c3

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOverlayView:Lcom/adsdk/sdk/video/WebFrame;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/WebFrame;->setVisibility(I)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget v1, v1, Lcom/adsdk/sdk/video/VideoData;->showHtmlOverlayAfter:I

    iget-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOverlayShowListener:Lcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;

    invoke-virtual {v0, v1, v2}, Lcom/adsdk/sdk/video/SDKVideoView;->setOnTimeEventListener(ILcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;)V

    :cond_c3
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget v0, v0, Lcom/adsdk/sdk/video/VideoData;->htmlOverlayType:I

    if-nez v0, :cond_2be

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOverlayView:Lcom/adsdk/sdk/video/WebFrame;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v1, v1, Lcom/adsdk/sdk/video/VideoData;->htmlOverlayUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/WebFrame;->loadUrl(Ljava/lang/String;)V

    :goto_d2
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-boolean v1, v1, Lcom/adsdk/sdk/video/VideoData;->showBottomNavigationBar:Z

    if-eqz v1, :cond_2c9

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-boolean v1, v1, Lcom/adsdk/sdk/video/VideoData;->showTopNavigationBar:Z

    if-eqz v1, :cond_2c9

    iget v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowWidth:I

    int-to-double v1, v1

    mul-double/2addr v1, v7

    double-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowWidth:I

    int-to-double v1, v1

    mul-double/2addr v1, v7

    double-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v9, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_f3
    :goto_f3
    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOverlayView:Lcom/adsdk/sdk/video/WebFrame;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_fa
    new-instance v0, Lcom/adsdk/sdk/video/MediaController;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    invoke-direct {v0, p0, v1}, Lcom/adsdk/sdk/video/MediaController;-><init>(Landroid/content/Context;Lcom/adsdk/sdk/video/VideoData;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/SDKVideoView;->setMediaController(Lcom/adsdk/sdk/video/MediaController;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-boolean v0, v0, Lcom/adsdk/sdk/video/VideoData;->showNavigationBars:Z

    if-eqz v0, :cond_115

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/MediaController;->toggle()V

    :cond_115
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v0, v0, Lcom/adsdk/sdk/video/VideoData;->pauseEvents:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_126

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoPauseListener:Lcom/adsdk/sdk/video/MediaController$OnPauseListener;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/MediaController;->setOnPauseListener(Lcom/adsdk/sdk/video/MediaController$OnPauseListener;)V

    :cond_126
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v0, v0, Lcom/adsdk/sdk/video/VideoData;->unpauseEvents:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_137

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoUnpauseListener:Lcom/adsdk/sdk/video/MediaController$OnUnpauseListener;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/MediaController;->setOnUnpauseListener(Lcom/adsdk/sdk/video/MediaController$OnUnpauseListener;)V

    :cond_137
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v0, v0, Lcom/adsdk/sdk/video/VideoData;->replayEvents:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_148

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoReplayListener:Lcom/adsdk/sdk/video/MediaController$OnReplayListener;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/MediaController;->setOnReplayListener(Lcom/adsdk/sdk/video/MediaController$OnReplayListener;)V

    :cond_148
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, 0x7

    invoke-direct {v2, v5, v5, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-boolean v0, v0, Lcom/adsdk/sdk/video/VideoData;->showSkipButton:Z

    if-eqz v0, :cond_328

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mSkipButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mSkipButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->skipButtonSizeLand:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v6, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fb70a3d70a3d70aL

    mul-double/2addr v0, v2

    double-to-int v0, v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x35

    invoke-direct {v1, v0, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget v0, v0, Lcom/adsdk/sdk/video/VideoData;->orientation:I

    if-ne v0, v6, :cond_2fb

    const/high16 v0, 0x41000000

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v6, v0, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :goto_1b5
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v0, v0, Lcom/adsdk/sdk/video/VideoData;->skipButtonImage:Ljava/lang/String;

    if-eqz v0, :cond_310

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v0, v0, Lcom/adsdk/sdk/video/VideoData;->skipButtonImage:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_310

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    iget-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v2, v2, Lcom/adsdk/sdk/video/VideoData;->skipButtonImage:Ljava/lang/String;

    const/16 v3, -0x12

    invoke-virtual {v0, p0, v2, v3}, Lcom/adsdk/sdk/video/ResourceManager;->fetchResource(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_1d0
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mSkipButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoSkipListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget v0, v0, Lcom/adsdk/sdk/video/VideoData;->showSkipButtonAfter:I

    if-lez v0, :cond_31f

    iput-boolean v4, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCanClose:Z

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mSkipButton:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1e6
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mSkipButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1ed
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget v0, v0, Lcom/adsdk/sdk/video/VideoData;->showSkipButtonAfter:I

    if-lez v0, :cond_1fe

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget v1, v1, Lcom/adsdk/sdk/video/VideoData;->showSkipButtonAfter:I

    iget-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoCanCloseEventListener:Lcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;

    invoke-virtual {v0, v1, v2}, Lcom/adsdk/sdk/video/SDKVideoView;->setOnTimeEventListener(ILcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;)V

    :cond_1fe
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mLoadingView:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/adsdk/sdk/Const;->LOADING:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mLoadingView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mLoadingView:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/SDKVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/SDKVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/SDKVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/SDKVideoView;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v0, v0, Lcom/adsdk/sdk/video/VideoData;->startEvents:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_254

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoStartListener:Lcom/adsdk/sdk/video/SDKVideoView$OnStartListener;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/SDKVideoView;->setOnStartListener(Lcom/adsdk/sdk/video/SDKVideoView$OnStartListener;)V

    :cond_254
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v0, v0, Lcom/adsdk/sdk/video/VideoData;->timeTrackingEvents:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_270

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v0, v0, Lcom/adsdk/sdk/video/VideoData;->timeTrackingEvents:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_26a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_32c

    :cond_270
    iput v4, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoLastPosition:I

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v0, v0, Lcom/adsdk/sdk/video/VideoData;->videoUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

    invoke-virtual {v1, v0}, Lcom/adsdk/sdk/video/SDKVideoView;->setVideoPath(Ljava/lang/String;)V

    return-void

    :cond_27c
    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowHeight:I

    iget v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowWidth:I

    if-ge v0, v1, :cond_2d

    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowHeight:I

    iget v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowWidth:I

    iput v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowHeight:I

    iput v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowWidth:I

    goto/16 :goto_2d

    :cond_28c
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoWidth:I

    int-to-float v1, v1

    invoke-static {v6, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoWidth:I

    iget v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoHeight:I

    int-to-float v1, v1

    invoke-static {v6, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoHeight:I

    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoWidth:I

    iget v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowWidth:I

    if-le v0, v1, :cond_2b2

    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowWidth:I

    iput v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoWidth:I

    :cond_2b2
    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoHeight:I

    iget v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowHeight:I

    if-le v0, v1, :cond_45

    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowHeight:I

    iput v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoHeight:I

    goto/16 :goto_45

    :cond_2be
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOverlayView:Lcom/adsdk/sdk/video/WebFrame;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v1, v1, Lcom/adsdk/sdk/video/VideoData;->htmlOverlayMarkup:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/WebFrame;->setMarkup(Ljava/lang/String;)V

    goto/16 :goto_d2

    :cond_2c9
    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-boolean v1, v1, Lcom/adsdk/sdk/video/VideoData;->showBottomNavigationBar:Z

    if-eqz v1, :cond_2e2

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-boolean v1, v1, Lcom/adsdk/sdk/video/VideoData;->showTopNavigationBar:Z

    if-nez v1, :cond_2e2

    iget v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowWidth:I

    int-to-double v1, v1

    mul-double/2addr v1, v7

    double-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/16 v1, 0x30

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto/16 :goto_f3

    :cond_2e2
    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-boolean v1, v1, Lcom/adsdk/sdk/video/VideoData;->showTopNavigationBar:Z

    if-eqz v1, :cond_f3

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-boolean v1, v1, Lcom/adsdk/sdk/video/VideoData;->showBottomNavigationBar:Z

    if-nez v1, :cond_f3

    iget v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowWidth:I

    int-to-double v1, v1

    mul-double/2addr v1, v7

    double-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/16 v1, 0x50

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto/16 :goto_f3

    :cond_2fb
    const/high16 v0, 0x41200000

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v6, v0, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_1b5

    :cond_310
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mSkipButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    const/16 v3, -0x12

    invoke-virtual {v2, p0, v3}, Lcom/adsdk/sdk/video/ResourceManager;->getResource(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1d0

    :cond_31f
    iput-boolean v6, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCanClose:Z

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mSkipButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1e6

    :cond_328
    iput-boolean v4, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCanClose:Z

    goto/16 :goto_1ed

    :cond_32c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

    iget-object v3, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoTimeEventListener:Lcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;

    invoke-virtual {v2, v0, v3}, Lcom/adsdk/sdk/video/SDKVideoView;->setOnTimeEventListener(ILcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;)V

    goto/16 :goto_26a
.end method

.method private initWebBrowserView(Z)V
    .registers 4

    const/4 v1, 0x1

    new-instance v0, Lcom/adsdk/sdk/video/WebFrame;

    invoke-direct {v0, p0, v1, v1, p1}, Lcom/adsdk/sdk/video/WebFrame;-><init>(Landroid/app/Activity;ZZZ)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWebBrowserView:Lcom/adsdk/sdk/video/WebFrame;

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWebBrowserView:Lcom/adsdk/sdk/video/WebFrame;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnWebBrowserLoadedListener:Lcom/adsdk/sdk/video/WebViewClient$OnPageLoadedListener;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/WebFrame;->setOnPageLoadedListener(Lcom/adsdk/sdk/video/WebViewClient$OnPageLoadedListener;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mRootLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWebBrowserView:Lcom/adsdk/sdk/video/WebFrame;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public static setActivityAnimation(Landroid/app/Activity;II)V
    .registers 4

    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    goto :goto_3
.end method


# virtual methods
.method public finish()V
    .registers 4

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mAd:Lcom/adsdk/sdk/video/RichMediaAd;

    if-eqz v0, :cond_2e

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Finish Activity type:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ad Type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mAd:Lcom/adsdk/sdk/video/RichMediaAd;

    invoke-virtual {v1}, Lcom/adsdk/sdk/video/RichMediaAd;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mType:I

    packed-switch v0, :pswitch_data_72

    :cond_2e
    :goto_2e
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mEnterAnim:I

    iget v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mExitAnim:I

    invoke-static {p0, v0, v1}, Lcom/adsdk/sdk/video/RichMediaActivity;->setActivityAnimation(Landroid/app/Activity;II)V

    return-void

    :pswitch_39
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mAd:Lcom/adsdk/sdk/video/RichMediaAd;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/RichMediaAd;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4e

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mAd:Lcom/adsdk/sdk/video/RichMediaAd;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/RichMediaAd;->getType()I

    move-result v0

    if-ne v0, v2, :cond_2e

    iget-boolean v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mResult:Z

    if-nez v0, :cond_2e

    :cond_4e
    :goto_4e
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mAd:Lcom/adsdk/sdk/video/RichMediaAd;

    iget-boolean v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mResult:Z

    invoke-static {v0, v1}, Lcom/adsdk/sdk/AdManager;->closeRunningAd(Lcom/adsdk/sdk/video/RichMediaAd;Z)V

    goto :goto_2e

    :pswitch_56
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mAd:Lcom/adsdk/sdk/video/RichMediaAd;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/RichMediaAd;->getType()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_4e

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mAd:Lcom/adsdk/sdk/video/RichMediaAd;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/RichMediaAd;->getType()I

    move-result v0

    if-eq v0, v2, :cond_4e

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mAd:Lcom/adsdk/sdk/video/RichMediaAd;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/RichMediaAd;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2e

    goto :goto_4e

    nop

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_39
        :pswitch_56
    .end packed-switch
.end method

.method public getDipSize(I)I
    .registers 5

    const/4 v0, 0x1

    int-to-float v1, p1

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getRootLayout()Landroid/widget/FrameLayout;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mRootLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public goBack()V
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCustomView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_d

    const-string v0, "Closing custom view on back key pressed"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->onHideCustomView()V

    :cond_c
    :goto_c
    return-void

    :cond_d
    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mType:I

    packed-switch v0, :pswitch_data_44

    goto :goto_c

    :pswitch_13
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWebBrowserView:Lcom/adsdk/sdk/video/WebFrame;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/WebFrame;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWebBrowserView:Lcom/adsdk/sdk/video/WebFrame;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/WebFrame;->goBack()V

    goto :goto_c

    :pswitch_21
    iget-boolean v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCanClose:Z

    if-eqz v0, :cond_c

    :cond_25
    :goto_25
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->finish()V

    goto :goto_c

    :pswitch_29
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialView:Lcom/adsdk/sdk/video/WebFrame;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/WebFrame;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialView:Lcom/adsdk/sdk/video/WebFrame;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/WebFrame;->goBack()V

    goto :goto_c

    :cond_37
    iget-boolean v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCanClose:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mResult:Z

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->setResult(I)V

    goto :goto_25

    nop

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_13
        :pswitch_21
        :pswitch_29
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    const/16 v2, -0x12

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_24

    :cond_7
    :goto_7
    return-void

    :pswitch_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_2a

    goto :goto_7

    :pswitch_e
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mSkipButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    invoke-virtual {v0, v2}, Lcom/adsdk/sdk/video/ResourceManager;->containsResource(I)Z

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mSkipButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    invoke-virtual {v1, p0, v2}, Lcom/adsdk/sdk/video/ResourceManager;->getResource(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    nop

    :pswitch_data_24
    .packed-switch 0x64
        :pswitch_8
    .end packed-switch

    :pswitch_data_2a
    .packed-switch -0x12
        :pswitch_e
    .end packed-switch
.end method

.method public navigate(Ljava/lang/String;)V
    .registers 4

    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mType:I

    packed-switch v0, :pswitch_data_24

    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adsdk/sdk/video/RichMediaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->startActivity(Landroid/content/Intent;)V

    :goto_16
    return-void

    :pswitch_17
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWebBrowserView:Lcom/adsdk/sdk/video/WebFrame;

    invoke-virtual {v0, p1}, Lcom/adsdk/sdk/video/WebFrame;->loadUrl(Ljava/lang/String;)V

    goto :goto_16

    :pswitch_1d
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialView:Lcom/adsdk/sdk/video/WebFrame;

    invoke-virtual {v0, p1}, Lcom/adsdk/sdk/video/WebFrame;->loadUrl(Ljava/lang/String;)V

    goto :goto_16

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_17
        :pswitch_5
        :pswitch_1d
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "RichMediaActivity onConfigurationChanged"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 10

    const/16 v2, 0x400

    const/16 v7, 0x200

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v0, "RichMediaActivity onCreate"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iput-boolean v5, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mResult:Z

    iput-boolean v5, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mPageLoaded:Z

    invoke-virtual {p0, v5}, Lcom/adsdk/sdk/video/RichMediaActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0, v4}, Lcom/adsdk/sdk/video/RichMediaActivity;->requestWindowFeature(I)Z

    invoke-virtual {v1, v7}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->metrics:Landroid/util/DisplayMetrics;

    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v3, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->metrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowWidth:I

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowHeight:I

    invoke-virtual {v1, v7}, Landroid/view/Window;->clearFlags(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RichMediaActivity Window Size:("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->setVolumeControlStream(I)V

    iput v6, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mType:I

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_90

    const-string v2, "RICH_AD_DATA"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    if-nez v2, :cond_e1

    :cond_90
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->uri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->uri:Landroid/net/Uri;

    if-nez v0, :cond_a3

    const-string v0, "url is null so do not load anything"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->finish()V

    :goto_a2
    return-void

    :cond_a3
    iput v5, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mType:I

    :goto_a5
    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$ResourceHandler;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$ResourceHandler;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mHandler:Lcom/adsdk/sdk/video/RichMediaActivity$ResourceHandler;

    new-instance v0, Lcom/adsdk/sdk/video/ResourceManager;

    iget-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mHandler:Lcom/adsdk/sdk/video/RichMediaActivity$ResourceHandler;

    invoke-direct {v0, p0, v2}, Lcom/adsdk/sdk/video/ResourceManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    invoke-direct {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->initRootLayout()V

    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mType:I

    if-nez v0, :cond_e5

    invoke-direct {p0, v4}, Lcom/adsdk/sdk/video/RichMediaActivity;->initWebBrowserView(Z)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWebBrowserView:Lcom/adsdk/sdk/video/WebFrame;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/WebFrame;->loadUrl(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/adsdk/sdk/Util;->getEnterAnimation(I)I

    move-result v0

    iput v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mEnterAnim:I

    invoke-static {v4}, Lcom/adsdk/sdk/Util;->getExitAnimation(I)I

    move-result v0

    iput v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mExitAnim:I

    :goto_d6
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->setContentView(Landroid/view/View;)V

    const-string v0, "RichMediaActivity onCreate done"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    goto :goto_a2

    :cond_e1
    invoke-virtual {p0, v4}, Lcom/adsdk/sdk/video/RichMediaActivity;->requestWindowFeature(I)Z

    goto :goto_a5

    :cond_e5
    const-string v0, "RICH_AD_DATA"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/adsdk/sdk/video/RichMediaAd;

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mAd:Lcom/adsdk/sdk/video/RichMediaAd;

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mAd:Lcom/adsdk/sdk/video/RichMediaAd;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/RichMediaAd;->getAnimation()I

    move-result v0

    invoke-static {v0}, Lcom/adsdk/sdk/Util;->getEnterAnimation(I)I

    move-result v0

    iput v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mEnterAnim:I

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mAd:Lcom/adsdk/sdk/video/RichMediaAd;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/RichMediaAd;->getAnimation()I

    move-result v0

    invoke-static {v0}, Lcom/adsdk/sdk/Util;->getExitAnimation(I)I

    move-result v0

    iput v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mExitAnim:I

    iput-boolean v5, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCanClose:Z

    const-string v0, "RICH_AD_TYPE"

    invoke-virtual {v1, v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mType:I

    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mType:I

    if-ne v0, v6, :cond_11e

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mAd:Lcom/adsdk/sdk/video/RichMediaAd;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/RichMediaAd;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_13e

    :cond_11e
    :goto_11e
    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mType:I

    packed-switch v0, :pswitch_data_14a

    goto :goto_d6

    :pswitch_124
    const-string v0, "Type video"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->initVideoView()V

    goto :goto_d6

    :pswitch_12d
    iput v4, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mType:I

    goto :goto_11e

    :pswitch_130
    const/4 v0, 0x2

    iput v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mType:I

    goto :goto_11e

    :pswitch_134
    const-string v0, "Type interstitial"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->initInterstitialView()V

    goto :goto_d6

    nop

    :pswitch_data_13e
    .packed-switch 0x3
        :pswitch_12d
        :pswitch_130
        :pswitch_12d
        :pswitch_130
    .end packed-switch

    :pswitch_data_14a
    .packed-switch 0x1
        :pswitch_124
        :pswitch_134
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/ResourceManager;->releaseInstance()V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/SDKVideoView;->destroy()V

    :cond_11
    const-string v0, "RichMediaActivity onDestroy"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string v0, "RichMediaActivity onDestroy done"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onHideCustomView()V
    .registers 4

    const/4 v2, 0x0

    const-string v0, "onHideCustomView Hidding Custom View"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCustomView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCustomView:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iput-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCustomView:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCustomVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_23

    :try_start_17
    const-string v0, "onHideCustomView stop video"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCustomVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_21} :catch_39

    :goto_21
    iput-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCustomVideoView:Landroid/widget/VideoView;

    :cond_23
    const-string v0, "onHideCustomView calling callback"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mRootLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->setContentView(Landroid/view/View;)V

    return-void

    :catch_39
    move-exception v0

    const-string v0, "Couldn\'t stop custom video view"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    goto :goto_21
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_8

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->goBack()V

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_7
.end method

.method protected onPause()V
    .registers 4

    const/4 v2, 0x0

    const-string v0, "RichMediaActivity onPause"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mType:I

    packed-switch v0, :pswitch_data_56

    :cond_e
    :goto_e
    const-string v0, "RichMediaActivity onPause done"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    return-void

    :pswitch_14
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/SDKVideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoLastPosition:I

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/SDKVideoView;->stopPlayback()V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mRootLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoTimeoutTimer:Ljava/util/Timer;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoTimeoutTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoTimeoutTimer:Ljava/util/Timer;

    goto :goto_e

    :pswitch_34
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialLoadingTimer:Ljava/util/Timer;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialLoadingTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialLoadingTimer:Ljava/util/Timer;

    :cond_3f
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialAutocloseTimer:Ljava/util/Timer;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialAutocloseTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialAutocloseTimer:Ljava/util/Timer;

    :cond_4a
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialCanCloseTimer:Ljava/util/Timer;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialCanCloseTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialCanCloseTimer:Ljava/util/Timer;

    goto :goto_e

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_14
        :pswitch_34
    .end packed-switch
.end method

.method protected onResume()V
    .registers 5

    const-string v0, "RichMediaActivity onResume"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mType:I

    packed-switch v0, :pswitch_data_64

    :cond_d
    :goto_d
    const-string v0, "RichMediaActivity onResume done"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    return-void

    :pswitch_13
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mRootLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

    iget v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoLastPosition:I

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/SDKVideoView;->seekTo(I)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/SDKVideoView;->start()V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoTimeoutTimer:Ljava/util/Timer;

    if-nez v0, :cond_d

    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$VideoTimeoutTask;

    invoke-direct {v0, p0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$VideoTimeoutTask;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;Landroid/app/Activity;)V

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoTimeoutTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoTimeoutTimer:Ljava/util/Timer;

    const-wide/32 v2, 0x124f80

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_d

    :pswitch_3f
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget v0, v0, Lcom/adsdk/sdk/video/InterstitialData;->interstitialType:I

    packed-switch v0, :pswitch_data_6c

    goto :goto_d

    :pswitch_47
    iget-boolean v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mPageLoaded:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialView:Lcom/adsdk/sdk/video/WebFrame;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-object v1, v1, Lcom/adsdk/sdk/video/InterstitialData;->interstitialUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/WebFrame;->loadUrl(Ljava/lang/String;)V

    goto :goto_d

    :pswitch_55
    iget-boolean v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mPageLoaded:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialView:Lcom/adsdk/sdk/video/WebFrame;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-object v1, v1, Lcom/adsdk/sdk/video/InterstitialData;->interstitialMarkup:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/WebFrame;->setMarkup(Ljava/lang/String;)V

    goto :goto_d

    nop

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_13
        :pswitch_3f
    .end packed-switch

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_47
        :pswitch_55
    .end packed-switch
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 5

    const-string v0, " onShowCustomView"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_49

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCustomView:Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCustomView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/VideoView;

    if-eqz v0, :cond_37

    const-string v0, " onShowCustomView Starting Video View"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCustomView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCustomVideoView:Landroid/widget/VideoView;

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCustomVideoView:Landroid/widget/VideoView;

    new-instance v1, Lcom/adsdk/sdk/video/RichMediaActivity$20;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$20;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCustomVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    :cond_37
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mRootLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCustomView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCustomView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->setContentView(Landroid/view/View;)V

    :cond_49
    return-void
.end method

.method public playVideo()V
    .registers 5

    const/4 v3, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RichMediaActivity play video:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mType:I

    packed-switch v0, :pswitch_data_6e

    :cond_1a
    :goto_1a
    return-void

    :pswitch_1b
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/MediaController;->replay()V

    goto :goto_1a

    :pswitch_25
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mAd:Lcom/adsdk/sdk/video/RichMediaAd;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/RichMediaAd;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1a

    const-string v0, "RichMediaActivity launch video"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adsdk/sdk/video/RichMediaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "RICH_AD_DATA"

    iget-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mAd:Lcom/adsdk/sdk/video/RichMediaAd;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "RICH_AD_TYPE"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_46
    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->startActivity(Landroid/content/Intent;)V

    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mEnterAnim:I

    iget v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mExitAnim:I

    invoke-static {p0, v0, v1}, Lcom/adsdk/sdk/video/RichMediaActivity;->setActivityAnimation(Landroid/app/Activity;II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mResult:Z

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->setResult(I)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_57} :catch_58

    goto :goto_1a

    :catch_58
    move-exception v0

    const-string v1, "ADSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot start Rich Ad activity:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/adsdk/sdk/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1a

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_25
    .end packed-switch
.end method

.method public replayVideo()V
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/MediaController;->replay()V

    :cond_9
    return-void
.end method
