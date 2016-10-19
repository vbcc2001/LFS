.class Lcom/adsdk/sdk/mraid/MraidCommandOpen;
.super Lcom/adsdk/sdk/mraid/MraidCommand;


# direct methods
.method constructor <init>(Ljava/util/Map;Lcom/adsdk/sdk/mraid/MraidView;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/adsdk/sdk/mraid/MraidCommand;-><init>(Ljava/util/Map;Lcom/adsdk/sdk/mraid/MraidView;)V

    return-void
.end method


# virtual methods
.method execute()V
    .registers 3

    const-string v0, "url"

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/MraidCommandOpen;->getStringFromParamsForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidCommandOpen;->mView:Lcom/adsdk/sdk/mraid/MraidView;

    invoke-virtual {v1}, Lcom/adsdk/sdk/mraid/MraidView;->getBrowserController()Lcom/adsdk/sdk/mraid/MraidBrowserController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adsdk/sdk/mraid/MraidBrowserController;->open(Ljava/lang/String;)V

    return-void
.end method
