.class Lcom/adsdk/sdk/mraid/MoPubInterstitial$1;
.super Lcom/adsdk/sdk/mraid/MoPubInterstitial$DefaultInterstitialAdapterListener;


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/mraid/MoPubInterstitial;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/mraid/MoPubInterstitial;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial$1;->this$0:Lcom/adsdk/sdk/mraid/MoPubInterstitial;

    invoke-direct {p0, p1}, Lcom/adsdk/sdk/mraid/MoPubInterstitial$DefaultInterstitialAdapterListener;-><init>(Lcom/adsdk/sdk/mraid/MoPubInterstitial;)V

    return-void
.end method


# virtual methods
.method public onNativeInterstitialLoaded(Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/adsdk/sdk/mraid/MoPubInterstitial$DefaultInterstitialAdapterListener;->onNativeInterstitialLoaded(Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;)V

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial$1;->this$0:Lcom/adsdk/sdk/mraid/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->show()Z

    return-void
.end method
