.class public Lcom/adsdk/sdk/video/ResponseHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;


# instance fields
.field private contents:Ljava/io/CharArrayWriter;

.field private currentExpiration:J

.field private currentTracker:Lcom/adsdk/sdk/video/TrackerData;

.field private insideInterstitial:Z

.field private insideMarkup:Z

.field private insideVideo:Z

.field private insideVideoList:Z

.field private richMediaAd:Lcom/adsdk/sdk/video/RichMediaAd;

.field videoList:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    iput-object v0, p0, Lcom/adsdk/sdk/video/ResponseHandler;->richMediaAd:Lcom/adsdk/sdk/video/RichMediaAd;

    iput-object v0, p0, Lcom/adsdk/sdk/video/ResponseHandler;->videoList:Ljava/util/HashMap;

    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    iput-object v0, p0, Lcom/adsdk/sdk/video/ResponseHandler;->contents:Ljava/io/CharArrayWriter;

    new-instance v0, Lcom/adsdk/sdk/video/TrackerData;

    invoke-direct {v0}, Lcom/adsdk/sdk/video/TrackerData;-><init>()V

    iput-object v0, p0, Lcom/adsdk/sdk/video/ResponseHandler;->currentTracker:Lcom/adsdk/sdk/video/TrackerData;

    iput-boolean v1, p0, Lcom/adsdk/sdk/video/ResponseHandler;->insideMarkup:Z

    iput-boolean v1, p0, Lcom/adsdk/sdk/video/ResponseHandler;->insideVideo:Z

    iput-boolean v1, p0, Lcom/adsdk/sdk/video/ResponseHandler;->insideInterstitial:Z

    iput-boolean v1, p0, Lcom/adsdk/sdk/video/ResponseHandler;->insideVideoList:Z

    return-void
.end method

.method private getBoolean(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    :try_start_4
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_7} :catch_c

    move-result v1

    if-lez v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :catch_c
    move-exception v1

    goto :goto_3
.end method

.method private getInteger(Ljava/lang/String;)I
    .registers 4

    const/4 v0, -0x1

    if-nez p1, :cond_4

    :goto_3
    return v0

    :cond_4
    :try_start_4
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v0

    goto :goto_3

    :catch_9
    move-exception v1

    goto :goto_3
.end method

.method private getLong(Ljava/lang/String;)J
    .registers 5

    const-wide/16 v0, -0x1

    if-nez p1, :cond_5

    :goto_4
    return-wide v0

    :cond_5
    :try_start_5
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_8} :catch_a

    move-result-wide v0

    goto :goto_4

    :catch_a
    move-exception v2

    goto :goto_4
.end method


