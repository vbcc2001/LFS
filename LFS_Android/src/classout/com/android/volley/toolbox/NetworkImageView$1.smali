.class Lcom/android/volley/toolbox/NetworkImageView$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/volley/toolbox/ImageLoader$ImageListener;


# instance fields
.field final synthetic this$0:Lcom/android/volley/toolbox/NetworkImageView;

.field private final synthetic val$isInLayoutPass:Z


# direct methods
.method constructor <init>(Lcom/android/volley/toolbox/NetworkImageView;Z)V
    .registers 3

    iput-object p1, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->this$0:Lcom/android/volley/toolbox/NetworkImageView;

    iput-boolean p2, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->val$isInLayoutPass:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 4

    iget-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->this$0:Lcom/android/volley/toolbox/NetworkImageView;

    # getter for: Lcom/android/volley/toolbox/NetworkImageView;->mErrorImageId:I
    invoke-static {v0}, Lcom/android/volley/toolbox/NetworkImageView;->access$0(Lcom/android/volley/toolbox/NetworkImageView;)I

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->this$0:Lcom/android/volley/toolbox/NetworkImageView;

    iget-object v1, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->this$0:Lcom/android/volley/toolbox/NetworkImageView;

    # getter for: Lcom/android/volley/toolbox/NetworkImageView;->mErrorImageId:I
    invoke-static {v1}, Lcom/android/volley/toolbox/NetworkImageView;->access$0(Lcom/android/volley/toolbox/NetworkImageView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/NetworkImageView;->setImageResource(I)V

    :cond_13
    return-void
.end method

.method public onResponse(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V
    .registers 5

    if-eqz p2, :cond_11

    iget-boolean v0, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->val$isInLayoutPass:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->this$0:Lcom/android/volley/toolbox/NetworkImageView;

    new-instance v1, Lcom/android/volley/toolbox/NetworkImageView$1$1;

    invoke-direct {v1, p0, p1}, Lcom/android/volley/toolbox/NetworkImageView$1$1;-><init>(Lcom/android/volley/toolbox/NetworkImageView$1;Lcom/android/volley/toolbox/ImageLoader$ImageContainer;)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/NetworkImageView;->post(Ljava/lang/Runnable;)Z

    :cond_10
    :goto_10
    return-void

    :cond_11
    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->this$0:Lcom/android/volley/toolbox/NetworkImageView;

    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_10

    :cond_21
    iget-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->this$0:Lcom/android/volley/toolbox/NetworkImageView;

    # getter for: Lcom/android/volley/toolbox/NetworkImageView;->mDefaultImageId:I
    invoke-static {v0}, Lcom/android/volley/toolbox/NetworkImageView;->access$1(Lcom/android/volley/toolbox/NetworkImageView;)I

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->this$0:Lcom/android/volley/toolbox/NetworkImageView;

    iget-object v1, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->this$0:Lcom/android/volley/toolbox/NetworkImageView;

    # getter for: Lcom/android/volley/toolbox/NetworkImageView;->mDefaultImageId:I
    invoke-static {v1}, Lcom/android/volley/toolbox/NetworkImageView;->access$1(Lcom/android/volley/toolbox/NetworkImageView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/NetworkImageView;->setImageResource(I)V

    goto :goto_10
.end method
