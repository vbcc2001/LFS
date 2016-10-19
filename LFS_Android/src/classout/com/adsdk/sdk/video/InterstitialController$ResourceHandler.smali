.class Lcom/adsdk/sdk/video/InterstitialController$ResourceHandler;
.super Landroid/os/Handler;


# instance fields
.field interstitialController:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/adsdk/sdk/video/InterstitialController;)V
    .registers 3

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController$ResourceHandler;->interstitialController:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController$ResourceHandler;->interstitialController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsdk/sdk/video/InterstitialController;

    if-eqz v0, :cond_12

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_30

    # invokes: Lcom/adsdk/sdk/video/InterstitialController;->handleMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/adsdk/sdk/video/InterstitialController;->access$5(Lcom/adsdk/sdk/video/InterstitialController;Landroid/os/Message;)V

    :cond_12
    :goto_12
    return-void

    :pswitch_13
    # invokes: Lcom/adsdk/sdk/video/InterstitialController;->setProgress()I
    invoke-static {v0}, Lcom/adsdk/sdk/video/InterstitialController;->access$2(Lcom/adsdk/sdk/video/InterstitialController;)I

    # getter for: Lcom/adsdk/sdk/video/InterstitialController;->mShowing:Z
    invoke-static {v0}, Lcom/adsdk/sdk/video/InterstitialController;->access$3(Lcom/adsdk/sdk/video/InterstitialController;)Z

    move-result v1

    if-eqz v1, :cond_12

    # getter for: Lcom/adsdk/sdk/video/InterstitialController;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;
    invoke-static {v0}, Lcom/adsdk/sdk/video/InterstitialController;->access$4(Lcom/adsdk/sdk/video/InterstitialController;)Lcom/adsdk/sdk/video/InterstitialData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/adsdk/sdk/video/InterstitialData;->showTimer:Z

    if-eqz v0, :cond_12

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/video/InterstitialController$ResourceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/adsdk/sdk/video/InterstitialController$ResourceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_12

    nop

    :pswitch_data_30
    .packed-switch 0x2
        :pswitch_13
    .end packed-switch
.end method
