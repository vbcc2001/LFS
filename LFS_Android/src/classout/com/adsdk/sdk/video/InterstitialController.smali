.class public Lcom/adsdk/sdk/video/InterstitialController;
.super Landroid/widget/LinearLayout;


# static fields
.field private static final DEFAULT_TIMEOUT:I = 0xbb8

.field private static final FADE_OUT:I = 0x1

.field private static final SHOW_PROGRESS:I = 0x2


# instance fields
.field private buttonWidthPercent:D

.field private mAutoclose:Z

.field private mBackButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

.field private mBackListener:Landroid/view/View$OnClickListener;

.field private mBottomBar:Landroid/widget/LinearLayout;

.field private mBottomBarBackground:Lcom/adsdk/sdk/video/AspectRatioImageView;

.field private mBrowser:Lcom/adsdk/sdk/video/InterstitialController$BrowserControl;

.field private mBrowserView:Landroid/widget/FrameLayout;

.field private mContext:Landroid/content/Context;

.field private mDefaultTimeout:I

.field private mExternalButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

.field private mExternalListener:Landroid/view/View$OnClickListener;

.field private mFixed:Z

.field mFormatBuilder:Ljava/lang/StringBuilder;

.field mFormatter:Ljava/util/Formatter;

.field private mForwardButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

.field private mForwardListener:Landroid/view/View$OnClickListener;

.field private mHandler:Landroid/os/Handler;

.field private mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

.field private mLeftTime:Landroid/widget/TextView;

.field private mNavIconsLayout:Landroid/widget/LinearLayout;

.field private mOnReloadListener:Lcom/adsdk/sdk/video/InterstitialController$OnReloadListener;

.field private mOnResetAutocloseListener:Lcom/adsdk/sdk/video/InterstitialController$OnResetAutocloseListener;

.field private mReloadButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

.field private mReloadListener:Landroid/view/View$OnClickListener;

.field private mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

.field private mShowing:Z

.field private mTitle:Ljava/lang/String;

.field private mTitleText:Landroid/widget/TextView;

.field private mTopBar:Landroid/widget/LinearLayout;

