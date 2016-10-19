.class Lcom/adsdk/sdk/mraid/AdView$AdWebViewClient;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/mraid/AdView;


# direct methods
.method private constructor <init>(Lcom/adsdk/sdk/mraid/AdView;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/mraid/AdView$AdWebViewClient;->this$0:Lcom/adsdk/sdk/mraid/AdView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adsdk/sdk/mraid/AdView;Lcom/adsdk/sdk/mraid/AdView$AdWebViewClient;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/adsdk/sdk/mraid/AdView$AdWebViewClient;-><init>(Lcom/adsdk/sdk/mraid/AdView;)V

    return-void
.end method

.method private urlWithClickTrackingRedirect(Lcom/adsdk/sdk/mraid/AdView;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-virtual {p1}, Lcom/adsdk/sdk/mraid/AdView;->getClickthroughUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    :goto_6
    return-object p2

    :cond_7
    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&r="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_6
.end method


# virtual methods
.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6

    move-object v0, p1

    check-cast v0, Lcom/adsdk/sdk/mraid/AdView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/AdView;->getRedirectUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-direct {p0, v0, p2}, Lcom/adsdk/sdk/mraid/AdView$AdWebViewClient;->urlWithClickTrackingRedirect(Lcom/adsdk/sdk/mraid/AdView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/AdView$AdWebViewClient;->this$0:Lcom/adsdk/sdk/mraid/AdView;

    # invokes: Lcom/adsdk/sdk/mraid/AdView;->showBrowserForUrl(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/adsdk/sdk/mraid/AdView;->access$3(Lcom/adsdk/sdk/mraid/AdView;Ljava/lang/String;)V

    :cond_1b
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    check-cast p1, Lcom/adsdk/sdk/mraid/AdView;

    const-string v2, "mopub://"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    const-string v3, "finishLoad"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    # invokes: Lcom/adsdk/sdk/mraid/AdView;->adDidLoad()V
    invoke-static {p1}, Lcom/adsdk/sdk/mraid/AdView;->access$0(Lcom/adsdk/sdk/mraid/AdView;)V

    :cond_1f
    :goto_1f
    return v1

    :cond_20
    const-string v3, "close"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-static {p1}, Lcom/adsdk/sdk/mraid/AdView;->access$1(Lcom/adsdk/sdk/mraid/AdView;)V

    goto :goto_1f

    :cond_2c
    const-string v3, "failLoad"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-virtual {p1}, Lcom/adsdk/sdk/mraid/AdView;->loadFailUrl()V

    goto :goto_1f

    :cond_38
    const-string v3, "custom"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    # invokes: Lcom/adsdk/sdk/mraid/AdView;->handleCustomIntentFromUri(Landroid/net/Uri;)V
    invoke-static {p1, v0}, Lcom/adsdk/sdk/mraid/AdView;->access$2(Lcom/adsdk/sdk/mraid/AdView;Landroid/net/Uri;)V

    goto :goto_1f

    :cond_44
    const-string v2, "tel:"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_74

    const-string v2, "voicemail:"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_74

    const-string v2, "sms:"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_74

    const-string v2, "mailto:"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_74

    const-string v2, "geo:"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_74

    const-string v2, "google.streetview:"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b0

    :cond_74
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_84
    iget-object v2, p0, Lcom/adsdk/sdk/mraid/AdView$AdWebViewClient;->this$0:Lcom/adsdk/sdk/mraid/AdView;

    invoke-virtual {v2}, Lcom/adsdk/sdk/mraid/AdView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/AdView$AdWebViewClient;->this$0:Lcom/adsdk/sdk/mraid/AdView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/AdView;->registerClick()V
    :try_end_92
    .catch Landroid/content/ActivityNotFoundException; {:try_start_84 .. :try_end_92} :catch_93

    goto :goto_1f

    :catch_93
    move-exception v0

    const-string v0, "MoPub"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not handle intent with URI: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Is this intent unsupported on your phone?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    :cond_b0
    const-string v2, "market://"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f6

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v3, p0, Lcom/adsdk/sdk/mraid/AdView$AdWebViewClient;->this$0:Lcom/adsdk/sdk/mraid/AdView;

    invoke-virtual {v3}, Lcom/adsdk/sdk/mraid/AdView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_d8

    move v0, v1

    :cond_d8
    if-nez v0, :cond_f6

    const-string v0, "MoPub"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not handle market action: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Perhaps you\'re running in the emulator, which does not have the Android Market?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    :cond_f6
    invoke-direct {p0, p1, p2}, Lcom/adsdk/sdk/mraid/AdView$AdWebViewClient;->urlWithClickTrackingRedirect(Lcom/adsdk/sdk/mraid/AdView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Ad clicked. Click URL: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v2, p0, Lcom/adsdk/sdk/mraid/AdView$AdWebViewClient;->this$0:Lcom/adsdk/sdk/mraid/AdView;

    iget-object v2, v2, Lcom/adsdk/sdk/mraid/AdView;->mMoPubView:Lcom/adsdk/sdk/mraid/MoPubView;

    invoke-virtual {v2}, Lcom/adsdk/sdk/mraid/MoPubView;->adClicked()V

    iget-object v2, p0, Lcom/adsdk/sdk/mraid/AdView$AdWebViewClient;->this$0:Lcom/adsdk/sdk/mraid/AdView;

    # invokes: Lcom/adsdk/sdk/mraid/AdView;->showBrowserForUrl(Ljava/lang/String;)V
    invoke-static {v2, v0}, Lcom/adsdk/sdk/mraid/AdView;->access$3(Lcom/adsdk/sdk/mraid/AdView;Ljava/lang/String;)V

    goto/16 :goto_1f
.end method
