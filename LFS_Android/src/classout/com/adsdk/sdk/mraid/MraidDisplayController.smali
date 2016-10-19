.class Lcom/adsdk/sdk/mraid/MraidDisplayController;
.super Lcom/adsdk/sdk/mraid/MraidAbstractController;


# static fields
.field private static final CLOSE_BUTTON_SIZE_DP:I = 0x32

.field private static final LOGTAG:Ljava/lang/String; = "MraidDisplayController"

.field private static final VIEWABILITY_TIMER_MILLIS:J = 0xbb8L


# instance fields
.field private mAdWantsCustomCloseButton:Z

.field private mCheckViewabilityTask:Ljava/lang/Runnable;

.field private mCloseButton:Landroid/widget/ImageView;

.field protected mDensity:F

.field private final mExpansionStyle:Lcom/adsdk/sdk/mraid/MraidView$ExpansionStyle;

.field private mHandler:Landroid/os/Handler;

.field private mIsViewable:Z

.field private final mNativeCloseButtonStyle:Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;

.field private mOrientationBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mOriginalRequestedOrientation:I

.field mPlaceholderView:Landroid/widget/FrameLayout;

.field private mRootView:Landroid/widget/FrameLayout;

.field protected mScreenHeight:I

.field protected mScreenWidth:I

.field private mTwoPartExpansionView:Lcom/adsdk/sdk/mraid/MraidView;

.field private mViewIndexInParent:I

.field private mViewState:Lcom/adsdk/sdk/mraid/MraidView$ViewState;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/mraid/MraidView;Lcom/adsdk/sdk/mraid/MraidView$ExpansionStyle;Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;)V
    .registers 7

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Lcom/adsdk/sdk/mraid/MraidAbstractController;-><init>(Lcom/adsdk/sdk/mraid/MraidView;)V

    sget-object v0, Lcom/adsdk/sdk/mraid/MraidView$ViewState;->HIDDEN:Lcom/adsdk/sdk/mraid/MraidView$ViewState;

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mViewState:Lcom/adsdk/sdk/mraid/MraidView$ViewState;

    new-instance v0, Lcom/adsdk/sdk/mraid/MraidDisplayController$1;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController$1;-><init>(Lcom/adsdk/sdk/mraid/MraidDisplayController;)V

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mCheckViewabilityTask:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/adsdk/sdk/mraid/MraidDisplayController$2;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController$2;-><init>(Lcom/adsdk/sdk/mraid/MraidDisplayController;)V

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mOrientationBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput v1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mScreenWidth:I

    iput v1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mScreenHeight:I

    iput-object p2, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mExpansionStyle:Lcom/adsdk/sdk/mraid/MraidView$ExpansionStyle;

    iput-object p3, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mNativeCloseButtonStyle:Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_3d

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    :goto_37
    iput v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mOriginalRequestedOrientation:I

    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->initialize()V

    return-void

    :cond_3d
    move v0, v1

    goto :goto_37
.end method

