.class Lcom/adsdk/sdk/video/RichMediaActivity$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/video/RichMediaActivity;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/video/RichMediaActivity$7;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 9

    const/4 v6, 0x1

    const-string v0, "###########TRACKING END VIDEO"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$7;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    # getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;
    invoke-static {v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$7(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/VideoData;

    move-result-object v0

    iget-object v2, v0, Lcom/adsdk/sdk/video/VideoData;->completeEvents:Ljava/util/Vector;

    const/4 v0, 0x0

    move v1, v0

    :goto_10
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v1, v0, :cond_6c

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$7;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    # getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mType:I
    invoke-static {v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$8(Lcom/adsdk/sdk/video/RichMediaActivity;)I

    move-result v0

    if-ne v0, v6, :cond_5b

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$7;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    # getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mAd:Lcom/adsdk/sdk/video/RichMediaAd;
    invoke-static {v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$9(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/RichMediaAd;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5b

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity$7;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    const-class v2, Lcom/adsdk/sdk/video/RichMediaActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "RICH_AD_DATA"

    iget-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity$7;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    # getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mAd:Lcom/adsdk/sdk/video/RichMediaAd;
    invoke-static {v2}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$9(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "RICH_AD_TYPE"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_45
    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity$7;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    invoke-virtual {v1, v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$7;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity$7;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    # getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mEnterAnim:I
    invoke-static {v1}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$10(Lcom/adsdk/sdk/video/RichMediaActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity$7;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    # getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mExitAnim:I
    invoke-static {v2}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$11(Lcom/adsdk/sdk/video/RichMediaActivity;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/adsdk/sdk/video/RichMediaActivity;->setActivityAnimation(Landroid/app/Activity;II)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_5b} :catch_9f

    :cond_5b
    :goto_5b
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$7;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    invoke-static {v0, v6}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$12(Lcom/adsdk/sdk/video/RichMediaActivity;Z)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$7;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/RichMediaActivity;->setResult(I)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$7;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->finish()V

    return-void

    :cond_6c
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "Track url:"

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    new-instance v3, Lcom/adsdk/sdk/video/TrackEvent;

    invoke-direct {v3}, Lcom/adsdk/sdk/video/TrackEvent;-><init>()V

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v3, Lcom/adsdk/sdk/video/TrackEvent;->url:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/adsdk/sdk/video/TrackEvent;->timestamp:J

    invoke-static {v3}, Lcom/adsdk/sdk/video/TrackerService;->requestTrack(Lcom/adsdk/sdk/video/TrackEvent;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_10

    :catch_9f
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot start Rich Ad activity:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/adsdk/sdk/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5b
.end method
