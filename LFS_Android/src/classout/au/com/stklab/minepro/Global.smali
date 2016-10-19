.class public Lau/com/stklab/minepro/Global;
.super Ljava/lang/Object;


# static fields
.field public static channel1Reachable:Z

.field public static channel2Reachable:Z

.field public static channel3Reachable:Z

.field public static channel4Reachable:Z

.field public static imageLoader:Lcom/android/volley/toolbox/ImageLoader;

.field public static isInRandom:Z

.field public static language:Ljava/lang/String;

.field public static mRequestQueue:Lcom/android/volley/RequestQueue;

.field public static mineBetaInstance:Lau/com/stklab/minepro/mineBeta;

.field public static searchPage:I

.field public static searchResults:Ljava/util/ArrayList;

.field public static selectChannelActivity:Lau/com/stklab/minepro/SelectChannel;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    sput-object v2, Lau/com/stklab/minepro/Global;->selectChannelActivity:Lau/com/stklab/minepro/SelectChannel;

    sput-object v2, Lau/com/stklab/minepro/Global;->mineBetaInstance:Lau/com/stklab/minepro/mineBeta;

    const-string v0, ""

    sput-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    sput-object v2, Lau/com/stklab/minepro/Global;->searchResults:Ljava/util/ArrayList;

    sput v3, Lau/com/stklab/minepro/Global;->searchPage:I

    sput-boolean v3, Lau/com/stklab/minepro/Global;->isInRandom:Z

    sput-boolean v1, Lau/com/stklab/minepro/Global;->channel1Reachable:Z

    sput-boolean v1, Lau/com/stklab/minepro/Global;->channel2Reachable:Z

    sput-boolean v1, Lau/com/stklab/minepro/Global;->channel3Reachable:Z

    sput-boolean v1, Lau/com/stklab/minepro/Global;->channel4Reachable:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
