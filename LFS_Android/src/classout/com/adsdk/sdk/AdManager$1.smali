.class Lcom/adsdk/sdk/AdManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/AdManager;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/AdManager;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/AdManager$1;->this$0:Lcom/adsdk/sdk/AdManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/adsdk/sdk/AdManager$1;)Lcom/adsdk/sdk/AdManager;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$1;->this$0:Lcom/adsdk/sdk/AdManager;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 4

    :goto_0
    invoke-static {}, Lcom/adsdk/sdk/video/ResourceManager;->isDownloading()Z

    move-result v0

    if-nez v0, :cond_49

    const-string v0, "starting request thread"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    :try_start_b
    new-instance v0, Lcom/adsdk/sdk/RequestRichMediaAd;

    invoke-direct {v0}, Lcom/adsdk/sdk/RequestRichMediaAd;-><init>()V

    iget-object v1, p0, Lcom/adsdk/sdk/AdManager$1;->this$0:Lcom/adsdk/sdk/AdManager;

    # invokes: Lcom/adsdk/sdk/AdManager;->getRequest()Lcom/adsdk/sdk/AdRequest;
    invoke-static {v1}, Lcom/adsdk/sdk/AdManager;->access$0(Lcom/adsdk/sdk/AdManager;)Lcom/adsdk/sdk/AdRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/adsdk/sdk/AdManager$1;->this$0:Lcom/adsdk/sdk/AdManager;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/RequestRichMediaAd;->sendRequest(Lcom/adsdk/sdk/AdRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsdk/sdk/video/RichMediaAd;

    invoke-static {v2, v0}, Lcom/adsdk/sdk/AdManager;->access$1(Lcom/adsdk/sdk/AdManager;Lcom/adsdk/sdk/video/RichMediaAd;)V

    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$1;->this$0:Lcom/adsdk/sdk/AdManager;

    # getter for: Lcom/adsdk/sdk/AdManager;->mResponse:Lcom/adsdk/sdk/video/RichMediaAd;
    invoke-static {v0}, Lcom/adsdk/sdk/AdManager;->access$2(Lcom/adsdk/sdk/AdManager;)Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/RichMediaAd;->getVideo()Lcom/adsdk/sdk/video/VideoData;

    move-result-object v0

    if-eqz v0, :cond_51

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_51

    const-string v0, "Not capable of video"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$1;->this$0:Lcom/adsdk/sdk/AdManager;

    # invokes: Lcom/adsdk/sdk/AdManager;->notifyNoAdFound()V
    invoke-static {v0}, Lcom/adsdk/sdk/AdManager;->access$3(Lcom/adsdk/sdk/AdManager;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_3d} :catch_a1

    :cond_3d
    :goto_3d
    const-string v0, "finishing ad request thread"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$1;->this$0:Lcom/adsdk/sdk/AdManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adsdk/sdk/AdManager;->access$6(Lcom/adsdk/sdk/AdManager;Ljava/lang/Thread;)V

    return-void

    :cond_49
    const-wide/16 v0, 0xc8

    :try_start_4b
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4e
    .catch Ljava/lang/InterruptedException; {:try_start_4b .. :try_end_4e} :catch_4f

    goto :goto_0

    :catch_4f
    move-exception v0

    goto :goto_0

    :cond_51
    :try_start_51
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$1;->this$0:Lcom/adsdk/sdk/AdManager;

    # getter for: Lcom/adsdk/sdk/AdManager;->mResponse:Lcom/adsdk/sdk/video/RichMediaAd;
    invoke-static {v0}, Lcom/adsdk/sdk/AdManager;->access$2(Lcom/adsdk/sdk/AdManager;)Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/RichMediaAd;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_85

    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$1;->this$0:Lcom/adsdk/sdk/AdManager;

    # getter for: Lcom/adsdk/sdk/AdManager;->mResponse:Lcom/adsdk/sdk/video/RichMediaAd;
    invoke-static {v0}, Lcom/adsdk/sdk/AdManager;->access$2(Lcom/adsdk/sdk/AdManager;)Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/RichMediaAd;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_85

    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$1;->this$0:Lcom/adsdk/sdk/AdManager;

    # getter for: Lcom/adsdk/sdk/AdManager;->mResponse:Lcom/adsdk/sdk/video/RichMediaAd;
    invoke-static {v0}, Lcom/adsdk/sdk/AdManager;->access$2(Lcom/adsdk/sdk/AdManager;)Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/RichMediaAd;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_85

    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$1;->this$0:Lcom/adsdk/sdk/AdManager;

    # getter for: Lcom/adsdk/sdk/AdManager;->mResponse:Lcom/adsdk/sdk/video/RichMediaAd;
    invoke-static {v0}, Lcom/adsdk/sdk/AdManager;->access$2(Lcom/adsdk/sdk/AdManager;)Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/RichMediaAd;->getType()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_e3

    :cond_85
    const-string v0, "response OK received"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$1;->this$0:Lcom/adsdk/sdk/AdManager;

    # getter for: Lcom/adsdk/sdk/AdManager;->mListener:Lcom/adsdk/sdk/AdListener;
    invoke-static {v0}, Lcom/adsdk/sdk/AdManager;->access$4(Lcom/adsdk/sdk/AdManager;)Lcom/adsdk/sdk/AdListener;

    move-result-object v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$1;->this$0:Lcom/adsdk/sdk/AdManager;

    # getter for: Lcom/adsdk/sdk/AdManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/adsdk/sdk/AdManager;->access$5(Lcom/adsdk/sdk/AdManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/adsdk/sdk/AdManager$1$1;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/AdManager$1$1;-><init>(Lcom/adsdk/sdk/AdManager$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_a0
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_a0} :catch_a1

    goto :goto_3d

    :catch_a1
    move-exception v0

    iget-object v1, p0, Lcom/adsdk/sdk/AdManager$1;->this$0:Lcom/adsdk/sdk/AdManager;

    new-instance v2, Lcom/adsdk/sdk/video/RichMediaAd;

    invoke-direct {v2}, Lcom/adsdk/sdk/video/RichMediaAd;-><init>()V

    invoke-static {v1, v2}, Lcom/adsdk/sdk/AdManager;->access$1(Lcom/adsdk/sdk/AdManager;Lcom/adsdk/sdk/video/RichMediaAd;)V

    iget-object v1, p0, Lcom/adsdk/sdk/AdManager$1;->this$0:Lcom/adsdk/sdk/AdManager;

    # getter for: Lcom/adsdk/sdk/AdManager;->mResponse:Lcom/adsdk/sdk/video/RichMediaAd;
    invoke-static {v1}, Lcom/adsdk/sdk/AdManager;->access$2(Lcom/adsdk/sdk/AdManager;)Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/video/RichMediaAd;->setType(I)V

    iget-object v1, p0, Lcom/adsdk/sdk/AdManager$1;->this$0:Lcom/adsdk/sdk/AdManager;

    # getter for: Lcom/adsdk/sdk/AdManager;->mListener:Lcom/adsdk/sdk/AdListener;
    invoke-static {v1}, Lcom/adsdk/sdk/AdManager;->access$4(Lcom/adsdk/sdk/AdManager;)Lcom/adsdk/sdk/AdListener;

    move-result-object v1

    if-eqz v1, :cond_3d

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ad Load failed. Reason:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$1;->this$0:Lcom/adsdk/sdk/AdManager;

    # getter for: Lcom/adsdk/sdk/AdManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/adsdk/sdk/AdManager;->access$5(Lcom/adsdk/sdk/AdManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/adsdk/sdk/AdManager$1$4;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/AdManager$1$4;-><init>(Lcom/adsdk/sdk/AdManager$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3d

    :cond_e3
    :try_start_e3
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$1;->this$0:Lcom/adsdk/sdk/AdManager;

    # getter for: Lcom/adsdk/sdk/AdManager;->mResponse:Lcom/adsdk/sdk/video/RichMediaAd;
    invoke-static {v0}, Lcom/adsdk/sdk/AdManager;->access$2(Lcom/adsdk/sdk/AdManager;)Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/RichMediaAd;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10d

    const-string v0, "response NO AD received"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$1;->this$0:Lcom/adsdk/sdk/AdManager;

    # getter for: Lcom/adsdk/sdk/AdManager;->mListener:Lcom/adsdk/sdk/AdListener;
    invoke-static {v0}, Lcom/adsdk/sdk/AdManager;->access$4(Lcom/adsdk/sdk/AdManager;)Lcom/adsdk/sdk/AdListener;

    move-result-object v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$1;->this$0:Lcom/adsdk/sdk/AdManager;

    # getter for: Lcom/adsdk/sdk/AdManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/adsdk/sdk/AdManager;->access$5(Lcom/adsdk/sdk/AdManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/adsdk/sdk/AdManager$1$2;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/AdManager$1$2;-><init>(Lcom/adsdk/sdk/AdManager$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3d

    :cond_10d
    const-string v0, "response BANNER received"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->w(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$1;->this$0:Lcom/adsdk/sdk/AdManager;

    # getter for: Lcom/adsdk/sdk/AdManager;->mListener:Lcom/adsdk/sdk/AdListener;
    invoke-static {v0}, Lcom/adsdk/sdk/AdManager;->access$4(Lcom/adsdk/sdk/AdManager;)Lcom/adsdk/sdk/AdListener;

    move-result-object v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$1;->this$0:Lcom/adsdk/sdk/AdManager;

    # getter for: Lcom/adsdk/sdk/AdManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/adsdk/sdk/AdManager;->access$5(Lcom/adsdk/sdk/AdManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/adsdk/sdk/AdManager$1$3;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/AdManager$1$3;-><init>(Lcom/adsdk/sdk/AdManager$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_128
    .catch Ljava/lang/Throwable; {:try_start_e3 .. :try_end_128} :catch_a1

    goto/16 :goto_3d
.end method
