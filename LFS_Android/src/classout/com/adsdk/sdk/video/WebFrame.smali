.class public Lcom/adsdk/sdk/video/WebFrame;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lcom/adsdk/sdk/video/InterstitialController$BrowserControl;


# static fields
.field private static mWebView_LAYER_TYPE_SOFTWARE:Ljava/lang/reflect/Field;

.field private static mWebView_SetLayerType:Ljava/lang/reflect/Method;


# instance fields
.field private enableZoom:Z

.field private mActivity:Landroid/app/Activity;

.field private mController:Lcom/adsdk/sdk/video/InterstitialController;

.field private mExitButton:Landroid/widget/ImageView;

.field private mWebView:Landroid/webkit/WebView;

.field private mWebViewClient:Lcom/adsdk/sdk/video/WebViewClient;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    invoke-static {}, Lcom/adsdk/sdk/video/WebFrame;->initCompatibility()V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ZZZ)V
    .registers 11

    const/16 v5, 0x11

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v4, p0, Lcom/adsdk/sdk/video/WebFrame;->enableZoom:Z

    invoke-static {}, Lcom/adsdk/sdk/video/WebFrame;->initCompatibility()V

    iput-object p1, p0, Lcom/adsdk/sdk/video/WebFrame;->mActivity:Landroid/app/Activity;

    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/WebFrame;->mWebView:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/adsdk/sdk/video/WebFrame;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p3}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/WebFrame;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p3}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/WebFrame;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/WebFrame;->mWebView:Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/adsdk/sdk/video/WebFrame;->setLayer(Landroid/webkit/WebView;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/WebFrame;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    iget-boolean v1, p0, Lcom/adsdk/sdk/video/WebFrame;->enableZoom:Z

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    iget-boolean v1, p0, Lcom/adsdk/sdk/video/WebFrame;->enableZoom:Z

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    new-instance v0, Lcom/adsdk/sdk/video/WebViewClient;

    iget-object v1, p0, Lcom/adsdk/sdk/video/WebFrame;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p2}, Lcom/adsdk/sdk/video/WebViewClient;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/WebFrame;->mWebViewClient:Lcom/adsdk/sdk/video/WebViewClient;

    iget-object v0, p0, Lcom/adsdk/sdk/video/WebFrame;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/adsdk/sdk/video/WebFrame;->mWebViewClient:Lcom/adsdk/sdk/video/WebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    if-eqz p4, :cond_c2

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0, v1}, Lcom/adsdk/sdk/video/WebFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/WebFrame;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0, v1}, Lcom/adsdk/sdk/video/WebFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/WebFrame;->mExitButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/adsdk/sdk/video/WebFrame;->mExitButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/WebFrame;->mExitButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/adsdk/sdk/video/WebFrame$1;

    invoke-direct {v1, p0, p1}, Lcom/adsdk/sdk/video/WebFrame$1;-><init>(Lcom/adsdk/sdk/video/WebFrame;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 v0, 0x420c0000

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/WebFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v4, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/adsdk/sdk/video/WebFrame;->mExitButton:Landroid/widget/ImageView;

    const/16 v2, -0x12

    invoke-static {p1, v2}, Lcom/adsdk/sdk/video/ResourceManager;->getStaticResource(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x35

    invoke-direct {v1, v0, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const/high16 v0, 0x40c00000

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/WebFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v4, v0, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object v0, p0, Lcom/adsdk/sdk/video/WebFrame;->mExitButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/adsdk/sdk/video/WebFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_c1
    return-void

    :cond_c2
    iget-object v0, p0, Lcom/adsdk/sdk/video/WebFrame;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0, v1}, Lcom/adsdk/sdk/video/WebFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_c1
.end method

.method static synthetic access$0(Lcom/adsdk/sdk/video/WebFrame;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/adsdk/sdk/video/WebFrame;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/adsdk/sdk/video/WebFrame;)Lcom/adsdk/sdk/video/WebViewClient;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/video/WebFrame;->mWebViewClient:Lcom/adsdk/sdk/video/WebViewClient;

    return-object v0
.end method

.method static synthetic access$2(Lcom/adsdk/sdk/video/WebFrame;)Landroid/webkit/WebView;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/video/WebFrame;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method private attachController()V
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/video/WebFrame;->mController:Lcom/adsdk/sdk/video/InterstitialController;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/adsdk/sdk/video/WebFrame;->mController:Lcom/adsdk/sdk/video/InterstitialController;

    invoke-virtual {v0, p0}, Lcom/adsdk/sdk/video/InterstitialController;->setBrowser(Lcom/adsdk/sdk/video/InterstitialController$BrowserControl;)V

    :cond_9
    return-void
.end method

.method private getUserAgentString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/video/WebFrame;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    sget-object v1, Lcom/adsdk/sdk/video/WebFrame;->mWebView_SetLayerType:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    const-class v0, Landroid/webkit/WebView;

    const-string v1, "LAYER_TYPE_SOFTWARE"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/adsdk/sdk/video/WebFrame;->mWebView_LAYER_TYPE_SOFTWARE:Ljava/lang/reflect/Field;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "set1 layer "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/adsdk/sdk/video/WebFrame;->mWebView_LAYER_TYPE_SOFTWARE:Ljava/lang/reflect/Field;

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

    sput-object v3, Lcom/adsdk/sdk/video/WebFrame;->mWebView_SetLayerType:Ljava/lang/reflect/Method;
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

.method private static setLayer(Landroid/webkit/WebView;)V
    .registers 6

    sget-object v0, Lcom/adsdk/sdk/video/WebFrame;->mWebView_SetLayerType:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_3e

    sget-object v0, Lcom/adsdk/sdk/video/WebFrame;->mWebView_LAYER_TYPE_SOFTWARE:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_3e

    :try_start_8
    const-string v0, "Set Layer is supported"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    sget-object v0, Lcom/adsdk/sdk/video/WebFrame;->mWebView_SetLayerType:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/adsdk/sdk/video/WebFrame;->mWebView_LAYER_TYPE_SOFTWARE:Ljava/lang/reflect/Field;

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


# virtual methods
.method public canGoBack()Z
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/video/WebFrame;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public canGoForward()Z
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/video/WebFrame;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    return v0
.end method

.method public getPageTitle()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/video/WebFrame;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTime()I
    .registers 5

    iget-object v0, p0, Lcom/adsdk/sdk/video/WebFrame;->mWebViewClient:Lcom/adsdk/sdk/video/WebViewClient;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/WebViewClient;->getFinishedLoadingTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    long-to-int v0, v0

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public getWebView()Landroid/webkit/WebView;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/video/WebFrame;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method public goBack()V
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/video/WebFrame;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    return-void
.end method

.method public goForward()V
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/video/WebFrame;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    return-void
.end method

.method public isEnableZoom()Z
    .registers 2

    iget-boolean v0, p0, Lcom/adsdk/sdk/video/WebFrame;->enableZoom:Z

    return v0
.end method

.method public launchExternalBrowser()V
    .registers 4

    iget-object v0, p0, Lcom/adsdk/sdk/video/WebFrame;->mWebViewClient:Lcom/adsdk/sdk/video/WebViewClient;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/WebViewClient;->getAllowedUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_10

    :cond_e
    const-string v0, "about:blank"

    :cond_10
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/WebFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .registers 5

    new-instance v0, Lcom/adsdk/sdk/video/WebFrame$LoadUrlTask;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/WebFrame$LoadUrlTask;-><init>(Lcom/adsdk/sdk/video/WebFrame;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/WebFrame$LoadUrlTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/adsdk/sdk/video/WebFrame;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public reload()V
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/video/WebFrame;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    return-void
.end method

.method public setBackgroundColor(I)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/WebFrame;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    return-void
.end method

.method public setBrowserController(Lcom/adsdk/sdk/video/InterstitialController;)V
    .registers 3

    iget-object v0, p0, Lcom/adsdk/sdk/video/WebFrame;->mController:Lcom/adsdk/sdk/video/InterstitialController;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/adsdk/sdk/video/WebFrame;->mController:Lcom/adsdk/sdk/video/InterstitialController;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/InterstitialController;->hide()V

    :cond_9
    iput-object p1, p0, Lcom/adsdk/sdk/video/WebFrame;->mController:Lcom/adsdk/sdk/video/InterstitialController;

    invoke-direct {p0}, Lcom/adsdk/sdk/video/WebFrame;->attachController()V

    return-void
.end method

.method public setEnableZoom(Z)V
    .registers 3

    iput-boolean p1, p0, Lcom/adsdk/sdk/video/WebFrame;->enableZoom:Z

    iget-object v0, p0, Lcom/adsdk/sdk/video/WebFrame;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    return-void
.end method

.method public setMarkup(Ljava/lang/String;)V
    .registers 6

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/video/WebFrame;->mWebViewClient:Lcom/adsdk/sdk/video/WebViewClient;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/video/WebViewClient;->setAllowedUrl(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adsdk/sdk/video/WebFrame;->mWebView:Landroid/webkit/WebView;

    const-string v2, "text/html"

    const-string v3, "UTF-8"

    invoke-virtual {v1, v0, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setOnPageLoadedListener(Lcom/adsdk/sdk/video/WebViewClient$OnPageLoadedListener;)V
    .registers 3

    iget-object v0, p0, Lcom/adsdk/sdk/video/WebFrame;->mWebViewClient:Lcom/adsdk/sdk/video/WebViewClient;

    invoke-virtual {v0, p1}, Lcom/adsdk/sdk/video/WebViewClient;->setOnPageLoadedListener(Lcom/adsdk/sdk/video/WebViewClient$OnPageLoadedListener;)V

    return-void
.end method
