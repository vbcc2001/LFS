.class public Lcom/android/volley/toolbox/ImageRequest;
.super Lcom/android/volley/Request;


# static fields
.field private static final IMAGE_BACKOFF_MULT:F = 2.0f

.field private static final IMAGE_MAX_RETRIES:I = 0x2

.field private static final IMAGE_TIMEOUT_MS:I = 0x3e8

.field private static final sDecodeLock:Ljava/lang/Object;


# instance fields
.field private final mDecodeConfig:Landroid/graphics/Bitmap$Config;

.field private final mListener:Lcom/android/volley/Response$Listener;

.field private final mMaxHeight:I

.field private final mMaxWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/volley/toolbox/ImageRequest;->sDecodeLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;IILandroid/graphics/Bitmap$Config;Lcom/android/volley/Response$ErrorListener;)V
    .registers 11

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p6}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    new-instance v0, Lcom/android/volley/DefaultRetryPolicy;

    const/16 v1, 0x3e8

    const/4 v2, 0x2

    const/high16 v3, 0x40000000

    invoke-direct {v0, v1, v2, v3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {p0, v0}, Lcom/android/volley/toolbox/ImageRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    iput-object p2, p0, Lcom/android/volley/toolbox/ImageRequest;->mListener:Lcom/android/volley/Response$Listener;

    iput-object p5, p0, Lcom/android/volley/toolbox/ImageRequest;->mDecodeConfig:Landroid/graphics/Bitmap$Config;

    iput p3, p0, Lcom/android/volley/toolbox/ImageRequest;->mMaxWidth:I

    iput p4, p0, Lcom/android/volley/toolbox/ImageRequest;->mMaxHeight:I

    return-void
.end method

.method private doParse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .registers 11

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v0, p1, Lcom/android/volley/NetworkResponse;->data:[B

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iget v2, p0, Lcom/android/volley/toolbox/ImageRequest;->mMaxWidth:I

    if-nez v2, :cond_26

    iget v2, p0, Lcom/android/volley/toolbox/ImageRequest;->mMaxHeight:I

    if-nez v2, :cond_26

    iget-object v2, p0, Lcom/android/volley/toolbox/ImageRequest;->mDecodeConfig:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    array-length v2, v0

    invoke-static {v0, v7, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1a
    if-nez v0, :cond_65

    new-instance v0, Lcom/android/volley/ParseError;

    invoke-direct {v0}, Lcom/android/volley/ParseError;-><init>()V

    invoke-static {v0}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v0

    :goto_25
    return-object v0

    :cond_26
    iput-boolean v8, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    array-length v2, v0

    invoke-static {v0, v7, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v4, p0, Lcom/android/volley/toolbox/ImageRequest;->mMaxWidth:I

    iget v5, p0, Lcom/android/volley/toolbox/ImageRequest;->mMaxHeight:I

    invoke-static {v4, v5, v2, v3}, Lcom/android/volley/toolbox/ImageRequest;->getResizedDimension(IIII)I

    move-result v4

    iget v5, p0, Lcom/android/volley/toolbox/ImageRequest;->mMaxHeight:I

    iget v6, p0, Lcom/android/volley/toolbox/ImageRequest;->mMaxWidth:I

    invoke-static {v5, v6, v3, v2}, Lcom/android/volley/toolbox/ImageRequest;->getResizedDimension(IIII)I

    move-result v5

    iput-boolean v7, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v2, v3, v4, v5}, Lcom/android/volley/toolbox/ImageRequest;->findBestSampleSize(IIII)I

    move-result v2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    array-length v2, v0

    invoke-static {v0, v7, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_63

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-gt v0, v4, :cond_5b

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-le v0, v5, :cond_63

    :cond_5b
    invoke-static {v1, v4, v5, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1a

    :cond_63
    move-object v0, v1

    goto :goto_1a

    :cond_65
    invoke-static {p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object v0

    goto :goto_25
.end method

.method static findBestSampleSize(IIII)I
    .registers 11

    const/high16 v6, 0x40000000

    int-to-double v0, p0

    int-to-double v2, p2

    div-double/2addr v0, v2

    int-to-double v2, p1

    int-to-double v4, p3

    div-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    const/high16 v0, 0x3f800000

    :goto_e
    mul-float v3, v0, v6

    float-to-double v3, v3

    cmpg-double v3, v3, v1

    if-lez v3, :cond_17

    float-to-int v0, v0

    return v0

    :cond_17
    mul-float/2addr v0, v6

    goto :goto_e
.end method

.method private static getResizedDimension(IIII)I
    .registers 10

    if-nez p0, :cond_6

    if-nez p1, :cond_6

    move p0, p2

    :cond_5
    :goto_5
    return p0

    :cond_6
    if-nez p0, :cond_f

    int-to-double v0, p1

    int-to-double v2, p3

    div-double/2addr v0, v2

    int-to-double v2, p2

    mul-double/2addr v0, v2

    double-to-int p0, v0

    goto :goto_5

    :cond_f
    if-eqz p1, :cond_5

    int-to-double v0, p3

    int-to-double v2, p2

    div-double/2addr v0, v2

    int-to-double v2, p0

    mul-double/2addr v2, v0

    int-to-double v4, p1

    cmpl-double v2, v2, v4

    if-lez v2, :cond_5

    int-to-double v2, p1

    div-double v0, v2, v0

    double-to-int p0, v0

    goto :goto_5
.end method


# virtual methods
.method protected deliverResponse(Landroid/graphics/Bitmap;)V
    .registers 3

    iget-object v0, p0, Lcom/android/volley/toolbox/ImageRequest;->mListener:Lcom/android/volley/Response$Listener;

    invoke-interface {v0, p1}, Lcom/android/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/ImageRequest;->deliverResponse(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public getPriority()Lcom/android/volley/Request$Priority;
    .registers 2

    sget-object v0, Lcom/android/volley/Request$Priority;->LOW:Lcom/android/volley/Request$Priority;

    return-object v0
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .registers 8

    sget-object v1, Lcom/android/volley/toolbox/ImageRequest;->sDecodeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/volley/toolbox/ImageRequest;->doParse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    :try_end_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_6} :catch_9
    .catchall {:try_start_3 .. :try_end_6} :catchall_2e

    move-result-object v0

    :try_start_7
    monitor-exit v1

    :goto_8
    return-object v0

    :catch_9
    move-exception v0

    const-string v2, "Caught OOM for %d byte image, url=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/android/volley/NetworkResponse;->data:[B

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/volley/toolbox/ImageRequest;->getUrl()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/android/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Lcom/android/volley/ParseError;

    invoke-direct {v2, v0}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v2}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v0

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_7 .. :try_end_2d} :catchall_2e

    goto :goto_8

    :catchall_2e
    move-exception v0

    monitor-exit v1

    throw v0
.end method
