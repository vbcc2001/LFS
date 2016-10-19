.class Lcom/android/volley/toolbox/ImageLoader$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/volley/toolbox/ImageLoader;


# direct methods
.method constructor <init>(Lcom/android/volley/toolbox/ImageLoader;)V
    .registers 2

    iput-object p1, p0, Lcom/android/volley/toolbox/ImageLoader$4;->this$0:Lcom/android/volley/toolbox/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v0, p0, Lcom/android/volley/toolbox/ImageLoader$4;->this$0:Lcom/android/volley/toolbox/ImageLoader;

    # getter for: Lcom/android/volley/toolbox/ImageLoader;->mBatchedResponses:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/volley/toolbox/ImageLoader;->access$1(Lcom/android/volley/toolbox/ImageLoader;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/android/volley/toolbox/ImageLoader$4;->this$0:Lcom/android/volley/toolbox/ImageLoader;

    # getter for: Lcom/android/volley/toolbox/ImageLoader;->mBatchedResponses:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/volley/toolbox/ImageLoader;->access$1(Lcom/android/volley/toolbox/ImageLoader;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/android/volley/toolbox/ImageLoader$4;->this$0:Lcom/android/volley/toolbox/ImageLoader;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/volley/toolbox/ImageLoader;->access$4(Lcom/android/volley/toolbox/ImageLoader;Ljava/lang/Runnable;)V

    return-void

    :cond_24
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;

    # getter for: Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->mContainers:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->access$0(Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_32
    :goto_32
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    # getter for: Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->mListener:Lcom/android/volley/toolbox/ImageLoader$ImageListener;
    invoke-static {v1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->access$0(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;)Lcom/android/volley/toolbox/ImageLoader$ImageListener;

    move-result-object v4

    if-eqz v4, :cond_32

    invoke-virtual {v0}, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->getError()Lcom/android/volley/VolleyError;

    move-result-object v4

    if-nez v4, :cond_5a

    # getter for: Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->mResponseBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->access$2(Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->access$1(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Landroid/graphics/Bitmap;)V

    # getter for: Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->mListener:Lcom/android/volley/toolbox/ImageLoader$ImageListener;
    invoke-static {v1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->access$0(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;)Lcom/android/volley/toolbox/ImageLoader$ImageListener;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v1, v5}, Lcom/android/volley/toolbox/ImageLoader$ImageListener;->onResponse(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V

    goto :goto_32

    :cond_5a
    # getter for: Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->mListener:Lcom/android/volley/toolbox/ImageLoader$ImageListener;
    invoke-static {v1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->access$0(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;)Lcom/android/volley/toolbox/ImageLoader$ImageListener;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->getError()Lcom/android/volley/VolleyError;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/android/volley/toolbox/ImageLoader$ImageListener;->onErrorResponse(Lcom/android/volley/VolleyError;)V

    goto :goto_32
.end method
