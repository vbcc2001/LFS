.class public abstract Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;
.super Ljava/lang/Object;


# static fields
.field private static final sInterstitialAdapterMap:Ljava/util/HashMap;


# instance fields
.field protected mAdapterListener:Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter$BaseInterstitialAdapterListener;

.field protected mInterstitial:Lcom/adsdk/sdk/mraid/MoPubInterstitial;

.field protected mInvalidated:Z

.field protected mJsonParams:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;->sInterstitialAdapterMap:Ljava/util/HashMap;

    const-string v1, "mraid"

    const-string v2, "com.adsdk.sdk.mraid.MraidInterstitialAdapter"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;->sInterstitialAdapterMap:Ljava/util/HashMap;

    const-string v1, "admob_full"

    const-string v2, "com.adsdk.sdk.mraid.GoogleAdMobInterstitialAdapter"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;->sInterstitialAdapterMap:Ljava/util/HashMap;

    const-string v1, "millennial_full"

    const-string v2, "com.adsdk.sdk.mraid.MillennialInterstitialAdapter"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static classForAdapterType(Ljava/lang/String;)Ljava/lang/Class;
    .registers 5

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;->classStringForAdapterType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1c

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Couldn\'t find a handler for this ad type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". MoPub for Android does not support it at this time."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :goto_1b
    return-object v0

    :cond_1c
    :try_start_1c
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1c .. :try_end_1f} :catch_21

    move-result-object v0

    goto :goto_1b

    :catch_21
    move-exception v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Couldn\'t find "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "class. Make sure the project includes the adapter library for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from the extras folder"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_1b
.end method

.method private static classStringForAdapterType(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;->sInterstitialAdapterMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getAdapterForType(Ljava/lang/String;)Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;
    .registers 4

    const/4 v1, 0x0

    if-nez p0, :cond_5

    move-object v0, v1

    :goto_4
    return-object v0

    :cond_5
    invoke-static {p0}, Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;->classForAdapterType(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_d

    move-object v0, v1

    goto :goto_4

    :cond_d
    const/4 v2, 0x0

    :try_start_e
    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1d} :catch_1e

    goto :goto_4

    :catch_1e
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Couldn\'t create native interstitial adapter for type: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-object v0, v1

    goto :goto_4
.end method


# virtual methods
.method public init(Lcom/adsdk/sdk/mraid/MoPubInterstitial;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;->mInterstitial:Lcom/adsdk/sdk/mraid/MoPubInterstitial;

    iput-object p2, p0, Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;->mJsonParams:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;->mInvalidated:Z

    return-void
.end method

.method public invalidate()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;->mInterstitial:Lcom/adsdk/sdk/mraid/MoPubInterstitial;

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;->mAdapterListener:Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter$BaseInterstitialAdapterListener;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;->mInvalidated:Z

    return-void
.end method

.method public isInvalidated()Z
    .registers 2

    iget-boolean v0, p0, Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;->mInvalidated:Z

    return v0
.end method

.method public abstract loadInterstitial()V
.end method

.method public setAdapterListener(Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter$BaseInterstitialAdapterListener;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter;->mAdapterListener:Lcom/adsdk/sdk/mraid/BaseInterstitialAdapter$BaseInterstitialAdapterListener;

    return-void
.end method

.method public abstract showInterstitial()V
.end method
