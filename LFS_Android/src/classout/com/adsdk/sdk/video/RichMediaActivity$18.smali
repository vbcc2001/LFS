.class Lcom/adsdk/sdk/video/RichMediaActivity$18;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adsdk/sdk/video/WebViewClient$OnPageLoadedListener;


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/video/RichMediaActivity;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/video/RichMediaActivity$18;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageLoaded()V
    .registers 6

    const/4 v4, 0x1

    const-string v0, "onPageLoaded"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$18;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    # getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;
    invoke-static {v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$19(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/InterstitialData;

    move-result-object v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$18;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    # getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;
    invoke-static {v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$19(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/InterstitialData;

    move-result-object v0

    iget v0, v0, Lcom/adsdk/sdk/video/InterstitialData;->autoclose:I

    if-lez v0, :cond_52

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$18;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    # getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialAutocloseTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$17(Lcom/adsdk/sdk/video/RichMediaActivity;)Ljava/util/Timer;

    move-result-object v0

    if-nez v0, :cond_52

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$18;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    iget-boolean v0, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialAutocloseReset:Z

    if-nez v0, :cond_52

    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$InterstitialAutocloseTask;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity$18;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    iget-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity$18;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    invoke-direct {v0, v1, v2}, Lcom/adsdk/sdk/video/RichMediaActivity$InterstitialAutocloseTask;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity$18;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    invoke-static {v1, v2}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$18(Lcom/adsdk/sdk/video/RichMediaActivity;Ljava/util/Timer;)V

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity$18;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    # getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialAutocloseTimer:Ljava/util/Timer;
    invoke-static {v1}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$17(Lcom/adsdk/sdk/video/RichMediaActivity;)Ljava/util/Timer;

    move-result-object v1

    iget-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity$18;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    # getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;
    invoke-static {v2}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$19(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/InterstitialData;

    move-result-object v2

    iget v2, v2, Lcom/adsdk/sdk/video/InterstitialData;->autoclose:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    const-string v0, "onPageLoaded mInterstitialAutocloseTimer"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    :cond_52
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$18;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    # getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;
    invoke-static {v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$19(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/InterstitialData;

    move-result-object v0

    if-eqz v0, :cond_be

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$18;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    # getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;
    invoke-static {v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$19(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/InterstitialData;

    move-result-object v0

    iget v0, v0, Lcom/adsdk/sdk/video/InterstitialData;->showSkipButtonAfter:I

    if-lez v0, :cond_be

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$18;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    # getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialCanCloseTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$20(Lcom/adsdk/sdk/video/RichMediaActivity;)Ljava/util/Timer;

    move-result-object v0

    if-nez v0, :cond_98

    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$CanSkipTask;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity$18;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    iget-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity$18;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    invoke-direct {v0, v1, v2}, Lcom/adsdk/sdk/video/RichMediaActivity$CanSkipTask;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;Lcom/adsdk/sdk/video/RichMediaActivity;)V

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity$18;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    invoke-static {v1, v2}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$21(Lcom/adsdk/sdk/video/RichMediaActivity;Ljava/util/Timer;)V

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity$18;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    # getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialCanCloseTimer:Ljava/util/Timer;
    invoke-static {v1}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$20(Lcom/adsdk/sdk/video/RichMediaActivity;)Ljava/util/Timer;

    move-result-object v1

    iget-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity$18;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    # getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;
    invoke-static {v2}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$19(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/InterstitialData;

    move-result-object v2

    iget v2, v2, Lcom/adsdk/sdk/video/InterstitialData;->showSkipButtonAfter:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    const-string v0, "onPageLoaded mInterstitialCanCloseTimer"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    :cond_98
    :goto_98
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$18;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    # getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialLoadingTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$22(Lcom/adsdk/sdk/video/RichMediaActivity;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_af

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$18;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    # getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialLoadingTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$22(Lcom/adsdk/sdk/video/RichMediaActivity;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$18;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$23(Lcom/adsdk/sdk/video/RichMediaActivity;Ljava/util/Timer;)V

    :cond_af
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$18;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    invoke-static {v0, v4}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$24(Lcom/adsdk/sdk/video/RichMediaActivity;Z)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$18;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    # getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialController:Lcom/adsdk/sdk/video/InterstitialController;
    invoke-static {v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$16(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/InterstitialController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/InterstitialController;->pageLoaded()V

    return-void

    :cond_be
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$18;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    invoke-static {v0, v4}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$13(Lcom/adsdk/sdk/video/RichMediaActivity;Z)V

    goto :goto_98
.end method