.field private mTopBarBackground:Lcom/adsdk/sdk/video/AspectRatioImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/adsdk/sdk/video/InterstitialData;)V
    .registers 8

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-wide v2, 0x3fb70a3d70a3d70aL

    iput-wide v2, p0, Lcom/adsdk/sdk/video/InterstitialController;->buttonWidthPercent:D

    new-instance v0, Lcom/adsdk/sdk/video/InterstitialController$1;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/InterstitialController$1;-><init>(Lcom/adsdk/sdk/video/InterstitialController;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBackListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/adsdk/sdk/video/InterstitialController$2;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/InterstitialController$2;-><init>(Lcom/adsdk/sdk/video/InterstitialController;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mReloadListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/adsdk/sdk/video/InterstitialController$3;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/InterstitialController$3;-><init>(Lcom/adsdk/sdk/video/InterstitialController;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mForwardListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/adsdk/sdk/video/InterstitialController$4;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/InterstitialController$4;-><init>(Lcom/adsdk/sdk/video/InterstitialController;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mExternalListener:Landroid/view/View$OnClickListener;

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iput-object p1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    if-nez v0, :cond_4b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Interstitial info cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mFormatBuilder:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/Formatter;

    iget-object v3, p0, Lcom/adsdk/sdk/video/InterstitialController;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mFormatter:Ljava/util/Formatter;

    iput-boolean v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mFixed:Z

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget v0, v0, Lcom/adsdk/sdk/video/InterstitialData;->autoclose:I

    if-lez v0, :cond_90

    const/4 v0, 0x1

    :goto_68
    iput-boolean v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mAutoclose:Z

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mDefaultTimeout:I

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    if-eqz v0, :cond_7a

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-boolean v0, v0, Lcom/adsdk/sdk/video/InterstitialData;->allowTapNavigationBars:Z

    if-nez v0, :cond_7a

    iput v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mDefaultTimeout:I

    :cond_7a
    new-instance v0, Lcom/adsdk/sdk/video/InterstitialController$ResourceHandler;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/InterstitialController$ResourceHandler;-><init>(Lcom/adsdk/sdk/video/InterstitialController;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/adsdk/sdk/video/ResourceManager;

    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/adsdk/sdk/video/InterstitialController;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v3}, Lcom/adsdk/sdk/video/ResourceManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    invoke-direct {p0, v2}, Lcom/adsdk/sdk/video/InterstitialController;->buildNavigationBarView(Landroid/util/DisplayMetrics;)V

    return-void

    :cond_90
    move v0, v1

    goto :goto_68
.end method

.method static synthetic access$0(Lcom/adsdk/sdk/video/InterstitialController;)Lcom/adsdk/sdk/video/InterstitialController$BrowserControl;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBrowser:Lcom/adsdk/sdk/video/InterstitialController$BrowserControl;

    return-object v0
.end method

.method static synthetic access$1(Lcom/adsdk/sdk/video/InterstitialController;)I
    .registers 2

    iget v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mDefaultTimeout:I

    return v0
.end method

.method static synthetic access$2(Lcom/adsdk/sdk/video/InterstitialController;)I
    .registers 2

    invoke-direct {p0}, Lcom/adsdk/sdk/video/InterstitialController;->setProgress()I

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lcom/adsdk/sdk/video/InterstitialController;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mShowing:Z

    return v0
.end method

.method static synthetic access$4(Lcom/adsdk/sdk/video/InterstitialController;)Lcom/adsdk/sdk/video/InterstitialData;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    return-object v0
.end method

.method static synthetic access$5(Lcom/adsdk/sdk/video/InterstitialController;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/adsdk/sdk/video/InterstitialController;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method private buildNavigationBarView(Landroid/util/DisplayMetrics;)V
    .registers 14

    const/high16 v11, 0x3f800000

    const/4 v5, -0x1

    const/4 v10, 0x1

    const/4 v9, -0x2

    const/4 v8, 0x0

    invoke-virtual {p0, v11}, Lcom/adsdk/sdk/video/InterstitialController;->setWeightSum(F)V

    invoke-virtual {p0, v10}, Lcom/adsdk/sdk/video/InterstitialController;->setOrientation(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/video/InterstitialController;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTopBar:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTopBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x30

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTopBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTopBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTopBar:Landroid/widget/LinearLayout;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/high16 v1, 0x40800000

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/InterstitialController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v10, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTopBar:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1, v8, v1, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v1, Lcom/adsdk/sdk/video/AspectRatioImageView;

    iget-object v2, p0, Lcom/adsdk/sdk/video/InterstitialController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/adsdk/sdk/video/AspectRatioImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTopBarBackground:Lcom/adsdk/sdk/video/AspectRatioImageView;

    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTopBarBackground:Lcom/adsdk/sdk/video/AspectRatioImageView;

    invoke-virtual {v1, v0}, Lcom/adsdk/sdk/video/AspectRatioImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTopBarBackground:Lcom/adsdk/sdk/video/AspectRatioImageView;

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/InterstitialController;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTopBar:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    invoke-virtual {v1, v10, v2, v3}, Lcom/adsdk/sdk/video/AspectRatioImageView;->fillParent(ZII)V

    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTopBarBackground:Lcom/adsdk/sdk/video/AspectRatioImageView;

    invoke-virtual {p0, v1, v0}, Lcom/adsdk/sdk/video/InterstitialController;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTopBar:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1, v0}, Lcom/adsdk/sdk/video/InterstitialController;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTitleText:Landroid/widget/TextView;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v9, v9, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTitleText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/adsdk/sdk/video/InterstitialController;->mContext:Landroid/content/Context;

    const v3, 0x1030046

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTitleText:Landroid/widget/TextView;

    invoke-static {v10}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTitleText:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTopBar:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBrowserView:Landroid/widget/FrameLayout;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x30

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iput v11, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBrowserView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBrowserView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1, v0}, Lcom/adsdk/sdk/video/InterstitialController;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBottomBar:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v1, v1

    const-wide v3, 0x3fbe76c8b4395810L

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-direct {v0, v5, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x50

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBottomBar:Landroid/widget/LinearLayout;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    new-instance v1, Lcom/adsdk/sdk/video/AspectRatioImageView;

    iget-object v2, p0, Lcom/adsdk/sdk/video/InterstitialController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/adsdk/sdk/video/AspectRatioImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBottomBarBackground:Lcom/adsdk/sdk/video/AspectRatioImageView;

    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBottomBarBackground:Lcom/adsdk/sdk/video/AspectRatioImageView;

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/InterstitialController;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    invoke-virtual {v1, v10, v2, v3}, Lcom/adsdk/sdk/video/AspectRatioImageView;->fillParent(ZII)V

    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBottomBarBackground:Lcom/adsdk/sdk/video/AspectRatioImageView;

    invoke-virtual {p0, v1}, Lcom/adsdk/sdk/video/InterstitialController;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1, v0}, Lcom/adsdk/sdk/video/InterstitialController;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    invoke-direct {v1, v9, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v2, 0x13

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v2, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v1, 0x40800000

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/InterstitialController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v10, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    new-instance v2, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    iget-object v3, p0, Lcom/adsdk/sdk/video/InterstitialController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/adsdk/sdk/video/InterstitialController;->mReloadButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v3, v3

    iget-wide v5, p0, Lcom/adsdk/sdk/video/InterstitialController;->buttonWidthPercent:D

    mul-double/2addr v3, v5

    double-to-int v3, v3

    iget v4, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v4, v4

    iget-wide v6, p0, Lcom/adsdk/sdk/video/InterstitialController;->buttonWidthPercent:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x4

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/4 v3, 0x4

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    const/16 v3, 0x10

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v3, p0, Lcom/adsdk/sdk/video/InterstitialController;->mReloadButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v3, v10}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setAdjustViewBounds(Z)V

    iget-object v3, p0, Lcom/adsdk/sdk/video/InterstitialController;->mReloadButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v3, v1, v8, v1, v8}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setPadding(IIII)V

    iget-object v3, p0, Lcom/adsdk/sdk/video/InterstitialController;->mReloadButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBackButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    iget-object v3, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBackButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v3, v1, v8, v1, v8}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setPadding(IIII)V

    iget-object v3, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBackButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/adsdk/sdk/video/InterstitialController;->mForwardButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    iget-object v3, p0, Lcom/adsdk/sdk/video/InterstitialController;->mForwardButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v3, v1, v8, v1, v8}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setPadding(IIII)V

    iget-object v3, p0, Lcom/adsdk/sdk/video/InterstitialController;->mForwardButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/adsdk/sdk/video/InterstitialController;->mExternalButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    iget-object v3, p0, Lcom/adsdk/sdk/video/InterstitialController;->mExternalButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v3, v1, v8, v1, v8}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setPadding(IIII)V

    iget-object v3, p0, Lcom/adsdk/sdk/video/InterstitialController;->mExternalButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lcom/adsdk/sdk/video/AutoResizeTextView;

    iget-object v3, p0, Lcom/adsdk/sdk/video/InterstitialController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/adsdk/sdk/video/AutoResizeTextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/adsdk/sdk/video/InterstitialController;->mLeftTime:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x11

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v3, p0, Lcom/adsdk/sdk/video/InterstitialController;->mLeftTime:Landroid/widget/TextView;

    invoke-static {v10}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v3, p0, Lcom/adsdk/sdk/video/InterstitialController;->mLeftTime:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/adsdk/sdk/video/InterstitialController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mNavIconsLayout:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v9, v9, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v2, 0x15

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/adsdk/sdk/video/InterstitialController;->mNavIconsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v2, p0, Lcom/adsdk/sdk/video/InterstitialController;->mNavIconsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8, v8, v8, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v2, p0, Lcom/adsdk/sdk/video/InterstitialController;->mNavIconsLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0x15

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v2, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBottomBar:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/adsdk/sdk/video/InterstitialController;->mNavIconsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, v1, p1}, Lcom/adsdk/sdk/video/InterstitialController;->initNavigationBarControllerView(ILandroid/util/DisplayMetrics;)V

    return-void
