.class Lcom/adsdk/sdk/AdManager$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/AdManager;

.field private final synthetic val$xml:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/AdManager;Ljava/io/InputStream;)V
    .registers 3

    iput-object p1, p0, Lcom/adsdk/sdk/AdManager$3;->this$0:Lcom/adsdk/sdk/AdManager;

    iput-object p2, p0, Lcom/adsdk/sdk/AdManager$3;->val$xml:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/adsdk/sdk/AdManager$3;)Lcom/adsdk/sdk/AdManager;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$3;->this$0:Lcom/adsdk/sdk/AdManager;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 4

    :goto_0
    invoke-static {}, Lcom/adsdk/sdk/video/ResourceManager;->isDownloading()Z

    move-result v0

    if-nez v0, :cond_57

    const-string v0, "starting request thread"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    :try_start_b
    new-instance v0, Lcom/adsdk/sdk/RequestRichMediaAd;

    iget-object v1, p0, Lcom/adsdk/sdk/AdManager$3;->val$xml:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Lcom/adsdk/sdk/RequestRichMediaAd;-><init>(Ljava/io/InputStream;)V

    iget-object v1, p0, Lcom/adsdk/sdk/AdManager$3;->this$0:Lcom/adsdk/sdk/AdManager;

    # invokes: Lcom/adsdk/sdk/AdManager;->getRequest()Lcom/adsdk/sdk/AdRequest;
    invoke-static {v1}, Lcom/adsdk/sdk/AdManager;->access$0(Lcom/adsdk/sdk/AdManager;)Lcom/adsdk/sdk/AdRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/adsdk/sdk/AdManager$3;->this$0:Lcom/adsdk/sdk/AdManager;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/RequestRichMediaAd;->sendRequest(Lcom/adsdk/sdk/AdRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsdk/sdk/video/RichMediaAd;

    invoke-static {v2, v0}, Lcom/adsdk/sdk/AdManager;->access$1(Lcom/adsdk/sdk/AdManager;Lcom/adsdk/sdk/video/RichMediaAd;)V

    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$3;->this$0:Lcom/adsdk/sdk/AdManager;

    # getter for: Lcom/adsdk/sdk/AdManager;->mResponse:Lcom/adsdk/sdk/video/RichMediaAd;
    invoke-static {v0}, Lcom/adsdk/sdk/AdManager;->access$2(Lcom/adsdk/sdk/AdManager;)Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/RichMediaAd;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5f

    const-string v0, "response OK received"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$3;->this$0:Lcom/adsdk/sdk/AdManager;

    # getter for: Lcom/adsdk/sdk/AdManager;->mListener:Lcom/adsdk/sdk/AdListener;
    invoke-static {v0}, Lcom/adsdk/sdk/AdManager;->access$4(Lcom/adsdk/sdk/AdManager;)Lcom/adsdk/sdk/AdListener;

    move-result-object v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$3;->this$0:Lcom/adsdk/sdk/AdManager;

    # getter for: Lcom/adsdk/sdk/AdManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/adsdk/sdk/AdManager;->access$5(Lcom/adsdk/sdk/AdManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/adsdk/sdk/AdManager$3$1;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/AdManager$3$1;-><init>(Lcom/adsdk/sdk/AdManager$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_4b} :catch_7b

    :cond_4b
    :goto_4b
    const-string v0, "finishing ad request thread"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$3;->this$0:Lcom/adsdk/sdk/AdManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adsdk/sdk/AdManager;->access$6(Lcom/adsdk/sdk/AdManager;Ljava/lang/Thread;)V

    return-void

    :cond_57
    const-wide/16 v0, 0xc8

    :try_start_59
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5c
    .catch Ljava/lang/InterruptedException; {:try_start_59 .. :try_end_5c} :catch_5d

    goto :goto_0

    :catch_5d
    move-exception v0

    goto :goto_0

    :cond_5f
    :try_start_5f
    const-string v0, "response NO AD received"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$3;->this$0:Lcom/adsdk/sdk/AdManager;

    # getter for: Lcom/adsdk/sdk/AdManager;->mListener:Lcom/adsdk/sdk/AdListener;
    invoke-static {v0}, Lcom/adsdk/sdk/AdManager;->access$4(Lcom/adsdk/sdk/AdManager;)Lcom/adsdk/sdk/AdListener;

    move-result-object v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$3;->this$0:Lcom/adsdk/sdk/AdManager;

    # getter for: Lcom/adsdk/sdk/AdManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/adsdk/sdk/AdManager;->access$5(Lcom/adsdk/sdk/AdManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/adsdk/sdk/AdManager$3$2;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/AdManager$3$2;-><init>(Lcom/adsdk/sdk/AdManager$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_7a
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_7a} :catch_7b

    goto :goto_4b

    :catch_7b
    move-exception v0

    iget-object v1, p0, Lcom/adsdk/sdk/AdManager$3;->this$0:Lcom/adsdk/sdk/AdManager;

    new-instance v2, Lcom/adsdk/sdk/video/RichMediaAd;

    invoke-direct {v2}, Lcom/adsdk/sdk/video/RichMediaAd;-><init>()V

    invoke-static {v1, v2}, Lcom/adsdk/sdk/AdManager;->access$1(Lcom/adsdk/sdk/AdManager;Lcom/adsdk/sdk/video/RichMediaAd;)V

    iget-object v1, p0, Lcom/adsdk/sdk/AdManager$3;->this$0:Lcom/adsdk/sdk/AdManager;

    # getter for: Lcom/adsdk/sdk/AdManager;->mResponse:Lcom/adsdk/sdk/video/RichMediaAd;
    invoke-static {v1}, Lcom/adsdk/sdk/AdManager;->access$2(Lcom/adsdk/sdk/AdManager;)Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/video/RichMediaAd;->setType(I)V

    iget-object v1, p0, Lcom/adsdk/sdk/AdManager$3;->this$0:Lcom/adsdk/sdk/AdManager;

    # getter for: Lcom/adsdk/sdk/AdManager;->mListener:Lcom/adsdk/sdk/AdListener;
    invoke-static {v1}, Lcom/adsdk/sdk/AdManager;->access$4(Lcom/adsdk/sdk/AdManager;)Lcom/adsdk/sdk/AdListener;

    move-result-object v1

    if-eqz v1, :cond_4b

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ad Load failed. Reason:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$3;->this$0:Lcom/adsdk/sdk/AdManager;

    # getter for: Lcom/adsdk/sdk/AdManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/adsdk/sdk/AdManager;->access$5(Lcom/adsdk/sdk/AdManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/adsdk/sdk/AdManager$3$3;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/AdManager$3$3;-><init>(Lcom/adsdk/sdk/AdManager$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4b
.end method
