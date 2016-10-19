.class Lcom/adsdk/sdk/video/MediaController$ResourceHandler;
.super Landroid/os/Handler;


# instance fields
.field private final mController:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/adsdk/sdk/video/MediaController;)V
    .registers 3

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/MediaController$ResourceHandler;->mController:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController$ResourceHandler;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsdk/sdk/video/MediaController;

    if-eqz v0, :cond_d

    # invokes: Lcom/adsdk/sdk/video/MediaController;->handleMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/adsdk/sdk/video/MediaController;->access$1(Lcom/adsdk/sdk/video/MediaController;Landroid/os/Message;)V

    :cond_d
    return-void
.end method
