.class Lcom/adsdk/sdk/video/RichMediaActivity$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/video/RichMediaActivity;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/video/RichMediaActivity$5;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    const-string v0, "Video playback is being checked"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->w(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$5;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    # getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;
    invoke-static {v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$2(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/SDKVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/SDKVideoView;->getCurrentPosition()I

    move-result v0

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity$5;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    iget v1, v1, Lcom/adsdk/sdk/video/RichMediaActivity;->mTimeTest:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    if-gt v0, v1, :cond_22

    const-string v0, "Video playback too slow. Ending"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->w(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$5;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->finish()V

    :goto_21
    return-void

    :cond_22
    const-string v0, "Video playback has restarted"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->w(Ljava/lang/String;)V

    goto :goto_21
.end method
