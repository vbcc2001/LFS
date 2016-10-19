.class public Lcom/adsdk/sdk/AdRequest;
.super Ljava/lang/Object;


# static fields
.field public static final BANNER:I = 0x0

.field private static final REQUEST_TYPE_ANDROID:Ljava/lang/String; = "android_app"

.field public static final VAD:I = 0x1


# instance fields
.field private connectionType:Ljava/lang/String;

.field private deviceId:Ljava/lang/String;

.field private deviceId2:Ljava/lang/String;

.field private headers:Ljava/lang/String;

.field private ipAddress:Ljava/lang/String;

.field private latitude:D

.field private listAds:Ljava/lang/String;

.field private longitude:D

.field private protocolVersion:Ljava/lang/String;

.field private publisherId:Ljava/lang/String;

.field private requestURL:Ljava/lang/String;

.field private timestamp:J

.field private type:I

.field private userAgent:Ljava/lang/String;

.field private userAgent2:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/adsdk/sdk/AdRequest;->longitude:D

    iput-wide v0, p0, Lcom/adsdk/sdk/AdRequest;->latitude:D

    const/4 v0, -0x1

    iput v0, p0, Lcom/adsdk/sdk/AdRequest;->type:I

    return-void
.end method


# virtual methods
.method public getAndroidVersion()Ljava/lang/String;
    .registers 2

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectionType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->connectionType:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->deviceId:Ljava/lang/String;

    if-nez v0, :cond_7

    const-string v0, ""

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->deviceId:Ljava/lang/String;

    goto :goto_6
.end method

.method public getDeviceId2()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->deviceId2:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceMode()Ljava/lang/String;
    .registers 2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaders()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->headers:Ljava/lang/String;

    if-nez v0, :cond_7

    const-string v0, ""

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->headers:Ljava/lang/String;

    goto :goto_6
.end method

.method public getIpAddress()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->ipAddress:Ljava/lang/String;

    if-nez v0, :cond_7

    const-string v0, ""

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->ipAddress:Ljava/lang/String;

    goto :goto_6
.end method

.method public getLatitude()D
    .registers 3

    iget-wide v0, p0, Lcom/adsdk/sdk/AdRequest;->latitude:D

    return-wide v0
.end method

.method public getListAds()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->listAds:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->listAds:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    const-string v0, ""

    goto :goto_6
.end method

.method public getLongitude()D
    .registers 3

    iget-wide v0, p0, Lcom/adsdk/sdk/AdRequest;->longitude:D

    return-wide v0
.end method

.method public getProtocolVersion()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->protocolVersion:Ljava/lang/String;

    if-nez v0, :cond_7

    const-string v0, "4.1.6"

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->protocolVersion:Ljava/lang/String;

    goto :goto_6
.end method

.method public getPublisherId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->publisherId:Ljava/lang/String;

    if-nez v0, :cond_7

    const-string v0, ""

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->publisherId:Ljava/lang/String;

    goto :goto_6
.end method

.method public getRequestType()Ljava/lang/String;
    .registers 2

    const-string v0, "android_app"

    return-object v0
.end method

.method public getRequestURL()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->requestURL:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .registers 3

    iget-wide v0, p0, Lcom/adsdk/sdk/AdRequest;->timestamp:J

    return-wide v0
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Lcom/adsdk/sdk/AdRequest;->type:I

    return v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->userAgent:Ljava/lang/String;

    if-nez v0, :cond_7

    const-string v0, ""

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->userAgent:Ljava/lang/String;

    goto :goto_6
.end method

.method public getUserAgent2()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->userAgent2:Ljava/lang/String;

    if-nez v0, :cond_7

    const-string v0, ""

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->userAgent2:Ljava/lang/String;

    goto :goto_6
.end method

.method public setConnectionType(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/AdRequest;->connectionType:Ljava/lang/String;

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/AdRequest;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public setDeviceId2(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/AdRequest;->deviceId2:Ljava/lang/String;

    return-void
.end method

.method public setHeaders(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/AdRequest;->headers:Ljava/lang/String;

    return-void
.end method

.method public setIpAddress(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/AdRequest;->ipAddress:Ljava/lang/String;

    return-void
.end method

.method public setLatitude(D)V
    .registers 3

    iput-wide p1, p0, Lcom/adsdk/sdk/AdRequest;->latitude:D

    return-void
.end method

.method public setListAds(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/AdRequest;->listAds:Ljava/lang/String;

    return-void
.end method

.method public setLongitude(D)V
    .registers 3

    iput-wide p1, p0, Lcom/adsdk/sdk/AdRequest;->longitude:D

    return-void
.end method

.method public setProtocolVersion(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/AdRequest;->protocolVersion:Ljava/lang/String;

    return-void
.end method

.method public setPublisherId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/AdRequest;->publisherId:Ljava/lang/String;

    return-void
.end method

.method public setRequestURL(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/AdRequest;->requestURL:Ljava/lang/String;

    return-void
.end method

.method public setTimestamp(J)V
    .registers 3

    iput-wide p1, p0, Lcom/adsdk/sdk/AdRequest;->timestamp:J

    return-void
.end method

.method public setType(I)V
    .registers 2

    iput p1, p0, Lcom/adsdk/sdk/AdRequest;->type:I

    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/AdRequest;->userAgent:Ljava/lang/String;

    return-void
.end method

.method public setUserAgent2(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/AdRequest;->userAgent2:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/adsdk/sdk/AdRequest;->toUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUri()Landroid/net/Uri;
    .registers 5

    invoke-virtual {p0}, Lcom/adsdk/sdk/AdRequest;->getRequestURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "rt"

    invoke-virtual {p0}, Lcom/adsdk/sdk/AdRequest;->getRequestType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "v"

    invoke-virtual {p0}, Lcom/adsdk/sdk/AdRequest;->getProtocolVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "i"

    invoke-virtual {p0}, Lcom/adsdk/sdk/AdRequest;->getIpAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "u"

    invoke-virtual {p0}, Lcom/adsdk/sdk/AdRequest;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "u2"

    invoke-virtual {p0}, Lcom/adsdk/sdk/AdRequest;->getUserAgent2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "s"

    invoke-virtual {p0}, Lcom/adsdk/sdk/AdRequest;->getPublisherId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "o"

    invoke-virtual {p0}, Lcom/adsdk/sdk/AdRequest;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "o2"

    invoke-virtual {p0}, Lcom/adsdk/sdk/AdRequest;->getDeviceId2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "t"

    invoke-virtual {p0}, Lcom/adsdk/sdk/AdRequest;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "connection_type"

    invoke-virtual {p0}, Lcom/adsdk/sdk/AdRequest;->getConnectionType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "listads"

    invoke-virtual {p0}, Lcom/adsdk/sdk/AdRequest;->getListAds()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {p0}, Lcom/adsdk/sdk/AdRequest;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_a6

    :goto_7a
    const-string v1, "u_wv"

    invoke-virtual {p0}, Lcom/adsdk/sdk/AdRequest;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :pswitch_88
    const-string v1, "c.mraid"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "sdk"

    const-string v2, "banner"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_7a

    :pswitch_97
    const-string v1, "c.mraid"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "sdk"

    const-string v2, "vad"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_7a

    :pswitch_data_a6
    .packed-switch 0x0
        :pswitch_88
        :pswitch_97
    .end packed-switch
.end method