.method static synthetic access$0(Lcom/adsdk/sdk/mraid/MraidDisplayController;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mIsViewable:Z

    return v0
.end method

.method static synthetic access$1(Lcom/adsdk/sdk/mraid/MraidDisplayController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mIsViewable:Z

    return-void
.end method

.method static synthetic access$2(Lcom/adsdk/sdk/mraid/MraidDisplayController;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3(Lcom/adsdk/sdk/mraid/MraidDisplayController;)I
    .registers 2

    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getDisplayRotation()I

    move-result v0

    return v0
.end method

.method static synthetic access$4(Lcom/adsdk/sdk/mraid/MraidDisplayController;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->onOrientationChanged(I)V

    return-void
.end method

.method private createExpansionViewContainer(Landroid/view/View;II)Landroid/view/ViewGroup;
    .registers 8

    const/4 v3, -0x1

    const/high16 v0, 0x42480000

    iget v1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mDensity:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000

    add-float/2addr v0, v1

    float-to-int v0, v0

    if-ge p2, v0, :cond_d

    move p2, v0

    :cond_d
    if-ge p3, v0, :cond_10

    move p3, v0

    :cond_10
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adsdk/sdk/mraid/MraidView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adsdk/sdk/mraid/MraidView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v2, Lcom/adsdk/sdk/mraid/MraidDisplayController$4;

    invoke-direct {v2, p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController$4;-><init>(Lcom/adsdk/sdk/mraid/MraidDisplayController;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adsdk/sdk/mraid/MraidView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setId(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private getDisplayRotation()I
    .registers 3

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    return v0
.end method

.method private initialize()V
    .registers 5

    sget-object v0, Lcom/adsdk/sdk/mraid/MraidView$ViewState;->LOADING:Lcom/adsdk/sdk/mraid/MraidView$ViewState;

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mViewState:Lcom/adsdk/sdk/mraid/MraidView$ViewState;

    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->initializeScreenMetrics()V

    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->initializeViewabilityTimer()V

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mOrientationBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private initializeScreenMetrics()V
    .registers 9

    const/4 v2, 0x0

    const-wide/high16 v6, 0x4064000000000000L

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v0, "window"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v3, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mDensity:F

    instance-of v0, v1, Landroid/app/Activity;

    if-eqz v0, :cond_65

    move-object v0, v1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v2, v1, Landroid/graphics/Rect;->top:I

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_48
    iget v1, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int v2, v4, v2

    sub-int v0, v2, v0

    int-to-double v1, v1

    iget v4, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-double v4, v4

    div-double v4, v6, v4

    mul-double/2addr v1, v4

    double-to-int v1, v1

    iput v1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mScreenWidth:I

    int-to-double v0, v0

    iget v2, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-double v2, v2

    div-double v2, v6, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mScreenHeight:I

    return-void

    :cond_65
    move v0, v2

    goto :goto_48
.end method

.method private initializeViewabilityTimer()V
    .registers 3

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mCheckViewabilityTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mCheckViewabilityTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onOrientationChanged(I)V
    .registers 5

    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->initializeScreenMetrics()V

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v0

    iget v1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mScreenWidth:I

    iget v2, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mScreenHeight:I

    invoke-static {v1, v2}, Lcom/adsdk/sdk/mraid/MraidScreenSizeProperty;->createWithSize(II)Lcom/adsdk/sdk/mraid/MraidScreenSizeProperty;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/mraid/MraidView;->fireChangeEventForProperty(Lcom/adsdk/sdk/mraid/MraidProperty;)V

    return-void
.end method

.method private resetViewToDefaultState()V
    .registers 4

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mRootView:Landroid/widget/FrameLayout;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mRootView:Landroid/widget/FrameLayout;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->setNativeCloseButtonEnabled(Z)V

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViewsInLayout()V

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidView;->requestLayout()V

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mPlaceholderView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v1

    iget v2, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mViewIndexInParent:I

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mPlaceholderView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method private setOrientationLockEnabled(Z)V
    .registers 4

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidView;->getContext()Landroid/content/Context;

    move-result-object v0

    :try_start_8
    check-cast v0, Landroid/app/Activity;

    if-eqz p1, :cond_1a

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    :goto_16
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :goto_19
    return-void

    :cond_1a
    iget v1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mOriginalRequestedOrientation:I
    :try_end_1c
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_1c} :catch_1d

    goto :goto_16

    :catch_1d
    move-exception v0

    goto :goto_19
.end method

.method private swapViewWithPlaceholderView()V
    .registers 7

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_d

    :goto_c
    return-void

    :cond_d
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adsdk/sdk/mraid/MraidView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mPlaceholderView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v1, 0x0

    :goto_21
    if-lt v1, v2, :cond_47

    :cond_23
    iput v1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mViewIndexInParent:I

    iget-object v2, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mPlaceholderView:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adsdk/sdk/mraid/MraidView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/adsdk/sdk/mraid/MraidView;->getHeight()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_c

    :cond_47
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v4

    if-eq v3, v4, :cond_23

    add-int/lit8 v1, v1, 0x1

    goto :goto_21
.end method


# virtual methods
.method protected checkViewable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected close()V
    .registers 4

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mViewState:Lcom/adsdk/sdk/mraid/MraidView$ViewState;

    sget-object v1, Lcom/adsdk/sdk/mraid/MraidView$ViewState;->EXPANDED:Lcom/adsdk/sdk/mraid/MraidView$ViewState;

    if-ne v0, v1, :cond_3a

    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->resetViewToDefaultState()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->setOrientationLockEnabled(Z)V

    sget-object v0, Lcom/adsdk/sdk/mraid/MraidView$ViewState;->DEFAULT:Lcom/adsdk/sdk/mraid/MraidView$ViewState;

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mViewState:Lcom/adsdk/sdk/mraid/MraidView$ViewState;

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mViewState:Lcom/adsdk/sdk/mraid/MraidView$ViewState;

    invoke-static {v1}, Lcom/adsdk/sdk/mraid/MraidStateProperty;->createWithViewState(Lcom/adsdk/sdk/mraid/MraidView$ViewState;)Lcom/adsdk/sdk/mraid/MraidStateProperty;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/mraid/MraidView;->fireChangeEventForProperty(Lcom/adsdk/sdk/mraid/MraidProperty;)V

    :cond_1e
    :goto_1e
    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidView;->getOnCloseListener()Lcom/adsdk/sdk/mraid/MraidView$OnCloseListener;

    move-result-object v0

    if-eqz v0, :cond_39

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidView;->getOnCloseListener()Lcom/adsdk/sdk/mraid/MraidView$OnCloseListener;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v1

    iget-object v2, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mViewState:Lcom/adsdk/sdk/mraid/MraidView$ViewState;

    invoke-interface {v0, v1, v2}, Lcom/adsdk/sdk/mraid/MraidView$OnCloseListener;->onClose(Lcom/adsdk/sdk/mraid/MraidView;Lcom/adsdk/sdk/mraid/MraidView$ViewState;)V

    :cond_39
    return-void

    :cond_3a
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mViewState:Lcom/adsdk/sdk/mraid/MraidView$ViewState;

    sget-object v1, Lcom/adsdk/sdk/mraid/MraidView$ViewState;->DEFAULT:Lcom/adsdk/sdk/mraid/MraidView$ViewState;

    if-ne v0, v1, :cond_1e

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/mraid/MraidView;->setVisibility(I)V

    sget-object v0, Lcom/adsdk/sdk/mraid/MraidView$ViewState;->HIDDEN:Lcom/adsdk/sdk/mraid/MraidView$ViewState;

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mViewState:Lcom/adsdk/sdk/mraid/MraidView$ViewState;

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mViewState:Lcom/adsdk/sdk/mraid/MraidView$ViewState;

    invoke-static {v1}, Lcom/adsdk/sdk/mraid/MraidStateProperty;->createWithViewState(Lcom/adsdk/sdk/mraid/MraidView$ViewState;)Lcom/adsdk/sdk/mraid/MraidStateProperty;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/mraid/MraidView;->fireChangeEventForProperty(Lcom/adsdk/sdk/mraid/MraidProperty;)V

    goto :goto_1e
.end method

.method public destroy()V
    .registers 4

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mCheckViewabilityTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :try_start_7
    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mOrientationBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_14} :catch_15

    :cond_14
    return-void

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Receiver not registered"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    throw v0
.end method

.method protected expand(Ljava/lang/String;IIZZ)V
    .registers 12

    const/4 v5, -0x1

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mExpansionStyle:Lcom/adsdk/sdk/mraid/MraidView$ExpansionStyle;

    sget-object v1, Lcom/adsdk/sdk/mraid/MraidView$ExpansionStyle;->DISABLED:Lcom/adsdk/sdk/mraid/MraidView$ExpansionStyle;

    if-ne v0, v1, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    if-eqz p1, :cond_1c

    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v0

    const-string v1, "expand"

    const-string v2, "URL passed to expand() was invalid."

    invoke-virtual {v0, v1, v2}, Lcom/adsdk/sdk/mraid/MraidView;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_1c
    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p4}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->useCustomClose(Z)V

    invoke-direct {p0, p5}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->setOrientationLockEnabled(Z)V

    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->swapViewWithPlaceholderView()V

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v0

    if-eqz p1, :cond_64

    new-instance v0, Lcom/adsdk/sdk/mraid/MraidView;

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adsdk/sdk/mraid/MraidView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/adsdk/sdk/mraid/MraidView$ExpansionStyle;->DISABLED:Lcom/adsdk/sdk/mraid/MraidView$ExpansionStyle;

    sget-object v3, Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;->AD_CONTROLLED:Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;

    sget-object v4, Lcom/adsdk/sdk/mraid/MraidView$PlacementType;->INLINE:Lcom/adsdk/sdk/mraid/MraidView$PlacementType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/adsdk/sdk/mraid/MraidView;-><init>(Landroid/content/Context;Lcom/adsdk/sdk/mraid/MraidView$ExpansionStyle;Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;Lcom/adsdk/sdk/mraid/MraidView$PlacementType;)V

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mTwoPartExpansionView:Lcom/adsdk/sdk/mraid/MraidView;

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mTwoPartExpansionView:Lcom/adsdk/sdk/mraid/MraidView;

    new-instance v1, Lcom/adsdk/sdk/mraid/MraidDisplayController$3;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController$3;-><init>(Lcom/adsdk/sdk/mraid/MraidDisplayController;)V

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/mraid/MraidView;->setOnCloseListener(Lcom/adsdk/sdk/mraid/MraidView$OnCloseListener;)V

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mTwoPartExpansionView:Lcom/adsdk/sdk/mraid/MraidView;

    invoke-virtual {v0, p1}, Lcom/adsdk/sdk/mraid/MraidView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mTwoPartExpansionView:Lcom/adsdk/sdk/mraid/MraidView;

    :cond_64
    int-to-float v1, p2

    iget v2, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mDensity:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v2, p3

    iget v3, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mDensity:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {p0, v0, v1, v2}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->createExpansionViewContainer(Landroid/view/View;II)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mRootView:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mNativeCloseButtonStyle:Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;

    sget-object v1, Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;->ALWAYS_VISIBLE:Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;

    if-eq v0, v1, :cond_8c

    iget-boolean v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mAdWantsCustomCloseButton:Z

    if-nez v0, :cond_90

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mNativeCloseButtonStyle:Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;

    sget-object v1, Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;->ALWAYS_HIDDEN:Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;

    if-eq v0, v1, :cond_90

    :cond_8c
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->setNativeCloseButtonEnabled(Z)V

    :cond_90
    sget-object v0, Lcom/adsdk/sdk/mraid/MraidView$ViewState;->EXPANDED:Lcom/adsdk/sdk/mraid/MraidView$ViewState;

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mViewState:Lcom/adsdk/sdk/mraid/MraidView$ViewState;

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mViewState:Lcom/adsdk/sdk/mraid/MraidView$ViewState;

    invoke-static {v1}, Lcom/adsdk/sdk/mraid/MraidStateProperty;->createWithViewState(Lcom/adsdk/sdk/mraid/MraidView$ViewState;)Lcom/adsdk/sdk/mraid/MraidStateProperty;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/mraid/MraidView;->fireChangeEventForProperty(Lcom/adsdk/sdk/mraid/MraidProperty;)V

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidView;->getOnExpandListener()Lcom/adsdk/sdk/mraid/MraidView$OnExpandListener;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidView;->getOnExpandListener()Lcom/adsdk/sdk/mraid/MraidView$OnExpandListener;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adsdk/sdk/mraid/MraidView$OnExpandListener;->onExpand(Lcom/adsdk/sdk/mraid/MraidView;)V

    goto/16 :goto_7
.end method

.method protected initializeJavaScriptState()V
    .registers 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mScreenWidth:I

    iget v2, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mScreenHeight:I

    invoke-static {v1, v2}, Lcom/adsdk/sdk/mraid/MraidScreenSizeProperty;->createWithSize(II)Lcom/adsdk/sdk/mraid/MraidScreenSizeProperty;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mIsViewable:Z

    invoke-static {v1}, Lcom/adsdk/sdk/mraid/MraidViewableProperty;->createWithViewable(Z)Lcom/adsdk/sdk/mraid/MraidViewableProperty;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adsdk/sdk/mraid/MraidView;->fireChangeEventForProperties(Ljava/util/ArrayList;)V

    sget-object v0, Lcom/adsdk/sdk/mraid/MraidView$ViewState;->DEFAULT:Lcom/adsdk/sdk/mraid/MraidView$ViewState;

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mViewState:Lcom/adsdk/sdk/mraid/MraidView$ViewState;

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mViewState:Lcom/adsdk/sdk/mraid/MraidView$ViewState;

    invoke-static {v1}, Lcom/adsdk/sdk/mraid/MraidStateProperty;->createWithViewState(Lcom/adsdk/sdk/mraid/MraidView$ViewState;)Lcom/adsdk/sdk/mraid/MraidStateProperty;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/mraid/MraidView;->fireChangeEventForProperty(Lcom/adsdk/sdk/mraid/MraidProperty;)V

    return-void
.end method

.method protected isExpanded()Z
    .registers 3

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mViewState:Lcom/adsdk/sdk/mraid/MraidView$ViewState;

    sget-object v1, Lcom/adsdk/sdk/mraid/MraidView$ViewState;->EXPANDED:Lcom/adsdk/sdk/mraid/MraidView$ViewState;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected setNativeCloseButtonEnabled(Z)V
    .registers 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, -0x1d

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mRootView:Landroid/widget/FrameLayout;

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mRootView:Landroid/widget/FrameLayout;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-eqz p1, :cond_95

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mCloseButton:Landroid/widget/ImageView;

    if-nez v1, :cond_6e

    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    new-array v2, v6, [I

    const v3, -0x10100a7

    aput v3, v2, v5

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adsdk/sdk/mraid/MraidView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/adsdk/sdk/video/ResourceManager;->getStaticResource(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v2, v6, [I

    const v3, 0x10100a7

    aput v3, v2, v5

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adsdk/sdk/mraid/MraidView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/adsdk/sdk/video/ResourceManager;->getStaticResource(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-instance v2, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adsdk/sdk/mraid/MraidView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mCloseButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mCloseButton:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mCloseButton:Landroid/widget/ImageView;

    new-instance v2, Lcom/adsdk/sdk/mraid/MraidDisplayController$5;

    invoke-direct {v2, p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController$5;-><init>(Lcom/adsdk/sdk/mraid/MraidDisplayController;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6e
    const/high16 v1, 0x42480000

    iget v2, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mDensity:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000

    add-float/2addr v1, v2

    float-to-int v1, v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, 0x5

    invoke-direct {v2, v1, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_82
    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidView;->getOnCloseButtonStateChangeListener()Lcom/adsdk/sdk/mraid/MraidView$OnCloseButtonStateChangeListener;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidView;->getOnCloseButtonStateChangeListener()Lcom/adsdk/sdk/mraid/MraidView$OnCloseButtonStateChangeListener;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/adsdk/sdk/mraid/MraidView$OnCloseButtonStateChangeListener;->onCloseButtonStateChange(Lcom/adsdk/sdk/mraid/MraidView;Z)V

    goto/16 :goto_8

    :cond_95
    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_82
.end method

.method protected useCustomClose(Z)V
    .registers 5

    iput-boolean p1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mAdWantsCustomCloseButton:Z

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v1

    if-eqz p1, :cond_17

    const/4 v0, 0x0

    :goto_9
    invoke-virtual {v1}, Lcom/adsdk/sdk/mraid/MraidView;->getOnCloseButtonStateChangeListener()Lcom/adsdk/sdk/mraid/MraidView$OnCloseButtonStateChangeListener;

    move-result-object v2

    if-eqz v2, :cond_16

    invoke-virtual {v1}, Lcom/adsdk/sdk/mraid/MraidView;->getOnCloseButtonStateChangeListener()Lcom/adsdk/sdk/mraid/MraidView$OnCloseButtonStateChangeListener;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/adsdk/sdk/mraid/MraidView$OnCloseButtonStateChangeListener;->onCloseButtonStateChange(Lcom/adsdk/sdk/mraid/MraidView;Z)V

    :cond_16
    return-void

    :cond_17
    const/4 v0, 0x1

    goto :goto_9
.end method
