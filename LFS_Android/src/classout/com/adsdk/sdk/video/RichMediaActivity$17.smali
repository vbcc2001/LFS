.class Lcom/adsdk/sdk/video/RichMediaActivity$17;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adsdk/sdk/video/InterstitialController$OnResetAutocloseListener;


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/video/RichMediaActivity;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/video/RichMediaActivity$17;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResetAutoclose()V
    .registers 3

    const-string v0, "###########RESET AUTOCLOSE INTERSTITIAL"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$17;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialAutocloseReset:Z

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$17;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    # getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialAutocloseTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$17(Lcom/adsdk/sdk/video/RichMediaActivity;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$17;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    # getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialAutocloseTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$17(Lcom/adsdk/sdk/video/RichMediaActivity;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$17;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$18(Lcom/adsdk/sdk/video/RichMediaActivity;Ljava/util/Timer;)V

    :cond_21
    return-void
.end method
