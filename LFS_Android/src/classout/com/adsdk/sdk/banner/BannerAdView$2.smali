.class Lcom/adsdk/sdk/banner/BannerAdView$2;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/banner/BannerAdView;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/banner/BannerAdView;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/banner/BannerAdView$2;->this$0:Lcom/adsdk/sdk/banner/BannerAdView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 6

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView$2;->this$0:Lcom/adsdk/sdk/banner/BannerAdView;

    # getter for: Lcom/adsdk/sdk/banner/BannerAdView;->response:Lcom/adsdk/sdk/BannerAd;
    invoke-static {v0}, Lcom/adsdk/sdk/banner/BannerAdView;->access$0(Lcom/adsdk/sdk/banner/BannerAdView;)Lcom/adsdk/sdk/BannerAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/BannerAd;->getSkipOverlay()I

    move-result v0

    if-ne v0, v2, :cond_1a

    iget-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView$2;->this$0:Lcom/adsdk/sdk/banner/BannerAdView;

    # invokes: Lcom/adsdk/sdk/banner/BannerAdView;->doOpenUrl(Ljava/lang/String;)V
    invoke-static {v0, p2}, Lcom/adsdk/sdk/banner/BannerAdView;->access$1(Lcom/adsdk/sdk/banner/BannerAdView;Ljava/lang/String;)V

    const-string v0, "TouchListener"

    const-string v1, "false"

    invoke-static {v0, v1}, Lcom/adsdk/sdk/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_19
    return v2

    :cond_1a
    const-string v0, "TouchListener"

    const-string v1, "default"

    invoke-static {v0, v1}, Lcom/adsdk/sdk/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView$2;->this$0:Lcom/adsdk/sdk/banner/BannerAdView;

    # invokes: Lcom/adsdk/sdk/banner/BannerAdView;->openLink()V
    invoke-static {v0}, Lcom/adsdk/sdk/banner/BannerAdView;->access$2(Lcom/adsdk/sdk/banner/BannerAdView;)V

    goto :goto_19
.end method
