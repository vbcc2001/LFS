.class Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
.super Ljava/lang/Object;


# instance fields
.field public etag:Ljava/lang/String;

.field public key:Ljava/lang/String;

.field public responseHeaders:Ljava/util/Map;

.field public serverDate:J

.field public size:J

.field public softTtl:J

.field public ttl:J


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/volley/Cache$Entry;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->key:Ljava/lang/String;

    iget-object v0, p2, Lcom/android/volley/Cache$Entry;->data:[B

    array-length v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->size:J

    iget-object v0, p2, Lcom/android/volley/Cache$Entry;->etag:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->etag:Ljava/lang/String;

    iget-wide v0, p2, Lcom/android/volley/Cache$Entry;->serverDate:J

    iput-wide v0, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->serverDate:J

    iget-wide v0, p2, Lcom/android/volley/Cache$Entry;->ttl:J

    iput-wide v0, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->ttl:J

    iget-wide v0, p2, Lcom/android/volley/Cache$Entry;->softTtl:J

    iput-wide v0, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->softTtl:J

    iget-object v0, p2, Lcom/android/volley/Cache$Entry;->responseHeaders:Ljava/util/Map;

    iput-object v0, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->responseHeaders:Ljava/util/Map;

    return-void
.end method

.method public static readHeader(Ljava/io/InputStream;)Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    .registers 5

    new-instance v0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;

    invoke-direct {v0}, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;-><init>()V

    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, p0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readByte()B

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_17

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_17
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->key:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->etag:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->etag:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->etag:Ljava/lang/String;

    :cond_30
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->serverDate:J

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->ttl:J

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->softTtl:J

    invoke-static {v1}, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->readStringStringMap(Ljava/io/ObjectInputStream;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->responseHeaders:Ljava/util/Map;

    return-object v0
.end method

.method private static readStringStringMap(Ljava/io/ObjectInputStream;)Ljava/util/Map;
    .registers 6

    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    if-nez v2, :cond_e

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_a
    const/4 v1, 0x0

    :goto_b
    if-lt v1, v2, :cond_14

    return-object v0

    :cond_e
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    goto :goto_a

    :cond_14
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_b
.end method

.method private static writeStringStringMap(Ljava/util/Map;Ljava/io/ObjectOutputStream;)V
    .registers 5

    if-eqz p0, :cond_32

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_18

    :goto_17
    return-void

    :cond_18
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_11

    :cond_32
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    goto :goto_17
.end method


# virtual methods
.method public toCacheEntry([B)Lcom/android/volley/Cache$Entry;
    .registers 5

    new-instance v0, Lcom/android/volley/Cache$Entry;

    invoke-direct {v0}, Lcom/android/volley/Cache$Entry;-><init>()V

    iput-object p1, v0, Lcom/android/volley/Cache$Entry;->data:[B

    iget-object v1, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->etag:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/volley/Cache$Entry;->etag:Ljava/lang/String;

    iget-wide v1, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->serverDate:J

    iput-wide v1, v0, Lcom/android/volley/Cache$Entry;->serverDate:J

    iget-wide v1, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->ttl:J

    iput-wide v1, v0, Lcom/android/volley/Cache$Entry;->ttl:J

    iget-wide v1, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->softTtl:J

    iput-wide v1, v0, Lcom/android/volley/Cache$Entry;->softTtl:J

    iget-object v1, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->responseHeaders:Ljava/util/Map;

    iput-object v1, v0, Lcom/android/volley/Cache$Entry;->responseHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public writeHeader(Ljava/io/OutputStream;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, p1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v2, 0x2

    invoke-virtual {v3, v2}, Ljava/io/ObjectOutputStream;->writeByte(I)V

    iget-object v2, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->key:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->etag:Ljava/lang/String;

    if-nez v2, :cond_31

    const-string v2, ""

    :goto_16
    invoke-virtual {v3, v2}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->serverDate:J

    invoke-virtual {v3, v4, v5}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    iget-wide v4, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->ttl:J

    invoke-virtual {v3, v4, v5}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    iget-wide v4, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->softTtl:J

    invoke-virtual {v3, v4, v5}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    iget-object v2, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->responseHeaders:Ljava/util/Map;

    invoke-static {v2, v3}, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->writeStringStringMap(Ljava/util/Map;Ljava/io/ObjectOutputStream;)V

    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->flush()V

    :goto_30
    return v0

    :cond_31
    iget-object v2, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->etag:Ljava/lang/String;
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_33} :catch_34

    goto :goto_16

    :catch_34
    move-exception v2

    const-string v3, "%s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v3, v0}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    goto :goto_30
.end method
