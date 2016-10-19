.class Lcom/adsdk/sdk/mraid/MraidView$MraidWebViewClient;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/mraid/MraidView;


# direct methods
.method private constructor <init>(Lcom/adsdk/sdk/mraid/MraidView;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MraidView$MraidWebViewClient;->this$0:Lcom/adsdk/sdk/mraid/MraidView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adsdk/sdk/mraid/MraidView;Lcom/adsdk/sdk/mraid/MraidView$MraidWebViewClient;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/adsdk/sdk/mraid/MraidView$MraidWebViewClient;-><init>(Lcom/adsdk/sdk/mraid/MraidView;)V

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Loaded resource: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView$MraidWebViewClient;->this$0:Lcom/adsdk/sdk/mraid/MraidView;

    # getter for: Lcom/adsdk/sdk/mraid/MraidView;->mHasFiredReadyEvent:Z
    invoke-static {v0}, Lcom/adsdk/sdk/mraid/MraidView;->access$1(Lcom/adsdk/sdk/mraid/MraidView;)Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView$MraidWebViewClient;->this$0:Lcom/adsdk/sdk/mraid/MraidView;

    # getter for: Lcom/adsdk/sdk/mraid/MraidView;->mDisplayController:Lcom/adsdk/sdk/mraid/MraidDisplayController;
    invoke-static {v0}, Lcom/adsdk/sdk/mraid/MraidView;->access$2(Lcom/adsdk/sdk/mraid/MraidView;)Lcom/adsdk/sdk/mraid/MraidDisplayController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->initializeJavaScriptState()V

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView$MraidWebViewClient;->this$0:Lcom/adsdk/sdk/mraid/MraidView;

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidView$MraidWebViewClient;->this$0:Lcom/adsdk/sdk/mraid/MraidView;

    # getter for: Lcom/adsdk/sdk/mraid/MraidView;->mPlacementType:Lcom/adsdk/sdk/mraid/MraidView$PlacementType;
    invoke-static {v1}, Lcom/adsdk/sdk/mraid/MraidView;->access$3(Lcom/adsdk/sdk/mraid/MraidView;)Lcom/adsdk/sdk/mraid/MraidView$PlacementType;

    move-result-object v1

    invoke-static {v1}, Lcom/adsdk/sdk/mraid/MraidPlacementTypeProperty;->createWithType(Lcom/adsdk/sdk/mraid/MraidView$PlacementType;)Lcom/adsdk/sdk/mraid/MraidPlacementTypeProperty;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/mraid/MraidView;->fireChangeEventForProperty(Lcom/adsdk/sdk/mraid/MraidProperty;)V

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView$MraidWebViewClient;->this$0:Lcom/adsdk/sdk/mraid/MraidView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidView;->fireReadyEvent()V

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView$MraidWebViewClient;->this$0:Lcom/adsdk/sdk/mraid/MraidView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidView;->getOnReadyListener()Lcom/adsdk/sdk/mraid/MraidView$OnReadyListener;

    move-result-object v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView$MraidWebViewClient;->this$0:Lcom/adsdk/sdk/mraid/MraidView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidView;->getOnReadyListener()Lcom/adsdk/sdk/mraid/MraidView$OnReadyListener;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidView$MraidWebViewClient;->this$0:Lcom/adsdk/sdk/mraid/MraidView;

    invoke-interface {v0, v1}, Lcom/adsdk/sdk/mraid/MraidView$OnReadyListener;->onReady(Lcom/adsdk/sdk/mraid/MraidView;)V

    :cond_38
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView$MraidWebViewClient;->this$0:Lcom/adsdk/sdk/mraid/MraidView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/adsdk/sdk/mraid/MraidView;->access$4(Lcom/adsdk/sdk/mraid/MraidView;Z)V

    :cond_3e
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x1

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mopub"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    :goto_11
    return v0

    :cond_12
    const-string v2, "mraid"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidView$MraidWebViewClient;->this$0:Lcom/adsdk/sdk/mraid/MraidView;

    invoke-static {p2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    # invokes: Lcom/adsdk/sdk/mraid/MraidView;->tryCommand(Ljava/net/URI;)Z
    invoke-static {v1, v2}, Lcom/adsdk/sdk/mraid/MraidView;->access$0(Lcom/adsdk/sdk/mraid/MraidView;Ljava/net/URI;)Z

    goto :goto_11

    :cond_24
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_3a
    iget-object v2, p0, Lcom/adsdk/sdk/mraid/MraidView$MraidWebViewClient;->this$0:Lcom/adsdk/sdk/mraid/MraidView;

    invoke-virtual {v2}, Lcom/adsdk/sdk/mraid/MraidView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_43
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3a .. :try_end_43} :catch_44

    goto :goto_11

    :catch_44
    move-exception v0

    const/4 v0, 0x0

    goto :goto_11
.end method
