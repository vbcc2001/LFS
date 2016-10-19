.class Lcom/adsdk/sdk/banner/BannerAdView$1;
.super Landroid/webkit/WebView;


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/banner/BannerAdView;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/banner/BannerAdView;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/adsdk/sdk/banner/BannerAdView$1;->this$0:Lcom/adsdk/sdk/banner/BannerAdView;

    invoke-direct {p0, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 3

    invoke-virtual {p0}, Lcom/adsdk/sdk/banner/BannerAdView$1;->getWidth()I

    move-result v0

    if-lez v0, :cond_f

    invoke-virtual {p0}, Lcom/adsdk/sdk/banner/BannerAdView$1;->getHeight()I

    move-result v0

    if-lez v0, :cond_f

    invoke-super {p0, p1}, Landroid/webkit/WebView;->draw(Landroid/graphics/Canvas;)V

    :cond_f
    return-void
.end method
