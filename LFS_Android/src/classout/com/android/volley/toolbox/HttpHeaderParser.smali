.class public Lcom/android/volley/toolbox/HttpHeaderParser;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;
    .registers 21

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    const-wide/16 v2, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const-string v1, "Date"

    invoke-interface {v13, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_20

    invoke-static {v1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseDateAsEpoch(Ljava/lang/String;)J

    move-result-wide v1

    move-wide v2, v1

    :cond_20
    const-string v1, "Cache-Control"

    invoke-interface {v13, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_35

    const/4 v6, 0x1

    const-string v14, ","

    invoke-virtual {v1, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    const/4 v1, 0x0

    :goto_32
    array-length v15, v14

    if-lt v1, v15, :cond_73

    :cond_35
    move/from16 v17, v6

    move-wide/from16 v18, v4

    move-wide/from16 v5, v18

    move/from16 v4, v17

    const-string v1, "Expires"

    invoke-interface {v13, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_4b

    invoke-static {v1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseDateAsEpoch(Ljava/lang/String;)J

    move-result-wide v7

    :cond_4b
    const-string v1, "ETag"

    invoke-interface {v13, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v4, :cond_b3

    const-wide/16 v7, 0x3e8

    mul-long v4, v5, v7

    add-long/2addr v4, v11

    :goto_5a
    new-instance v6, Lcom/android/volley/Cache$Entry;

    invoke-direct {v6}, Lcom/android/volley/Cache$Entry;-><init>()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/volley/NetworkResponse;->data:[B

    iput-object v7, v6, Lcom/android/volley/Cache$Entry;->data:[B

    iput-object v1, v6, Lcom/android/volley/Cache$Entry;->etag:Ljava/lang/String;

    iput-wide v4, v6, Lcom/android/volley/Cache$Entry;->softTtl:J

    iget-wide v4, v6, Lcom/android/volley/Cache$Entry;->softTtl:J

    iput-wide v4, v6, Lcom/android/volley/Cache$Entry;->ttl:J

    iput-wide v2, v6, Lcom/android/volley/Cache$Entry;->serverDate:J

    iput-object v13, v6, Lcom/android/volley/Cache$Entry;->responseHeaders:Ljava/util/Map;

    move-object v1, v6

    :goto_72
    return-object v1

    :cond_73
    aget-object v15, v14, v1

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    const-string v16, "no-cache"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_89

    const-string v16, "no-store"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8b

    :cond_89
    const/4 v1, 0x0

    goto :goto_72

    :cond_8b
    const-string v16, "max-age="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_a0

    const/16 v16, 0x8

    :try_start_95
    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_9c} :catch_c1

    move-result-wide v4

    :cond_9d
    :goto_9d
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    :cond_a0
    const-string v16, "must-revalidate"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_b0

    const-string v16, "proxy-revalidate"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9d

    :cond_b0
    const-wide/16 v4, 0x0

    goto :goto_9d

    :cond_b3
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_c3

    cmp-long v4, v7, v2

    if-ltz v4, :cond_c3

    sub-long v4, v7, v2

    add-long/2addr v4, v11

    goto :goto_5a

    :catch_c1
    move-exception v15

    goto :goto_9d

    :cond_c3
    move-wide v4, v9

    goto :goto_5a
.end method

.method public static parseCharset(Ljava/util/Map;)Ljava/lang/String;
    .registers 7

    const/4 v1, 0x1

    const-string v0, "Content-Type"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_15

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    :goto_12
    array-length v3, v2

    if-lt v0, v3, :cond_18

    :cond_15
    const-string v0, "ISO-8859-1"

    :goto_17
    return-object v0

    :cond_18
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_36

    const/4 v4, 0x0

    aget-object v4, v3, v4

    const-string v5, "charset"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    aget-object v0, v3, v1

    goto :goto_17

    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_12
.end method

.method public static parseDateAsEpoch(Ljava/lang/String;)J
    .registers 3

    :try_start_0
    invoke-static {p0}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_7
    .catch Lorg/apache/http/impl/cookie/DateParseException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-wide v0

    :goto_8
    return-wide v0

    :catch_9
    move-exception v0

    const-wide/16 v0, 0x0

    goto :goto_8
.end method
