.class public Lcom/adsdk/sdk/mraid/MoPubView;
.super Landroid/widget/FrameLayout;


# static fields
.field public static final DEFAULT_LOCATION_PRECISION:I = 0x6


# instance fields
.field private mAdListener:Lcom/adsdk/sdk/AdListener;

.field protected mAdView:Lcom/adsdk/sdk/mraid/AdView;

.field protected mAdapter:Lcom/adsdk/sdk/mraid/BaseAdapter;

.field private mContext:Landroid/content/Context;

.field private mIsInForeground:Z

.field private mLocationAwareness:Lcom/adsdk/sdk/mraid/MoPubView$LocationAwareness;

.field private mLocationPrecision:I

.field private mPreviousAutorefreshSetting:Z

.field private mScreenStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/adsdk/sdk/mraid/MoPubView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v1, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mPreviousAutorefreshSetting:Z

    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MoPubView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2c

    const/4 v0, 0x1

    :goto_f
    iput-boolean v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mIsInForeground:Z

    sget-object v0, Lcom/adsdk/sdk/mraid/MoPubView$LocationAwareness;->LOCATION_AWARENESS_NORMAL:Lcom/adsdk/sdk/mraid/MoPubView$LocationAwareness;

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mLocationAwareness:Lcom/adsdk/sdk/mraid/MoPubView$LocationAwareness;

    const/4 v0, 0x6

    iput v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mLocationPrecision:I

    invoke-virtual {p0, v1}, Lcom/adsdk/sdk/mraid/MoPubView;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/adsdk/sdk/mraid/MoPubView;->setVerticalScrollBarEnabled(Z)V

    invoke-static {p1}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object v0

    if-nez v0, :cond_2b

    const-string v0, "MoPub"

    const-string v1, "Disabling MoPub. Local cache file is inaccessible so MoPub will fail if we try to create a WebView. Details of this Android bug found at:http://code.google.com/p/android/issues/detail?id=10789"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    return-void

    :cond_2c
    move v0, v1

    goto :goto_f
.end method


# virtual methods
.method protected adAppeared()V
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/AdView;->adAppeared()V

    :cond_9
    return-void
.end method

.method protected adClicked()V
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdListener:Lcom/adsdk/sdk/AdListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdListener:Lcom/adsdk/sdk/AdListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/AdListener;->adClicked()V

    :cond_9
    return-void
.end method

.method protected adClosed()V
    .registers 4

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdListener:Lcom/adsdk/sdk/AdListener;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdListener:Lcom/adsdk/sdk/AdListener;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/adsdk/sdk/AdListener;->adClosed(Lcom/adsdk/sdk/Ad;Z)V

    :cond_b
    return-void
.end method

.method protected adFailed()V
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdListener:Lcom/adsdk/sdk/AdListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdListener:Lcom/adsdk/sdk/AdListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/AdListener;->noAdFound()V

    :cond_9
    return-void
.end method

.method protected adLoaded()V
    .registers 3

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdListener:Lcom/adsdk/sdk/AdListener;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdListener:Lcom/adsdk/sdk/AdListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/adsdk/sdk/AdListener;->adLoadSucceeded(Lcom/adsdk/sdk/Ad;)V

    :cond_a
    return-void
.end method

.method protected adPresentedOverlay()V
    .registers 4

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdListener:Lcom/adsdk/sdk/AdListener;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdListener:Lcom/adsdk/sdk/AdListener;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/adsdk/sdk/AdListener;->adShown(Lcom/adsdk/sdk/Ad;Z)V

    :cond_b
    return-void
.end method

