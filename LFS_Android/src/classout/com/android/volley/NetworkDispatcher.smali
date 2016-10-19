.class public Lcom/android/volley/NetworkDispatcher;
.super Ljava/lang/Thread;


# instance fields
.field private final mCache:Lcom/android/volley/Cache;

.field private final mDelivery:Lcom/android/volley/ResponseDelivery;

.field private final mNetwork:Lcom/android/volley/Network;

.field private final mQueue:Ljava/util/concurrent/BlockingQueue;

.field private volatile mQuit:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lcom/android/volley/Network;Lcom/android/volley/Cache;Lcom/android/volley/ResponseDelivery;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/volley/NetworkDispatcher;->mQuit:Z

    iput-object p1, p0, Lcom/android/volley/NetworkDispatcher;->mQueue:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lcom/android/volley/NetworkDispatcher;->mNetwork:Lcom/android/volley/Network;

    iput-object p3, p0, Lcom/android/volley/NetworkDispatcher;->mCache:Lcom/android/volley/Cache;

    iput-object p4, p0, Lcom/android/volley/NetworkDispatcher;->mDelivery:Lcom/android/volley/ResponseDelivery;

    return-void
.end method

.method private parseAndDeliverNetworkError(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V
    .registers 5

    invoke-virtual {p1, p2}, Lcom/android/volley/Request;->parseNetworkError(Lcom/android/volley/VolleyError;)Lcom/android/volley/VolleyError;

    move-result-object v0

    iget-object v1, p0, Lcom/android/volley/NetworkDispatcher;->mDelivery:Lcom/android/volley/ResponseDelivery;

    invoke-interface {v1, p1, v0}, Lcom/android/volley/ResponseDelivery;->postError(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    return-void
.end method


# virtual methods
.method public quit()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/volley/NetworkDispatcher;->mQuit:Z

    invoke-virtual {p0}, Lcom/android/volley/NetworkDispatcher;->interrupt()V

    return-void
.end method

.method public run()V
    .registers 7

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :cond_5
    :goto_5
    :try_start_5
    iget-object v0, p0, Lcom/android/volley/NetworkDispatcher;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/Request;
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_d} :catch_23

    :try_start_d
    const-string v1, "network-queue-take"

    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/volley/Request;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_29

    const-string v1, "network-discard-cancelled"

    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->finish(Ljava/lang/String;)V
    :try_end_1d
    .catch Lcom/android/volley/VolleyError; {:try_start_d .. :try_end_1d} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1d} :catch_51

    goto :goto_5

    :catch_1e
    move-exception v1

    invoke-direct {p0, v0, v1}, Lcom/android/volley/NetworkDispatcher;->parseAndDeliverNetworkError(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    goto :goto_5

    :catch_23
    move-exception v0

    iget-boolean v0, p0, Lcom/android/volley/NetworkDispatcher;->mQuit:Z

    if-eqz v0, :cond_5

    return-void

    :cond_29
    :try_start_29
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_36

    invoke-virtual {v0}, Lcom/android/volley/Request;->getTrafficStatsTag()I

    move-result v1

    invoke-static {v1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    :cond_36
    iget-object v1, p0, Lcom/android/volley/NetworkDispatcher;->mNetwork:Lcom/android/volley/Network;

    invoke-interface {v1, v0}, Lcom/android/volley/Network;->performRequest(Lcom/android/volley/Request;)Lcom/android/volley/NetworkResponse;

    move-result-object v1

    const-string v2, "network-http-complete"

    invoke-virtual {v0, v2}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    iget-boolean v2, v1, Lcom/android/volley/NetworkResponse;->notModified:Z

    if-eqz v2, :cond_6c

    invoke-virtual {v0}, Lcom/android/volley/Request;->hasHadResponseDelivered()Z

    move-result v2

    if-eqz v2, :cond_6c

    const-string v1, "not-modified"

    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->finish(Ljava/lang/String;)V
    :try_end_50
    .catch Lcom/android/volley/VolleyError; {:try_start_29 .. :try_end_50} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_50} :catch_51

    goto :goto_5

    :catch_51
    move-exception v1

    const-string v2, "Unhandled exception %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/volley/VolleyLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/volley/NetworkDispatcher;->mDelivery:Lcom/android/volley/ResponseDelivery;

    new-instance v3, Lcom/android/volley/VolleyError;

    invoke-direct {v3, v1}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v2, v0, v3}, Lcom/android/volley/ResponseDelivery;->postError(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    goto :goto_5

    :cond_6c
    :try_start_6c
    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;

    move-result-object v1

    const-string v2, "network-parse-complete"

    invoke-virtual {v0, v2}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/volley/Request;->shouldCache()Z

    move-result v2

    if-eqz v2, :cond_8f

    iget-object v2, v1, Lcom/android/volley/Response;->cacheEntry:Lcom/android/volley/Cache$Entry;

    if-eqz v2, :cond_8f

    iget-object v2, p0, Lcom/android/volley/NetworkDispatcher;->mCache:Lcom/android/volley/Cache;

    invoke-virtual {v0}, Lcom/android/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/android/volley/Response;->cacheEntry:Lcom/android/volley/Cache$Entry;

    invoke-interface {v2, v3, v4}, Lcom/android/volley/Cache;->put(Ljava/lang/String;Lcom/android/volley/Cache$Entry;)V

    const-string v2, "network-cache-written"

    invoke-virtual {v0, v2}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    :cond_8f
    invoke-virtual {v0}, Lcom/android/volley/Request;->markDelivered()V

    iget-object v2, p0, Lcom/android/volley/NetworkDispatcher;->mDelivery:Lcom/android/volley/ResponseDelivery;

    invoke-interface {v2, v0, v1}, Lcom/android/volley/ResponseDelivery;->postResponse(Lcom/android/volley/Request;Lcom/android/volley/Response;)V
    :try_end_97
    .catch Lcom/android/volley/VolleyError; {:try_start_6c .. :try_end_97} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_97} :catch_51

    goto/16 :goto_5
.end method
