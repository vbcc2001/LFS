.class abstract Lcom/adsdk/sdk/mraid/MraidCommand;
.super Ljava/lang/Object;


# instance fields
.field protected mParams:Ljava/util/Map;

.field protected mView:Lcom/adsdk/sdk/mraid/MraidView;


# direct methods
.method constructor <init>(Ljava/util/Map;Lcom/adsdk/sdk/mraid/MraidView;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MraidCommand;->mParams:Ljava/util/Map;

    iput-object p2, p0, Lcom/adsdk/sdk/mraid/MraidCommand;->mView:Lcom/adsdk/sdk/mraid/MraidView;

    return-void
.end method


# virtual methods
.method abstract execute()V
.end method

.method protected getBooleanFromParamsForKey(Ljava/lang/String;)Z
    .registers 4

    const-string v0, "true"

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidCommand;->mParams:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected getFloatFromParamsForKey(Ljava/lang/String;)F
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidCommand;->mParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_d

    move v0, v1

    :goto_c
    return v0

    :cond_d
    :try_start_d
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_10} :catch_12

    move-result v0

    goto :goto_c

    :catch_12
    move-exception v0

    move v0, v1

    goto :goto_c
.end method

.method protected getIntFromParamsForKey(Ljava/lang/String;)I
    .registers 5

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidCommand;->mParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_d

    move v0, v1

    :goto_c
    return v0

    :cond_d
    const/16 v2, 0xa

    :try_start_f
    invoke-static {v0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_12} :catch_14

    move-result v0

    goto :goto_c

    :catch_14
    move-exception v0

    move v0, v1

    goto :goto_c
.end method

.method protected getStringFromParamsForKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidCommand;->mParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
