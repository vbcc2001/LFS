.class Lcom/adsdk/sdk/mraid/MraidCommandRegistry$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adsdk/sdk/mraid/MraidCommandRegistry$MraidCommandFactory;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Ljava/util/Map;Lcom/adsdk/sdk/mraid/MraidView;)Lcom/adsdk/sdk/mraid/MraidCommand;
    .registers 4

    new-instance v0, Lcom/adsdk/sdk/mraid/MraidCommandClose;

    invoke-direct {v0, p1, p2}, Lcom/adsdk/sdk/mraid/MraidCommandClose;-><init>(Ljava/util/Map;Lcom/adsdk/sdk/mraid/MraidView;)V

    return-object v0
.end method
