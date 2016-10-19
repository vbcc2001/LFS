.class public Lcom/adsdk/sdk/mraid/MraidActivity;
.super Lcom/adsdk/sdk/mraid/BaseActivity;


# instance fields
.field private mAdView:Lcom/adsdk/sdk/mraid/MraidView;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdView()Landroid/view/View;
    .registers 5

    new-instance v0, Lcom/adsdk/sdk/mraid/MraidView;

    sget-object v1, Lcom/adsdk/sdk/mraid/MraidView$ExpansionStyle;->DISABLED:Lcom/adsdk/sdk/mraid/MraidView$ExpansionStyle;

    sget-object v2, Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;->AD_CONTROLLED:Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;

    sget-object v3, Lcom/adsdk/sdk/mraid/MraidView$PlacementType;->INTERSTITIAL:Lcom/adsdk/sdk/mraid/MraidView$PlacementType;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/adsdk/sdk/mraid/MraidView;-><init>(Landroid/content/Context;Lcom/adsdk/sdk/mraid/MraidView$ExpansionStyle;Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;Lcom/adsdk/sdk/mraid/MraidView$PlacementType;)V

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/MraidActivity;->mAdView:Lcom/adsdk/sdk/mraid/MraidView;

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidActivity;->mAdView:Lcom/adsdk/sdk/mraid/MraidView;

    new-instance v1, Lcom/adsdk/sdk/mraid/MraidActivity$1;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/mraid/MraidActivity$1;-><init>(Lcom/adsdk/sdk/mraid/MraidActivity;)V

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/mraid/MraidView;->setOnReadyListener(Lcom/adsdk/sdk/mraid/MraidView$OnReadyListener;)V

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidActivity;->mAdView:Lcom/adsdk/sdk/mraid/MraidView;

    new-instance v1, Lcom/adsdk/sdk/mraid/MraidActivity$2;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/mraid/MraidActivity$2;-><init>(Lcom/adsdk/sdk/mraid/MraidActivity;)V

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/mraid/MraidView;->setOnCloseButtonStateChange(Lcom/adsdk/sdk/mraid/MraidView$OnCloseButtonStateChangeListener;)V

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidActivity;->mAdView:Lcom/adsdk/sdk/mraid/MraidView;

    new-instance v1, Lcom/adsdk/sdk/mraid/MraidActivity$3;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/mraid/MraidActivity$3;-><init>(Lcom/adsdk/sdk/mraid/MraidActivity;)V

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/mraid/MraidView;->setOnCloseListener(Lcom/adsdk/sdk/mraid/MraidView$OnCloseListener;)V

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.adsdk.sdk.mraid.Source"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidActivity;->mAdView:Lcom/adsdk/sdk/mraid/MraidView;

    invoke-virtual {v1, v0}, Lcom/adsdk/sdk/mraid/MraidView;->loadHtmlData(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidActivity;->mAdView:Lcom/adsdk/sdk/mraid/MraidView;

    return-object v0
.end method

.method protected onDestroy()V
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidActivity;->mAdView:Lcom/adsdk/sdk/mraid/MraidView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidView;->destroy()V

    invoke-super {p0}, Lcom/adsdk/sdk/mraid/BaseActivity;->onDestroy()V

    return-void
.end method
