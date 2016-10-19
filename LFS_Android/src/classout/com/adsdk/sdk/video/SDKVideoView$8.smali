.class Lcom/adsdk/sdk/video/SDKVideoView$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/video/SDKVideoView;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/video/SDKVideoView;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/video/SDKVideoView$8;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const-string v0, "Time Event Thread started"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView$8;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    # getter for: Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/adsdk/sdk/video/SDKVideoView;->access$2(Lcom/adsdk/sdk/video/SDKVideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView$8;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    # getter for: Lcom/adsdk/sdk/video/SDKVideoView;->mCurrentState:I
    invoke-static {v0}, Lcom/adsdk/sdk/video/SDKVideoView;->access$19(Lcom/adsdk/sdk/video/SDKVideoView;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3f

    :try_start_16
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView$8;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    # getter for: Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/adsdk/sdk/video/SDKVideoView;->access$2(Lcom/adsdk/sdk/video/SDKVideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    div-int/lit16 v3, v0, 0x3e8

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView$8;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    # getter for: Lcom/adsdk/sdk/video/SDKVideoView;->mTimeEventListeners:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/adsdk/sdk/video/SDKVideoView;->access$20(Lcom/adsdk/sdk/video/SDKVideoView;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    if-eqz v0, :cond_3f

    const/4 v1, 0x0

    move v2, v1

    :goto_36
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v2, v1, :cond_53

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_3f} :catch_69

    :cond_3f
    :goto_3f
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView$8;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    # getter for: Lcom/adsdk/sdk/video/SDKVideoView;->mTimeEventThreadDone:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/adsdk/sdk/video/SDKVideoView;->access$21(Lcom/adsdk/sdk/video/SDKVideoView;)Landroid/os/ConditionVariable;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "Time Event Thread stopped"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    return-void

    :cond_53
    :try_start_53
    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;

    iget-object v4, p0, Lcom/adsdk/sdk/video/SDKVideoView$8;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    iget-object v4, v4, Lcom/adsdk/sdk/video/SDKVideoView;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/adsdk/sdk/video/SDKVideoView$8$1;

    invoke-direct {v5, p0, v1, v3}, Lcom/adsdk/sdk/video/SDKVideoView$8$1;-><init>(Lcom/adsdk/sdk/video/SDKVideoView$8;Lcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_65} :catch_69

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_36

    :catch_69
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Time Event Thread error"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/adsdk/sdk/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3f
.end method
