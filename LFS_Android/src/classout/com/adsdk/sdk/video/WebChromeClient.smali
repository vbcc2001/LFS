.class public Lcom/adsdk/sdk/video/WebChromeClient;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field private mActivity:Lcom/adsdk/sdk/video/RichMediaActivity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    instance-of v0, p1, Lcom/adsdk/sdk/video/RichMediaActivity;

    if-eqz v0, :cond_b

    check-cast p1, Lcom/adsdk/sdk/video/RichMediaActivity;

    iput-object p1, p0, Lcom/adsdk/sdk/video/WebChromeClient;->mActivity:Lcom/adsdk/sdk/video/RichMediaActivity;

    :cond_b
    return-void
.end method


# virtual methods
.method public onHideCustomView()V
    .registers 2

    const-string v0, "WebChromeClient onHideCustomView"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/WebChromeClient;->mActivity:Lcom/adsdk/sdk/video/RichMediaActivity;

    if-nez v0, :cond_d

    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/adsdk/sdk/video/WebChromeClient;->mActivity:Lcom/adsdk/sdk/video/RichMediaActivity;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->onHideCustomView()V

    goto :goto_c
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 4

    const-string v0, "WebChromeClient onShowCustomView"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/WebChromeClient;->mActivity:Lcom/adsdk/sdk/video/RichMediaActivity;

    if-nez v0, :cond_d

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/adsdk/sdk/video/WebChromeClient;->mActivity:Lcom/adsdk/sdk/video/RichMediaActivity;

    invoke-virtual {v0, p1, p2}, Lcom/adsdk/sdk/video/RichMediaActivity;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    goto :goto_c
.end method
