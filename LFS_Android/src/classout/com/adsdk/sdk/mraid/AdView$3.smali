.class Lcom/adsdk/sdk/mraid/AdView$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/mraid/AdView;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/mraid/AdView;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/mraid/AdView$3;->this$0:Lcom/adsdk/sdk/mraid/AdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    iget-object v2, p0, Lcom/adsdk/sdk/mraid/AdView$3;->this$0:Lcom/adsdk/sdk/mraid/AdView;

    # getter for: Lcom/adsdk/sdk/mraid/AdView;->mClickthroughUrl:Ljava/lang/String;
    invoke-static {v2}, Lcom/adsdk/sdk/mraid/AdView;->access$5(Lcom/adsdk/sdk/mraid/AdView;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    const-string v2, "User-Agent"

    iget-object v3, p0, Lcom/adsdk/sdk/mraid/AdView$3;->this$0:Lcom/adsdk/sdk/mraid/AdView;

    # getter for: Lcom/adsdk/sdk/mraid/AdView;->mUserAgent:Ljava/lang/String;
    invoke-static {v3}, Lcom/adsdk/sdk/mraid/AdView;->access$6(Lcom/adsdk/sdk/mraid/AdView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1b
    invoke-virtual {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1e
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1b .. :try_end_1e} :catch_26
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_43
    .catchall {:try_start_1b .. :try_end_1e} :catchall_60

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :goto_25
    return-void

    :catch_26
    move-exception v0

    :try_start_27
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Click tracking failed: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/adsdk/sdk/mraid/AdView$3;->this$0:Lcom/adsdk/sdk/mraid/AdView;

    # getter for: Lcom/adsdk/sdk/mraid/AdView;->mClickthroughUrl:Ljava/lang/String;
    invoke-static {v2}, Lcom/adsdk/sdk/mraid/AdView;->access$5(Lcom/adsdk/sdk/mraid/AdView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3b
    .catchall {:try_start_27 .. :try_end_3b} :catchall_60

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_25

    :catch_43
    move-exception v0

    :try_start_44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Click tracking failed: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/adsdk/sdk/mraid/AdView$3;->this$0:Lcom/adsdk/sdk/mraid/AdView;

    # getter for: Lcom/adsdk/sdk/mraid/AdView;->mClickthroughUrl:Ljava/lang/String;
    invoke-static {v2}, Lcom/adsdk/sdk/mraid/AdView;->access$5(Lcom/adsdk/sdk/mraid/AdView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_58
    .catchall {:try_start_44 .. :try_end_58} :catchall_60

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_25

    :catchall_60
    move-exception v0

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    throw v0
.end method
