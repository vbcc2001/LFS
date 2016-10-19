.class public Lcom/adsdk/sdk/AdManager;
.super Ljava/lang/Object;


# static fields
.field private static mContext:Landroid/content/Context;

.field private static sRunningAds:Ljava/util/HashMap;


# instance fields
.field private mEnabled:Z

.field private mHandler:Landroid/os/Handler;

.field private mIncludeLocation:Z

.field private mListener:Lcom/adsdk/sdk/AdListener;

.field private mPublisherId:Ljava/lang/String;

.field private mRequest:Lcom/adsdk/sdk/AdRequest;

.field private mRequestThread:Ljava/lang/Thread;

.field private mResponse:Lcom/adsdk/sdk/video/RichMediaAd;

.field private mUniqueId1:Ljava/lang/String;

.field private mUniqueId2:Ljava/lang/String;

.field private mUserAgent:Ljava/lang/String;

.field private requestURL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/adsdk/sdk/AdManager;->sRunningAds:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/adsdk/sdk/AdManager;->mRequest:Lcom/adsdk/sdk/AdRequest;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adsdk/sdk/AdManager;->mEnabled:Z

    invoke-static {p1}, Lcom/adsdk/sdk/AdManager;->setmContext(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/adsdk/sdk/AdManager;->requestURL:Ljava/lang/String;

    iput-object p3, p0, Lcom/adsdk/sdk/AdManager;->mPublisherId:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/adsdk/sdk/AdManager;->mIncludeLocation:Z

    iput-object v1, p0, Lcom/adsdk/sdk/AdManager;->mRequestThread:Ljava/lang/Thread;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/adsdk/sdk/AdManager;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/adsdk/sdk/AdManager;->initialize()V

    return-void
.end method

.method static synthetic access$0(Lcom/adsdk/sdk/AdManager;)Lcom/adsdk/sdk/AdRequest;
    .registers 2

    invoke-direct {p0}, Lcom/adsdk/sdk/AdManager;->getRequest()Lcom/adsdk/sdk/AdRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/adsdk/sdk/AdManager;Lcom/adsdk/sdk/video/RichMediaAd;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/AdManager;->mResponse:Lcom/adsdk/sdk/video/RichMediaAd;

    return-void
.end method

.method static synthetic access$2(Lcom/adsdk/sdk/AdManager;)Lcom/adsdk/sdk/video/RichMediaAd;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mResponse:Lcom/adsdk/sdk/video/RichMediaAd;

    return-object v0
.end method

.method static synthetic access$3(Lcom/adsdk/sdk/AdManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/adsdk/sdk/AdManager;->notifyNoAdFound()V

    return-void
.end method

.method static synthetic access$4(Lcom/adsdk/sdk/AdManager;)Lcom/adsdk/sdk/AdListener;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mListener:Lcom/adsdk/sdk/AdListener;

    return-object v0
.end method

.method static synthetic access$5(Lcom/adsdk/sdk/AdManager;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$6(Lcom/adsdk/sdk/AdManager;Ljava/lang/Thread;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/AdManager;->mRequestThread:Ljava/lang/Thread;

    return-void
.end method

.method public static closeRunningAd(Lcom/adsdk/sdk/video/RichMediaAd;Z)V
    .registers 6

    sget-object v0, Lcom/adsdk/sdk/AdManager;->sRunningAds:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaAd;->getTimestamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsdk/sdk/AdManager;

    if-nez v0, :cond_29

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot find AdManager with running ad:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaAd;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    :goto_28
    return-void

    :cond_29
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Notify closing event to AdManager with running ad:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaAd;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    invoke-direct {v0, p0, p1}, Lcom/adsdk/sdk/AdManager;->notifyAdClose(Lcom/adsdk/sdk/video/RichMediaAd;Z)V

    goto :goto_28
.end method

.method public static getAdManager(Lcom/adsdk/sdk/video/RichMediaAd;)Lcom/adsdk/sdk/AdManager;
    .registers 5

    sget-object v0, Lcom/adsdk/sdk/AdManager;->sRunningAds:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaAd;->getTimestamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsdk/sdk/AdManager;

    if-nez v0, :cond_28

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot find AdManager with running ad:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaAd;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    :cond_28
    return-object v0
.end method

.method private getContext()Landroid/content/Context;
    .registers 2

    invoke-static {}, Lcom/adsdk/sdk/AdManager;->getmContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private getRequest()Lcom/adsdk/sdk/AdRequest;
    .registers 5

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mRequest:Lcom/adsdk/sdk/AdRequest;

    if-nez v0, :cond_32

    new-instance v0, Lcom/adsdk/sdk/AdRequest;

    invoke-direct {v0}, Lcom/adsdk/sdk/AdRequest;-><init>()V

    iput-object v0, p0, Lcom/adsdk/sdk/AdManager;->mRequest:Lcom/adsdk/sdk/AdRequest;

    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mRequest:Lcom/adsdk/sdk/AdRequest;

    iget-object v1, p0, Lcom/adsdk/sdk/AdManager;->mUniqueId1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/AdRequest;->setDeviceId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mRequest:Lcom/adsdk/sdk/AdRequest;

    iget-object v1, p0, Lcom/adsdk/sdk/AdManager;->mUniqueId2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/AdRequest;->setDeviceId2(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mRequest:Lcom/adsdk/sdk/AdRequest;

    iget-object v1, p0, Lcom/adsdk/sdk/AdManager;->mPublisherId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/AdRequest;->setPublisherId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mRequest:Lcom/adsdk/sdk/AdRequest;

    iget-object v1, p0, Lcom/adsdk/sdk/AdManager;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/AdRequest;->setUserAgent(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mRequest:Lcom/adsdk/sdk/AdRequest;

    invoke-static {}, Lcom/adsdk/sdk/Util;->buildUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/AdRequest;->setUserAgent2(Ljava/lang/String;)V

    :cond_32
    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/adsdk/sdk/AdManager;->mIncludeLocation:Z

    if-eqz v1, :cond_3f

    invoke-direct {p0}, Lcom/adsdk/sdk/AdManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Util;->getLocation(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v0

    :cond_3f
    if-eqz v0, :cond_be

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "location is longitude: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", latitude: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adsdk/sdk/AdManager;->mRequest:Lcom/adsdk/sdk/AdRequest;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/adsdk/sdk/AdRequest;->setLatitude(D)V

    iget-object v1, p0, Lcom/adsdk/sdk/AdManager;->mRequest:Lcom/adsdk/sdk/AdRequest;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/adsdk/sdk/AdRequest;->setLongitude(D)V

    :goto_77
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mRequest:Lcom/adsdk/sdk/AdRequest;

    invoke-direct {p0}, Lcom/adsdk/sdk/AdManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/adsdk/sdk/Util;->getConnectionType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/AdRequest;->setConnectionType(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mRequest:Lcom/adsdk/sdk/AdRequest;

    invoke-static {}, Lcom/adsdk/sdk/Util;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/AdRequest;->setIpAddress(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mRequest:Lcom/adsdk/sdk/AdRequest;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/adsdk/sdk/AdRequest;->setTimestamp(J)V

    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mRequest:Lcom/adsdk/sdk/AdRequest;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/AdRequest;->setType(I)V

    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mRequest:Lcom/adsdk/sdk/AdRequest;

    iget-object v1, p0, Lcom/adsdk/sdk/AdManager;->requestURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/AdRequest;->setRequestURL(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Getting new request:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adsdk/sdk/AdManager;->mRequest:Lcom/adsdk/sdk/AdRequest;

    invoke-virtual {v1}, Lcom/adsdk/sdk/AdRequest;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mRequest:Lcom/adsdk/sdk/AdRequest;

    return-object v0

    :cond_be
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mRequest:Lcom/adsdk/sdk/AdRequest;

    invoke-virtual {v0, v2, v3}, Lcom/adsdk/sdk/AdRequest;->setLatitude(D)V

    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mRequest:Lcom/adsdk/sdk/AdRequest;

    invoke-virtual {v0, v2, v3}, Lcom/adsdk/sdk/AdRequest;->setLongitude(D)V

    goto :goto_77
.end method

.method private static getmContext()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/adsdk/sdk/AdManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private initialize()V
    .registers 3

    invoke-direct {p0}, Lcom/adsdk/sdk/AdManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Util;->getDefaultUserAgentString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adsdk/sdk/AdManager;->mUserAgent:Ljava/lang/String;

    invoke-static {}, Lcom/adsdk/sdk/AdManager;->getmContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->isLoggingEnabled(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/adsdk/sdk/Log;->LOGGING_ENABLED:Z

    const-string v0, "Ad SDK Version:4.1.6"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/adsdk/sdk/AdManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Util;->getTelephonyDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adsdk/sdk/AdManager;->mUniqueId1:Ljava/lang/String;

    invoke-direct {p0}, Lcom/adsdk/sdk/AdManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Util;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adsdk/sdk/AdManager;->mUniqueId2:Ljava/lang/String;

    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mPublisherId:Ljava/lang/String;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mPublisherId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_46

    :cond_39
    const-string v0, "Publisher Id cannot be null or empty"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->e(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "User Id cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_46
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mUniqueId2:Ljava/lang/String;

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mUniqueId2:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5f

    :cond_52
    const-string v0, "Cannot get system device Id"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->e(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "System Device Id cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AdManager Publisher Id:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adsdk/sdk/AdManager;->mPublisherId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Device Id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/AdManager;->mUniqueId1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " DeviceId2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/AdManager;->mUniqueId2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/adsdk/sdk/AdManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Util;->getMemoryClass(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x10

    if-le v0, v1, :cond_a2

    const/4 v0, 0x1

    :goto_98
    iput-boolean v0, p0, Lcom/adsdk/sdk/AdManager;->mEnabled:Z

    invoke-direct {p0}, Lcom/adsdk/sdk/AdManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Util;->initializeAnimations(Landroid/content/Context;)V

    return-void

    :cond_a2
    const/4 v0, 0x0

    goto :goto_98
.end method

.method private notifyAdClose(Lcom/adsdk/sdk/video/RichMediaAd;Z)V
    .registers 5

    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mListener:Lcom/adsdk/sdk/AdListener;

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ad Close. Result:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/adsdk/sdk/AdManager$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/adsdk/sdk/AdManager$7;-><init>(Lcom/adsdk/sdk/AdManager;Lcom/adsdk/sdk/video/RichMediaAd;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_20
    return-void
.end method

.method private notifyAdShown(Lcom/adsdk/sdk/video/RichMediaAd;Z)V
    .registers 5

    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mListener:Lcom/adsdk/sdk/AdListener;

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ad Shown. Result:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/adsdk/sdk/AdManager$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/adsdk/sdk/AdManager$6;-><init>(Lcom/adsdk/sdk/AdManager;Lcom/adsdk/sdk/video/RichMediaAd;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsdk/sdk/AdManager;->mResponse:Lcom/adsdk/sdk/video/RichMediaAd;

    return-void
.end method

.method private notifyNoAdFound()V
    .registers 3

    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mListener:Lcom/adsdk/sdk/AdListener;

    if-eqz v0, :cond_13

    const-string v0, "No ad found."

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/adsdk/sdk/AdManager$5;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/AdManager$5;-><init>(Lcom/adsdk/sdk/AdManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsdk/sdk/AdManager;->mResponse:Lcom/adsdk/sdk/video/RichMediaAd;

    return-void
.end method

.method private static setmContext(Landroid/content/Context;)V
    .registers 1

    sput-object p0, Lcom/adsdk/sdk/AdManager;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public isAdLoaded()Z
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mResponse:Lcom/adsdk/sdk/video/RichMediaAd;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public release()V
    .registers 1

    invoke-static {}, Lcom/adsdk/sdk/video/TrackerService;->release()V

    invoke-static {}, Lcom/adsdk/sdk/video/ResourceManager;->cancel()V

    return-void
.end method

.method public requestAd()V
    .registers 3

    iget-boolean v0, p0, Lcom/adsdk/sdk/AdManager;->mEnabled:Z

    if-nez v0, :cond_a

    const-string v0, "Cannot request rich adds on low memory devices"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->w(Ljava/lang/String;)V

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mRequestThread:Ljava/lang/Thread;

    if-nez v0, :cond_32

    const-string v0, "Requesting Ad (v4.1.6-1.0)"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsdk/sdk/AdManager;->mResponse:Lcom/adsdk/sdk/video/RichMediaAd;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/adsdk/sdk/AdManager$1;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/AdManager$1;-><init>(Lcom/adsdk/sdk/AdManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/adsdk/sdk/AdManager;->mRequestThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mRequestThread:Ljava/lang/Thread;

    new-instance v1, Lcom/adsdk/sdk/AdManager$2;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/AdManager$2;-><init>(Lcom/adsdk/sdk/AdManager;)V

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mRequestThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_9

    :cond_32
    const-string v0, "Request thread already running"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->w(Ljava/lang/String;)V

    goto :goto_9
.end method

.method public requestAd(Ljava/io/InputStream;)V
    .registers 4

    iget-boolean v0, p0, Lcom/adsdk/sdk/AdManager;->mEnabled:Z

    if-nez v0, :cond_a

    const-string v0, "Cannot request rich adds on low memory devices"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->w(Ljava/lang/String;)V

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mRequestThread:Ljava/lang/Thread;

    if-nez v0, :cond_32

    const-string v0, "Requesting Ad (v4.1.6-1.0)"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsdk/sdk/AdManager;->mResponse:Lcom/adsdk/sdk/video/RichMediaAd;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/adsdk/sdk/AdManager$3;

    invoke-direct {v1, p0, p1}, Lcom/adsdk/sdk/AdManager$3;-><init>(Lcom/adsdk/sdk/AdManager;Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/adsdk/sdk/AdManager;->mRequestThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mRequestThread:Ljava/lang/Thread;

    new-instance v1, Lcom/adsdk/sdk/AdManager$4;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/AdManager$4;-><init>(Lcom/adsdk/sdk/AdManager;)V

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mRequestThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_9

    :cond_32
    const-string v0, "Request thread already running"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->w(Ljava/lang/String;)V

    goto :goto_9
.end method

.method public requestAdAndShow(J)V
    .registers 9

    iget-object v2, p0, Lcom/adsdk/sdk/AdManager;->mListener:Lcom/adsdk/sdk/AdListener;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsdk/sdk/AdManager;->mListener:Lcom/adsdk/sdk/AdListener;

    invoke-virtual {p0}, Lcom/adsdk/sdk/AdManager;->requestAd()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long v3, v0, p1

    :goto_e
    invoke-virtual {p0}, Lcom/adsdk/sdk/AdManager;->isAdLoaded()Z

    move-result v5

    if-nez v5, :cond_18

    cmp-long v0, v0, v3

    if-ltz v0, :cond_1e

    :cond_18
    iput-object v2, p0, Lcom/adsdk/sdk/AdManager;->mListener:Lcom/adsdk/sdk/AdListener;

    invoke-virtual {p0}, Lcom/adsdk/sdk/AdManager;->showAd()V

    return-void

    :cond_1e
    const-wide/16 v0, 0xc8

    :try_start_20
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_23
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_23} :catch_28

    :goto_23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_e

    :catch_28
    move-exception v0

    goto :goto_23
.end method

.method public setListener(Lcom/adsdk/sdk/AdListener;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/AdManager;->mListener:Lcom/adsdk/sdk/AdListener;

    return-void
.end method

.method public setRequestURL(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/AdManager;->requestURL:Ljava/lang/String;

    return-void
.end method

.method public showAd()V
    .registers 7

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/adsdk/sdk/AdManager;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v2, p0, Lcom/adsdk/sdk/AdManager;->mResponse:Lcom/adsdk/sdk/video/RichMediaAd;

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/adsdk/sdk/AdManager;->mResponse:Lcom/adsdk/sdk/video/RichMediaAd;

    invoke-virtual {v2}, Lcom/adsdk/sdk/video/RichMediaAd;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1d

    iget-object v2, p0, Lcom/adsdk/sdk/AdManager;->mResponse:Lcom/adsdk/sdk/video/RichMediaAd;

    invoke-virtual {v2}, Lcom/adsdk/sdk/video/RichMediaAd;->getType()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_23

    :cond_1d
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager;->mResponse:Lcom/adsdk/sdk/video/RichMediaAd;

    invoke-direct {p0, v0, v1}, Lcom/adsdk/sdk/AdManager;->notifyAdShown(Lcom/adsdk/sdk/video/RichMediaAd;Z)V

    :goto_22
    return-void

    :cond_23
    iget-object v2, p0, Lcom/adsdk/sdk/AdManager;->mResponse:Lcom/adsdk/sdk/video/RichMediaAd;

    :try_start_25
    invoke-direct {p0}, Lcom/adsdk/sdk/AdManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/adsdk/sdk/Util;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_7d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/adsdk/sdk/video/RichMediaAd;->setTimestamp(J)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Showing Ad:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/adsdk/sdk/video/RichMediaActivity;

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "RICH_AD_DATA"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    invoke-virtual {v2}, Lcom/adsdk/sdk/video/RichMediaAd;->getAnimation()I

    move-result v3

    invoke-static {v3}, Lcom/adsdk/sdk/Util;->getEnterAnimation(I)I

    move-result v3

    invoke-virtual {v2}, Lcom/adsdk/sdk/video/RichMediaAd;->getAnimation()I

    move-result v4

    invoke-static {v4}, Lcom/adsdk/sdk/Util;->getExitAnimation(I)I

    move-result v4

    invoke-static {v0, v3, v4}, Lcom/adsdk/sdk/video/RichMediaActivity;->setActivityAnimation(Landroid/app/Activity;II)V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_6b} :catch_84
    .catchall {:try_start_25 .. :try_end_6b} :catchall_8e

    const/4 v0, 0x1

    :try_start_6c
    sget-object v1, Lcom/adsdk/sdk/AdManager;->sRunningAds:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/adsdk/sdk/video/RichMediaAd;->getTimestamp()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_79} :catch_98
    .catchall {:try_start_6c .. :try_end_79} :catchall_93

    :goto_79
    invoke-direct {p0, v2, v0}, Lcom/adsdk/sdk/AdManager;->notifyAdShown(Lcom/adsdk/sdk/video/RichMediaAd;Z)V

    goto :goto_22

    :cond_7d
    :try_start_7d
    const-string v0, "No network available. Cannot show Ad."

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_82} :catch_84
    .catchall {:try_start_7d .. :try_end_82} :catchall_8e

    move v0, v1

    goto :goto_79

    :catch_84
    move-exception v0

    :goto_85
    :try_start_85
    const-string v3, "Unknown exception when showing Ad"

    invoke-static {v3, v0}, Lcom/adsdk/sdk/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8a
    .catchall {:try_start_85 .. :try_end_8a} :catchall_8e

    invoke-direct {p0, v2, v1}, Lcom/adsdk/sdk/AdManager;->notifyAdShown(Lcom/adsdk/sdk/video/RichMediaAd;Z)V

    goto :goto_22

    :catchall_8e
    move-exception v0

    :goto_8f
    invoke-direct {p0, v2, v1}, Lcom/adsdk/sdk/AdManager;->notifyAdShown(Lcom/adsdk/sdk/video/RichMediaAd;Z)V

    throw v0

    :catchall_93
    move-exception v1

    move-object v5, v1

    move v1, v0

    move-object v0, v5

    goto :goto_8f

    :catch_98
    move-exception v1

    move-object v5, v1

    move v1, v0

    move-object v0, v5

    goto :goto_85
.end method
