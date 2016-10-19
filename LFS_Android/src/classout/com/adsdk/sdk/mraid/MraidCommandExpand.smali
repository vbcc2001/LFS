.class Lcom/adsdk/sdk/mraid/MraidCommandExpand;
.super Lcom/adsdk/sdk/mraid/MraidCommand;


# direct methods
.method constructor <init>(Ljava/util/Map;Lcom/adsdk/sdk/mraid/MraidView;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/adsdk/sdk/mraid/MraidCommand;-><init>(Ljava/util/Map;Lcom/adsdk/sdk/mraid/MraidView;)V

    return-void
.end method


# virtual methods
.method execute()V
    .registers 7

    const-string v0, "w"

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/MraidCommandExpand;->getIntFromParamsForKey(Ljava/lang/String;)I

    move-result v2

    const-string v0, "h"

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/MraidCommandExpand;->getIntFromParamsForKey(Ljava/lang/String;)I

    move-result v3

    const-string v0, "url"

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/MraidCommandExpand;->getStringFromParamsForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "shouldUseCustomClose"

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/MraidCommandExpand;->getBooleanFromParamsForKey(Ljava/lang/String;)Z

    move-result v4

    const-string v0, "lockOrientation"

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/MraidCommandExpand;->getBooleanFromParamsForKey(Ljava/lang/String;)Z

    move-result v5

    if-gtz v2, :cond_28

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidCommandExpand;->mView:Lcom/adsdk/sdk/mraid/MraidView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidView;->getDisplayController()Lcom/adsdk/sdk/mraid/MraidDisplayController;

    move-result-object v0

    iget v2, v0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mScreenWidth:I

    :cond_28
    if-gtz v3, :cond_32

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidCommandExpand;->mView:Lcom/adsdk/sdk/mraid/MraidView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidView;->getDisplayController()Lcom/adsdk/sdk/mraid/MraidDisplayController;

    move-result-object v0

    iget v3, v0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mScreenHeight:I

    :cond_32
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidCommandExpand;->mView:Lcom/adsdk/sdk/mraid/MraidView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidView;->getDisplayController()Lcom/adsdk/sdk/mraid/MraidDisplayController;

    move-result-object v0

    invoke-virtual/range {v0 .. v5}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->expand(Ljava/lang/String;IIZZ)V

    return-void
.end method
