.class Lcom/adsdk/sdk/banner/BannerAdView$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/banner/BannerAdView;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/banner/BannerAdView;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/banner/BannerAdView$4;->this$0:Lcom/adsdk/sdk/banner/BannerAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView$4;->this$0:Lcom/adsdk/sdk/banner/BannerAdView;

    # getter for: Lcom/adsdk/sdk/banner/BannerAdView;->adListener:Lcom/adsdk/sdk/AdListener;
    invoke-static {v0}, Lcom/adsdk/sdk/banner/BannerAdView;->access$3(Lcom/adsdk/sdk/banner/BannerAdView;)Lcom/adsdk/sdk/AdListener;

    move-result-object v0

    if-eqz v0, :cond_33

    const-string v0, "ADSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "notify bannerListener of ad clicked: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/adsdk/sdk/banner/BannerAdView$4;->this$0:Lcom/adsdk/sdk/banner/BannerAdView;

    # getter for: Lcom/adsdk/sdk/banner/BannerAdView;->adListener:Lcom/adsdk/sdk/AdListener;
    invoke-static {v2}, Lcom/adsdk/sdk/banner/BannerAdView;->access$3(Lcom/adsdk/sdk/banner/BannerAdView;)Lcom/adsdk/sdk/AdListener;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView$4;->this$0:Lcom/adsdk/sdk/banner/BannerAdView;

    # getter for: Lcom/adsdk/sdk/banner/BannerAdView;->adListener:Lcom/adsdk/sdk/AdListener;
    invoke-static {v0}, Lcom/adsdk/sdk/banner/BannerAdView;->access$3(Lcom/adsdk/sdk/banner/BannerAdView;)Lcom/adsdk/sdk/AdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/adsdk/sdk/AdListener;->adClicked()V

    :cond_33
    return-void
.end method