.end method

.method private handleMessage(Landroid/os/Message;)V
    .registers 5

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_94

    :cond_5
    :goto_5
    return-void

    :sswitch_6
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/InterstitialController;->hide()V

    goto :goto_5

    :sswitch_a
    iget v0, p1, Landroid/os/Message;->arg1:I

    sparse-switch v0, :sswitch_data_9e

    goto :goto_5

    :sswitch_10
    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mExternalButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mContext:Landroid/content/Context;

    const/16 v2, -0x11

    invoke-virtual {v0, v1, v2}, Lcom/adsdk/sdk/video/ResourceManager;->getResource(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mExternalButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v1, v0}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    :sswitch_26
    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTopBar:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mContext:Landroid/content/Context;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/adsdk/sdk/video/ResourceManager;->getResource(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTopBarBackground:Lcom/adsdk/sdk/video/AspectRatioImageView;

    invoke-virtual {v1, v0}, Lcom/adsdk/sdk/video/AspectRatioImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    :sswitch_3b
    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBottomBar:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mContext:Landroid/content/Context;

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Lcom/adsdk/sdk/video/ResourceManager;->getResource(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    :sswitch_50
    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBackButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mContext:Landroid/content/Context;

    const/16 v2, -0xe

    invoke-virtual {v0, v1, v2}, Lcom/adsdk/sdk/video/ResourceManager;->getResource(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBackButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v1, v0}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    :sswitch_66
    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mForwardButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mContext:Landroid/content/Context;

    const/16 v2, -0xf

    invoke-virtual {v0, v1, v2}, Lcom/adsdk/sdk/video/ResourceManager;->getResource(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mForwardButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v1, v0}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    :sswitch_7c
    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mReloadButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mContext:Landroid/content/Context;

    const/16 v2, -0x10

    invoke-virtual {v0, v1, v2}, Lcom/adsdk/sdk/video/ResourceManager;->getResource(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mReloadButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v1, v0}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    nop

    :sswitch_data_94
    .sparse-switch
        0x1 -> :sswitch_6
        0x64 -> :sswitch_a
    .end sparse-switch

    :sswitch_data_9e
    .sparse-switch
        -0x11 -> :sswitch_10
        -0x10 -> :sswitch_7c
        -0xf -> :sswitch_66
        -0xe -> :sswitch_50
        -0x2 -> :sswitch_3b
        -0x1 -> :sswitch_26
    .end sparse-switch
.end method

.method private initNavigationBarControllerView(ILandroid/util/DisplayMetrics;)V
    .registers 13

    const/16 v7, -0x10

    const/16 v6, -0x11

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/16 v9, 0x8

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-boolean v0, v0, Lcom/adsdk/sdk/video/InterstitialData;->showBottomNavigationBar:Z

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_13
    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-boolean v0, v0, Lcom/adsdk/sdk/video/InterstitialData;->showTopNavigationBar:Z

    if-nez v0, :cond_215

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTopBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1e
    :goto_1e
    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-boolean v0, v0, Lcom/adsdk/sdk/video/InterstitialData;->showNavigationBars:Z

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTopBar:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTopBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2d
    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBottomBar:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_36
    return-void

    :cond_37
    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-object v0, v0, Lcom/adsdk/sdk/video/InterstitialData;->bottomNavigationBarBackground:Ljava/lang/String;

    if-eqz v0, :cond_19d

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-object v0, v0, Lcom/adsdk/sdk/video/InterstitialData;->bottomNavigationBarBackground:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_19d

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-object v3, v3, Lcom/adsdk/sdk/video/InterstitialData;->bottomNavigationBarBackground:Ljava/lang/String;

    const/4 v4, -0x2

    invoke-virtual {v0, v1, v3, v4}, Lcom/adsdk/sdk/video/ResourceManager;->fetchResource(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_58
    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBackButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    if-eqz v0, :cond_90

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-object v0, v0, Lcom/adsdk/sdk/video/InterstitialData;->backButtonImage:Ljava/lang/String;

    if-eqz v0, :cond_1ad

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-object v0, v0, Lcom/adsdk/sdk/video/InterstitialData;->backButtonImage:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1ad

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBackButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v0, v5}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-object v3, v3, Lcom/adsdk/sdk/video/InterstitialData;->backButtonImage:Ljava/lang/String;

    const/16 v4, -0xe

    invoke-virtual {v0, v1, v3, v4}, Lcom/adsdk/sdk/video/ResourceManager;->fetchResource(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_7e
    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBackButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBackListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-boolean v0, v0, Lcom/adsdk/sdk/video/InterstitialData;->showBackButton:Z

    if-eqz v0, :cond_1c3

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBackButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v0, v2}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setVisibility(I)V

    :cond_90
    :goto_90
    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mForwardButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    if-eqz v0, :cond_c8

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-object v0, v0, Lcom/adsdk/sdk/video/InterstitialData;->forwardButtonImage:Ljava/lang/String;

    if-eqz v0, :cond_1ca

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-object v0, v0, Lcom/adsdk/sdk/video/InterstitialData;->forwardButtonImage:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1ca

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mForwardButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v0, v5}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-object v3, v3, Lcom/adsdk/sdk/video/InterstitialData;->forwardButtonImage:Ljava/lang/String;

    const/16 v4, -0xf

    invoke-virtual {v0, v1, v3, v4}, Lcom/adsdk/sdk/video/ResourceManager;->fetchResource(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_b6
    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mForwardButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mForwardListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-boolean v0, v0, Lcom/adsdk/sdk/video/InterstitialData;->showForwardButton:Z

    if-eqz v0, :cond_1db

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mForwardButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v0, v2}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setVisibility(I)V

    :cond_c8
    :goto_c8
    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mReloadButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    if-eqz v0, :cond_fe

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-object v0, v0, Lcom/adsdk/sdk/video/InterstitialData;->reloadButtonImage:Ljava/lang/String;

    if-eqz v0, :cond_1e2

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-object v0, v0, Lcom/adsdk/sdk/video/InterstitialData;->reloadButtonImage:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1e2

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mReloadButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v0, v5}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-object v3, v3, Lcom/adsdk/sdk/video/InterstitialData;->reloadButtonImage:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v7}, Lcom/adsdk/sdk/video/ResourceManager;->fetchResource(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_ec
    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mReloadButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mReloadListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-boolean v0, v0, Lcom/adsdk/sdk/video/InterstitialData;->showReloadButton:Z

    if-eqz v0, :cond_1f1

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mReloadButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v0, v2}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setVisibility(I)V

    :cond_fe
    :goto_fe
    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mExternalButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    if-eqz v0, :cond_134

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-object v0, v0, Lcom/adsdk/sdk/video/InterstitialData;->externalButtonImage:Ljava/lang/String;

    if-eqz v0, :cond_1f8

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-object v0, v0, Lcom/adsdk/sdk/video/InterstitialData;->externalButtonImage:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1f8

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mExternalButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v0, v5}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-object v3, v3, Lcom/adsdk/sdk/video/InterstitialData;->externalButtonImage:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v6}, Lcom/adsdk/sdk/video/ResourceManager;->fetchResource(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_122
    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mExternalButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mExternalListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-boolean v0, v0, Lcom/adsdk/sdk/video/InterstitialData;->showExternalButton:Z

    if-eqz v0, :cond_207

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mExternalButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v0, v2}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setVisibility(I)V

    :cond_134
    :goto_134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mFormatBuilder:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mFormatter:Ljava/util/Formatter;

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mLeftTime:Landroid/widget/TextView;

    if-eqz v0, :cond_15b

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-boolean v0, v0, Lcom/adsdk/sdk/video/InterstitialData;->showTimer:Z

    if-eqz v0, :cond_20e

    iget-boolean v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mAutoclose:Z

    if-eqz v0, :cond_20e

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mLeftTime:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_15b
    :goto_15b
    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-object v0, v0, Lcom/adsdk/sdk/video/InterstitialData;->icons:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    move v1, v2

    :goto_166
    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-object v0, v0, Lcom/adsdk/sdk/video/InterstitialData;->icons:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_13

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-object v0, v0, Lcom/adsdk/sdk/video/InterstitialData;->icons:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsdk/sdk/video/NavIconData;

    new-instance v3, Lcom/adsdk/sdk/video/NavIcon;

    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v0}, Lcom/adsdk/sdk/video/NavIcon;-><init>(Landroid/content/Context;Lcom/adsdk/sdk/video/NavIconData;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v4, v4

    iget-wide v6, p0, Lcom/adsdk/sdk/video/InterstitialController;->buttonWidthPercent:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iget v5, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v5, v5

    iget-wide v7, p0, Lcom/adsdk/sdk/video/InterstitialController;->buttonWidthPercent:D

    mul-double/2addr v5, v7

    double-to-int v5, v5

    invoke-direct {v0, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/adsdk/sdk/video/InterstitialController;->mNavIconsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_166

    :cond_19d
    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBottomBar:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    iget-object v3, p0, Lcom/adsdk/sdk/video/InterstitialController;->mContext:Landroid/content/Context;

    const/4 v4, -0x2

    invoke-virtual {v1, v3, v4}, Lcom/adsdk/sdk/video/ResourceManager;->getResource(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_58

    :cond_1ad
    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBackButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    iget-object v3, p0, Lcom/adsdk/sdk/video/InterstitialController;->mContext:Landroid/content/Context;

    const/16 v4, -0xe

    invoke-virtual {v1, v3, v4}, Lcom/adsdk/sdk/video/ResourceManager;->getResource(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBackButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v0, v2}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setEnabled(Z)V

    goto/16 :goto_7e

    :cond_1c3
    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBackButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v0, v9}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setVisibility(I)V

    goto/16 :goto_90

    :cond_1ca
    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mForwardButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    iget-object v3, p0, Lcom/adsdk/sdk/video/InterstitialController;->mContext:Landroid/content/Context;

    const/16 v4, -0xf

    invoke-virtual {v1, v3, v4}, Lcom/adsdk/sdk/video/ResourceManager;->getResource(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_b6

    :cond_1db
    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mForwardButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v0, v9}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setVisibility(I)V

    goto/16 :goto_c8

    :cond_1e2
    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mReloadButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    iget-object v3, p0, Lcom/adsdk/sdk/video/InterstitialController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3, v7}, Lcom/adsdk/sdk/video/ResourceManager;->getResource(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_ec

    :cond_1f1
    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mReloadButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v0, v9}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setVisibility(I)V

    goto/16 :goto_fe

    :cond_1f8
    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mExternalButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    iget-object v3, p0, Lcom/adsdk/sdk/video/InterstitialController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3, v6}, Lcom/adsdk/sdk/video/ResourceManager;->getResource(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_122

    :cond_207
    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mExternalButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v0, v9}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setVisibility(I)V

    goto/16 :goto_134

    :cond_20e
    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mLeftTime:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_15b

    :cond_215
    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTopBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-object v0, v0, Lcom/adsdk/sdk/video/InterstitialData;->topNavigationBarBackground:Ljava/lang/String;

    if-eqz v0, :cond_24b

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-object v0, v0, Lcom/adsdk/sdk/video/InterstitialData;->topNavigationBarBackground:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_24b

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-object v2, v2, Lcom/adsdk/sdk/video/InterstitialData;->topNavigationBarBackground:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/adsdk/sdk/video/ResourceManager;->fetchResource(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_236
    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTitleText:Landroid/widget/TextView;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget v0, v0, Lcom/adsdk/sdk/video/InterstitialData;->topNavigationBarTitleType:I

    if-nez v0, :cond_25a

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTitleText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-object v1, v1, Lcom/adsdk/sdk/video/InterstitialData;->topNavigationBarTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1e

    :cond_24b
    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTopBarBackground:Lcom/adsdk/sdk/video/AspectRatioImageView;

    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    iget-object v2, p0, Lcom/adsdk/sdk/video/InterstitialController;->mContext:Landroid/content/Context;

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/adsdk/sdk/video/ResourceManager;->getResource(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/AspectRatioImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_236

    :cond_25a
    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget v0, v0, Lcom/adsdk/sdk/video/InterstitialData;->topNavigationBarTitleType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1e

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1e
.end method

.method private setProgress()I
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBrowser:Lcom/adsdk/sdk/video/InterstitialController$BrowserControl;

    if-eqz v1, :cond_b

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBrowser:Lcom/adsdk/sdk/video/InterstitialController$BrowserControl;

    invoke-interface {v0}, Lcom/adsdk/sdk/video/InterstitialController$BrowserControl;->getTime()I

    move-result v0

    :cond_b
    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget v1, v1, Lcom/adsdk/sdk/video/InterstitialData;->autoclose:I

    mul-int/lit16 v1, v1, 0x3e8

    sub-int v2, v1, v0

    iget-boolean v3, p0, Lcom/adsdk/sdk/video/InterstitialController;->mAutoclose:Z

    if-eqz v3, :cond_5c

    if-lez v1, :cond_5c

    if-ltz v2, :cond_5c

    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mLeftTime:Landroid/widget/TextView;

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mLeftTime:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/adsdk/sdk/video/InterstitialController;->stringForTime(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_28
    :goto_28
    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTitleText:Landroid/widget/TextView;

    if-eqz v1, :cond_58

    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget v1, v1, Lcom/adsdk/sdk/video/InterstitialData;->topNavigationBarTitleType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_58

    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBrowser:Lcom/adsdk/sdk/video/InterstitialController$BrowserControl;

    if-eqz v1, :cond_58

    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTitle:Ljava/lang/String;

    if-eqz v1, :cond_49

    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBrowser:Lcom/adsdk/sdk/video/InterstitialController$BrowserControl;

    invoke-interface {v2}, Lcom/adsdk/sdk/video/InterstitialController$BrowserControl;->getPageTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_58

    :cond_49
    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBrowser:Lcom/adsdk/sdk/video/InterstitialController$BrowserControl;

    invoke-interface {v1}, Lcom/adsdk/sdk/video/InterstitialController$BrowserControl;->getPageTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTitleText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_58
    invoke-direct {p0}, Lcom/adsdk/sdk/video/InterstitialController;->updateBackForward()V

    return v0

    :cond_5c
    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mLeftTime:Landroid/widget/TextView;

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mLeftTime:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_28
.end method

.method private stringForTime(I)Ljava/lang/String;
    .registers 11

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    div-int/lit16 v0, p1, 0x3e8

    rem-int/lit8 v1, v0, 0x3c

    div-int/lit8 v2, v0, 0x3c

    rem-int/lit8 v2, v2, 0x3c

    div-int/lit16 v0, v0, 0xe10

    iget-object v3, p0, Lcom/adsdk/sdk/video/InterstitialController;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    if-lez v0, :cond_36

    iget-object v3, p0, Lcom/adsdk/sdk/video/InterstitialController;->mFormatter:Ljava/util/Formatter;

    const-string v4, "%d:%02d:%02d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v8

    invoke-virtual {v3, v4, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_35
    return-object v0

    :cond_36
    if-lez v2, :cond_53

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mFormatter:Ljava/util/Formatter;

    const-string v3, "%02d:%02d"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-virtual {v0, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_35

    :cond_53
    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mFormatter:Ljava/util/Formatter;

    const-string v2, "0:%02d"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v6

    invoke-virtual {v0, v2, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_35
.end method

.method private updateBackForward()V
    .registers 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBrowser:Lcom/adsdk/sdk/video/InterstitialController$BrowserControl;

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBrowser:Lcom/adsdk/sdk/video/InterstitialController$BrowserControl;

    invoke-interface {v0}, Lcom/adsdk/sdk/video/InterstitialController$BrowserControl;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBackButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBackButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v0, v2}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setEnabled(Z)V

    :cond_18
    :goto_18
    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBrowser:Lcom/adsdk/sdk/video/InterstitialController$BrowserControl;

    invoke-interface {v0}, Lcom/adsdk/sdk/video/InterstitialController$BrowserControl;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mForwardButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mForwardButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v0, v2}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setEnabled(Z)V

    goto :goto_6

    :cond_2a
    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBackButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBackButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setEnabled(Z)V

    goto :goto_18

    :cond_34
    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mForwardButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mForwardButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setEnabled(Z)V

    goto :goto_6
.end method


# virtual methods
.method public canToggle()Z
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-boolean v0, v0, Lcom/adsdk/sdk/video/InterstitialData;->allowTapNavigationBars:Z

    return v0
.end method

.method public hide()V
    .registers 5

    const/16 v3, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/InterstitialController;->canToggle()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-boolean v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mShowing:Z

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTopBar:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTopBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1c
    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBottomBar:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_25
    iput-boolean v2, p0, Lcom/adsdk/sdk/video/InterstitialController;->mShowing:Z

    iput-boolean v2, p0, Lcom/adsdk/sdk/video/InterstitialController;->mFixed:Z

    :cond_29
    return-void
.end method

.method public isShowing()Z
    .registers 2

    iget-boolean v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mShowing:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/adsdk/sdk/video/InterstitialController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/InterstitialController;->resetAutoclose()V

    const/4 v0, 0x1

    return v0
.end method

.method public pageLoaded()V
    .registers 1

    invoke-direct {p0}, Lcom/adsdk/sdk/video/InterstitialController;->setProgress()I

    return-void
.end method

.method public reload()V
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBrowser:Lcom/adsdk/sdk/video/InterstitialController$BrowserControl;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBrowser:Lcom/adsdk/sdk/video/InterstitialController$BrowserControl;

    invoke-interface {v0}, Lcom/adsdk/sdk/video/InterstitialController$BrowserControl;->reload()V

    :cond_9
    invoke-direct {p0}, Lcom/adsdk/sdk/video/InterstitialController;->setProgress()I

    iget v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mDefaultTimeout:I

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/video/InterstitialController;->show(I)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mOnReloadListener:Lcom/adsdk/sdk/video/InterstitialController$OnReloadListener;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mOnReloadListener:Lcom/adsdk/sdk/video/InterstitialController$OnReloadListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/video/InterstitialController$OnReloadListener;->onInterstitialReload()V

    :cond_1a
    return-void
.end method

.method public resetAutoclose()V
    .registers 2

    iget-boolean v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mAutoclose:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mAutoclose:Z

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mOnResetAutocloseListener:Lcom/adsdk/sdk/video/InterstitialController$OnResetAutocloseListener;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mOnResetAutocloseListener:Lcom/adsdk/sdk/video/InterstitialController$OnResetAutocloseListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/video/InterstitialController$OnResetAutocloseListener;->onResetAutoclose()V

    :cond_10
    return-void
.end method

.method public resizeTopBar(I)V
    .registers 5

    if-gtz p1, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    const/4 v0, 0x1

    const/high16 v1, 0x40800000

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/InterstitialController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTopBar:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTopBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    add-int/2addr v0, p1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTopBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2
.end method

.method public setBrowser(Lcom/adsdk/sdk/video/InterstitialController$BrowserControl;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBrowser:Lcom/adsdk/sdk/video/InterstitialController$BrowserControl;

    invoke-direct {p0}, Lcom/adsdk/sdk/video/InterstitialController;->updateBackForward()V

    return-void
.end method

.method public setBrowserView(Landroid/view/View;)V
    .registers 6

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBrowserView:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setOnReloadListener(Lcom/adsdk/sdk/video/InterstitialController$OnReloadListener;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mOnReloadListener:Lcom/adsdk/sdk/video/InterstitialController$OnReloadListener;

    return-void
.end method

.method public setOnResetAutocloseListener(Lcom/adsdk/sdk/video/InterstitialController$OnResetAutocloseListener;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mOnResetAutocloseListener:Lcom/adsdk/sdk/video/InterstitialController$OnResetAutocloseListener;

    return-void
.end method

.method public show()V
    .registers 2

    iget v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mDefaultTimeout:I

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/video/InterstitialController;->show(I)V

    return-void
.end method

.method public show(I)V
    .registers 6

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_6

    iput-boolean v2, p0, Lcom/adsdk/sdk/video/InterstitialController;->mFixed:Z

    :cond_6
    iget-boolean v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mShowing:Z

    if-nez v0, :cond_2d

    invoke-direct {p0}, Lcom/adsdk/sdk/video/InterstitialController;->setProgress()I

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTopBar:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-boolean v0, v0, Lcom/adsdk/sdk/video/InterstitialData;->showTopNavigationBar:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mTopBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1c
    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBottomBar:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-boolean v0, v0, Lcom/adsdk/sdk/video/InterstitialData;->showBottomNavigationBar:Z

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mBottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2b
    iput-boolean v2, p0, Lcom/adsdk/sdk/video/InterstitialController;->mShowing:Z

    :cond_2d
    invoke-direct {p0}, Lcom/adsdk/sdk/video/InterstitialController;->updateBackForward()V

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    if-eqz p1, :cond_4d

    iget-boolean v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mFixed:Z

    if-nez v0, :cond_4d

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/video/InterstitialController;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_4d
    return-void
.end method

.method public toggle()V
    .registers 2

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/InterstitialController;->canToggle()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/adsdk/sdk/video/InterstitialController;->mShowing:Z

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/InterstitialController;->hide()V

    :cond_d
    :goto_d
    return-void

    :cond_e
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/InterstitialController;->show()V

    goto :goto_d
.end method