# virtual methods
.method public characters([CII)V
    .registers 5

    iget-object v0, p0, Lcom/adsdk/sdk/video/ResponseHandler;->contents:Ljava/io/CharArrayWriter;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/CharArrayWriter;->write([CII)V

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    const/4 v4, 0x0

    const-string v0, "creative"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/RichMediaAd;->getVideo()Lcom/adsdk/sdk/video/VideoData;

    move-result-object v0

    if-nez v0, :cond_21

    :cond_19
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Creative tag found outside video node"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/RichMediaAd;->getVideo()Lcom/adsdk/sdk/video/VideoData;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/video/ResponseHandler;->contents:Ljava/io/CharArrayWriter;

    invoke-virtual {v1}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adsdk/sdk/video/VideoData;->videoUrl:Ljava/lang/String;

    :cond_35
    :goto_35
    return-void

    :cond_36
    const-string v0, "duration"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    if-eqz v0, :cond_4e

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/RichMediaAd;->getVideo()Lcom/adsdk/sdk/video/VideoData;

    move-result-object v0

    if-nez v0, :cond_56

    :cond_4e
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Duration tag found outside video node"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_56
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/RichMediaAd;->getVideo()Lcom/adsdk/sdk/video/VideoData;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/video/ResponseHandler;->contents:Ljava/io/CharArrayWriter;

    invoke-virtual {v1}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/adsdk/sdk/video/ResponseHandler;->getInteger(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/adsdk/sdk/video/VideoData;->duration:I

    goto :goto_35

    :cond_6f
    const-string v0, "tracker"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f9

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    if-eqz v0, :cond_87

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/RichMediaAd;->getVideo()Lcom/adsdk/sdk/video/VideoData;

    move-result-object v0

    if-nez v0, :cond_8f

    :cond_87
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Tracker tag found outside video node"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8f
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/RichMediaAd;->getVideo()Lcom/adsdk/sdk/video/VideoData;

    move-result-object v1

    iget-object v0, p0, Lcom/adsdk/sdk/video/ResponseHandler;->currentTracker:Lcom/adsdk/sdk/video/TrackerData;

    iget-object v2, p0, Lcom/adsdk/sdk/video/ResponseHandler;->contents:Ljava/io/CharArrayWriter;

    invoke-virtual {v2}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/adsdk/sdk/video/TrackerData;->url:Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/adsdk/sdk/video/ResponseHandler;->currentTracker:Lcom/adsdk/sdk/video/TrackerData;

    iget v2, v2, Lcom/adsdk/sdk/video/TrackerData;->type:I

    packed-switch v2, :pswitch_data_1ac

    :cond_ad
    :goto_ad
    if-eqz v0, :cond_35

    iget-object v1, p0, Lcom/adsdk/sdk/video/ResponseHandler;->currentTracker:Lcom/adsdk/sdk/video/TrackerData;

    iget-object v1, v1, Lcom/adsdk/sdk/video/TrackerData;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_35

    :pswitch_b8
    iget-object v0, v1, Lcom/adsdk/sdk/video/VideoData;->timeTrackingEvents:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/adsdk/sdk/video/ResponseHandler;->currentTracker:Lcom/adsdk/sdk/video/TrackerData;

    iget v2, v2, Lcom/adsdk/sdk/video/TrackerData;->time:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    if-nez v0, :cond_ad

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iget-object v1, v1, Lcom/adsdk/sdk/video/VideoData;->timeTrackingEvents:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/adsdk/sdk/video/ResponseHandler;->currentTracker:Lcom/adsdk/sdk/video/TrackerData;

    iget v2, v2, Lcom/adsdk/sdk/video/TrackerData;->time:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_ad

    :pswitch_dd
    invoke-virtual {v1}, Lcom/adsdk/sdk/video/VideoData;->getStartEvents()Ljava/util/Vector;

    move-result-object v0

    goto :goto_ad

    :pswitch_e2
    invoke-virtual {v1}, Lcom/adsdk/sdk/video/VideoData;->getCompleteEvents()Ljava/util/Vector;

    move-result-object v0

    goto :goto_ad

    :pswitch_e7
    iget-object v0, v1, Lcom/adsdk/sdk/video/VideoData;->pauseEvents:Ljava/util/Vector;

    goto :goto_ad

    :pswitch_ea
    iget-object v0, v1, Lcom/adsdk/sdk/video/VideoData;->unpauseEvents:Ljava/util/Vector;

    goto :goto_ad

    :pswitch_ed
    iget-object v0, v1, Lcom/adsdk/sdk/video/VideoData;->muteEvents:Ljava/util/Vector;

    goto :goto_ad

    :pswitch_f0
    iget-object v0, v1, Lcom/adsdk/sdk/video/VideoData;->unmuteEvents:Ljava/util/Vector;

    goto :goto_ad

    :pswitch_f3
    iget-object v0, v1, Lcom/adsdk/sdk/video/VideoData;->replayEvents:Ljava/util/Vector;

    goto :goto_ad

    :pswitch_f6
    iget-object v0, v1, Lcom/adsdk/sdk/video/VideoData;->skipEvents:Ljava/util/Vector;

    goto :goto_ad

    :cond_f9
    const-string v0, "htmloverlay"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_131

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    if-eqz v0, :cond_111

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/RichMediaAd;->getVideo()Lcom/adsdk/sdk/video/VideoData;

    move-result-object v0

    if-nez v0, :cond_119

    :cond_111
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "htmloverlay tag found outside video node"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_119
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/RichMediaAd;->getVideo()Lcom/adsdk/sdk/video/VideoData;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/video/ResponseHandler;->contents:Ljava/io/CharArrayWriter;

    invoke-virtual {v1}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adsdk/sdk/video/VideoData;->htmlOverlayMarkup:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/adsdk/sdk/video/ResponseHandler;->insideMarkup:Z

    goto/16 :goto_35

    :cond_131
    const-string v0, "video"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_156

    iget-boolean v0, p0, Lcom/adsdk/sdk/video/ResponseHandler;->insideVideoList:Z

    if-eqz v0, :cond_152

    iget-object v0, p0, Lcom/adsdk/sdk/video/ResponseHandler;->contents:Ljava/io/CharArrayWriter;

    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/video/ResponseHandler;->videoList:Ljava/util/HashMap;

    iget-wide v2, p0, Lcom/adsdk/sdk/video/ResponseHandler;->currentExpiration:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_152
    iput-boolean v4, p0, Lcom/adsdk/sdk/video/ResponseHandler;->insideVideo:Z

    goto/16 :goto_35

    :cond_156
    const-string v0, "interstitial"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_162

    iput-boolean v4, p0, Lcom/adsdk/sdk/video/ResponseHandler;->insideInterstitial:Z

    goto/16 :goto_35

    :cond_162
    const-string v0, "markup"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19a

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    if-eqz v0, :cond_17a

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/RichMediaAd;->getInterstitial()Lcom/adsdk/sdk/video/InterstitialData;

    move-result-object v0

    if-nez v0, :cond_182

    :cond_17a
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "markup tag found outside interstitial node"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_182
    iput-boolean v4, p0, Lcom/adsdk/sdk/video/ResponseHandler;->insideMarkup:Z

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/RichMediaAd;->getInterstitial()Lcom/adsdk/sdk/video/InterstitialData;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/video/ResponseHandler;->contents:Ljava/io/CharArrayWriter;

    invoke-virtual {v1}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adsdk/sdk/video/InterstitialData;->interstitialMarkup:Ljava/lang/String;

    goto/16 :goto_35

    :cond_19a
    const-string v0, "error"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/RichMediaAd;->setType(I)V

    goto/16 :goto_35

    :pswitch_data_1ac
    .packed-switch 0x0
        :pswitch_dd
        :pswitch_e2
        :pswitch_b8
        :pswitch_b8
        :pswitch_b8
        :pswitch_b8
        :pswitch_e7
        :pswitch_ea
        :pswitch_ed
        :pswitch_f0
        :pswitch_f6
        :pswitch_f3
    .end packed-switch
.end method

.method public getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/video/ResponseHandler;->richMediaAd:Lcom/adsdk/sdk/video/RichMediaAd;

    return-object v0
.end method

.method public setRichMediaAd(Lcom/adsdk/sdk/video/RichMediaAd;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/video/ResponseHandler;->richMediaAd:Lcom/adsdk/sdk/video/RichMediaAd;

    return-void
.end method

.method public startDocument()V
    .registers 2

    new-instance v0, Lcom/adsdk/sdk/video/RichMediaAd;

    invoke-direct {v0}, Lcom/adsdk/sdk/video/RichMediaAd;-><init>()V

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/video/ResponseHandler;->setRichMediaAd(Lcom/adsdk/sdk/video/RichMediaAd;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adsdk/sdk/video/ResponseHandler;->insideVideoList:Z

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 13

    const/4 v3, 0x2

    const/4 v7, 0x3

    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/adsdk/sdk/video/ResponseHandler;->insideMarkup:Z

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/adsdk/sdk/video/ResponseHandler;->contents:Ljava/io/CharArrayWriter;

    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->reset()V

    const-string v0, "activevideolist"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adsdk/sdk/video/ResponseHandler;->videoList:Ljava/util/HashMap;

    iput-boolean v4, p0, Lcom/adsdk/sdk/video/ResponseHandler;->insideVideoList:Z

    :cond_1f
    :goto_1f
    return-void

    :cond_20
    const-string v0, "ad"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10a

    const-string v0, "type"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "video-to-interstitial"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/adsdk/sdk/video/RichMediaAd;->setType(I)V

    :goto_3d
    const-string v0, "animation"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "fade-in"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_aa

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/adsdk/sdk/video/RichMediaAd;->setAnimation(I)V

    goto :goto_1f

    :cond_53
    const-string v1, "interstitial-to-video"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_63

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/adsdk/sdk/video/RichMediaAd;->setType(I)V

    goto :goto_3d

    :cond_63
    const-string v1, "video"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_74

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/RichMediaAd;->setType(I)V

    goto :goto_3d

    :cond_74
    const-string v1, "interstitial"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_85

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/RichMediaAd;->setType(I)V

    goto :goto_3d

    :cond_85
    const-string v1, "noAd"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_95

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/adsdk/sdk/video/RichMediaAd;->setType(I)V

    goto :goto_3d

    :cond_95
    new-instance v1, Lorg/xml/sax/SAXException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown response type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_aa
    const-string v1, "slide-in-top"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_bb

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/adsdk/sdk/video/RichMediaAd;->setAnimation(I)V

    goto/16 :goto_1f

    :cond_bb
    const-string v1, "slide-in-bottom"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_cc

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/adsdk/sdk/video/RichMediaAd;->setAnimation(I)V

    goto/16 :goto_1f

    :cond_cc
    const-string v1, "slide-in-left"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_dd

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/adsdk/sdk/video/RichMediaAd;->setAnimation(I)V

    goto/16 :goto_1f

    :cond_dd
    const-string v1, "slide-in-right"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ef

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/RichMediaAd;->setAnimation(I)V

    goto/16 :goto_1f

    :cond_ef
    const-string v1, "flip-in"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_101

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/RichMediaAd;->setAnimation(I)V

    goto/16 :goto_1f

    :cond_101
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/adsdk/sdk/video/RichMediaAd;->setAnimation(I)V

    goto/16 :goto_1f

    :cond_10a
    const-string v0, "video"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19c

    iget-boolean v0, p0, Lcom/adsdk/sdk/video/ResponseHandler;->insideVideoList:Z

    if-eqz v0, :cond_127

    const-string v0, "expiration"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adsdk/sdk/video/ResponseHandler;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/adsdk/sdk/video/ResponseHandler;->currentExpiration:J

    goto/16 :goto_1f

    :cond_127
    iput-boolean v4, p0, Lcom/adsdk/sdk/video/ResponseHandler;->insideVideo:Z

    new-instance v0, Lcom/adsdk/sdk/video/VideoData;

    invoke-direct {v0}, Lcom/adsdk/sdk/video/VideoData;-><init>()V

    const-string v1, "orientation"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "landscape"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_188

    const-string v2, "portrait"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_188

    iput v4, v0, Lcom/adsdk/sdk/video/VideoData;->orientation:I

    :goto_146
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v1

    if-eqz v1, :cond_194

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adsdk/sdk/video/RichMediaAd;->getType()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_18b

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adsdk/sdk/video/RichMediaAd;->getType()I

    move-result v1

    if-eq v1, v6, :cond_18b

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adsdk/sdk/video/RichMediaAd;->getType()I

    move-result v1

    if-eq v1, v7, :cond_18b

    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Found Video tag in an interstitial ad:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adsdk/sdk/video/RichMediaAd;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_188
    iput v5, v0, Lcom/adsdk/sdk/video/VideoData;->orientation:I

    goto :goto_146

    :cond_18b
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adsdk/sdk/video/RichMediaAd;->setVideo(Lcom/adsdk/sdk/video/VideoData;)V

    goto/16 :goto_1f

    :cond_194
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Video tag found outside document root"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19c
    const-string v0, "interstitial"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_290

    iput-boolean v4, p0, Lcom/adsdk/sdk/video/ResponseHandler;->insideInterstitial:Z

    new-instance v0, Lcom/adsdk/sdk/video/InterstitialData;

    invoke-direct {v0}, Lcom/adsdk/sdk/video/InterstitialData;-><init>()V

    const-string v1, "autoclose"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/adsdk/sdk/video/ResponseHandler;->getInteger(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/adsdk/sdk/video/InterstitialData;->autoclose:I

    const-string v1, "type"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_246

    iput v5, v0, Lcom/adsdk/sdk/video/InterstitialData;->interstitialType:I

    const-string v2, "url"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1d5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1ea

    :cond_1d5
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Empty url for interstitial type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1ea
    iput-object v2, v0, Lcom/adsdk/sdk/video/InterstitialData;->interstitialUrl:Ljava/lang/String;

    :goto_1ec
    const-string v1, "orientation"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "landscape"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_27c

    const-string v2, "portrait"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27c

    iput v4, v0, Lcom/adsdk/sdk/video/InterstitialData;->orientation:I

    :goto_204
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v1

    if-eqz v1, :cond_288

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adsdk/sdk/video/RichMediaAd;->getType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_27f

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adsdk/sdk/video/RichMediaAd;->getType()I

    move-result v1

    if-eq v1, v6, :cond_27f

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adsdk/sdk/video/RichMediaAd;->getType()I

    move-result v1

    if-eq v1, v7, :cond_27f

    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Found Interstitial tag in a video ad:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adsdk/sdk/video/RichMediaAd;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_246
    const-string v2, "markup"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_253

    iput v4, v0, Lcom/adsdk/sdk/video/InterstitialData;->interstitialType:I

    iput-boolean v4, p0, Lcom/adsdk/sdk/video/ResponseHandler;->insideMarkup:Z

    goto :goto_1ec

    :cond_253
    iput v5, v0, Lcom/adsdk/sdk/video/InterstitialData;->interstitialType:I

    const-string v2, "url"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_263

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_278

    :cond_263
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Empty url for interstitial type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_278
    iput-object v2, v0, Lcom/adsdk/sdk/video/InterstitialData;->interstitialUrl:Ljava/lang/String;

    goto/16 :goto_1ec

    :cond_27c
    iput v5, v0, Lcom/adsdk/sdk/video/InterstitialData;->orientation:I

    goto :goto_204

    :cond_27f
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adsdk/sdk/video/RichMediaAd;->setInterstitial(Lcom/adsdk/sdk/video/InterstitialData;)V

    goto/16 :goto_1f

    :cond_288
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Interstitial tag found outside document root"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_290
    const-string v0, "creative"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31d

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    if-eqz v0, :cond_2a8

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/RichMediaAd;->getVideo()Lcom/adsdk/sdk/video/VideoData;

    move-result-object v0

    if-nez v0, :cond_2b0

    :cond_2a8
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Creative tag found outside video node"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b0
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/RichMediaAd;->getVideo()Lcom/adsdk/sdk/video/VideoData;

    move-result-object v1

    const-string v0, "delivery"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "progressive"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_315

    iput v5, v1, Lcom/adsdk/sdk/video/VideoData;->delivery:I

    :goto_2c8
    const-string v0, "type"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2d6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2d8

    :cond_2d6
    const-string v0, "application/mp4"

    :cond_2d8
    const-string v2, "display"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "fullscreen"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2eb

    const-string v3, "normal"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    :cond_2eb
    iput v5, v1, Lcom/adsdk/sdk/video/VideoData;->display:I

    iput-object v0, v1, Lcom/adsdk/sdk/video/VideoData;->type:Ljava/lang/String;

    const-string v0, "width"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adsdk/sdk/video/ResponseHandler;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/adsdk/sdk/video/VideoData;->width:I

    const-string v0, "height"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adsdk/sdk/video/ResponseHandler;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/adsdk/sdk/video/VideoData;->height:I

    const-string v0, "bitrate"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adsdk/sdk/video/ResponseHandler;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/adsdk/sdk/video/VideoData;->bitrate:I

    goto/16 :goto_1f

    :cond_315
    const-string v2, "streaming"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    iput v4, v1, Lcom/adsdk/sdk/video/VideoData;->delivery:I

    goto :goto_2c8

    :cond_31d
    const-string v0, "skipbutton"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b1

    iget-boolean v0, p0, Lcom/adsdk/sdk/video/ResponseHandler;->insideVideo:Z

    if-eqz v0, :cond_36b

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    if-eqz v0, :cond_339

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/RichMediaAd;->getVideo()Lcom/adsdk/sdk/video/VideoData;

    move-result-object v0

    if-nez v0, :cond_341

    :cond_339
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "skipbutton tag found inside wrong video node"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_341
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/RichMediaAd;->getVideo()Lcom/adsdk/sdk/video/VideoData;

    move-result-object v0

    const-string v1, "show"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/adsdk/sdk/video/ResponseHandler;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/adsdk/sdk/video/VideoData;->showSkipButton:Z

    const-string v1, "showafter"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/adsdk/sdk/video/ResponseHandler;->getInteger(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/adsdk/sdk/video/VideoData;->showSkipButtonAfter:I

    const-string v1, "graphic"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adsdk/sdk/video/VideoData;->skipButtonImage:Ljava/lang/String;

    goto/16 :goto_1f

    :cond_36b
    iget-boolean v0, p0, Lcom/adsdk/sdk/video/ResponseHandler;->insideInterstitial:Z

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    if-eqz v0, :cond_37f

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/RichMediaAd;->getInterstitial()Lcom/adsdk/sdk/video/InterstitialData;

    move-result-object v0

    if-nez v0, :cond_387

    :cond_37f
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "skipbutton tag found inside wrong interstitial node"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_387
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/RichMediaAd;->getInterstitial()Lcom/adsdk/sdk/video/InterstitialData;

    move-result-object v0

    const-string v1, "show"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/adsdk/sdk/video/ResponseHandler;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/adsdk/sdk/video/InterstitialData;->showSkipButton:Z

    const-string v1, "showafter"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/adsdk/sdk/video/ResponseHandler;->getInteger(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/adsdk/sdk/video/InterstitialData;->showSkipButtonAfter:I

    const-string v1, "graphic"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adsdk/sdk/video/InterstitialData;->skipButtonImage:Ljava/lang/String;

    goto/16 :goto_1f

    :cond_3b1
    const-string v0, "navigation"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_435

    iget-boolean v0, p0, Lcom/adsdk/sdk/video/ResponseHandler;->insideVideo:Z

    if-eqz v0, :cond_3f7

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    if-eqz v0, :cond_3cd

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/RichMediaAd;->getVideo()Lcom/adsdk/sdk/video/VideoData;

    move-result-object v0

    if-nez v0, :cond_3d5

    :cond_3cd
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "navigation tag found inside wrong video node"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3d5
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/RichMediaAd;->getVideo()Lcom/adsdk/sdk/video/VideoData;

    move-result-object v0

    const-string v1, "show"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/adsdk/sdk/video/ResponseHandler;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/adsdk/sdk/video/VideoData;->showNavigationBars:Z

    const-string v1, "allowtap"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/adsdk/sdk/video/ResponseHandler;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/adsdk/sdk/video/VideoData;->allowTapNavigationBars:Z

    goto/16 :goto_1f

    :cond_3f7
    iget-boolean v0, p0, Lcom/adsdk/sdk/video/ResponseHandler;->insideInterstitial:Z

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    if-eqz v0, :cond_40b

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/RichMediaAd;->getInterstitial()Lcom/adsdk/sdk/video/InterstitialData;

    move-result-object v0

    if-nez v0, :cond_413

    :cond_40b
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "navigation tag found inside wrong interstitial node"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_413
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/RichMediaAd;->getInterstitial()Lcom/adsdk/sdk/video/InterstitialData;

    move-result-object v0

    const-string v1, "show"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/adsdk/sdk/video/ResponseHandler;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/adsdk/sdk/video/InterstitialData;->showNavigationBars:Z

    const-string v1, "allowtap"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/adsdk/sdk/video/ResponseHandler;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/adsdk/sdk/video/InterstitialData;->allowTapNavigationBars:Z

    goto/16 :goto_1f

    :cond_435
    const-string v0, "topbar"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d9

    iget-boolean v0, p0, Lcom/adsdk/sdk/video/ResponseHandler;->insideVideo:Z

    if-eqz v0, :cond_477

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    if-eqz v0, :cond_451

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/RichMediaAd;->getVideo()Lcom/adsdk/sdk/video/VideoData;

    move-result-object v0

    if-nez v0, :cond_459

    :cond_451
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "topbar tag found inside wrong video node"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_459
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/RichMediaAd;->getVideo()Lcom/adsdk/sdk/video/VideoData;

    move-result-object v0

    const-string v1, "show"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/adsdk/sdk/video/ResponseHandler;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/adsdk/sdk/video/VideoData;->showTopNavigationBar:Z

    const-string v1, "custombackgroundurl"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adsdk/sdk/video/VideoData;->topNavigationBarBackground:Ljava/lang/String;

    goto/16 :goto_1f

    :cond_477
    iget-boolean v0, p0, Lcom/adsdk/sdk/video/ResponseHandler;->insideInterstitial:Z

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    if-eqz v0, :cond_48b

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/RichMediaAd;->getInterstitial()Lcom/adsdk/sdk/video/InterstitialData;

    move-result-object v0

    if-nez v0, :cond_493

    :cond_48b
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "topbar tag found inside wrong interstitial node"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_493
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/RichMediaAd;->getInterstitial()Lcom/adsdk/sdk/video/InterstitialData;

    move-result-object v0

    const-string v1, "show"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/adsdk/sdk/video/ResponseHandler;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/adsdk/sdk/video/InterstitialData;->showTopNavigationBar:Z

    const-string v1, "custombackgroundurl"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adsdk/sdk/video/InterstitialData;->topNavigationBarBackground:Ljava/lang/String;

    const-string v1, "title"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fixed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4c9

    iput v5, v0, Lcom/adsdk/sdk/video/InterstitialData;->topNavigationBarTitleType:I

    const-string v1, "titlecontent"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adsdk/sdk/video/InterstitialData;->topNavigationBarTitle:Ljava/lang/String;

    goto/16 :goto_1f

    :cond_4c9
    const-string v2, "variable"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4d5

    iput v4, v0, Lcom/adsdk/sdk/video/InterstitialData;->topNavigationBarTitleType:I

    goto/16 :goto_1f

    :cond_4d5
    iput v3, v0, Lcom/adsdk/sdk/video/InterstitialData;->topNavigationBarTitleType:I

    goto/16 :goto_1f

    :cond_4d9
    const-string v0, "bottombar"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5ed

    iget-boolean v0, p0, Lcom/adsdk/sdk/video/ResponseHandler;->insideVideo:Z

    if-eqz v0, :cond_557

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    if-eqz v0, :cond_4f5

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/RichMediaAd;->getVideo()Lcom/adsdk/sdk/video/VideoData;

    move-result-object v0

    if-nez v0, :cond_4fd

    :cond_4f5
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "bottombar tag found inside wrong video node"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4fd
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/RichMediaAd;->getVideo()Lcom/adsdk/sdk/video/VideoData;

    move-result-object v0

    const-string v1, "show"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/adsdk/sdk/video/ResponseHandler;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/adsdk/sdk/video/VideoData;->showBottomNavigationBar:Z

    const-string v1, "custombackgroundurl"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adsdk/sdk/video/VideoData;->bottomNavigationBarBackground:Ljava/lang/String;

    const-string v1, "pausebutton"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/adsdk/sdk/video/ResponseHandler;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/adsdk/sdk/video/VideoData;->showPauseButton:Z

    const-string v1, "replaybutton"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/adsdk/sdk/video/ResponseHandler;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/adsdk/sdk/video/VideoData;->showReplayButton:Z

    const-string v1, "timer"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/adsdk/sdk/video/ResponseHandler;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/adsdk/sdk/video/VideoData;->showTimer:Z

    const-string v1, "pausebuttonurl"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adsdk/sdk/video/VideoData;->pauseButtonImage:Ljava/lang/String;

    const-string v1, "playbuttonurl"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adsdk/sdk/video/VideoData;->playButtonImage:Ljava/lang/String;

    const-string v1, "replaybuttonurl"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adsdk/sdk/video/VideoData;->replayButtonImage:Ljava/lang/String;

    goto/16 :goto_1f

    :cond_557
    iget-boolean v0, p0, Lcom/adsdk/sdk/video/ResponseHandler;->insideInterstitial:Z

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    if-eqz v0, :cond_56b

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/RichMediaAd;->getInterstitial()Lcom/adsdk/sdk/video/InterstitialData;

    move-result-object v0

    if-nez v0, :cond_573

    :cond_56b
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "bottombar tag found inside wrong interstitial node"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_573
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/RichMediaAd;->getInterstitial()Lcom/adsdk/sdk/video/InterstitialData;

    move-result-object v0

    const-string v1, "show"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/adsdk/sdk/video/ResponseHandler;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/adsdk/sdk/video/InterstitialData;->showBottomNavigationBar:Z

    const-string v1, "custombackgroundurl"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adsdk/sdk/video/InterstitialData;->bottomNavigationBarBackground:Ljava/lang/String;

    const-string v1, "backbutton"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/adsdk/sdk/video/ResponseHandler;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/adsdk/sdk/video/InterstitialData;->showBackButton:Z

    const-string v1, "forwardbutton"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/adsdk/sdk/video/ResponseHandler;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/adsdk/sdk/video/InterstitialData;->showForwardButton:Z

    const-string v1, "reloadbutton"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/adsdk/sdk/video/ResponseHandler;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/adsdk/sdk/video/InterstitialData;->showReloadButton:Z

    const-string v1, "externalbutton"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/adsdk/sdk/video/ResponseHandler;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/adsdk/sdk/video/InterstitialData;->showExternalButton:Z

    const-string v1, "timer"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/adsdk/sdk/video/ResponseHandler;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/adsdk/sdk/video/InterstitialData;->showTimer:Z

    const-string v1, "backbuttonurl"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adsdk/sdk/video/InterstitialData;->backButtonImage:Ljava/lang/String;

    const-string v1, "forwardbuttonurl"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adsdk/sdk/video/InterstitialData;->forwardButtonImage:Ljava/lang/String;

    const-string v1, "reloadbuttonurl"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adsdk/sdk/video/InterstitialData;->reloadButtonImage:Ljava/lang/String;

    const-string v1, "externalbuttonurl"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adsdk/sdk/video/InterstitialData;->externalButtonImage:Ljava/lang/String;

    goto/16 :goto_1f

    :cond_5ed
    const-string v0, "navicon"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6ab

    iget-boolean v0, p0, Lcom/adsdk/sdk/video/ResponseHandler;->insideVideo:Z

    if-eqz v0, :cond_650

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    if-eqz v0, :cond_609

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/RichMediaAd;->getVideo()Lcom/adsdk/sdk/video/VideoData;

    move-result-object v0

    if-nez v0, :cond_611

    :cond_609
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "navicon tag found inside wrong video node"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_611
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/RichMediaAd;->getVideo()Lcom/adsdk/sdk/video/VideoData;

    move-result-object v0

    new-instance v1, Lcom/adsdk/sdk/video/NavIconData;

    invoke-direct {v1}, Lcom/adsdk/sdk/video/NavIconData;-><init>()V

    const-string v2, "title"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/adsdk/sdk/video/NavIconData;->title:Ljava/lang/String;

    const-string v2, "clickurl"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/adsdk/sdk/video/NavIconData;->clickUrl:Ljava/lang/String;

    const-string v2, "iconurl"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/adsdk/sdk/video/NavIconData;->iconUrl:Ljava/lang/String;

    const-string v2, "opentype"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "inapp"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_64d

    iput v5, v1, Lcom/adsdk/sdk/video/NavIconData;->openType:I

    :goto_646
    iget-object v0, v0, Lcom/adsdk/sdk/video/VideoData;->icons:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1f

    :cond_64d
    iput v4, v1, Lcom/adsdk/sdk/video/NavIconData;->openType:I

    goto :goto_646

    :cond_650
    iget-boolean v0, p0, Lcom/adsdk/sdk/video/ResponseHandler;->insideInterstitial:Z

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    if-eqz v0, :cond_664

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/RichMediaAd;->getInterstitial()Lcom/adsdk/sdk/video/InterstitialData;

    move-result-object v0

    if-nez v0, :cond_66c

    :cond_664
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "navicon tag found inside wrong interstitial node"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_66c
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/RichMediaAd;->getInterstitial()Lcom/adsdk/sdk/video/InterstitialData;

    move-result-object v0

    new-instance v1, Lcom/adsdk/sdk/video/NavIconData;

    invoke-direct {v1}, Lcom/adsdk/sdk/video/NavIconData;-><init>()V

    const-string v2, "title"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/adsdk/sdk/video/NavIconData;->title:Ljava/lang/String;

    const-string v2, "clickurl"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/adsdk/sdk/video/NavIconData;->clickUrl:Ljava/lang/String;

    const-string v2, "iconurl"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/adsdk/sdk/video/NavIconData;->iconUrl:Ljava/lang/String;

    const-string v2, "opentype"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "inapp"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6a8

    iput v5, v1, Lcom/adsdk/sdk/video/NavIconData;->openType:I

    :goto_6a1
    iget-object v0, v0, Lcom/adsdk/sdk/video/InterstitialData;->icons:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1f

    :cond_6a8
    iput v4, v1, Lcom/adsdk/sdk/video/NavIconData;->openType:I

    goto :goto_6a1

    :cond_6ab
    const-string v0, "tracker"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7bd

    iget-boolean v0, p0, Lcom/adsdk/sdk/video/ResponseHandler;->insideVideo:Z

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    if-eqz v0, :cond_6c7

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/RichMediaAd;->getVideo()Lcom/adsdk/sdk/video/VideoData;

    move-result-object v0

    if-nez v0, :cond_6cf

    :cond_6c7
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "tracker tag found inside wrong video node"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6cf
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/RichMediaAd;->getVideo()Lcom/adsdk/sdk/video/VideoData;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/video/ResponseHandler;->currentTracker:Lcom/adsdk/sdk/video/TrackerData;

    invoke-virtual {v1}, Lcom/adsdk/sdk/video/TrackerData;->reset()V

    const-string v1, "type"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "start"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6f0

    iget-object v0, p0, Lcom/adsdk/sdk/video/ResponseHandler;->currentTracker:Lcom/adsdk/sdk/video/TrackerData;

    iput v5, v0, Lcom/adsdk/sdk/video/TrackerData;->type:I

    goto/16 :goto_1f

    :cond_6f0
    const-string v2, "complete"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6fe

    iget-object v0, p0, Lcom/adsdk/sdk/video/ResponseHandler;->currentTracker:Lcom/adsdk/sdk/video/TrackerData;

    iput v4, v0, Lcom/adsdk/sdk/video/TrackerData;->type:I

    goto/16 :goto_1f

    :cond_6fe
    const-string v2, "midpoint"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_714

    iget-object v1, p0, Lcom/adsdk/sdk/video/ResponseHandler;->currentTracker:Lcom/adsdk/sdk/video/TrackerData;

    iput v3, v1, Lcom/adsdk/sdk/video/TrackerData;->type:I

    iget-object v1, p0, Lcom/adsdk/sdk/video/ResponseHandler;->currentTracker:Lcom/adsdk/sdk/video/TrackerData;

    iget v0, v0, Lcom/adsdk/sdk/video/VideoData;->duration:I

    div-int/lit8 v0, v0, 0x2

    iput v0, v1, Lcom/adsdk/sdk/video/TrackerData;->time:I

    goto/16 :goto_1f

    :cond_714
    const-string v2, "firstquartile"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_72a

    iget-object v1, p0, Lcom/adsdk/sdk/video/ResponseHandler;->currentTracker:Lcom/adsdk/sdk/video/TrackerData;

    iput v7, v1, Lcom/adsdk/sdk/video/TrackerData;->type:I

    iget-object v1, p0, Lcom/adsdk/sdk/video/ResponseHandler;->currentTracker:Lcom/adsdk/sdk/video/TrackerData;

    iget v0, v0, Lcom/adsdk/sdk/video/VideoData;->duration:I

    div-int/lit8 v0, v0, 0x4

    iput v0, v1, Lcom/adsdk/sdk/video/TrackerData;->time:I

    goto/16 :goto_1f

    :cond_72a
    const-string v2, "thirdquartile"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_742

    iget-object v1, p0, Lcom/adsdk/sdk/video/ResponseHandler;->currentTracker:Lcom/adsdk/sdk/video/TrackerData;

    iput v6, v1, Lcom/adsdk/sdk/video/TrackerData;->type:I

    iget-object v1, p0, Lcom/adsdk/sdk/video/ResponseHandler;->currentTracker:Lcom/adsdk/sdk/video/TrackerData;

    iget v0, v0, Lcom/adsdk/sdk/video/VideoData;->duration:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, v1, Lcom/adsdk/sdk/video/TrackerData;->time:I

    goto/16 :goto_1f

    :cond_742
    const-string v0, "pause"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_751

    iget-object v0, p0, Lcom/adsdk/sdk/video/ResponseHandler;->currentTracker:Lcom/adsdk/sdk/video/TrackerData;

    const/4 v1, 0x6

    iput v1, v0, Lcom/adsdk/sdk/video/TrackerData;->type:I

    goto/16 :goto_1f

    :cond_751
    const-string v0, "unpause"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_760

    iget-object v0, p0, Lcom/adsdk/sdk/video/ResponseHandler;->currentTracker:Lcom/adsdk/sdk/video/TrackerData;

    const/4 v1, 0x7

    iput v1, v0, Lcom/adsdk/sdk/video/TrackerData;->type:I

    goto/16 :goto_1f

    :cond_760
    const-string v0, "mute"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_770

    iget-object v0, p0, Lcom/adsdk/sdk/video/ResponseHandler;->currentTracker:Lcom/adsdk/sdk/video/TrackerData;

    const/16 v1, 0x8

    iput v1, v0, Lcom/adsdk/sdk/video/TrackerData;->type:I

    goto/16 :goto_1f

    :cond_770
    const-string v0, "unmute"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_780

    iget-object v0, p0, Lcom/adsdk/sdk/video/ResponseHandler;->currentTracker:Lcom/adsdk/sdk/video/TrackerData;

    const/16 v1, 0x9

    iput v1, v0, Lcom/adsdk/sdk/video/TrackerData;->type:I

    goto/16 :goto_1f

    :cond_780
    const-string v0, "replay"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_790

    iget-object v0, p0, Lcom/adsdk/sdk/video/ResponseHandler;->currentTracker:Lcom/adsdk/sdk/video/TrackerData;

    const/16 v1, 0xb

    iput v1, v0, Lcom/adsdk/sdk/video/TrackerData;->type:I

    goto/16 :goto_1f

    :cond_790
    const-string v0, "skip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7a0

    iget-object v0, p0, Lcom/adsdk/sdk/video/ResponseHandler;->currentTracker:Lcom/adsdk/sdk/video/TrackerData;

    const/16 v1, 0xa

    iput v1, v0, Lcom/adsdk/sdk/video/TrackerData;->type:I

    goto/16 :goto_1f

    :cond_7a0
    if-eqz v1, :cond_1f

    const-string v0, "sec:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/adsdk/sdk/video/ResponseHandler;->currentTracker:Lcom/adsdk/sdk/video/TrackerData;

    const/4 v2, 0x5

    iput v2, v0, Lcom/adsdk/sdk/video/TrackerData;->type:I

    iget-object v0, p0, Lcom/adsdk/sdk/video/ResponseHandler;->currentTracker:Lcom/adsdk/sdk/video/TrackerData;

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/adsdk/sdk/video/ResponseHandler;->getInteger(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/adsdk/sdk/video/TrackerData;->time:I

    goto/16 :goto_1f

    :cond_7bd
    const-string v0, "htmloverlay"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-boolean v0, p0, Lcom/adsdk/sdk/video/ResponseHandler;->insideVideo:Z

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    if-eqz v0, :cond_7d9

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/RichMediaAd;->getVideo()Lcom/adsdk/sdk/video/VideoData;

    move-result-object v0

    if-nez v0, :cond_7e1

    :cond_7d9
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "htmloverlay tag found inside wrong video node"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7e1
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/RichMediaAd;->getVideo()Lcom/adsdk/sdk/video/VideoData;

    move-result-object v0

    iput-boolean v4, p0, Lcom/adsdk/sdk/video/ResponseHandler;->insideMarkup:Z

    const-string v1, "type"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_83a

    iput v5, v0, Lcom/adsdk/sdk/video/VideoData;->htmlOverlayType:I

    const-string v2, "url"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_809

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_81e

    :cond_809
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Empty url for overlay type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_81e
    iput-object v2, v0, Lcom/adsdk/sdk/video/VideoData;->htmlOverlayUrl:Ljava/lang/String;

    :goto_820
    const-string v1, "showafter"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/adsdk/sdk/video/ResponseHandler;->getInteger(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/adsdk/sdk/video/VideoData;->showHtmlOverlayAfter:I

    const-string v1, "show"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/adsdk/sdk/video/ResponseHandler;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/adsdk/sdk/video/VideoData;->showHtmlOverlay:Z

    goto/16 :goto_1f

    :cond_83a
    const-string v2, "markup"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_847

    iput v4, v0, Lcom/adsdk/sdk/video/VideoData;->htmlOverlayType:I

    iput-boolean v4, p0, Lcom/adsdk/sdk/video/ResponseHandler;->insideMarkup:Z

    goto :goto_820

    :cond_847
    iput v5, v0, Lcom/adsdk/sdk/video/VideoData;->htmlOverlayType:I

    const-string v2, "url"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_857

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_86c

    :cond_857
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Empty url for overlay type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_86c
    iput-object v2, v0, Lcom/adsdk/sdk/video/VideoData;->htmlOverlayUrl:Ljava/lang/String;

    goto :goto_820
.end method
