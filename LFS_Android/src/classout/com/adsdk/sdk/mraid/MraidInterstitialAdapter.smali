.class public Lcom/adsdk/sdk/mraid/MraidInterstitialAdapter;
.super Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public loadInterstitial()V
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidInterstitialAdapter;->mAdapterListener:Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter$BaseInterstitialAdapterListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidInterstitialAdapter;->mAdapterListener:Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter$BaseInterstitialAdapterListener;

    invoke-interface {v0, p0}, Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter$BaseInterstitialAdapterListener;->onNativeInterstitialLoaded(Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;)V

    :cond_9
    return-void
.end method

.method public showInterstitial()V
    .registers 5

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidInterstitialAdapter;->mInterstitial:Lcom/adsdk/sdk/mraid/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/adsdk/sdk/mraid/MraidActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.adsdk.sdk.mraid.Source"

    iget-object v3, p0, Lcom/adsdk/sdk/mraid/MraidInterstitialAdapter;->mJsonParams:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
