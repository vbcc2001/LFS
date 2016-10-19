.class public Lcom/adsdk/sdk/banner/BannerAdView;
.super Landroid/widget/RelativeLayout;


# static fields
.field public static final LIVE:I = 0x0

.field public static final TEST:I = 0x1

.field private static mWebView_LAYER_TYPE_SOFTWARE:Ljava/lang/reflect/Field;

.field private static mWebView_SetLayerType:Ljava/lang/reflect/Method;


# instance fields
.field private adListener:Lcom/adsdk/sdk/AdListener;

.field private animation:Z

.field private fadeInAnimation:Landroid/view/animation/Animation;

.field private fadeOutAnimation:Landroid/view/animation/Animation;

.field private firstWebView:Landroid/webkit/WebView;

.field private isInternalBrowser:Z

.field private mContext:Landroid/content/Context;

.field protected mIsInForeground:Z

.field private response:Lcom/adsdk/sdk/BannerAd;

.field private secondWebView:Landroid/webkit/WebView;

.field private touchMove:Z

.field private final updateHandler:Landroid/os/Handler;

.field private viewFlipper:Landroid/widget/ViewFlipper;

.field private webSettings:Landroid/webkit/WebSettings;

.field private xml:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    invoke-static {}, Lcom/adsdk/sdk/banner/BannerAdView;->initCompatibility()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/adsdk/sdk/BannerAd;Lcom/adsdk/sdk/AdListener;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/adsdk/sdk/banner/BannerAdView;-><init>(Landroid/content/Context;Lcom/adsdk/sdk/BannerAd;ZLcom/adsdk/sdk/AdListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/adsdk/sdk/BannerAd;ZLcom/adsdk/sdk/AdListener;)V
    .registers 7

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->isInternalBrowser:Z

    iput-object v1, p0, Lcom/adsdk/sdk/banner/BannerAdView;->fadeInAnimation:Landroid/view/animation/Animation;

    iput-object v1, p0, Lcom/adsdk/sdk/banner/BannerAdView;->fadeOutAnimation:Landroid/view/animation/Animation;

    iput-object v1, p0, Lcom/adsdk/sdk/banner/BannerAdView;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->updateHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/adsdk/sdk/banner/BannerAdView;->response:Lcom/adsdk/sdk/BannerAd;

    iput-object p1, p0, Lcom/adsdk/sdk/banner/BannerAdView;->mContext:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/adsdk/sdk/banner/BannerAdView;->animation:Z

    iput-object p4, p0, Lcom/adsdk/sdk/banner/BannerAdView;->adListener:Lcom/adsdk/sdk/AdListener;

    invoke-direct {p0, p1}, Lcom/adsdk/sdk/banner/BannerAdView;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/InputStream;Z)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->isInternalBrowser:Z

    iput-object v1, p0, Lcom/adsdk/sdk/banner/BannerAdView;->fadeInAnimation:Landroid/view/animation/Animation;

    iput-object v1, p0, Lcom/adsdk/sdk/banner/BannerAdView;->fadeOutAnimation:Landroid/view/animation/Animation;

    iput-object v1, p0, Lcom/adsdk/sdk/banner/BannerAdView;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->updateHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/adsdk/sdk/banner/BannerAdView;->xml:Ljava/io/InputStream;

    iput-object p1, p0, Lcom/adsdk/sdk/banner/BannerAdView;->mContext:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/adsdk/sdk/banner/BannerAdView;->animation:Z

    invoke-direct {p0, p1}, Lcom/adsdk/sdk/banner/BannerAdView;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$0(Lcom/adsdk/sdk/banner/BannerAdView;)Lcom/adsdk/sdk/BannerAd;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->response:Lcom/adsdk/sdk/BannerAd;

    return-object v0
.end method

.method static synthetic access$1(Lcom/adsdk/sdk/banner/BannerAdView;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/adsdk/sdk/banner/BannerAdView;->doOpenUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/adsdk/sdk/banner/BannerAdView;)V
    .registers 1

    invoke-direct {p0}, Lcom/adsdk/sdk/banner/BannerAdView;->openLink()V

    return-void
.end method

.method static synthetic access$3(Lcom/adsdk/sdk/banner/BannerAdView;)Lcom/adsdk/sdk/AdListener;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->adListener:Lcom/adsdk/sdk/AdListener;

    return-object v0
.end method

