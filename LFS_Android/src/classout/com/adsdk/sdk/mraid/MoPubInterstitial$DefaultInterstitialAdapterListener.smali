.class public Lcom/adsdk/sdk/mraid/MoPubInterstitial$DefaultInterstitialAdapterListener;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter$BaseInterstitialAdapterListener;


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/mraid/MoPubInterstitial;


# direct methods
.method public constructor <init>(Lcom/adsdk/sdk/mraid/MoPubInterstitial;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial$DefaultInterstitialAdapterListener;->this$0:Lcom/adsdk/sdk/mraid/MoPubInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNativeInterstitialClicked(Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;)V
    .registers 3

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial$DefaultInterstitialAdapterListener;->this$0:Lcom/adsdk/sdk/mraid/MoPubInterstitial;

    # getter for: Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialView:Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;
    invoke-static {v0}, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->access$2(Lcom/adsdk/sdk/mraid/MoPubInterstitial;)Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;->registerClick()V

    return-void
.end method

.method public onNativeInterstitialExpired(Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;)V
    .registers 4

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial$DefaultInterstitialAdapterListener;->this$0:Lcom/adsdk/sdk/mraid/MoPubInterstitial;

    sget-object v1, Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;->NOT_READY:Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;

    invoke-static {v0, v1}, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->access$0(Lcom/adsdk/sdk/mraid/MoPubInterstitial;Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;)V

    return-void
.end method

.method public onNativeInterstitialFailed(Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;)V
    .registers 4

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial$DefaultInterstitialAdapterListener;->this$0:Lcom/adsdk/sdk/mraid/MoPubInterstitial;

    sget-object v1, Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;->NOT_READY:Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;

    invoke-static {v0, v1}, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->access$0(Lcom/adsdk/sdk/mraid/MoPubInterstitial;Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;)V

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial$DefaultInterstitialAdapterListener;->this$0:Lcom/adsdk/sdk/mraid/MoPubInterstitial;

    # getter for: Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialView:Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;
    invoke-static {v0}, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->access$2(Lcom/adsdk/sdk/mraid/MoPubInterstitial;)Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;->loadFailUrl()V

    return-void
.end method

.method public onNativeInterstitialLoaded(Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;)V
    .registers 4

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial$DefaultInterstitialAdapterListener;->this$0:Lcom/adsdk/sdk/mraid/MoPubInterstitial;

    sget-object v1, Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;->NATIVE_AD_READY:Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;

    invoke-static {v0, v1}, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->access$0(Lcom/adsdk/sdk/mraid/MoPubInterstitial;Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;)V

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial$DefaultInterstitialAdapterListener;->this$0:Lcom/adsdk/sdk/mraid/MoPubInterstitial;

    # getter for: Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mListener:Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialListener;
    invoke-static {v0}, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->access$1(Lcom/adsdk/sdk/mraid/MoPubInterstitial;)Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial$DefaultInterstitialAdapterListener;->this$0:Lcom/adsdk/sdk/mraid/MoPubInterstitial;

    # getter for: Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mListener:Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialListener;
    invoke-static {v0}, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->access$1(Lcom/adsdk/sdk/mraid/MoPubInterstitial;)Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialListener;->OnInterstitialLoaded()V

    :cond_18
    return-void
.end method
