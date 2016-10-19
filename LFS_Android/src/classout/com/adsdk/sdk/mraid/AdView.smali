.class public Lcom/adsdk/sdk/mraid/AdView;
.super Landroid/webkit/WebView;


# static fields
.field public static final AD_ORIENTATION_BOTH:Ljava/lang/String; = "b"

.field public static final AD_ORIENTATION_LANDSCAPE_ONLY:Ljava/lang/String; = "l"

.field public static final AD_ORIENTATION_PORTRAIT_ONLY:Ljava/lang/String; = "p"

.field public static final DEVICE_ORIENTATION_LANDSCAPE:Ljava/lang/String; = "l"

.field public static final DEVICE_ORIENTATION_PORTRAIT:Ljava/lang/String; = "p"

.field public static final DEVICE_ORIENTATION_SQUARE:Ljava/lang/String; = "s"

.field public static final DEVICE_ORIENTATION_UNKNOWN:Ljava/lang/String; = "u"

.field public static final EXTRA_AD_CLICK_DATA:Ljava/lang/String; = "com.mopub.intent.extra.AD_CLICK_DATA"

.field private static final MINIMUM_REFRESH_TIME_MILLISECONDS:I = 0x2710

.field private static final WRAP_AND_CENTER_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;


# instance fields
.field private mAdOrientation:Ljava/lang/String;

.field private mAdUnitId:Ljava/lang/String;

.field private mAutorefreshEnabled:Z

.field private mClickthroughUrl:Ljava/lang/String;

.field private mFailUrl:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mImpressionUrl:Ljava/lang/String;

.field private mIsDestroyed:Z

.field private mIsLoading:Z

.field private mKeywords:Ljava/lang/String;

.field private mLocation:Landroid/location/Location;

.field protected mMoPubView:Lcom/adsdk/sdk/mraid/MoPubView;

.field private mRedirectUrl:Ljava/lang/String;

.field private mRefreshHandler:Landroid/os/Handler;

.field private mRefreshRunnable:Ljava/lang/Runnable;

.field private mRefreshTimeMilliseconds:I

.field private mResponse:Lcom/adsdk/sdk/BannerAd;

.field private mResponseString:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field private mUserAgent:Ljava/lang/String;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, -0x2

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    sput-object v0, Lcom/adsdk/sdk/mraid/AdView;->WRAP_AND_CENTER_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/adsdk/sdk/mraid/MoPubView;Lcom/adsdk/sdk/BannerAd;)V
    .registers 6

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const v0, 0xea60

    iput v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mRefreshTimeMilliseconds:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mRefreshHandler:Landroid/os/Handler;

    new-instance v0, Lcom/adsdk/sdk/mraid/AdView$1;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/mraid/AdView$1;-><init>(Lcom/adsdk/sdk/mraid/AdView;)V

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mRefreshRunnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/adsdk/sdk/mraid/AdView;->mResponse:Lcom/adsdk/sdk/BannerAd;

    iput-object p2, p0, Lcom/adsdk/sdk/mraid/AdView;->mMoPubView:Lcom/adsdk/sdk/mraid/MoPubView;

    iput-boolean v1, p0, Lcom/adsdk/sdk/mraid/AdView;->mAutorefreshEnabled:Z

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/AdView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mUserAgent:Ljava/lang/String;

    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/AdView;->disableScrollingAndZoom()V

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/AdView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/AdView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/AdView;->setBackgroundColor(I)V

    new-instance v0, Lcom/adsdk/sdk/mraid/AdView$AdWebViewClient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/adsdk/sdk/mraid/AdView$AdWebViewClient;-><init>(Lcom/adsdk/sdk/mraid/AdView;Lcom/adsdk/sdk/mraid/AdView$AdWebViewClient;)V

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/AdView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/AdView;->addMoPubUriJavascriptInterface()V

    return-void
.end method

.method static synthetic access$0(Lcom/adsdk/sdk/mraid/AdView;)V
    .registers 1

    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/AdView;->adDidLoad()V

    return-void
.end method

.method static synthetic access$1(Lcom/adsdk/sdk/mraid/AdView;)V
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mMoPubView:Lcom/adsdk/sdk/mraid/MoPubView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MoPubView;->adClosed()V

    return-void
.end method