.method private buildBannerView()V
    .registers 12

    const-wide/16 v9, 0x3e8

    const/high16 v7, 0x3f000000

    const/4 v6, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/adsdk/sdk/banner/BannerAdView;->createWebView(Landroid/content/Context;)Landroid/webkit/WebView;

    move-result-object v0

    iput-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->firstWebView:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/adsdk/sdk/banner/BannerAdView;->createWebView(Landroid/content/Context;)Landroid/webkit/WebView;

    move-result-object v0

    iput-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->secondWebView:Landroid/webkit/WebView;

    const-string v0, "ADSDK"

    const-string v3, "Create view flipper"

    invoke-static {v0, v3}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/adsdk/sdk/banner/BannerAdView$3;

    invoke-virtual {p0}, Lcom/adsdk/sdk/banner/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcom/adsdk/sdk/banner/BannerAdView$3;-><init>(Lcom/adsdk/sdk/banner/BannerAdView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->viewFlipper:Landroid/widget/ViewFlipper;

    iget-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v4, 0x43960000

    mul-float/2addr v4, v0

    add-float/2addr v4, v7

    float-to-int v4, v4

    const/high16 v5, 0x42480000

    mul-float/2addr v0, v5

    add-float/2addr v0, v7

    float-to-int v0, v0

    invoke-direct {v3, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3}, Lcom/adsdk/sdk/banner/BannerAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/adsdk/sdk/banner/BannerAdView;->viewFlipper:Landroid/widget/ViewFlipper;

    iget-object v4, p0, Lcom/adsdk/sdk/banner/BannerAdView;->firstWebView:Landroid/webkit/WebView;

    invoke-virtual {v3, v4, v0}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/adsdk/sdk/banner/BannerAdView;->viewFlipper:Landroid/widget/ViewFlipper;

    iget-object v4, p0, Lcom/adsdk/sdk/banner/BannerAdView;->secondWebView:Landroid/webkit/WebView;

    invoke-virtual {v3, v4, v0}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/adsdk/sdk/banner/BannerAdView;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {p0, v3, v0}, Lcom/adsdk/sdk/banner/BannerAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "ADSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "animation: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/adsdk/sdk/banner/BannerAdView;->animation:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->animation:Z

    if-eqz v0, :cond_b2

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, 0x3f800000

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->fadeInAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->fadeInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v8, -0x40800000

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->fadeOutAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->fadeOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->viewFlipper:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/adsdk/sdk/banner/BannerAdView;->fadeInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->viewFlipper:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/adsdk/sdk/banner/BannerAdView;->fadeOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    :cond_b2
    return-void
.end method

.method private createWebView(Landroid/content/Context;)Landroid/webkit/WebView;
    .registers 6

    const/4 v3, 0x0

    new-instance v0, Lcom/adsdk/sdk/banner/BannerAdView$1;

    invoke-virtual {p0}, Lcom/adsdk/sdk/banner/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/adsdk/sdk/banner/BannerAdView$1;-><init>(Lcom/adsdk/sdk/banner/BannerAdView;Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    iput-object v1, p0, Lcom/adsdk/sdk/banner/BannerAdView;->webSettings:Landroid/webkit/WebSettings;

    iget-object v1, p0, Lcom/adsdk/sdk/banner/BannerAdView;->webSettings:Landroid/webkit/WebSettings;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    invoke-static {v0}, Lcom/adsdk/sdk/banner/BannerAdView;->setLayer(Landroid/webkit/WebView;)V

    new-instance v1, Lcom/adsdk/sdk/banner/BannerAdView$2;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/banner/BannerAdView$2;-><init>(Lcom/adsdk/sdk/banner/BannerAdView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    return-object v0
.end method

.method private doOpenUrl(Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Lcom/adsdk/sdk/banner/BannerAdView;->notifyAdClicked()V

    iget-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->response:Lcom/adsdk/sdk/BannerAd;

    invoke-virtual {v0}, Lcom/adsdk/sdk/BannerAd;->getClickType()Lcom/adsdk/sdk/data/ClickType;

    move-result-object v0

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->response:Lcom/adsdk/sdk/BannerAd;

    invoke-virtual {v0}, Lcom/adsdk/sdk/BannerAd;->getClickType()Lcom/adsdk/sdk/data/ClickType;

    move-result-object v0

    sget-object v1, Lcom/adsdk/sdk/data/ClickType;->INAPP:Lcom/adsdk/sdk/data/ClickType;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/data/ClickType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_61

    :cond_29
    const-string v0, ".mp4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "video/mp4"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/adsdk/sdk/banner/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_48
    return-void

    :cond_49
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/adsdk/sdk/banner/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/adsdk/sdk/banner/InAppWebView;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "REDIRECT_URI"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/adsdk/sdk/banner/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_48

    :cond_61
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0}, Lcom/adsdk/sdk/banner/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_48
.end method

.method private static initCompatibility()V
    .registers 6

    :try_start_0
    const-class v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_8
    if-lt v0, v2, :cond_3d

    :goto_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "set layer "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/adsdk/sdk/banner/BannerAdView;->mWebView_SetLayerType:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    const-class v0, Landroid/webkit/WebView;

    const-string v1, "LAYER_TYPE_SOFTWARE"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/adsdk/sdk/banner/BannerAdView;->mWebView_LAYER_TYPE_SOFTWARE:Ljava/lang/reflect/Field;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "set1 layer "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/adsdk/sdk/banner/BannerAdView;->mWebView_LAYER_TYPE_SOFTWARE:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    :goto_3c
    return-void

    :cond_3d
    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "setLayerType"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_55

    sput-object v3, Lcom/adsdk/sdk/banner/BannerAdView;->mWebView_SetLayerType:Ljava/lang/reflect/Method;
    :try_end_4d
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_4d} :catch_4e
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_4d} :catch_58

    goto :goto_a

    :catch_4e
    move-exception v0

    const-string v0, "SecurityException"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    goto :goto_3c

    :cond_55
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :catch_58
    move-exception v0

    const-string v0, "NoSuchFieldException"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    goto :goto_3c
.end method

.method private initialize(Landroid/content/Context;)V
    .registers 2

    invoke-static {}, Lcom/adsdk/sdk/banner/BannerAdView;->initCompatibility()V

    invoke-direct {p0}, Lcom/adsdk/sdk/banner/BannerAdView;->buildBannerView()V

    invoke-direct {p0}, Lcom/adsdk/sdk/banner/BannerAdView;->showContent()V

    return-void
.end method

.method private notifyAdClicked()V
    .registers 3

    iget-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->updateHandler:Landroid/os/Handler;

    new-instance v1, Lcom/adsdk/sdk/banner/BannerAdView$4;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/banner/BannerAdView$4;-><init>(Lcom/adsdk/sdk/banner/BannerAdView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private notifyLoadAdSucceeded()V
    .registers 3

    iget-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->updateHandler:Landroid/os/Handler;

    new-instance v1, Lcom/adsdk/sdk/banner/BannerAdView$5;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/banner/BannerAdView$5;-><init>(Lcom/adsdk/sdk/banner/BannerAdView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private openLink()V
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->response:Lcom/adsdk/sdk/BannerAd;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->response:Lcom/adsdk/sdk/BannerAd;

    invoke-virtual {v0}, Lcom/adsdk/sdk/BannerAd;->getClickUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->response:Lcom/adsdk/sdk/BannerAd;

    invoke-virtual {v0}, Lcom/adsdk/sdk/BannerAd;->getClickUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adsdk/sdk/banner/BannerAdView;->doOpenUrl(Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method private static setLayer(Landroid/webkit/WebView;)V
    .registers 6

    sget-object v0, Lcom/adsdk/sdk/banner/BannerAdView;->mWebView_SetLayerType:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_3e

    sget-object v0, Lcom/adsdk/sdk/banner/BannerAdView;->mWebView_LAYER_TYPE_SOFTWARE:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_3e

    :try_start_8
    const-string v0, "Set Layer is supported"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    sget-object v0, Lcom/adsdk/sdk/banner/BannerAdView;->mWebView_SetLayerType:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/adsdk/sdk/banner/BannerAdView;->mWebView_LAYER_TYPE_SOFTWARE:Ljava/lang/reflect/Field;

    const-class v4, Landroid/webkit/WebView;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_28
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_28} :catch_29
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_28} :catch_30
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_28} :catch_37

    :goto_28
    return-void

    :catch_29
    move-exception v0

    const-string v0, "Set InvocationTargetException"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    goto :goto_28

    :catch_30
    move-exception v0

    const-string v0, "Set IllegalArgumentException"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    goto :goto_28

    :catch_37
    move-exception v0

    const-string v0, "Set IllegalAccessException"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    goto :goto_28

    :cond_3e
    const-string v0, "Set Layer is not supported"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    goto :goto_28
.end method

.method private showContent()V
    .registers 6

    const/4 v2, 0x1

    :try_start_1
    iget-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/banner/BannerAdView;->firstWebView:Landroid/webkit/WebView;

    if-ne v0, v1, :cond_89

    iget-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->secondWebView:Landroid/webkit/WebView;

    :goto_d
    iget-object v1, p0, Lcom/adsdk/sdk/banner/BannerAdView;->response:Lcom/adsdk/sdk/BannerAd;

    invoke-virtual {v1}, Lcom/adsdk/sdk/BannerAd;->getType()I

    move-result v1

    if-nez v1, :cond_8c

    const-string v1, "<body style=\'\"\'margin: 0px; padding: 0px; text-align:center;\'\"\'><img src=\'\"\'{0}\'\"\' width=\'\"\'{1}\'dp\"\' height=\'\"\'{2}\'dp\"\'/></body>"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/adsdk/sdk/banner/BannerAdView;->response:Lcom/adsdk/sdk/BannerAd;

    invoke-virtual {v4}, Lcom/adsdk/sdk/BannerAd;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/adsdk/sdk/banner/BannerAdView;->response:Lcom/adsdk/sdk/BannerAd;

    invoke-virtual {v4}, Lcom/adsdk/sdk/BannerAd;->getBannerWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/adsdk/sdk/banner/BannerAdView;->response:Lcom/adsdk/sdk/BannerAd;

    invoke-virtual {v4}, Lcom/adsdk/sdk/BannerAd;->getBannerHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ADSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "set image: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<style>* { -webkit-tap-highlight-color: rgba(0,0,0,0);} img {width:100%;height:100%}</style>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "text/html"

    const-string v3, "UTF-8"

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/adsdk/sdk/banner/BannerAdView;->notifyLoadAdSucceeded()V

    :cond_72
    :goto_72
    iget-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/banner/BannerAdView;->firstWebView:Landroid/webkit/WebView;

    if-ne v0, v1, :cond_d5

    const-string v0, "ADSDK"

    const-string v1, "show next"

    invoke-static {v0, v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    :goto_88
    return-void

    :cond_89
    iget-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->firstWebView:Landroid/webkit/WebView;

    goto :goto_d

    :cond_8c
    iget-object v1, p0, Lcom/adsdk/sdk/banner/BannerAdView;->response:Lcom/adsdk/sdk/BannerAd;

    invoke-virtual {v1}, Lcom/adsdk/sdk/BannerAd;->getType()I

    move-result v1

    if-ne v1, v2, :cond_72

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<style>* { -webkit-tap-highlight-color: rgba(0,0,0,0);} img {width:100%;height:100%}</style>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/adsdk/sdk/banner/BannerAdView;->response:Lcom/adsdk/sdk/BannerAd;

    invoke-virtual {v2}, Lcom/adsdk/sdk/BannerAd;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ADSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "set text: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "text/html"

    const-string v3, "UTF-8"

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/adsdk/sdk/banner/BannerAdView;->notifyLoadAdSucceeded()V
    :try_end_cb
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_cb} :catch_cc

    goto :goto_72

    :catch_cc
    move-exception v0

    const-string v1, "ADSDK"

    const-string v2, "Exception in show content"

    invoke-static {v1, v2, v0}, Lcom/adsdk/sdk/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_88

    :cond_d5
    :try_start_d5
    const-string v0, "ADSDK"

    const-string v1, "show previous"

    invoke-static {v0, v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showPrevious()V
    :try_end_e1
    .catch Ljava/lang/Throwable; {:try_start_d5 .. :try_end_e1} :catch_cc

    goto :goto_88
.end method


# virtual methods
.method public isInternalBrowser()Z
    .registers 2

    iget-boolean v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->isInternalBrowser:Z

    return v0
.end method

.method public setAdListener(Lcom/adsdk/sdk/AdListener;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/banner/BannerAdView;->adListener:Lcom/adsdk/sdk/AdListener;

    return-void
.end method

.method public setHeight(I)V
    .registers 2

    return-void
.end method

.method public setInternalBrowser(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/adsdk/sdk/banner/BannerAdView;->isInternalBrowser:Z

    return-void
.end method

.method public setWidth(I)V
    .registers 2

    return-void
.end method
