.class public final enum Lcom/adsdk/sdk/mraid/MoPubView$LocationAwareness;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/adsdk/sdk/mraid/MoPubView$LocationAwareness;

.field public static final enum LOCATION_AWARENESS_DISABLED:Lcom/adsdk/sdk/mraid/MoPubView$LocationAwareness;

.field public static final enum LOCATION_AWARENESS_NORMAL:Lcom/adsdk/sdk/mraid/MoPubView$LocationAwareness;

.field public static final enum LOCATION_AWARENESS_TRUNCATED:Lcom/adsdk/sdk/mraid/MoPubView$LocationAwareness;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/adsdk/sdk/mraid/MoPubView$LocationAwareness;

    const-string v1, "LOCATION_AWARENESS_NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/adsdk/sdk/mraid/MoPubView$LocationAwareness;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adsdk/sdk/mraid/MoPubView$LocationAwareness;->LOCATION_AWARENESS_NORMAL:Lcom/adsdk/sdk/mraid/MoPubView$LocationAwareness;

    new-instance v0, Lcom/adsdk/sdk/mraid/MoPubView$LocationAwareness;

    const-string v1, "LOCATION_AWARENESS_TRUNCATED"

    invoke-direct {v0, v1, v3}, Lcom/adsdk/sdk/mraid/MoPubView$LocationAwareness;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adsdk/sdk/mraid/MoPubView$LocationAwareness;->LOCATION_AWARENESS_TRUNCATED:Lcom/adsdk/sdk/mraid/MoPubView$LocationAwareness;

    new-instance v0, Lcom/adsdk/sdk/mraid/MoPubView$LocationAwareness;

    const-string v1, "LOCATION_AWARENESS_DISABLED"

    invoke-direct {v0, v1, v4}, Lcom/adsdk/sdk/mraid/MoPubView$LocationAwareness;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adsdk/sdk/mraid/MoPubView$LocationAwareness;->LOCATION_AWARENESS_DISABLED:Lcom/adsdk/sdk/mraid/MoPubView$LocationAwareness;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/adsdk/sdk/mraid/MoPubView$LocationAwareness;

    sget-object v1, Lcom/adsdk/sdk/mraid/MoPubView$LocationAwareness;->LOCATION_AWARENESS_NORMAL:Lcom/adsdk/sdk/mraid/MoPubView$LocationAwareness;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adsdk/sdk/mraid/MoPubView$LocationAwareness;->LOCATION_AWARENESS_TRUNCATED:Lcom/adsdk/sdk/mraid/MoPubView$LocationAwareness;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adsdk/sdk/mraid/MoPubView$LocationAwareness;->LOCATION_AWARENESS_DISABLED:Lcom/adsdk/sdk/mraid/MoPubView$LocationAwareness;

    aput-object v1, v0, v4

    sput-object v0, Lcom/adsdk/sdk/mraid/MoPubView$LocationAwareness;->ENUM$VALUES:[Lcom/adsdk/sdk/mraid/MoPubView$LocationAwareness;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adsdk/sdk/mraid/MoPubView$LocationAwareness;
    .registers 2

    const-class v0, Lcom/adsdk/sdk/mraid/MoPubView$LocationAwareness;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adsdk/sdk/mraid/MoPubView$LocationAwareness;

    return-object v0
.end method

.method public static values()[Lcom/adsdk/sdk/mraid/MoPubView$LocationAwareness;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Lcom/adsdk/sdk/mraid/MoPubView$LocationAwareness;->ENUM$VALUES:[Lcom/adsdk/sdk/mraid/MoPubView$LocationAwareness;

    array-length v1, v0

    new-array v2, v1, [Lcom/adsdk/sdk/mraid/MoPubView$LocationAwareness;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
