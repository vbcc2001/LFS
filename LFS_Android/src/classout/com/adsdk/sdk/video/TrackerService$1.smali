.class Lcom/adsdk/sdk/video/TrackerService$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const/16 v5, 0x2710

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/adsdk/sdk/video/TrackerService;->access$0(Z)V

    :goto_6
    # getter for: Lcom/adsdk/sdk/video/TrackerService;->sStopped:Z
    invoke-static {}, Lcom/adsdk/sdk/video/TrackerService;->access$1()Z

    move-result v0

    if-eqz v0, :cond_9e

    invoke-static {v4}, Lcom/adsdk/sdk/video/TrackerService;->access$0(Z)V

    invoke-static {v4}, Lcom/adsdk/sdk/video/TrackerService;->access$7(Z)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/adsdk/sdk/video/TrackerService;->access$8(Ljava/lang/Thread;)V

    return-void

    :cond_17
    # invokes: Lcom/adsdk/sdk/video/TrackerService;->getNextUpdate()Lcom/adsdk/sdk/video/TrackEvent;
    invoke-static {}, Lcom/adsdk/sdk/video/TrackerService;->access$3()Lcom/adsdk/sdk/video/TrackEvent;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sending tracking :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/adsdk/sdk/video/TrackEvent;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v0, Lcom/adsdk/sdk/video/TrackEvent;->timestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Events left:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/adsdk/sdk/video/TrackerService;->sTrackEvents:Ljava/util/Queue;
    invoke-static {}, Lcom/adsdk/sdk/video/TrackerService;->access$4()Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    if-eqz v0, :cond_9e

    :try_start_4f
    new-instance v1, Ljava/net/URL;

    iget-object v2, v0, Lcom/adsdk/sdk/video/TrackEvent;->url:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_56
    .catch Ljava/net/MalformedURLException; {:try_start_4f .. :try_end_56} :catch_dc

    const-string v2, "Sending conversion Request"

    invoke-static {v2}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Perform tracking HTTP Get Url: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/adsdk/sdk/video/TrackEvent;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    invoke-static {v3, v5}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    invoke-static {v3, v5}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    :try_start_8b
    invoke-virtual {v2, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_f2

    invoke-static {v0}, Lcom/adsdk/sdk/video/TrackerService;->requestRetry(Lcom/adsdk/sdk/video/TrackEvent;)V
    :try_end_9e
    .catch Ljava/lang/Throwable; {:try_start_8b .. :try_end_9e} :catch_f8

    :cond_9e
    :goto_9e
    # invokes: Lcom/adsdk/sdk/video/TrackerService;->hasMoreUpdates()Z
    invoke-static {}, Lcom/adsdk/sdk/video/TrackerService;->access$2()Z

    move-result v0

    if-eqz v0, :cond_aa

    # getter for: Lcom/adsdk/sdk/video/TrackerService;->sStopped:Z
    invoke-static {}, Lcom/adsdk/sdk/video/TrackerService;->access$1()Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_aa
    # getter for: Lcom/adsdk/sdk/video/TrackerService;->sStopped:Z
    invoke-static {}, Lcom/adsdk/sdk/video/TrackerService;->access$1()Z

    move-result v0

    if-nez v0, :cond_fd

    # getter for: Lcom/adsdk/sdk/video/TrackerService;->sRetryTrackEvents:Ljava/util/Queue;
    invoke-static {}, Lcom/adsdk/sdk/video/TrackerService;->access$5()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_fd

    const-wide/16 v0, 0x7530

    :try_start_bc
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_bf} :catch_103

    :goto_bf
    # getter for: Lcom/adsdk/sdk/video/TrackerService;->sLock:Ljava/lang/Object;
    invoke-static {}, Lcom/adsdk/sdk/video/TrackerService;->access$6()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_c4
    # getter for: Lcom/adsdk/sdk/video/TrackerService;->sTrackEvents:Ljava/util/Queue;
    invoke-static {}, Lcom/adsdk/sdk/video/TrackerService;->access$4()Ljava/util/Queue;

    move-result-object v0

    # getter for: Lcom/adsdk/sdk/video/TrackerService;->sRetryTrackEvents:Ljava/util/Queue;
    invoke-static {}, Lcom/adsdk/sdk/video/TrackerService;->access$5()Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    # getter for: Lcom/adsdk/sdk/video/TrackerService;->sRetryTrackEvents:Ljava/util/Queue;
    invoke-static {}, Lcom/adsdk/sdk/video/TrackerService;->access$5()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    monitor-exit v1
    :try_end_d7
    .catchall {:try_start_c4 .. :try_end_d7} :catchall_d9

    goto/16 :goto_6

    :catchall_d9
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_dc
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wrong tracking url:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/adsdk/sdk/video/TrackEvent;->url:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    goto :goto_9e

    :cond_f2
    :try_start_f2
    const-string v1, "Tracking OK"

    invoke-static {v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V
    :try_end_f7
    .catch Ljava/lang/Throwable; {:try_start_f2 .. :try_end_f7} :catch_f8

    goto :goto_9e

    :catch_f8
    move-exception v1

    invoke-static {v0}, Lcom/adsdk/sdk/video/TrackerService;->requestRetry(Lcom/adsdk/sdk/video/TrackEvent;)V

    goto :goto_9e

    :cond_fd
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/adsdk/sdk/video/TrackerService;->access$0(Z)V

    goto/16 :goto_6

    :catch_103
    move-exception v0

    goto :goto_bf
.end method
