.class public Lcom/adsdk/sdk/mraid/MoPubInterstitial;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adsdk/sdk/AdListener;


# static fields
.field private static synthetic $SWITCH_TABLE$com$adsdk$sdk$mraid$MoPubInterstitial$InterstitialState:[I


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAdUnitId:Ljava/lang/String;

.field private mAdapterListener:Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter$BaseInterstitialAdapterListener;

.field private mCurrentInterstitialState:Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;

.field private mDefaultAdapterListener:Lcom/adsdk/sdk/mraid/MoPubInterstitial$DefaultInterstitialAdapterListener;

.field private mInterstitialAdapter:Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;

.field private mInterstitialView:Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;

.field private mListener:Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialListener;


# direct methods
.method static synthetic $SWITCH_TABLE$com$adsdk$sdk$mraid$MoPubInterstitial$InterstitialState()[I
    .registers 3

    sget-object v0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->$SWITCH_TABLE$com$adsdk$sdk$mraid$MoPubInterstitial$InterstitialState:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;->values()[Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;->HTML_AD_READY:Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;

    invoke-virtual {v1}, Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_2e

    :goto_15
    :try_start_15
    sget-object v1, Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;->NATIVE_AD_READY:Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;

    invoke-virtual {v1}, Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_2c

    :goto_1e
    :try_start_1e
    sget-object v1, Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;->NOT_READY:Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;

    invoke-virtual {v1}, Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_2a

    :goto_27
    sput-object v0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->$SWITCH_TABLE$com$adsdk$sdk$mraid$MoPubInterstitial$InterstitialState:[I

    goto :goto_4

    :catch_2a
    move-exception v1

    goto :goto_27

    :catch_2c
    move-exception v1

    goto :goto_1e

    :catch_2e
    move-exception v1

    goto :goto_15
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mAdUnitId:Ljava/lang/String;

    new-instance v0, Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;-><init>(Lcom/adsdk/sdk/mraid/MoPubInterstitial;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialView:Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialView:Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mAdUnitId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;->setAdUnitId(Ljava/lang/String;)V

    sget-object v0, Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;->NOT_READY:Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mCurrentInterstitialState:Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;

    new-instance v0, Lcom/adsdk/sdk/mraid/MoPubInterstitial$DefaultInterstitialAdapterListener;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/mraid/MoPubInterstitial$DefaultInterstitialAdapterListener;-><init>(Lcom/adsdk/sdk/mraid/MoPubInterstitial;)V

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mDefaultAdapterListener:Lcom/adsdk/sdk/mraid/MoPubInterstitial$DefaultInterstitialAdapterListener;

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mDefaultAdapterListener:Lcom/adsdk/sdk/mraid/MoPubInterstitial$DefaultInterstitialAdapterListener;

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mAdapterListener:Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter$BaseInterstitialAdapterListener;

    return-void
.end method

.method static synthetic access$0(Lcom/adsdk/sdk/mraid/MoPubInterstitial;Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mCurrentInterstitialState:Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;

    return-void
.end method

.method static synthetic access$1(Lcom/adsdk/sdk/mraid/MoPubInterstitial;)Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialListener;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mListener:Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialListener;

    return-object v0
.end method

.method static synthetic access$2(Lcom/adsdk/sdk/mraid/MoPubInterstitial;)Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialView:Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/adsdk/sdk/mraid/MoPubInterstitial;Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialAdapter:Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;

    return-void
.end method

.method static synthetic access$4(Lcom/adsdk/sdk/mraid/MoPubInterstitial;)Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialAdapter:Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;

    return-object v0
.end method

.method private invalidateCurrentInterstitial()V
    .registers 2

    sget-object v0, Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;->NOT_READY:Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mCurrentInterstitialState:Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialAdapter:Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialAdapter:Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;->invalidate()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialAdapter:Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;

    :cond_10
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mDefaultAdapterListener:Lcom/adsdk/sdk/mraid/MoPubInterstitial$DefaultInterstitialAdapterListener;

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mAdapterListener:Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter$BaseInterstitialAdapterListener;

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialView:Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0, p0}, Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;->setAdListener(Lcom/adsdk/sdk/AdListener;)V

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialView:Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;->loadAd()V

    return-void
.end method

.method private showNativeInterstitial()V
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialAdapter:Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialAdapter:Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;->showInterstitial()V

    :cond_9
    return-void
.end method


# virtual methods
.method public OnAdFailed(Lcom/adsdk/sdk/mraid/MoPubView;)V
    .registers 3

    sget-object v0, Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;->NOT_READY:Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mCurrentInterstitialState:Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mListener:Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialListener;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mListener:Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialListener;->OnInterstitialFailed()V

    :cond_d
    return-void
.end method

.method public OnAdLoaded(Lcom/adsdk/sdk/mraid/MoPubView;)V
    .registers 3

    sget-object v0, Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;->HTML_AD_READY:Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mCurrentInterstitialState:Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialAdapter:Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialAdapter:Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;->invalidate()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialAdapter:Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;

    :cond_10
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mListener:Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialListener;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mListener:Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialListener;->OnInterstitialLoaded()V

    :cond_19
    return-void
.end method

.method public adClicked()V
    .registers 1

    return-void
.end method

.method public adClosed(Lcom/adsdk/sdk/Ad;Z)V
    .registers 3

    return-void
.end method

.method public adLoadSucceeded(Lcom/adsdk/sdk/Ad;)V
    .registers 2

    return-void
.end method

.method public adShown(Lcom/adsdk/sdk/Ad;Z)V
    .registers 3

    return-void
.end method

.method public customEventActionWillBegin()V
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialView:Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialView:Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;->registerClick()V

    :cond_9
    return-void
.end method

.method public customEventDidFailToLoadAd()V
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialView:Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialView:Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;->loadFailUrl()V

    :cond_9
    return-void
.end method

.method public customEventDidLoadAd()V
    .registers 1

    return-void
.end method

.method public destroy()V
    .registers 3

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mAdapterListener:Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter$BaseInterstitialAdapterListener;

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialAdapter:Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialAdapter:Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;->invalidate()V

    iput-object v1, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialAdapter:Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;

    :cond_e
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialView:Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;->setAdListener(Lcom/adsdk/sdk/AdListener;)V

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialView:Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;->destroy()V

    return-void
.end method

.method public forceRefresh()V
    .registers 2

    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->invalidateCurrentInterstitial()V

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialView:Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;->forceRefresh()V

    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method protected getInterstitialAdapterListener()Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter$BaseInterstitialAdapterListener;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mAdapterListener:Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter$BaseInterstitialAdapterListener;

    return-object v0
.end method

.method public getKeywords()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialView:Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialView:Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;->getKeywords()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getListener()Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialListener;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mListener:Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialListener;

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialView:Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;->getLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public getLocationAwareness()Lcom/adsdk/sdk/mraid/MoPubView$LocationAwareness;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialView:Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;->getLocationAwareness()Lcom/adsdk/sdk/mraid/MoPubView$LocationAwareness;

    move-result-object v0

    return-object v0
.end method

.method public getLocationPrecision()I
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialView:Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;->getLocationPrecision()I

    move-result v0

    return v0
.end method

.method public isReady()Z
    .registers 3

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mCurrentInterstitialState:Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;

    sget-object v1, Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;->HTML_AD_READY:Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;

    if-eq v0, v1, :cond_e

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mCurrentInterstitialState:Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;

    sget-object v1, Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;->NATIVE_AD_READY:Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;

    if-eq v0, v1, :cond_e

    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public load()V
    .registers 2

    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->invalidateCurrentInterstitial()V

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialView:Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;->loadAd()V

    return-void
.end method

.method public noAdFound()V
    .registers 1

    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialView:Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialView:Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0, p1}, Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;->setKeywords(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public setListener(Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialListener;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mListener:Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialListener;

    return-void
.end method

.method public setLocationAwareness(Lcom/adsdk/sdk/mraid/MoPubView$LocationAwareness;)V
    .registers 3

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialView:Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0, p1}, Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;->setLocationAwareness(Lcom/adsdk/sdk/mraid/MoPubView$LocationAwareness;)V

    return-void
.end method

.method public setLocationPrecision(I)V
    .registers 3

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialView:Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0, p1}, Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;->setLocationPrecision(I)V

    return-void
.end method

.method public show()Z
    .registers 3

    invoke-static {}, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->$SWITCH_TABLE$com$adsdk$sdk$mraid$MoPubInterstitial$InterstitialState()[I

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mCurrentInterstitialState:Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;

    invoke-virtual {v1}, Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_16

    const/4 v0, 0x0

    :goto_10
    return v0

    :pswitch_11
    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->showNativeInterstitial()V

    const/4 v0, 0x1

    goto :goto_10

    :pswitch_data_16
    .packed-switch 0x2
        :pswitch_11
    .end packed-switch
.end method

.method public showAd()V
    .registers 2

    new-instance v0, Lcom/adsdk/sdk/mraid/MoPubInterstitial$1;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/mraid/MoPubInterstitial$1;-><init>(Lcom/adsdk/sdk/mraid/MoPubInterstitial;)V

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mAdapterListener:Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter$BaseInterstitialAdapterListener;

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubInterstitial;->mInterstitialView:Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MoPubInterstitial$MoPubInterstitialView;->loadAd()V

    return-void
.end method
