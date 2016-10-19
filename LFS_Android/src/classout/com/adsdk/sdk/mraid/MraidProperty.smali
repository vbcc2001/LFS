.class abstract Lcom/adsdk/sdk/mraid/MraidProperty;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private sanitize(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_b

    const-string v0, "[^a-zA-Z0-9_,:\\s\\{\\}\\\'\\\"]"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const-string v0, ""

    goto :goto_a
.end method


# virtual methods
.method public abstract toJsonPair()Ljava/lang/String;
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidProperty;->toJsonPair()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adsdk/sdk/mraid/MraidProperty;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
