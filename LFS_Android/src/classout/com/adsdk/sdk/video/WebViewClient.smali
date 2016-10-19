.class public Lcom/adsdk/sdk/video/WebViewClient;
.super Landroid/webkit/WebViewClient;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAllowNavigation:Z

.field private mAllowedUrl:Ljava/lang/String;

.field private mFinishedLoadingTime:J

.field private mOnPageLoadedListener:Lcom/adsdk/sdk/video/WebViewClient$OnPageLoadedListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Z)V
    .registers 5

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adsdk/sdk/video/WebViewClient;->mAllowNavigation:Z

    iput-object p1, p0, Lcom/adsdk/sdk/video/WebViewClient;->mActivity:Landroid/app/Activity;

    iput-boolean p2, p0, Lcom/adsdk/sdk/video/WebViewClient;->mAllowNavigation:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adsdk/sdk/video/WebViewClient;->mFinishedLoadingTime:J

    return-void
.end method


# virtual methods
.method public getAllowedUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/video/WebViewClient;->mAllowedUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFinishedLoadingTime()J
    .registers 3

    iget-wide v0, p0, Lcom/adsdk/sdk/video/WebViewClient;->mFinishedLoadingTime:J

    return-wide v0
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 7

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPageFinished:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAllowedUrl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/video/WebViewClient;->mAllowedUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/WebViewClient;->mAllowedUrl:Ljava/lang/String;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/adsdk/sdk/video/WebViewClient;->mAllowedUrl:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    :cond_2d
    iget-wide v0, p0, Lcom/adsdk/sdk/video/WebViewClient;->mFinishedLoadingTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/adsdk/sdk/video/WebViewClient;->mFinishedLoadingTime:J

    :cond_3b
    iget-object v0, p0, Lcom/adsdk/sdk/video/WebViewClient;->mOnPageLoadedListener:Lcom/adsdk/sdk/video/WebViewClient$OnPageLoadedListener;

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/adsdk/sdk/video/WebViewClient;->mOnPageLoadedListener:Lcom/adsdk/sdk/video/WebViewClient$OnPageLoadedListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/video/WebViewClient$OnPageLoadedListener;->onPageLoaded()V

    :cond_44
    return-void
.end method

.method public setAllowedUrl(Ljava/lang/String;)V
    .registers 4

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adsdk/sdk/video/WebViewClient;->mFinishedLoadingTime:J

    iput-object p1, p0, Lcom/adsdk/sdk/video/WebViewClient;->mAllowedUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/adsdk/sdk/video/WebViewClient;->mAllowedUrl:Ljava/lang/String;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/adsdk/sdk/video/WebViewClient;->mAllowedUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_33

    :cond_1c
    iget-object v0, p0, Lcom/adsdk/sdk/video/WebViewClient;->mAllowedUrl:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adsdk/sdk/video/WebViewClient;->mAllowedUrl:Ljava/lang/String;

    :cond_33
    return-void
.end method

.method public setOnPageLoadedListener(Lcom/adsdk/sdk/video/WebViewClient$OnPageLoadedListener;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/video/WebViewClient;->mOnPageLoadedListener:Lcom/adsdk/sdk/video/WebViewClient$OnPageLoadedListener;

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 7

    const/4 v3, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Loading url:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    const-string v0, "market:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_53

    const-string v0, "http://market.android.com"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_53

    const-string v0, "sms:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_53

    const-string v0, "tel:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_53

    const-string v0, "mailto:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_53

    const-string v0, "voicemail:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_53

    const-string v0, "geo:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_53

    const-string v0, "google.streetview:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_78

    :cond_53
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :try_start_5e
    iget-object v1, p0, Lcom/adsdk/sdk/video/WebViewClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_63
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5e .. :try_end_63} :catch_64

    :goto_63
    return v3

    :catch_64
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could open URL: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->w(Ljava/lang/String;)V

    goto :goto_63

    :cond_78
    const-string v0, "mfox:external:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_97

    const/16 v0, 0xe

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/WebViewClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_63

    :cond_97
    const-string v0, "mfox:replayvideo"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c5

    :try_start_9f
    iget-object v0, p0, Lcom/adsdk/sdk/video/WebViewClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "replayVideo"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/video/WebViewClient;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9f .. :try_end_b6} :catch_b7
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_b6} :catch_be

    goto :goto_63

    :catch_b7
    move-exception v0

    const-string v0, "Your activity class has no replayVideo method"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    goto :goto_63

    :catch_be
    move-exception v0

    const-string v0, "Couldn\'t run replayVideo method in your Activity"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    goto :goto_63

    :cond_c5
    const-string v0, "mfox:playvideo"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f6

    :try_start_cd
    iget-object v0, p0, Lcom/adsdk/sdk/video/WebViewClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "playVideo"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/video/WebViewClient;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_cd .. :try_end_e4} :catch_e6
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_e4} :catch_ee

    goto/16 :goto_63

    :catch_e6
    move-exception v0

    const-string v0, "Your activity class has no playVideo method"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    goto/16 :goto_63

    :catch_ee
    move-exception v0

    const-string v0, "Couldn\'t run replayVideo method in your Activity"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    goto/16 :goto_63

    :cond_f6
    const-string v0, "mfox:skip"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_105

    iget-object v0, p0, Lcom/adsdk/sdk/video/WebViewClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_63

    :cond_105
    iget-boolean v0, p0, Lcom/adsdk/sdk/video/WebViewClient;->mAllowNavigation:Z

    if-nez v0, :cond_111

    iget-object v0, p0, Lcom/adsdk/sdk/video/WebViewClient;->mAllowedUrl:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_116

    :cond_111
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_63

    :cond_116
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/adsdk/sdk/video/WebViewClient;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/adsdk/sdk/video/RichMediaActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/adsdk/sdk/video/WebViewClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_63
.end method
