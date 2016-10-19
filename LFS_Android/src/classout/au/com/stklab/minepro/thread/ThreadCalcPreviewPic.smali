.class public Lau/com/stklab/minepro/thread/ThreadCalcPreviewPic;
.super Ljava/lang/Thread;


# instance fields
.field handler:Landroid/os/Handler;

.field number:I


# direct methods
.method public constructor <init>(ILandroid/os/Handler;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput p1, p0, Lau/com/stklab/minepro/thread/ThreadCalcPreviewPic;->number:I

    iput-object p2, p0, Lau/com/stklab/minepro/thread/ThreadCalcPreviewPic;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    sget-object v0, Lau/com/stklab/minepro/mineBeta;->currentServer:Ljava/lang/String;

    const-string v1, "spankwire"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Lau/com/stklab/minepro/mineBeta;->currentServer:Ljava/lang/String;

    const-string v1, "sextube_spankwire"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    :cond_14
    sget-object v0, Lau/com/stklab/minepro/mineBeta;->videoList:Ljava/util/ArrayList;

    iget v1, p0, Lau/com/stklab/minepro/thread/ThreadCalcPreviewPic;->number:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lau/com/stklab/minepro/type/Video;

    sget-object v1, Lau/com/stklab/minepro/mineBeta;->videoList:Ljava/util/ArrayList;

    iget v2, p0, Lau/com/stklab/minepro/thread/ThreadCalcPreviewPic;->number:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lau/com/stklab/minepro/type/Video;

    iget-object v1, v1, Lau/com/stklab/minepro/type/Video;->id:Ljava/lang/String;

    invoke-static {v1}, Lau/com/stklab/minepro/parser/WebParser;->getMP4LinkBySpankWireMobileVideoId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lau/com/stklab/minepro/type/Video;->mp4Link:Ljava/lang/String;

    :cond_30
    :goto_30
    iget-object v0, p0, Lau/com/stklab/minepro/thread/ThreadCalcPreviewPic;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_37
    sget-object v0, Lau/com/stklab/minepro/mineBeta;->currentServer:Ljava/lang/String;

    const-string v1, "tube8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_55

    sget-object v0, Lau/com/stklab/minepro/mineBeta;->currentServer:Ljava/lang/String;

    const-string v1, "sextube_tube8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_55

    sget-object v0, Lau/com/stklab/minepro/mineBeta;->currentServer:Ljava/lang/String;

    const-string v1, "search_tube8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    :cond_55
    sget-object v0, Lau/com/stklab/minepro/mineBeta;->videoList:Ljava/util/ArrayList;

    iget v1, p0, Lau/com/stklab/minepro/thread/ThreadCalcPreviewPic;->number:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lau/com/stklab/minepro/type/Video;

    sget-object v1, Lau/com/stklab/minepro/mineBeta;->videoList:Ljava/util/ArrayList;

    iget v2, p0, Lau/com/stklab/minepro/thread/ThreadCalcPreviewPic;->number:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lau/com/stklab/minepro/type/Video;

    iget-object v1, v1, Lau/com/stklab/minepro/type/Video;->detailPageLink:Ljava/lang/String;

    invoke-static {v1}, Lau/com/stklab/minepro/parser/WebParser;->get3GPLinkByTube8MobileVideoId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lau/com/stklab/minepro/type/Video;->mp4Link:Ljava/lang/String;

    goto :goto_30

    :cond_72
    sget-object v0, Lau/com/stklab/minepro/mineBeta;->currentServer:Ljava/lang/String;

    const-string v1, "vidz"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_99

    sget-object v0, Lau/com/stklab/minepro/mineBeta;->videoList:Ljava/util/ArrayList;

    iget v1, p0, Lau/com/stklab/minepro/thread/ThreadCalcPreviewPic;->number:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lau/com/stklab/minepro/type/Video;

    sget-object v1, Lau/com/stklab/minepro/mineBeta;->videoList:Ljava/util/ArrayList;

    iget v2, p0, Lau/com/stklab/minepro/thread/ThreadCalcPreviewPic;->number:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lau/com/stklab/minepro/type/Video;

    iget-object v1, v1, Lau/com/stklab/minepro/type/Video;->id:Ljava/lang/String;

    invoke-static {v1}, Lau/com/stklab/minepro/parser/WebParser;->getMP4LinkByVidzMobileVideoId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lau/com/stklab/minepro/type/Video;->mp4Link:Ljava/lang/String;

    goto :goto_30

    :cond_99
    sget-object v0, Lau/com/stklab/minepro/mineBeta;->currentServer:Ljava/lang/String;

    const-string v1, "search_spankwire"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c1

    sget-object v0, Lau/com/stklab/minepro/mineBeta;->videoList:Ljava/util/ArrayList;

    iget v1, p0, Lau/com/stklab/minepro/thread/ThreadCalcPreviewPic;->number:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lau/com/stklab/minepro/type/Video;

    sget-object v1, Lau/com/stklab/minepro/mineBeta;->videoList:Ljava/util/ArrayList;

    iget v2, p0, Lau/com/stklab/minepro/thread/ThreadCalcPreviewPic;->number:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lau/com/stklab/minepro/type/Video;

    iget-object v1, v1, Lau/com/stklab/minepro/type/Video;->id:Ljava/lang/String;

    invoke-static {v1}, Lau/com/stklab/minepro/parser/WebParser;->getMP4LinkBySpankWireMobileVideoId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lau/com/stklab/minepro/type/Video;->mp4Link:Ljava/lang/String;

    goto/16 :goto_30

    :cond_c1
    sget-object v0, Lau/com/stklab/minepro/mineBeta;->currentServer:Ljava/lang/String;

    const-string v1, "pornhub"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_df

    sget-object v0, Lau/com/stklab/minepro/mineBeta;->currentServer:Ljava/lang/String;

    const-string v1, "sextube_pornhub"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_df

    sget-object v0, Lau/com/stklab/minepro/mineBeta;->currentServer:Ljava/lang/String;

    const-string v1, "search_pornhub"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fd

    :cond_df
    sget-object v0, Lau/com/stklab/minepro/mineBeta;->videoList:Ljava/util/ArrayList;

    iget v1, p0, Lau/com/stklab/minepro/thread/ThreadCalcPreviewPic;->number:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lau/com/stklab/minepro/type/Video;

    sget-object v1, Lau/com/stklab/minepro/mineBeta;->videoList:Ljava/util/ArrayList;

    iget v2, p0, Lau/com/stklab/minepro/thread/ThreadCalcPreviewPic;->number:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lau/com/stklab/minepro/type/Video;

    iget-object v1, v1, Lau/com/stklab/minepro/type/Video;->id:Ljava/lang/String;

    invoke-static {v1}, Lau/com/stklab/minepro/parser/WebParser;->getMP4LinkByPornHubId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lau/com/stklab/minepro/type/Video;->mp4Link:Ljava/lang/String;

    goto/16 :goto_30

    :cond_fd
    sget-object v0, Lau/com/stklab/minepro/mineBeta;->currentServer:Ljava/lang/String;

    const-string v1, "madthumbs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_111

    sget-object v0, Lau/com/stklab/minepro/mineBeta;->currentServer:Ljava/lang/String;

    const-string v1, "search_madthumbs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12f

    :cond_111
    sget-object v0, Lau/com/stklab/minepro/mineBeta;->videoList:Ljava/util/ArrayList;

    iget v1, p0, Lau/com/stklab/minepro/thread/ThreadCalcPreviewPic;->number:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lau/com/stklab/minepro/type/Video;

    sget-object v1, Lau/com/stklab/minepro/mineBeta;->videoList:Ljava/util/ArrayList;

    iget v2, p0, Lau/com/stklab/minepro/thread/ThreadCalcPreviewPic;->number:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lau/com/stklab/minepro/type/Video;

    iget-object v1, v1, Lau/com/stklab/minepro/type/Video;->id:Ljava/lang/String;

    invoke-static {v1}, Lau/com/stklab/minepro/parser/WebParser;->getMP4LinkByMadthumbsId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lau/com/stklab/minepro/type/Video;->mp4Link:Ljava/lang/String;

    goto/16 :goto_30

    :cond_12f
    sget-object v0, Lau/com/stklab/minepro/mineBeta;->currentServer:Ljava/lang/String;

    const-string v1, "sextube_thisav"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    sget-object v0, Lau/com/stklab/minepro/mineBeta;->videoList:Ljava/util/ArrayList;

    iget v1, p0, Lau/com/stklab/minepro/thread/ThreadCalcPreviewPic;->number:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lau/com/stklab/minepro/type/Video;

    sget-object v1, Lau/com/stklab/minepro/mineBeta;->videoList:Ljava/util/ArrayList;

    iget v2, p0, Lau/com/stklab/minepro/thread/ThreadCalcPreviewPic;->number:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lau/com/stklab/minepro/type/Video;

    iget-object v1, v1, Lau/com/stklab/minepro/type/Video;->id:Ljava/lang/String;

    invoke-static {v1}, Lau/com/stklab/minepro/parser/WebParser;->getMP4LinkBySextubeId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lau/com/stklab/minepro/type/Video;->mp4Link:Ljava/lang/String;

    goto/16 :goto_30
.end method
