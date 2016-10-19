.class public Lau/com/stklab/minepro/BitmapLruCache;
.super Landroid/support/v4/util/LruCache;

# interfaces
.implements Lcom/android/volley/toolbox/ImageLoader$ImageCache;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-static {}, Lau/com/stklab/minepro/BitmapLruCache;->getDefaultLruCacheSize()I

    move-result v0

    invoke-direct {p0, v0}, Lau/com/stklab/minepro/BitmapLruCache;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/support/v4/util/LruCache;-><init>(I)V

    return-void
.end method

.method public static getDefaultLruCacheSize()I
    .registers 4

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    long-to-int v0, v0

    div-int/lit8 v0, v0, 0x8

    return v0
.end method


# virtual methods
.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3

    invoke-virtual {p0, p1}, Lau/com/stklab/minepro/BitmapLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lau/com/stklab/minepro/BitmapLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lau/com/stklab/minepro/BitmapLruCache;->sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method protected sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I
    .registers 5

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    div-int/lit16 v0, v0, 0x400

    return v0
.end method
