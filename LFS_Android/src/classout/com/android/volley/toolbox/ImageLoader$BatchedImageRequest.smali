.class Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;
.super Ljava/lang/Object;


# instance fields
.field private final mContainers:Ljava/util/LinkedList;

.field private mError:Lcom/android/volley/VolleyError;

.field private final mRequest:Lcom/android/volley/Request;

.field private mResponseBitmap:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/android/volley/toolbox/ImageLoader;


# direct methods
.method public constructor <init>(Lcom/android/volley/toolbox/ImageLoader;Lcom/android/volley/Request;Lcom/android/volley/toolbox/ImageLoader$ImageContainer;)V
    .registers 5

    iput-object p1, p0, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->this$0:Lcom/android/volley/toolbox/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->mContainers:Ljava/util/LinkedList;

    iput-object p2, p0, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->mRequest:Lcom/android/volley/Request;

    iget-object v0, p0, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->mContainers:Ljava/util/LinkedList;

    invoke-virtual {v0, p3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic access$0(Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;)Ljava/util/LinkedList;
    .registers 2

    iget-object v0, p0, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->mContainers:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;Landroid/graphics/Bitmap;)V
    .registers 2

    iput-object p1, p0, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->mResponseBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$2(Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;)Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->mResponseBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method


# virtual methods
.method public addContainer(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;)V
    .registers 3

    iget-object v0, p0, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->mContainers:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getError()Lcom/android/volley/VolleyError;
    .registers 2

    iget-object v0, p0, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->mError:Lcom/android/volley/VolleyError;

    return-object v0
.end method

.method public removeContainerAndCancelIfNecessary(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->mContainers:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->mContainers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->mRequest:Lcom/android/volley/Request;

    invoke-virtual {v0}, Lcom/android/volley/Request;->cancel()V

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public setError(Lcom/android/volley/VolleyError;)V
    .registers 2

    iput-object p1, p0, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->mError:Lcom/android/volley/VolleyError;

    return-void
.end method
