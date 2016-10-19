.class Lcom/adsdk/sdk/video/WebFrame$LoadUrlTask;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/video/WebFrame;

.field userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/adsdk/sdk/video/WebFrame;)V
    .registers 3

    iput-object p1, p0, Lcom/adsdk/sdk/video/WebFrame$LoadUrlTask;->this$0:Lcom/adsdk/sdk/video/WebFrame;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    # invokes: Lcom/adsdk/sdk/video/WebFrame;->getUserAgentString()Ljava/lang/String;
    invoke-static {p1}, Lcom/adsdk/sdk/video/WebFrame;->access$0(Lcom/adsdk/sdk/video/WebFrame;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adsdk/sdk/video/WebFrame$LoadUrlTask;->userAgent:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/adsdk/sdk/video/WebFrame$LoadUrlTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    aget-object v0, p1, v0

    :try_start_3
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_8} :catch_4d

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Checking URL redirect:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    :goto_2a
    :try_start_2a
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_30} :catch_a5
    .catchall {:try_start_2a .. :try_end_30} :catchall_a0

    :try_start_30
    const-string v2, "User-Agent"

    iget-object v4, p0, Lcom/adsdk/sdk/video/WebFrame$LoadUrlTask;->userAgent:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v2, 0xc8

    if-ne v4, v2, :cond_53

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_46} :catch_88
    .catchall {:try_start_30 .. :try_end_46} :catchall_97

    :cond_46
    if-eqz v0, :cond_4b

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4b
    move-object v0, v1

    :cond_4c
    :goto_4c
    return-object v0

    :catch_4d
    move-exception v1

    if-nez v0, :cond_4c

    const-string v0, ""

    goto :goto_4c

    :cond_53
    :try_start_53
    const-string v2, "location"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6f

    const-string v2, "URL redirect cycle detected"

    invoke-static {v2}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_67} :catch_88
    .catchall {:try_start_53 .. :try_end_67} :catchall_97

    if-eqz v0, :cond_6c

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6c
    const-string v0, ""

    goto :goto_4c

    :cond_6f
    :try_start_6f
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_74} :catch_88
    .catchall {:try_start_6f .. :try_end_74} :catchall_97

    const/16 v5, 0x12e

    if-eq v4, v5, :cond_84

    const/16 v5, 0x12d

    if-eq v4, v5, :cond_84

    const/16 v5, 0x133

    if-eq v4, v5, :cond_84

    const/16 v5, 0x12f

    if-ne v4, v5, :cond_46

    :cond_84
    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_2a

    :catch_88
    move-exception v2

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_8c
    if-eqz v0, :cond_94

    :goto_8e
    if-eqz v1, :cond_4c

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_4c

    :cond_94
    :try_start_94
    const-string v0, ""
    :try_end_96
    .catchall {:try_start_94 .. :try_end_96} :catchall_a2

    goto :goto_8e

    :catchall_97
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_9a
    if-eqz v2, :cond_9f

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_9f
    throw v0

    :catchall_a0
    move-exception v0

    goto :goto_9a

    :catchall_a2
    move-exception v0

    move-object v2, v1

    goto :goto_9a

    :catch_a5
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_8c
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/adsdk/sdk/video/WebFrame$LoadUrlTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_a

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const-string p1, "about:blank"

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Show URL: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/WebFrame$LoadUrlTask;->this$0:Lcom/adsdk/sdk/video/WebFrame;

    # getter for: Lcom/adsdk/sdk/video/WebFrame;->mWebViewClient:Lcom/adsdk/sdk/video/WebViewClient;
    invoke-static {v0}, Lcom/adsdk/sdk/video/WebFrame;->access$1(Lcom/adsdk/sdk/video/WebFrame;)Lcom/adsdk/sdk/video/WebViewClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adsdk/sdk/video/WebViewClient;->setAllowedUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/WebFrame$LoadUrlTask;->this$0:Lcom/adsdk/sdk/video/WebFrame;

    # getter for: Lcom/adsdk/sdk/video/WebFrame;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/adsdk/sdk/video/WebFrame;->access$2(Lcom/adsdk/sdk/video/WebFrame;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/WebFrame$LoadUrlTask;->this$0:Lcom/adsdk/sdk/video/WebFrame;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/WebFrame;->requestLayout()V

    return-void
.end method
