.class Lcom/adsdk/sdk/video/RichMediaActivity$InterstitialLoadingTimeoutTask;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/video/RichMediaActivity;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/video/RichMediaActivity$InterstitialLoadingTimeoutTask;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    const-string v0, "ADSDK"

    const-string v1, "###########TRACKING INTERSTITIAL LOADING TIMEOUT"

    invoke-static {v0, v1}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$InterstitialLoadingTimeoutTask;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$13(Lcom/adsdk/sdk/video/RichMediaActivity;Z)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$InterstitialLoadingTimeoutTask;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    # getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialController:Lcom/adsdk/sdk/video/InterstitialController;
    invoke-static {v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$16(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/InterstitialController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/InterstitialController;->pageLoaded()V

    return-void
.end method
