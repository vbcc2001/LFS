.class Lcom/adsdk/sdk/mraid/MraidCommandRegistry;
.super Ljava/lang/Object;


# static fields
.field private static commandMap:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/adsdk/sdk/mraid/MraidCommandRegistry;->commandMap:Ljava/util/Map;

    const-string v1, "close"

    new-instance v2, Lcom/adsdk/sdk/mraid/MraidCommandRegistry$1;

    invoke-direct {v2}, Lcom/adsdk/sdk/mraid/MraidCommandRegistry$1;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/adsdk/sdk/mraid/MraidCommandRegistry;->commandMap:Ljava/util/Map;

    const-string v1, "expand"

    new-instance v2, Lcom/adsdk/sdk/mraid/MraidCommandRegistry$2;

    invoke-direct {v2}, Lcom/adsdk/sdk/mraid/MraidCommandRegistry$2;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/adsdk/sdk/mraid/MraidCommandRegistry;->commandMap:Ljava/util/Map;

    const-string v1, "usecustomclose"

    new-instance v2, Lcom/adsdk/sdk/mraid/MraidCommandRegistry$3;

    invoke-direct {v2}, Lcom/adsdk/sdk/mraid/MraidCommandRegistry$3;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/adsdk/sdk/mraid/MraidCommandRegistry;->commandMap:Ljava/util/Map;

    const-string v1, "open"

    new-instance v2, Lcom/adsdk/sdk/mraid/MraidCommandRegistry$4;

    invoke-direct {v2}, Lcom/adsdk/sdk/mraid/MraidCommandRegistry$4;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createCommand(Ljava/lang/String;Ljava/util/Map;Lcom/adsdk/sdk/mraid/MraidView;)Lcom/adsdk/sdk/mraid/MraidCommand;
    .registers 4

    sget-object v0, Lcom/adsdk/sdk/mraid/MraidCommandRegistry;->commandMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsdk/sdk/mraid/MraidCommandRegistry$MraidCommandFactory;

    if-eqz v0, :cond_f

    invoke-interface {v0, p1, p2}, Lcom/adsdk/sdk/mraid/MraidCommandRegistry$MraidCommandFactory;->create(Ljava/util/Map;Lcom/adsdk/sdk/mraid/MraidView;)Lcom/adsdk/sdk/mraid/MraidCommand;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method
