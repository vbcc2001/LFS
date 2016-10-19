.class Lcom/adsdk/sdk/banner/InAppWebView$1;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/banner/InAppWebView;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/banner/InAppWebView;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/banner/InAppWebView$1;->this$0:Lcom/adsdk/sdk/banner/InAppWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 8

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MRAID error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x1

    if-nez p2, :cond_5

    const/4 v0, 0x0

    :goto_4
    return v0

    :cond_5
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http:"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1d

    const-string v2, "https:"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_31

    :cond_1d
    const-string v2, "play.google.com"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    const-string v2, "market.android.com"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_4

    :cond_31
    :try_start_31
    iget-object v1, p0, Lcom/adsdk/sdk/banner/InAppWebView$1;->this$0:Lcom/adsdk/sdk/banner/InAppWebView;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/banner/InAppWebView;->startActivity(Landroid/content/Intent;)V
    :try_end_41
    .catch Landroid/content/ActivityNotFoundException; {:try_start_31 .. :try_end_41} :catch_47

    :goto_41
    iget-object v1, p0, Lcom/adsdk/sdk/banner/InAppWebView$1;->this$0:Lcom/adsdk/sdk/banner/InAppWebView;

    invoke-virtual {v1}, Lcom/adsdk/sdk/banner/InAppWebView;->finish()V

    goto :goto_4

    :catch_47
    move-exception v1

    const-string v1, "MoPub"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to start activity for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Ensure that your phone can handle this intent."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adsdk/sdk/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_41
.end method
