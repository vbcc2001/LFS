.class public Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;
.super Lcom/adsdk/sdk/mraid/MoPubView;


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/mraid/MoPubInterstitial;


# direct methods
.method public constructor <init>(Lcom/adsdk/sdk/mraid/MoPubInterstitial;Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;->this$0:Lcom/adsdk/sdk/mraid/MoPubInterstitial;

    invoke-direct {p0, p2}, Lcom/adsdk/sdk/mraid/MoPubView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;->setAutorefreshEnabled(Z)V

    return-void
.end method


# virtual methods
.method protected loadNativeSDK(Ljava/util/HashMap;)V
    .registers 7

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;->this$0:Lcom/adsdk/sdk/mraid/MoPubInterstitial;

    invoke-virtual {v1}, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->getInterstitialAdapterListener()Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter$BaseInterstitialAdapterListener;

    move-result-object v2

    const-string v0, "X-Adtype"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_79

    const-string v3, "interstitial"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    const-string v3, "mraid"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_79

    :cond_23
    const-string v3, "interstitial"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    const-string v0, "X-Fulladtype"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_33
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Loading native adapter for interstitial type: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v3, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;->this$0:Lcom/adsdk/sdk/mraid/MoPubInterstitial;

    invoke-static {v0}, Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;->getAdapterForType(Ljava/lang/String;)Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->access$3(Lcom/adsdk/sdk/mraid/MoPubInterstitial;Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;)V

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;->this$0:Lcom/adsdk/sdk/mraid/MoPubInterstitial;

    # getter for: Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialAdapter:Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;
    invoke-static {v0}, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->access$4(Lcom/adsdk/sdk/mraid/MoPubInterstitial;)Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;

    move-result-object v0

    if-eqz v0, :cond_79

    const-string v0, "X-Nativeparams"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;->this$0:Lcom/adsdk/sdk/mraid/MoPubInterstitial;

    # getter for: Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialAdapter:Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;
    invoke-static {v3}, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->access$4(Lcom/adsdk/sdk/mraid/MoPubInterstitial;)Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;->init(Lcom/adsdk/sdk/mraid/MoPubInterstitial;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;->this$0:Lcom/adsdk/sdk/mraid/MoPubInterstitial;

    # getter for: Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialAdapter:Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;
    invoke-static {v0}, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->access$4(Lcom/adsdk/sdk/mraid/MoPubInterstitial;)Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;->setAdapterListener(Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter$BaseInterstitialAdapterListener;)V

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;->this$0:Lcom/adsdk/sdk/mraid/MoPubInterstitial;

    # getter for: Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialAdapter:Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;
    invoke-static {v0}, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->access$4(Lcom/adsdk/sdk/mraid/MoPubInterstitial;)Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;->loadInterstitial()V

    goto :goto_2

    :cond_76
    const-string v0, "mraid"

    goto :goto_33

    :cond_79
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter$BaseInterstitialAdapterListener;->onNativeInterstitialFailed(Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;)V

    goto :goto_2
.end method
