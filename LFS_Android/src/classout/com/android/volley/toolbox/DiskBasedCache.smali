.class public Lcom/android/volley/toolbox/DiskBasedCache;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/volley/Cache;


# static fields
.field private static final CACHE_VERSION:I = 0x2

.field private static final DEFAULT_DISK_USAGE_BYTES:I = 0x500000

.field private static final HYSTERESIS_FACTOR:F = 0.9f


# instance fields
.field private final mEntries:Ljava/util/Map;

.field private final mMaxCacheSizeInBytes:I

.field private final mRootDirectory:Ljava/io/File;

.field private mTotalSize:J


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 3

    const/high16 v0, 0x500000

    invoke-direct {p0, p1, v0}, Lcom/android/volley/toolbox/DiskBasedCache;-><init>(Ljava/io/File;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x10

    const/high16 v2, 0x3f400000

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    iput-object p1, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    iput p2, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mMaxCacheSizeInBytes:I

    return-void
.end method

.method private getFilenameForKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private pruneIfNeeded(I)V
    .registers 16

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v2, 0x0

    iget-wide v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    int-to-long v3, p1

    add-long/2addr v0, v3

    iget v3, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mMaxCacheSizeInBytes:I

    int-to-long v3, v3

    cmp-long v0, v0, v3

    if-gez v0, :cond_f

    :cond_e
    :goto_e
    return-void

    :cond_f
    sget-boolean v0, Lcom/android/volley/VolleyLog;->DEBUG:Z

    if-eqz v0, :cond_1a

    const-string v0, "Pruning old cache entries."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1a
    iget-wide v3, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-object v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v1, v2

    :goto_2b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5a

    move v0, v1

    :cond_32
    sget-boolean v1, Lcom/android/volley/VolleyLog;->DEBUG:Z

    if-eqz v1, :cond_e

    const-string v1, "pruned %d files, %d bytes, %d ms"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v2

    iget-wide v8, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    sub-long v2, v8, v3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v7, v12

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v7, v13

    invoke-static {v1, v7}, Lcom/android/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_e

    :cond_5a
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;

    iget-object v8, v0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->key:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/android/volley/toolbox/DiskBasedCache;->getFileForKey(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v8

    if-eqz v8, :cond_90

    iget-wide v8, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    iget-wide v10, v0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->size:J

    sub-long/2addr v8, v10

    iput-wide v8, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    :goto_79
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    add-int/lit8 v0, v1, 0x1

    iget-wide v8, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    int-to-long v10, p1

    add-long/2addr v8, v10

    long-to-float v1, v8

    iget v8, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mMaxCacheSizeInBytes:I

    int-to-float v8, v8

    const v9, 0x3f666666

    mul-float/2addr v8, v9

    cmpg-float v1, v1, v8

    if-ltz v1, :cond_32

    move v1, v0

    goto :goto_2b

    :cond_90
    const-string v8, "Could not delete cache entry for key=%s, filename=%s"

    new-array v9, v13, [Ljava/lang/Object;

    iget-object v10, v0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->key:Ljava/lang/String;

    aput-object v10, v9, v2

    iget-object v0, v0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->key:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/volley/toolbox/DiskBasedCache;->getFilenameForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v12

    invoke-static {v8, v9}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_79
.end method

.method private putEntry(Ljava/lang/String;Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;)V
    .registers 10

    iget-object v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-wide v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    iget-wide v2, p2, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->size:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    :goto_f
    iget-object v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_15
    iget-object v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;

    iget-wide v1, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    iget-wide v3, p2, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->size:J

    iget-wide v5, v0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->size:J

    sub-long/2addr v3, v5

    add-long v0, v1, v3

    iput-wide v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    goto :goto_f
.end method

.method private removeEntry(Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;

    if-eqz v0, :cond_17

    iget-wide v1, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    iget-wide v3, v0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->size:J

    sub-long v0, v1, v3

    iput-wide v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    iget-object v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    return-void
.end method

.method private static streamToBytes(Ljava/io/InputStream;I)[B
    .registers 6

    new-array v1, p1, [B

    const/4 v0, 0x0

    :goto_3
    if-ge v0, p1, :cond_e

    sub-int v2, p1, v0

    invoke-virtual {p0, v1, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_35

    :cond_e
    if-eq v0, p1, :cond_37

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes, read "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_35
    add-int/2addr v0, v2

    goto :goto_3

    :cond_37
    return-object v1
.end method


# virtual methods
.method public declared-synchronized clear()V
    .registers 5

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_d

    array-length v2, v1

    :goto_b
    if-lt v0, v2, :cond_20

    :cond_d
    iget-object v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    const-string v0, "Cache cleared."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1e
    .catchall {:try_start_2 .. :try_end_1e} :catchall_28

    monitor-exit p0

    return-void

    :cond_20
    :try_start_20
    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_28

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lcom/android/volley/Cache$Entry;
    .registers 10

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_68

    if-nez v0, :cond_f

    move-object v0, v1

    :goto_d
    monitor-exit p0

    return-object v0

    :cond_f
    :try_start_f
    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->getFileForKey(Ljava/lang/String;)Ljava/io/File;
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_68

    move-result-object v3

    :try_start_13
    new-instance v2, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;-><init>(Ljava/io/InputStream;Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1e} :catch_3b
    .catchall {:try_start_13 .. :try_end_1e} :catchall_60

    :try_start_1e
    invoke-static {v2}, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->readHeader(Ljava/io/InputStream;)Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    # getter for: Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;->bytesRead:I
    invoke-static {v2}, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;->access$1(Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;)I

    move-result v6

    int-to-long v6, v6

    sub-long/2addr v4, v6

    long-to-int v4, v4

    invoke-static {v2, v4}, Lcom/android/volley/toolbox/DiskBasedCache;->streamToBytes(Ljava/io/InputStream;I)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->toCacheEntry([B)Lcom/android/volley/Cache$Entry;
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_33} :catch_70
    .catchall {:try_start_1e .. :try_end_33} :catchall_6e

    move-result-object v0

    :try_start_34
    invoke-virtual {v2}, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_38
    .catchall {:try_start_34 .. :try_end_37} :catchall_68

    goto :goto_d

    :catch_38
    move-exception v0

    move-object v0, v1

    goto :goto_d

    :catch_3b
    move-exception v0

    move-object v2, v1

    :goto_3d
    :try_start_3d
    const-string v4, "%s: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v6

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v3

    invoke-static {v4, v5}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->remove(Ljava/lang/String;)V
    :try_end_56
    .catchall {:try_start_3d .. :try_end_56} :catchall_6e

    if-eqz v2, :cond_5b

    :try_start_58
    invoke-virtual {v2}, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_5d
    .catchall {:try_start_58 .. :try_end_5b} :catchall_68

    :cond_5b
    move-object v0, v1

    goto :goto_d

    :catch_5d
    move-exception v0

    move-object v0, v1

    goto :goto_d

    :catchall_60
    move-exception v0

    move-object v2, v1

    :goto_62
    if-eqz v2, :cond_67

    :try_start_64
    invoke-virtual {v2}, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_6b
    .catchall {:try_start_64 .. :try_end_67} :catchall_68

    :cond_67
    :try_start_67
    throw v0
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_68

    :catchall_68
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_6b
    move-exception v0

    move-object v0, v1

    goto :goto_d

    :catchall_6e
    move-exception v0

    goto :goto_62

    :catch_70
    move-exception v0

    goto :goto_3d
.end method

.method public getFileForKey(Ljava/lang/String;)Ljava/io/File;
    .registers 5

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->getFilenameForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public declared-synchronized initialize()V
    .registers 10

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_25

    iget-object v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "Unable to create cache dir %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_23
    .catchall {:try_start_2 .. :try_end_23} :catchall_65

    :cond_23
    monitor-exit p0

    return-void

    :cond_25
    :try_start_25
    iget-object v1, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_23

    array-length v4, v3

    move v2, v0

    :goto_2f
    if-ge v2, v4, :cond_23

    aget-object v5, v3, v2
    :try_end_33
    .catchall {:try_start_25 .. :try_end_33} :catchall_65

    const/4 v1, 0x0

    :try_start_34
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_39} :catch_4f
    .catchall {:try_start_34 .. :try_end_39} :catchall_5e

    :try_start_39
    invoke-static {v0}, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->readHeader(Ljava/io/InputStream;)Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;

    move-result-object v1

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->size:J

    iget-object v6, v1, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->key:Ljava/lang/String;

    invoke-direct {p0, v6, v1}, Lcom/android/volley/toolbox/DiskBasedCache;->putEntry(Ljava/lang/String;Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;)V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_48} :catch_71
    .catchall {:try_start_39 .. :try_end_48} :catchall_6c

    :try_start_48
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_6a
    .catchall {:try_start_48 .. :try_end_4b} :catchall_65

    :cond_4b
    :goto_4b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2f

    :catch_4f
    move-exception v0

    move-object v0, v1

    :goto_51
    if-eqz v5, :cond_56

    :try_start_53
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_6c

    :cond_56
    if-eqz v0, :cond_4b

    :try_start_58
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_5c
    .catchall {:try_start_58 .. :try_end_5b} :catchall_65

    goto :goto_4b

    :catch_5c
    move-exception v0

    goto :goto_4b

    :catchall_5e
    move-exception v0

    :goto_5f
    if-eqz v1, :cond_64

    :try_start_61
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_68
    .catchall {:try_start_61 .. :try_end_64} :catchall_65

    :cond_64
    :goto_64
    :try_start_64
    throw v0
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_65

    :catchall_65
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_68
    move-exception v1

    goto :goto_64

    :catch_6a
    move-exception v0

    goto :goto_4b

    :catchall_6c
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_5f

    :catch_71
    move-exception v1

    goto :goto_51
.end method

.method public declared-synchronized invalidate(Ljava/lang/String;Z)V
    .registers 6

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->get(Ljava/lang/String;)Lcom/android/volley/Cache$Entry;

    move-result-object v0

    if-eqz v0, :cond_14

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/android/volley/Cache$Entry;->softTtl:J

    if-eqz p2, :cond_11

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/android/volley/Cache$Entry;->ttl:J

    :cond_11
    invoke-virtual {p0, p1, v0}, Lcom/android/volley/toolbox/DiskBasedCache;->put(Ljava/lang/String;Lcom/android/volley/Cache$Entry;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    :cond_14
    monitor-exit p0

    return-void

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized put(Ljava/lang/String;Lcom/android/volley/Cache$Entry;)V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v0, p2, Lcom/android/volley/Cache$Entry;->data:[B

    array-length v0, v0

    invoke-direct {p0, v0}, Lcom/android/volley/toolbox/DiskBasedCache;->pruneIfNeeded(I)V

    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->getFileForKey(Ljava/lang/String;)Ljava/io/File;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_3c

    move-result-object v0

    :try_start_b
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v2, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;

    invoke-direct {v2, p1, p2}, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;-><init>(Ljava/lang/String;Lcom/android/volley/Cache$Entry;)V

    invoke-virtual {v2, v1}, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->writeHeader(Ljava/io/OutputStream;)Z

    iget-object v3, p2, Lcom/android/volley/Cache$Entry;->data:[B

    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    invoke-direct {p0, p1, v2}, Lcom/android/volley/toolbox/DiskBasedCache;->putEntry(Ljava/lang/String;Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_23} :catch_25
    .catchall {:try_start_b .. :try_end_23} :catchall_3c

    :cond_23
    :goto_23
    monitor-exit p0

    return-void

    :catch_25
    move-exception v1

    :try_start_26
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_23

    const-string v1, "Could not clean up file %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3b
    .catchall {:try_start_26 .. :try_end_3b} :catchall_3c

    goto :goto_23

    :catchall_3c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove(Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->getFileForKey(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->removeEntry(Ljava/lang/String;)V

    if-nez v0, :cond_20

    const-string v0, "Could not delete cache entry for key=%s, filename=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->getFilenameForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    :cond_20
    monitor-exit p0

    return-void

    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method