.method static synthetic access$2(Lcom/adsdk/sdk/mraid/AdView;Landroid/net/Uri;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/adsdk/sdk/mraid/AdView;->handleCustomIntentFromUri(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$3(Lcom/adsdk/sdk/mraid/AdView;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/adsdk/sdk/mraid/AdView;->showBrowserForUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(Lcom/adsdk/sdk/mraid/AdView;Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/adsdk/sdk/mraid/AdView;->postHandlerRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$5(Lcom/adsdk/sdk/mraid/AdView;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mClickthroughUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/adsdk/sdk/mraid/AdView;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method private adDidClose()V
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mMoPubView:Lcom/adsdk/sdk/mraid/MoPubView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MoPubView;->adClosed()V

    return-void
.end method

.method private adDidFail()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mIsLoading:Z

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/AdView;->scheduleRefreshTimerIfEnabled()V

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mMoPubView:Lcom/adsdk/sdk/mraid/MoPubView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MoPubView;->adFailed()V

    return-void
.end method

.method private adDidLoad()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mIsLoading:Z

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/AdView;->scheduleRefreshTimerIfEnabled()V

    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/AdView;->getHtmlAdLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-direct {p0, p0, v0}, Lcom/adsdk/sdk/mraid/AdView;->setAdContentView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mMoPubView:Lcom/adsdk/sdk/mraid/MoPubView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MoPubView;->adLoaded()V

    return-void
.end method

.method private addKeyword(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    :cond_8
    move-object p2, p1

    :cond_9
    :goto_9
    return-object p2

    :cond_a
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_9
.end method

.method private addMoPubUriJavascriptInterface()V
    .registers 3

    new-instance v0, Lcom/adsdk/sdk/mraid/AdView$1MoPubUriJavascriptInterface;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/mraid/AdView$1MoPubUriJavascriptInterface;-><init>(Lcom/adsdk/sdk/mraid/AdView;)V

    const-string v1, "mopubUriInterface"

    invoke-virtual {p0, v0, v1}, Lcom/adsdk/sdk/mraid/AdView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private disableScrollingAndZoom()V
    .registers 3

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/adsdk/sdk/mraid/AdView;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/adsdk/sdk/mraid/AdView;->setHorizontalScrollbarOverlay(Z)V

    invoke-virtual {p0, v1}, Lcom/adsdk/sdk/mraid/AdView;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/adsdk/sdk/mraid/AdView;->setVerticalScrollbarOverlay(Z)V

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/AdView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    return-void
.end method

.method private getHtmlAdLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .registers 5

    const/4 v3, 0x1

    iget v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mWidth:I

    if-lez v0, :cond_2d

    iget v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mHeight:I

    if-lez v0, :cond_2d

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, p0, Lcom/adsdk/sdk/mraid/AdView;->mWidth:I

    int-to-float v1, v1

    invoke-static {v3, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/adsdk/sdk/mraid/AdView;->mHeight:I

    int-to-float v2, v2

    invoke-static {v3, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v2, v0

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    :goto_2c
    return-object v0

    :cond_2d
    sget-object v0, Lcom/adsdk/sdk/mraid/AdView;->WRAP_AND_CENTER_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    goto :goto_2c
.end method

.method private getLastKnownLocation()Landroid/location/Location;
    .registers 11

    const/4 v9, 0x5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mMoPubView:Lcom/adsdk/sdk/mraid/MoPubView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MoPubView;->getLocationAwareness()Lcom/adsdk/sdk/mraid/MoPubView$LocationAwareness;

    move-result-object v3

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mMoPubView:Lcom/adsdk/sdk/mraid/MoPubView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MoPubView;->getLocationPrecision()I

    move-result v4

    sget-object v0, Lcom/adsdk/sdk/mraid/MoPubView$LocationAwareness;->LOCATION_AWARENESS_DISABLED:Lcom/adsdk/sdk/mraid/MoPubView$LocationAwareness;

    if-ne v3, v0, :cond_13

    :cond_12
    :goto_12
    return-object v2

    :cond_13
    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    :try_start_1f
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_24
    .catch Ljava/lang/SecurityException; {:try_start_1f .. :try_end_24} :catch_6b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f .. :try_end_24} :catch_6e

    move-result-object v1

    :goto_25
    :try_start_25
    const-string v5, "network"

    invoke-virtual {v0, v5}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_2a
    .catch Ljava/lang/SecurityException; {:try_start_25 .. :try_end_2a} :catch_71
    .catch Ljava/lang/IllegalArgumentException; {:try_start_25 .. :try_end_2a} :catch_74

    move-result-object v0

    :goto_2b
    if-nez v1, :cond_2f

    if-eqz v0, :cond_12

    :cond_2f
    if-eqz v1, :cond_79

    if-eqz v0, :cond_79

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v7

    cmp-long v2, v5, v7

    if-lez v2, :cond_77

    :cond_3f
    :goto_3f
    sget-object v0, Lcom/adsdk/sdk/mraid/MoPubView$LocationAwareness;->LOCATION_AWARENESS_TRUNCATED:Lcom/adsdk/sdk/mraid/MoPubView$LocationAwareness;

    if-ne v3, v0, :cond_69

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0, v4, v9}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0, v4, v9}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    :cond_69
    move-object v2, v1

    goto :goto_12

    :catch_6b
    move-exception v1

    move-object v1, v2

    goto :goto_25

    :catch_6e
    move-exception v1

    move-object v1, v2

    goto :goto_25

    :catch_71
    move-exception v0

    move-object v0, v2

    goto :goto_2b

    :catch_74
    move-exception v0

    move-object v0, v2

    goto :goto_2b

    :cond_77
    move-object v1, v0

    goto :goto_3f

    :cond_79
    if-nez v1, :cond_3f

    move-object v1, v0

    goto :goto_3f
.end method

.method private getTimeZoneOffsetString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "Z"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleCustomIntentFromUri(Landroid/net/Uri;)V
    .registers 6

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/AdView;->registerClick()V

    const-string v0, "fnc"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz v1, :cond_20

    const-string v3, "com.mopub.intent.extra.AD_CLICK_DATA"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_20
    :try_start_20
    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/AdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_27
    .catch Landroid/content/ActivityNotFoundException; {:try_start_20 .. :try_end_27} :catch_28

    :goto_27
    return-void

    :catch_28
    move-exception v1

    const-string v1, "MoPub"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not handle custom intent: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ". Is your intent spelled correctly?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27
.end method

.method private isNetworkAvailable()Z
    .registers 4

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_10

    move v0, v1

    :goto_f
    return v0

    :cond_10
    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2a

    move v0, v1

    goto :goto_f

    :cond_2a
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private postHandlerRunnable(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setAdContentView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 4

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mMoPubView:Lcom/adsdk/sdk/mraid/MoPubView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MoPubView;->removeAllViews()V

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mMoPubView:Lcom/adsdk/sdk/mraid/MoPubView;

    invoke-virtual {v0, p1, p2}, Lcom/adsdk/sdk/mraid/MoPubView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setWebViewScrollingEnabled(Z)V
    .registers 3

    if-eqz p1, :cond_7

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/AdView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_6
    return-void

    :cond_7
    new-instance v0, Lcom/adsdk/sdk/mraid/AdView$2;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/mraid/AdView$2;-><init>(Lcom/adsdk/sdk/mraid/AdView;)V

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/AdView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_6
.end method

.method private showBrowserForUrl(Ljava/lang/String;)V
    .registers 7

    const/high16 v4, 0x10000000

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/AdView;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_8
    return-void

    :cond_9
    if-eqz p1, :cond_13

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_13
    const-string p1, "about:blank"

    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Final URI to show in browser: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ".mp4"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_43

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "video/mp4"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_8

    :cond_43
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/adsdk/sdk/banner/InAppWebView;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "REDIRECT_URI"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_52
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_55
    .catch Landroid/content/ActivityNotFoundException; {:try_start_52 .. :try_end_55} :catch_56

    goto :goto_8

    :catch_56
    move-exception v0

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MoPub"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not handle intent action: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ". Perhaps you forgot to declare com.adsdk.sdk.mraid.MraidBrowser in your Android manifest file."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "about:blank"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_8
.end method


# virtual methods
.method protected adAppeared()V
    .registers 2

    const-string v0, "javascript:webviewDidAppear();"

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/AdView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method protected cancelRefreshTimer()V
    .registers 3

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mRefreshHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/AdView;->mRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected cleanup()V
    .registers 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mIsDestroyed:Z

    if-eqz v0, :cond_6

    :goto_5
    return-void

    :cond_6
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/AdView;->setAutorefreshEnabled(Z)V

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/AdView;->cancelRefreshTimer()V

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/AdView;->destroy()V

    iput-object v1, p0, Lcom/adsdk/sdk/mraid/AdView;->mResponseString:Ljava/lang/String;

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mMoPubView:Lcom/adsdk/sdk/mraid/MoPubView;

    invoke-virtual {v0, p0}, Lcom/adsdk/sdk/mraid/MoPubView;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/adsdk/sdk/mraid/AdView;->mMoPubView:Lcom/adsdk/sdk/mraid/MoPubView;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mIsDestroyed:Z

    goto :goto_5
.end method

.method protected configureAdViewUsingHeadersFromHttpResponse(Lorg/apache/http/HttpResponse;)V
    .registers 8

    const/16 v5, 0x2710

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v0, "X-Networktype"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_1e

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Fetching ad network type: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_1e
    const-string v0, "X-Launchpage"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_c4

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mRedirectUrl:Ljava/lang/String;

    :goto_2c
    const-string v0, "X-Clickthrough"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_c8

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mClickthroughUrl:Ljava/lang/String;

    :goto_3a
    const-string v0, "X-Failurl"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_cc

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mFailUrl:Ljava/lang/String;

    :goto_48
    const-string v0, "X-Imptracker"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_d0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mImpressionUrl:Ljava/lang/String;

    :goto_56
    const-string v0, "X-Scrollable"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_dd

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_68
    invoke-direct {p0, v0}, Lcom/adsdk/sdk/mraid/AdView;->setWebViewScrollingEnabled(Z)V

    const-string v0, "X-Width"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    const-string v3, "X-Height"

    invoke-interface {p1, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    if-eqz v0, :cond_d3

    if-eqz v3, :cond_d3

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mWidth:I

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mHeight:I

    :goto_97
    const-string v0, "X-Refreshtime"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_d8

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mRefreshTimeMilliseconds:I

    iget v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mRefreshTimeMilliseconds:I

    if-ge v0, v5, :cond_b5

    iput v5, p0, Lcom/adsdk/sdk/mraid/AdView;->mRefreshTimeMilliseconds:I

    :cond_b5
    :goto_b5
    const-string v0, "X-Orientation"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_db

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    :goto_c1
    iput-object v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mAdOrientation:Ljava/lang/String;

    return-void

    :cond_c4
    iput-object v2, p0, Lcom/adsdk/sdk/mraid/AdView;->mRedirectUrl:Ljava/lang/String;

    goto/16 :goto_2c

    :cond_c8
    iput-object v2, p0, Lcom/adsdk/sdk/mraid/AdView;->mClickthroughUrl:Ljava/lang/String;

    goto/16 :goto_3a

    :cond_cc
    iput-object v2, p0, Lcom/adsdk/sdk/mraid/AdView;->mFailUrl:Ljava/lang/String;

    goto/16 :goto_48

    :cond_d0
    iput-object v2, p0, Lcom/adsdk/sdk/mraid/AdView;->mImpressionUrl:Ljava/lang/String;

    goto :goto_56

    :cond_d3
    iput v1, p0, Lcom/adsdk/sdk/mraid/AdView;->mWidth:I

    iput v1, p0, Lcom/adsdk/sdk/mraid/AdView;->mHeight:I

    goto :goto_97

    :cond_d8
    iput v1, p0, Lcom/adsdk/sdk/mraid/AdView;->mRefreshTimeMilliseconds:I

    goto :goto_b5

    :cond_db
    move-object v0, v2

    goto :goto_c1

    :cond_dd
    move v0, v1

    goto :goto_68
.end method

.method public customEventActionWillBegin()V
    .registers 1

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/AdView;->registerClick()V

    return-void
.end method

.method public customEventDidFailToLoadAd()V
    .registers 1

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/AdView;->loadFailUrl()V

    return-void
.end method

.method public customEventDidLoadAd()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mIsLoading:Z

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/AdView;->scheduleRefreshTimerIfEnabled()V

    return-void
.end method

.method public forceRefresh()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mIsLoading:Z

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/AdView;->loadAd()V

    return-void
.end method

.method public getAdHeight()I
    .registers 2

    iget v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mHeight:I

    return v0
.end method

.method public getAdOrientation()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mAdOrientation:Ljava/lang/String;

    return-object v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mAdUnitId:Ljava/lang/String;

    return-object v0
.end method

.method public getAdWidth()I
    .registers 2

    iget v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mWidth:I

    return v0
.end method

.method public getAutorefreshEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mAutorefreshEnabled:Z

    return v0
.end method

.method public getClickthroughUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mClickthroughUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getKeywords()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mKeywords:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method public getRedirectUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mRedirectUrl:Ljava/lang/String;

    return-object v0
.end method

.method protected getRefreshTimeMilliseconds()I
    .registers 2

    iget v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mRefreshTimeMilliseconds:I

    return v0
.end method

.method public getResponseString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mResponseString:Ljava/lang/String;

    return-object v0
.end method

.method protected isDestroyed()Z
    .registers 2

    iget-boolean v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mIsDestroyed:Z

    return v0
.end method

.method public loadAd()V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "X-Adtype"

    const-string v2, "mraid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "X-Nativeparams"

    iget-object v2, p0, Lcom/adsdk/sdk/mraid/AdView;->mResponse:Lcom/adsdk/sdk/BannerAd;

    invoke-virtual {v2}, Lcom/adsdk/sdk/BannerAd;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/AdView;->mMoPubView:Lcom/adsdk/sdk/mraid/MoPubView;

    invoke-virtual {v1, v0}, Lcom/adsdk/sdk/mraid/MoPubView;->loadNativeSDK(Ljava/util/HashMap;)V

    return-void
.end method

.method public loadFailUrl()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mIsLoading:Z

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mFailUrl:Ljava/lang/String;

    if-eqz v0, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Loading failover url: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/AdView;->mFailUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mFailUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/AdView;->loadUrl(Ljava/lang/String;)V

    :goto_1c
    return-void

    :cond_1d
    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/AdView;->adDidFail()V

    goto :goto_1c
.end method

.method protected registerClick()V
    .registers 3

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mClickthroughUrl:Ljava/lang/String;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/adsdk/sdk/mraid/AdView$3;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/mraid/AdView$3;-><init>(Lcom/adsdk/sdk/mraid/AdView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_4
.end method

.method public reload()V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Reload ad: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/AdView;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/AdView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method protected scheduleRefreshTimerIfEnabled()V
    .registers 5

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/AdView;->cancelRefreshTimer()V

    iget-boolean v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mAutorefreshEnabled:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mRefreshTimeMilliseconds:I

    if-gtz v0, :cond_c

    :cond_b
    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mRefreshHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/AdView;->mRefreshRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/adsdk/sdk/mraid/AdView;->mRefreshTimeMilliseconds:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_b
.end method

.method public setAdContentView(Landroid/view/View;)V
    .registers 3

    sget-object v0, Lcom/adsdk/sdk/mraid/AdView;->WRAP_AND_CENTER_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0, p1, v0}, Lcom/adsdk/sdk/mraid/AdView;->setAdContentView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    return-void
.end method

.method public setAdUnitId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/mraid/AdView;->mAdUnitId:Ljava/lang/String;

    return-void
.end method

.method public setAutorefreshEnabled(Z)V
    .registers 4

    iput-boolean p1, p0, Lcom/adsdk/sdk/mraid/AdView;->mAutorefreshEnabled:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Automatic refresh for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/AdView;->mAdUnitId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " set to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-boolean v0, p0, Lcom/adsdk/sdk/mraid/AdView;->mAutorefreshEnabled:Z

    if-nez v0, :cond_2a

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/AdView;->cancelRefreshTimer()V

    :goto_29
    return-void

    :cond_2a
    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/AdView;->scheduleRefreshTimerIfEnabled()V

    goto :goto_29
.end method

.method public setClickthroughUrl(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/mraid/AdView;->mClickthroughUrl:Ljava/lang/String;

    return-void
.end method

.method protected setIsLoading(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/adsdk/sdk/mraid/AdView;->mIsLoading:Z

    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/mraid/AdView;->mKeywords:Ljava/lang/String;

    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/mraid/AdView;->mLocation:Landroid/location/Location;

    return-void
.end method

.method protected setRefreshTimeMilliseconds(I)V
    .registers 2

    iput p1, p0, Lcom/adsdk/sdk/mraid/AdView;->mRefreshTimeMilliseconds:I

    return-void
.end method

.method protected setResponseString(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/mraid/AdView;->mResponseString:Ljava/lang/String;

    return-void
.end method
