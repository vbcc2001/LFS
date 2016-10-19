.class final enum Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;

.field public static final enum HTML_AD_READY:Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;

.field public static final enum NATIVE_AD_READY:Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;

.field public static final enum NOT_READY:Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;

    const-string v1, "HTML_AD_READY"

    invoke-direct {v0, v1, v2}, Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;->HTML_AD_READY:Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;

    new-instance v0, Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;

    const-string v1, "NATIVE_AD_READY"

    invoke-direct {v0, v1, v3}, Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;->NATIVE_AD_READY:Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;

    new-instance v0, Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;

    const-string v1, "NOT_READY"

    invoke-direct {v0, v1, v4}, Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;->NOT_READY:Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;

    sget-object v1, Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;->HTML_AD_READY:Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;->NATIVE_AD_READY:Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;->NOT_READY:Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;->ENUM$VALUES:[Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;
    .registers 2

    const-class v0, Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;

    return-object v0
.end method

.method public static values()[Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;->ENUM$VALUES:[Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;

    array-length v1, v0

    new-array v2, v1, [Lcom/adsdk/sdk/mraid/MoPubInterstitial$InterstitialState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
