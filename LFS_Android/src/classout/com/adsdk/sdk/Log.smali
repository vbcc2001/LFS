.class public final Lcom/adsdk/sdk/Log;
.super Ljava/lang/Object;


# static fields
.field public static LOGGING_ENABLED:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/adsdk/sdk/Log;->LOGGING_ENABLED:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .registers 1

    invoke-static {}, Lcom/adsdk/sdk/Log;->isLoggingEnabled()Z

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    invoke-static {}, Lcom/adsdk/sdk/Log;->isLoggingEnabled()Z

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-static {}, Lcom/adsdk/sdk/Log;->isLoggingEnabled()Z

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 2

    invoke-static {}, Lcom/adsdk/sdk/Log;->isLoggingEnabled()Z

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .registers 2

    const-string v0, "ADSDK"

    invoke-static {v0, p0}, Lcom/adsdk/sdk/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/adsdk/sdk/Log;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    invoke-static {}, Lcom/adsdk/sdk/Log;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-static {}, Lcom/adsdk/sdk/Log;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "ADSDK"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_b
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .registers 1

    invoke-static {}, Lcom/adsdk/sdk/Log;->isLoggingEnabled()Z

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    invoke-static {}, Lcom/adsdk/sdk/Log;->isLoggingEnabled()Z

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-static {}, Lcom/adsdk/sdk/Log;->isLoggingEnabled()Z

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 2

    invoke-static {}, Lcom/adsdk/sdk/Log;->isLoggingEnabled()Z

    return-void
.end method

.method private static isLoggingEnabled()Z
    .registers 1

    sget-boolean v0, Lcom/adsdk/sdk/Log;->LOGGING_ENABLED:Z

    return v0
.end method

.method public static isLoggingEnabled(Landroid/content/Context;)Z
    .registers 5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "adsdk_debug_enabled"

    const-string v2, "string"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public static v(Ljava/lang/String;)V
    .registers 1

    invoke-static {}, Lcom/adsdk/sdk/Log;->isLoggingEnabled()Z

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    invoke-static {}, Lcom/adsdk/sdk/Log;->isLoggingEnabled()Z

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-static {}, Lcom/adsdk/sdk/Log;->isLoggingEnabled()Z

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 2

    invoke-static {}, Lcom/adsdk/sdk/Log;->isLoggingEnabled()Z

    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .registers 2

    const-string v0, "ADSDK"

    invoke-static {v0, p0}, Lcom/adsdk/sdk/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/adsdk/sdk/Log;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    invoke-static {}, Lcom/adsdk/sdk/Log;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-static {}, Lcom/adsdk/sdk/Log;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "ADSDK"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_b
    return-void
.end method