.method protected adWillLoad(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "adWillLoad: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method public customEventActionWillBegin()V
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/AdView;->customEventActionWillBegin()V

    :cond_9
    return-void
.end method

.method public customEventDidFailToLoadAd()V
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/AdView;->customEventDidFailToLoadAd()V

    :cond_9
    return-void
.end method

.method public customEventDidLoadAd()V
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/AdView;->customEventDidLoadAd()V

    :cond_9
    return-void
.end method

.method public destroy()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/AdView;->cleanup()V

    iput-object v1, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    :cond_c
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdapter:Lcom/adsdk/sdk/mraid/BaseAdapter;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdapter:Lcom/adsdk/sdk/mraid/BaseAdapter;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/BaseAdapter;->invalidate()V

    iput-object v1, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdapter:Lcom/adsdk/sdk/mraid/BaseAdapter;

    :cond_17
    return-void
.end method

.method public forceRefresh()V
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdapter:Lcom/adsdk/sdk/mraid/BaseAdapter;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdapter:Lcom/adsdk/sdk/mraid/BaseAdapter;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/BaseAdapter;->invalidate()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdapter:Lcom/adsdk/sdk/mraid/BaseAdapter;

    :cond_c
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/AdView;->forceRefresh()V

    :cond_15
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public getAdHeight()I
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/AdView;->getAdHeight()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getAdWidth()I
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/AdView;->getAdWidth()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getAutorefreshEnabled()Z
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/AdView;->getAutorefreshEnabled()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getClickthroughUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/AdView;->getClickthroughUrl()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getKeywords()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/AdView;->getKeywords()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getLocation()Landroid/location/Location;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/AdView;->getLocation()Landroid/location/Location;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getLocationAwareness()Lcom/adsdk/sdk/mraid/MoPubView$LocationAwareness;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mLocationAwareness:Lcom/adsdk/sdk/mraid/MoPubView$LocationAwareness;

    return-object v0
.end method

.method public getLocationPrecision()I
    .registers 2

    iget v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mLocationPrecision:I

    return v0
.end method

.method public getResponseString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/AdView;->getResponseString()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public loadAd()V
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/AdView;->loadAd()V

    :cond_9
    return-void
.end method

.method protected loadFailUrl()V
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/AdView;->loadFailUrl()V

    :cond_9
    return-void
.end method

.method protected loadNativeSDK(Ljava/util/HashMap;)V
    .registers 5

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdapter:Lcom/adsdk/sdk/mraid/BaseAdapter;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdapter:Lcom/adsdk/sdk/mraid/BaseAdapter;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/BaseAdapter;->invalidate()V

    :cond_9
    const-string v0, "X-Adtype"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/adsdk/sdk/mraid/BaseAdapter;->getAdapterForType(Ljava/lang/String;)Lcom/adsdk/sdk/mraid/BaseAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdapter:Lcom/adsdk/sdk/mraid/BaseAdapter;

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdapter:Lcom/adsdk/sdk/mraid/BaseAdapter;

    if-eqz v1, :cond_3c

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Loading native adapter for type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v0, "X-Nativeparams"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdapter:Lcom/adsdk/sdk/mraid/BaseAdapter;

    invoke-virtual {v1, p0, v0}, Lcom/adsdk/sdk/mraid/BaseAdapter;->init(Lcom/adsdk/sdk/mraid/MoPubView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdapter:Lcom/adsdk/sdk/mraid/BaseAdapter;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/BaseAdapter;->loadAd()V

    :goto_3b
    return-void

    :cond_3c
    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MoPubView;->loadFailUrl()V

    goto :goto_3b
.end method

.method protected nativeAdLoaded()V
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/AdView;->scheduleRefreshTimerIfEnabled()V

    :cond_9
    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MoPubView;->adLoaded()V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    if-nez p1, :cond_2b

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ad Unit ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    invoke-virtual {v1}, Lcom/adsdk/sdk/mraid/AdView;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") going visible: enabling refresh"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iput-boolean v3, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mIsInForeground:Z

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    invoke-virtual {v0, v3}, Lcom/adsdk/sdk/mraid/AdView;->setAutorefreshEnabled(Z)V

    goto :goto_6

    :cond_2b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ad Unit ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    invoke-virtual {v1}, Lcom/adsdk/sdk/mraid/AdView;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") going invisible: disabling refresh"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iput-boolean v2, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mIsInForeground:Z

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    invoke-virtual {v0, v2}, Lcom/adsdk/sdk/mraid/AdView;->setAutorefreshEnabled(Z)V

    goto :goto_6
.end method

.method protected registerClick()V
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/AdView;->registerClick()V

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MoPubView;->adClicked()V

    :cond_c
    return-void
.end method

.method public setAdContentView(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    invoke-virtual {v0, p1}, Lcom/adsdk/sdk/mraid/AdView;->setAdContentView(Landroid/view/View;)V

    :cond_9
    return-void
.end method

.method public setAdListener(Lcom/adsdk/sdk/AdListener;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdListener:Lcom/adsdk/sdk/AdListener;

    return-void
.end method

.method public setAdUnitId(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    invoke-virtual {v0, p1}, Lcom/adsdk/sdk/mraid/AdView;->setAdUnitId(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public setAutorefreshEnabled(Z)V
    .registers 3

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    invoke-virtual {v0, p1}, Lcom/adsdk/sdk/mraid/AdView;->setAutorefreshEnabled(Z)V

    :cond_9
    return-void
.end method

.method public setClickthroughUrl(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    invoke-virtual {v0, p1}, Lcom/adsdk/sdk/mraid/AdView;->setClickthroughUrl(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    invoke-virtual {v0, p1}, Lcom/adsdk/sdk/mraid/AdView;->setKeywords(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .registers 3

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mAdView:Lcom/adsdk/sdk/mraid/AdView;

    invoke-virtual {v0, p1}, Lcom/adsdk/sdk/mraid/AdView;->setLocation(Landroid/location/Location;)V

    :cond_9
    return-void
.end method

.method public setLocationAwareness(Lcom/adsdk/sdk/mraid/MoPubView$LocationAwareness;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mLocationAwareness:Lcom/adsdk/sdk/mraid/MoPubView$LocationAwareness;

    return-void
.end method

.method public setLocationPrecision(I)V
    .registers 2

    if-ltz p1, :cond_5

    :goto_2
    iput p1, p0, Lcom/adsdk/sdk/mraid/MoPubView;->mLocationPrecision:I

    return-void

    :cond_5
    const/4 p1, 0x0

    goto :goto_2
.end method
