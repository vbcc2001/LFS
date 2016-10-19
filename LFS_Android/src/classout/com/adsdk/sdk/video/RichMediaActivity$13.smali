.class Lcom/adsdk/sdk/video/RichMediaActivity$13;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/video/RichMediaActivity;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/video/RichMediaActivity$13;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    const-string v0, "###########TRACKING SKIP VIDEO"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$13;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    # getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;
    invoke-static {v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$7(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/VideoData;

    move-result-object v0

    iget-object v2, v0, Lcom/adsdk/sdk/video/VideoData;->skipEvents:Ljava/util/Vector;

    const/4 v0, 0x0

    move v1, v0

    :goto_f
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v1, v0, :cond_27

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$13;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$12(Lcom/adsdk/sdk/video/RichMediaActivity;Z)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$13;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/RichMediaActivity;->setResult(I)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$13;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->finish()V

    return-void

    :cond_27
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

    goto :goto_f
.end method
