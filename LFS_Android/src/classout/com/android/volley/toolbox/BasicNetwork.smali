.class public Lcom/android/volley/toolbox/BasicNetwork;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/volley/Network;


# static fields
.field protected static final DEBUG:Z

.field private static DEFAULT_POOL_SIZE:I

.field private static SLOW_REQUEST_THRESHOLD_MS:I


# instance fields
.field protected final mHttpStack:Lcom/android/volley/toolbox/HttpStack;

.field protected final mPool:Lcom/android/volley/toolbox/ByteArrayPool;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Lcom/android/volley/VolleyLog;->DEBUG:Z

    sput-boolean v0, Lcom/android/volley/toolbox/BasicNetwork;->DEBUG:Z

    const/16 v0, 0xbb8

    sput v0, Lcom/android/volley/toolbox/BasicNetwork;->SLOW_REQUEST_THRESHOLD_MS:I

    const/16 v0, 0x1000

    sput v0, Lcom/android/volley/toolbox/BasicNetwork;->DEFAULT_POOL_SIZE:I

    return-void
.end method

.method public constructor <init>(Lcom/android/volley/toolbox/HttpStack;)V
    .registers 4

    new-instance v0, Lcom/android/volley/toolbox/ByteArrayPool;

    sget v1, Lcom/android/volley/toolbox/BasicNetwork;->DEFAULT_POOL_SIZE:I

    invoke-direct {v0, v1}, Lcom/android/volley/toolbox/ByteArrayPool;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/android/volley/toolbox/BasicNetwork;-><init>(Lcom/android/volley/toolbox/HttpStack;Lcom/android/volley/toolbox/ByteArrayPool;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/volley/toolbox/HttpStack;Lcom/android/volley/toolbox/ByteArrayPool;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/volley/toolbox/BasicNetwork;->mHttpStack:Lcom/android/volley/toolbox/HttpStack;

    iput-object p2, p0, Lcom/android/volley/toolbox/BasicNetwork;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    return-void
.end method

.method private addCacheHeaders(Ljava/util/Map;Lcom/android/volley/Cache$Entry;)V
    .registers 7

    if-nez p2, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    iget-object v0, p2, Lcom/android/volley/Cache$Entry;->etag:Ljava/lang/String;

    if-eqz v0, :cond_e

    const-string v0, "If-None-Match"

    iget-object v1, p2, Lcom/android/volley/Cache$Entry;->etag:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    iget-wide v0, p2, Lcom/android/volley/Cache$Entry;->serverDate:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    new-instance v0, Ljava/util/Date;

    iget-wide v1, p2, Lcom/android/volley/Cache$Entry;->serverDate:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    const-string v1, "If-Modified-Since"

    invoke-static {v0}, Lorg/apache/http/impl/cookie/DateUtils;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method private static attemptRetryOnException(Ljava/lang/String;Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V
    .registers 9

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/android/volley/Request;->getRetryPolicy()Lcom/android/volley/RetryPolicy;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/volley/Request;->getTimeoutMs()I

    move-result v1

    :try_start_b
    invoke-interface {v0, p2}, Lcom/android/volley/RetryPolicy;->retry(Lcom/android/volley/VolleyError;)V
    :try_end_e
    .catch Lcom/android/volley/VolleyError; {:try_start_b .. :try_end_e} :catch_22

    const-string v0, "%s-retry [timeout=%s]"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    return-void

    :catch_22
    move-exception v0

    const-string v2, "%s-timeout-giveup [timeout=%s]"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    throw v0
.end method

.method private static convertHeaders([Lorg/apache/http/Header;)Ljava/util/Map;
    .registers 5

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    :goto_6
    array-length v2, p0

    if-lt v0, v2, :cond_a

    return-object v1

    :cond_a
    aget-object v2, p0, v0

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p0, v0

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method private entityToBytes(Lorg/apache/http/HttpEntity;)[B
    .registers 8

    const/4 v5, 0x0

    new-instance v2, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;

    iget-object v0, p0, Lcom/android/volley/toolbox/BasicNetwork;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v3

    long-to-int v1, v3

    invoke-direct {v2, v0, v1}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;-><init>(Lcom/android/volley/toolbox/ByteArrayPool;I)V

    const/4 v1, 0x0

    :try_start_e
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_27

    new-instance v0, Lcom/android/volley/ServerError;

    invoke-direct {v0}, Lcom/android/volley/ServerError;-><init>()V

    throw v0
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_1a

    :catchall_1a
    move-exception v0

    :try_start_1b
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_54

    :goto_1e
    iget-object v3, p0, Lcom/android/volley/toolbox/BasicNetwork;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    invoke-virtual {v3, v1}, Lcom/android/volley/toolbox/ByteArrayPool;->returnBuf([B)V

    invoke-virtual {v2}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->close()V

    throw v0

    :cond_27
    :try_start_27
    iget-object v3, p0, Lcom/android/volley/toolbox/BasicNetwork;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    const/16 v4, 0x400

    invoke-virtual {v3, v4}, Lcom/android/volley/toolbox/ByteArrayPool;->getBuf(I)[B

    move-result-object v1

    :goto_2f
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_46

    invoke-virtual {v2}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->toByteArray()[B
    :try_end_39
    .catchall {:try_start_27 .. :try_end_39} :catchall_1a

    move-result-object v0

    :try_start_3a
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_4b

    :goto_3d
    iget-object v3, p0, Lcom/android/volley/toolbox/BasicNetwork;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    invoke-virtual {v3, v1}, Lcom/android/volley/toolbox/ByteArrayPool;->returnBuf([B)V

    invoke-virtual {v2}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->close()V

    return-object v0

    :cond_46
    const/4 v4, 0x0

    :try_start_47
    invoke-virtual {v2, v1, v4, v3}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->write([BII)V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_1a

    goto :goto_2f

    :catch_4b
    move-exception v3

    const-string v3, "Error occured when calling consumingContent"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3d

    :catch_54
    move-exception v3

    const-string v3, "Error occured when calling consumingContent"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1e
.end method

.method private logSlowRequests(JLcom/android/volley/Request;[BLorg/apache/http/StatusLine;)V
    .registers 10

    sget-boolean v0, Lcom/android/volley/toolbox/BasicNetwork;->DEBUG:Z

    if-nez v0, :cond_b

    sget v0, Lcom/android/volley/toolbox/BasicNetwork;->SLOW_REQUEST_THRESHOLD_MS:I

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_41

    :cond_b
    const-string v1, "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]"

    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, v2, v0

    const/4 v0, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x2

    if-eqz p4, :cond_42

    array-length v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_22
    aput-object v0, v2, v3

    const/4 v0, 0x3

    invoke-interface {p5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x4

    invoke-virtual {p3}, Lcom/android/volley/Request;->getRetryPolicy()Lcom/android/volley/RetryPolicy;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/volley/RetryPolicy;->getCurrentRetryCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_41
    return-void

    :cond_42
    const-string v0, "null"

    goto :goto_22
.end method


# virtual methods
.method protected logError(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-string v2, "HTTP ERROR(%s) %d ms to fetch %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    sub-long/2addr v0, p3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x2

    aput-object p2, v3, v0

    invoke-static {v2, v3}, Lcom/android/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public performRequest(Lcom/android/volley/Request;)Lcom/android/volley/NetworkResponse;
    .registers 13

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    :goto_4
    const/4 v2, 0x0

    const/4 v4, 0x0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :try_start_b
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lcom/android/volley/Request;->getCacheEntry()Lcom/android/volley/Cache$Entry;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/android/volley/toolbox/BasicNetwork;->addCacheHeaders(Ljava/util/Map;Lcom/android/volley/Cache$Entry;)V

    iget-object v3, p0, Lcom/android/volley/toolbox/BasicNetwork;->mHttpStack:Lcom/android/volley/toolbox/HttpStack;

    invoke-interface {v3, p1, v0}, Lcom/android/volley/toolbox/HttpStack;->performRequest(Lcom/android/volley/Request;Ljava/util/Map;)Lorg/apache/http/HttpResponse;
    :try_end_1c
    .catch Ljava/net/SocketTimeoutException; {:try_start_b .. :try_end_1c} :catch_61
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_b .. :try_end_1c} :catch_74
    .catch Ljava/net/MalformedURLException; {:try_start_b .. :try_end_1c} :catch_80
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_1c} :catch_9a

    move-result-object v7

    :try_start_1d
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    invoke-static {v0}, Lcom/android/volley/toolbox/BasicNetwork;->convertHeaders([Lorg/apache/http/Header;)Ljava/util/Map;
    :try_end_2c
    .catch Ljava/net/SocketTimeoutException; {:try_start_1d .. :try_end_2c} :catch_61
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1d .. :try_end_2c} :catch_74
    .catch Ljava/net/MalformedURLException; {:try_start_1d .. :try_end_2c} :catch_80
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_2c} :catch_ea

    move-result-object v6

    const/16 v0, 0x130

    if-ne v10, v0, :cond_40

    :try_start_31
    new-instance v0, Lcom/android/volley/NetworkResponse;

    const/16 v1, 0x130

    invoke-virtual {p1}, Lcom/android/volley/Request;->getCacheEntry()Lcom/android/volley/Cache$Entry;

    move-result-object v2

    iget-object v2, v2, Lcom/android/volley/Cache$Entry;->data:[B

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v6, v3}, Lcom/android/volley/NetworkResponse;-><init>(I[BLjava/util/Map;Z)V

    :goto_3f
    return-object v0

    :cond_40
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/volley/toolbox/BasicNetwork;->entityToBytes(Lorg/apache/http/HttpEntity;)[B

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v1, v0, v8

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/BasicNetwork;->logSlowRequests(JLcom/android/volley/Request;[BLorg/apache/http/StatusLine;)V

    const/16 v0, 0xc8

    if-eq v10, v0, :cond_6d

    const/16 v0, 0xcc

    if-eq v10, v0, :cond_6d

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_61
    .catch Ljava/net/SocketTimeoutException; {:try_start_31 .. :try_end_61} :catch_61
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_31 .. :try_end_61} :catch_74
    .catch Ljava/net/MalformedURLException; {:try_start_31 .. :try_end_61} :catch_80
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_61} :catch_ed

    :catch_61
    move-exception v0

    const-string v0, "socket"

    new-instance v1, Lcom/android/volley/TimeoutError;

    invoke-direct {v1}, Lcom/android/volley/TimeoutError;-><init>()V

    invoke-static {v0, p1, v1}, Lcom/android/volley/toolbox/BasicNetwork;->attemptRetryOnException(Ljava/lang/String;Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    goto :goto_4

    :cond_6d
    :try_start_6d
    new-instance v0, Lcom/android/volley/NetworkResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v10, v4, v6, v1}, Lcom/android/volley/NetworkResponse;-><init>(I[BLjava/util/Map;Z)V
    :try_end_73
    .catch Ljava/net/SocketTimeoutException; {:try_start_6d .. :try_end_73} :catch_61
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_6d .. :try_end_73} :catch_74
    .catch Ljava/net/MalformedURLException; {:try_start_6d .. :try_end_73} :catch_80
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_73} :catch_ed

    goto :goto_3f

    :catch_74
    move-exception v0

    const-string v0, "connection"

    new-instance v1, Lcom/android/volley/TimeoutError;

    invoke-direct {v1}, Lcom/android/volley/TimeoutError;-><init>()V

    invoke-static {v0, p1, v1}, Lcom/android/volley/toolbox/BasicNetwork;->attemptRetryOnException(Ljava/lang/String;Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    goto :goto_4

    :catch_80
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Bad URL "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_9a
    move-exception v0

    :goto_9b
    if-eqz v2, :cond_d7

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const-string v2, "Unexpected response code %d for %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    invoke-virtual {p1}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v2, v3}, Lcom/android/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v4, :cond_e3

    new-instance v2, Lcom/android/volley/NetworkResponse;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v4, v1, v3}, Lcom/android/volley/NetworkResponse;-><init>(I[BLjava/util/Map;Z)V

    const/16 v1, 0x191

    if-eq v0, v1, :cond_cb

    const/16 v1, 0x193

    if-ne v0, v1, :cond_dd

    :cond_cb
    const-string v0, "auth"

    new-instance v1, Lcom/android/volley/AuthFailureError;

    invoke-direct {v1, v2}, Lcom/android/volley/AuthFailureError;-><init>(Lcom/android/volley/NetworkResponse;)V

    invoke-static {v0, p1, v1}, Lcom/android/volley/toolbox/BasicNetwork;->attemptRetryOnException(Ljava/lang/String;Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    goto/16 :goto_4

    :cond_d7
    new-instance v1, Lcom/android/volley/NoConnectionError;

    invoke-direct {v1, v0}, Lcom/android/volley/NoConnectionError;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_dd
    new-instance v0, Lcom/android/volley/ServerError;

    invoke-direct {v0, v2}, Lcom/android/volley/ServerError;-><init>(Lcom/android/volley/NetworkResponse;)V

    throw v0

    :cond_e3
    new-instance v0, Lcom/android/volley/NetworkError;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/volley/NetworkError;-><init>(Lcom/android/volley/NetworkResponse;)V

    throw v0

    :catch_ea
    move-exception v0

    move-object v2, v7

    goto :goto_9b

    :catch_ed
    move-exception v0

    move-object v1, v6

    move-object v2, v7

    goto :goto_9b
.end method
