.class public Lcom/adsdk/sdk/banner/AdView;
.super Landroid/widget/FrameLayout;


# static fields
.field public static final LIVE:I = 0x0

.field public static final TEST:I = 0x1


# instance fields
.field private adListener:Lcom/adsdk/sdk/AdListener;

.field private animation:Z

.field private includeLocation:Z

.field private isAccessCoarseLocation:I

.field private isAccessFineLocation:I

.field private isInternalBrowser:Z

.field private loadContentThread:Ljava/lang/Thread;

.field private locationManager:Landroid/location/LocationManager;

.field private mBannerView:Lcom/adsdk/sdk/banner/BannerAdView;

.field private mContext:Landroid/content/Context;

.field protected mIsInForeground:Z

.field private mMoPubview:Lcom/adsdk/sdk/mraid/MoPubView;

.field private mScreenStateReceiver:Landroid/content/BroadcastReceiver;

.field private mUserAgent:Ljava/lang/String;

.field private publisherId:Ljava/lang/String;

.field private reloadTimer:Ljava/util/Timer;

.field private request:Lcom/adsdk/sdk/AdRequest;

.field private requestURL:Ljava/lang/String;

.field private response:Lcom/adsdk/sdk/BannerAd;

.field private final showContent:Ljava/lang/Runnable;

.field private telephonyPermission:I

.field private final updateHandler:Landroid/os/Handler;

.field private xml:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v1, p0, Lcom/adsdk/sdk/banner/AdView;->includeLocation:Z

    iput-boolean v1, p0, Lcom/adsdk/sdk/banner/AdView;->isInternalBrowser:Z

    iput-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->requestURL:Ljava/lang/String;

    iput-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->updateHandler:Landroid/os/Handler;

    new-instance v0, Lcom/adsdk/sdk/banner/AdView$1;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/banner/AdView$1;-><init>(Lcom/adsdk/sdk/banner/AdView;)V

    iput-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->showContent:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/adsdk/sdk/banner/AdView;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_26

    invoke-interface {p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v2

    move v0, v1

    :goto_24
    if-lt v0, v2, :cond_2a

    :cond_26
    invoke-direct {p0, p1}, Lcom/adsdk/sdk/banner/AdView;->initialize(Landroid/content/Context;)V

    return-void

    :cond_2a
    invoke-interface {p2, v0}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "publisherId"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-interface {p2, v0}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/adsdk/sdk/banner/AdView;->publisherId:Ljava/lang/String;

    :cond_3c
    :goto_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    :cond_3f
    const-string v4, "request_url"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e

    invoke-interface {p2, v0}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/adsdk/sdk/banner/AdView;->requestURL:Ljava/lang/String;

    goto :goto_3c

    :cond_4e
    const-string v4, "animation"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5d

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/adsdk/sdk/banner/AdView;->animation:Z

    goto :goto_3c

    :cond_5d
    const-string v4, "includeLocation"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/adsdk/sdk/banner/AdView;->includeLocation:Z

    goto :goto_3c
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .registers 9

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/adsdk/sdk/banner/AdView;->includeLocation:Z

    iput-boolean v0, p0, Lcom/adsdk/sdk/banner/AdView;->isInternalBrowser:Z

    iput-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->requestURL:Ljava/lang/String;

    iput-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->updateHandler:Landroid/os/Handler;

    new-instance v0, Lcom/adsdk/sdk/banner/AdView$1;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/banner/AdView$1;-><init>(Lcom/adsdk/sdk/banner/AdView;)V

    iput-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->showContent:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/adsdk/sdk/banner/AdView;->xml:Ljava/io/InputStream;

    iput-object p3, p0, Lcom/adsdk/sdk/banner/AdView;->requestURL:Ljava/lang/String;

    iput-object p1, p0, Lcom/adsdk/sdk/banner/AdView;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/adsdk/sdk/banner/AdView;->publisherId:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/adsdk/sdk/banner/AdView;->includeLocation:Z

    iput-boolean p6, p0, Lcom/adsdk/sdk/banner/AdView;->animation:Z

    invoke-direct {p0, p1}, Lcom/adsdk/sdk/banner/AdView;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;ZZ)V
    .registers 14

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/adsdk/sdk/banner/AdView;-><init>(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/adsdk/sdk/banner/AdView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .registers 13

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/adsdk/sdk/banner/AdView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZLcom/adsdk/sdk/AdListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZLcom/adsdk/sdk/AdListener;)V
    .registers 10

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/adsdk/sdk/banner/AdView;->includeLocation:Z

    iput-boolean v0, p0, Lcom/adsdk/sdk/banner/AdView;->isInternalBrowser:Z

    iput-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->requestURL:Ljava/lang/String;

    iput-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->updateHandler:Landroid/os/Handler;

    new-instance v1, Lcom/adsdk/sdk/banner/AdView$1;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/banner/AdView$1;-><init>(Lcom/adsdk/sdk/banner/AdView;)V

    iput-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->showContent:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/adsdk/sdk/banner/AdView;->requestURL:Ljava/lang/String;

    iput-object p1, p0, Lcom/adsdk/sdk/banner/AdView;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/adsdk/sdk/banner/AdView;->publisherId:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/adsdk/sdk/banner/AdView;->includeLocation:Z

    iput-boolean p5, p0, Lcom/adsdk/sdk/banner/AdView;->animation:Z

    iput-object p6, p0, Lcom/adsdk/sdk/banner/AdView;->adListener:Lcom/adsdk/sdk/AdListener;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AdListener: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView;->adListener:Lcom/adsdk/sdk/AdListener;

    if-nez v2, :cond_33

    const/4 v0, 0x1

    :cond_33
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/adsdk/sdk/banner/AdView;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$0(Lcom/adsdk/sdk/banner/AdView;)V
    .registers 1

    invoke-direct {p0}, Lcom/adsdk/sdk/banner/AdView;->showContent()V

    return-void
.end method

.method static synthetic access$1(Lcom/adsdk/sdk/banner/AdView;)Ljava/io/InputStream;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->xml:Ljava/io/InputStream;

    return-object v0
.end method

.method static synthetic access$2(Lcom/adsdk/sdk/banner/AdView;)Lcom/adsdk/sdk/AdRequest;
    .registers 2

    invoke-direct {p0}, Lcom/adsdk/sdk/banner/AdView;->getRequest()Lcom/adsdk/sdk/AdRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lcom/adsdk/sdk/banner/AdView;Lcom/adsdk/sdk/BannerAd;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/BannerAd;

    return-void
.end method

.method static synthetic access$4(Lcom/adsdk/sdk/banner/AdView;)Lcom/adsdk/sdk/BannerAd;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/BannerAd;

    return-object v0
.end method

.method static synthetic access$5(Lcom/adsdk/sdk/banner/AdView;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->updateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$6(Lcom/adsdk/sdk/banner/AdView;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->showContent:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$7(Lcom/adsdk/sdk/banner/AdView;Ljava/lang/Throwable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/adsdk/sdk/banner/AdView;->notifyLoadAdFailed(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$8(Lcom/adsdk/sdk/banner/AdView;Ljava/lang/Thread;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/banner/AdView;->loadContentThread:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic access$9(Lcom/adsdk/sdk/banner/AdView;)Lcom/adsdk/sdk/AdListener;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->adListener:Lcom/adsdk/sdk/AdListener;

    return-object v0
.end method

.method private getLocation()Landroid/location/Location;
    .registers 3

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->locationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_32

    iget v0, p0, Lcom/adsdk/sdk/banner/AdView;->isAccessFineLocation:I

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    :goto_1a
    return-object v0

    :cond_1b
    iget v0, p0, Lcom/adsdk/sdk/banner/AdView;->isAccessCoarseLocation:I

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    goto :goto_1a

    :cond_32
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method private getRequest()Lcom/adsdk/sdk/AdRequest;
    .registers 6

    const-wide/16 v3, 0x0

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->request:Lcom/adsdk/sdk/AdRequest;

    if-nez v0, :cond_71

    new-instance v0, Lcom/adsdk/sdk/AdRequest;

    invoke-direct {v0}, Lcom/adsdk/sdk/AdRequest;-><init>()V

    iput-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->request:Lcom/adsdk/sdk/AdRequest;

    iget v0, p0, Lcom/adsdk/sdk/banner/AdView;->telephonyPermission:I

    if-nez v0, :cond_c4

    invoke-virtual {p0}, Lcom/adsdk/sdk/banner/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->request:Lcom/adsdk/sdk/AdRequest;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adsdk/sdk/AdRequest;->setDeviceId(Ljava/lang/String;)V

    :goto_26
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->request:Lcom/adsdk/sdk/AdRequest;

    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->publisherId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/AdRequest;->setPublisherId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->request:Lcom/adsdk/sdk/AdRequest;

    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/AdRequest;->setUserAgent(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->request:Lcom/adsdk/sdk/AdRequest;

    invoke-static {}, Lcom/adsdk/sdk/Util;->buildUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/AdRequest;->setUserAgent2(Ljava/lang/String;)V

    const-string v0, "ADSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WebKit UserAgent:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView;->request:Lcom/adsdk/sdk/AdRequest;

    invoke-virtual {v2}, Lcom/adsdk/sdk/AdRequest;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ADSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDK built UserAgent:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView;->request:Lcom/adsdk/sdk/AdRequest;

    invoke-virtual {v2}, Lcom/adsdk/sdk/AdRequest;->getUserAgent2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_71
    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/adsdk/sdk/banner/AdView;->includeLocation:Z

    if-eqz v1, :cond_7a

    invoke-direct {p0}, Lcom/adsdk/sdk/banner/AdView;->getLocation()Landroid/location/Location;

    move-result-object v0

    :cond_7a
    if-eqz v0, :cond_d1

    const-string v1, "ADSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "location is longitude: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", latitude: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->request:Lcom/adsdk/sdk/AdRequest;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/adsdk/sdk/AdRequest;->setLatitude(D)V

    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->request:Lcom/adsdk/sdk/AdRequest;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/adsdk/sdk/AdRequest;->setLongitude(D)V

    :goto_b4
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->request:Lcom/adsdk/sdk/AdRequest;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/AdRequest;->setType(I)V

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->request:Lcom/adsdk/sdk/AdRequest;

    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->requestURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/AdRequest;->setRequestURL(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->request:Lcom/adsdk/sdk/AdRequest;

    return-object v0

    :cond_c4
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->request:Lcom/adsdk/sdk/AdRequest;

    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/adsdk/sdk/Util;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/AdRequest;->setDeviceId(Ljava/lang/String;)V

    goto/16 :goto_26

    :cond_d1
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->request:Lcom/adsdk/sdk/AdRequest;

    invoke-virtual {v0, v3, v4}, Lcom/adsdk/sdk/AdRequest;->setLatitude(D)V

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->request:Lcom/adsdk/sdk/AdRequest;

    invoke-virtual {v0, v3, v4}, Lcom/adsdk/sdk/AdRequest;->setLongitude(D)V

    goto :goto_b4
.end method

.method private initialize(Landroid/content/Context;)V
    .registers 4

    invoke-virtual {p0}, Lcom/adsdk/sdk/banner/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Util;->getDefaultUserAgentString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mUserAgent:Ljava/lang/String;

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->isLoggingEnabled(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/adsdk/sdk/Log;->LOGGING_ENABLED:Z

    const-string v0, "ADSDK"

    const-string v1, "SDK Version:4.1.6"

    invoke-static {v0, v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/adsdk/sdk/banner/AdView;->registerScreenStateBroadcastReceiver()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->locationManager:Landroid/location/LocationManager;

    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adsdk/sdk/banner/AdView;->telephonyPermission:I

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adsdk/sdk/banner/AdView;->isAccessFineLocation:I

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adsdk/sdk/banner/AdView;->isAccessCoarseLocation:I

    iget v0, p0, Lcom/adsdk/sdk/banner/AdView;->isAccessFineLocation:I

    if-eqz v0, :cond_3f

    iget v0, p0, Lcom/adsdk/sdk/banner/AdView;->isAccessCoarseLocation:I

    if-nez v0, :cond_4d

    :cond_3f
    invoke-virtual {p0}, Lcom/adsdk/sdk/banner/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->locationManager:Landroid/location/LocationManager;

    :cond_4d
    return-void
.end method

.method private loadContent()V
    .registers 3

    const-string v0, "ADSDK"

    const-string v1, "load content"

    invoke-static {v0, v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->loadContentThread:Ljava/lang/Thread;

    if-nez v0, :cond_26

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/adsdk/sdk/banner/AdView$3;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/banner/AdView$3;-><init>(Lcom/adsdk/sdk/banner/AdView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->loadContentThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->loadContentThread:Ljava/lang/Thread;

    new-instance v1, Lcom/adsdk/sdk/banner/AdView$4;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/banner/AdView$4;-><init>(Lcom/adsdk/sdk/banner/AdView;)V

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->loadContentThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_26
    return-void
.end method

.method private notifyLoadAdFailed(Ljava/lang/Throwable;)V
    .registers 4

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->updateHandler:Landroid/os/Handler;

    new-instance v1, Lcom/adsdk/sdk/banner/AdView$6;

    invoke-direct {v1, p0, p1}, Lcom/adsdk/sdk/banner/AdView$6;-><init>(Lcom/adsdk/sdk/banner/AdView;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private notifyNoAd()V
    .registers 3

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->updateHandler:Landroid/os/Handler;

    new-instance v1, Lcom/adsdk/sdk/banner/AdView$5;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/banner/AdView$5;-><init>(Lcom/adsdk/sdk/banner/AdView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private registerScreenStateBroadcastReceiver()V
    .registers 4

    new-instance v0, Lcom/adsdk/sdk/banner/AdView$2;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/banner/AdView$2;-><init>(Lcom/adsdk/sdk/banner/AdView;)V

    iput-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private showContent()V
    .registers 6

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mMoPubview:Lcom/adsdk/sdk/mraid/MoPubView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mMoPubview:Lcom/adsdk/sdk/mraid/MoPubView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MoPubView;->destroy()V

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mMoPubview:Lcom/adsdk/sdk/mraid/MoPubView;

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/banner/AdView;->removeView(Landroid/view/View;)V

    :cond_e
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mBannerView:Lcom/adsdk/sdk/banner/BannerAdView;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mBannerView:Lcom/adsdk/sdk/banner/BannerAdView;

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/banner/AdView;->removeView(Landroid/view/View;)V

    :cond_17
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/BannerAd;

    invoke-virtual {v0}, Lcom/adsdk/sdk/BannerAd;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_28

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/BannerAd;

    invoke-virtual {v0}, Lcom/adsdk/sdk/BannerAd;->getType()I

    move-result v0

    if-nez v0, :cond_3c

    :cond_28
    new-instance v0, Lcom/adsdk/sdk/banner/BannerAdView;

    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/BannerAd;

    iget-boolean v3, p0, Lcom/adsdk/sdk/banner/AdView;->animation:Z

    iget-object v4, p0, Lcom/adsdk/sdk/banner/AdView;->adListener:Lcom/adsdk/sdk/AdListener;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/adsdk/sdk/banner/BannerAdView;-><init>(Landroid/content/Context;Lcom/adsdk/sdk/BannerAd;ZLcom/adsdk/sdk/AdListener;)V

    iput-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mBannerView:Lcom/adsdk/sdk/banner/BannerAdView;

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mBannerView:Lcom/adsdk/sdk/banner/BannerAdView;

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/banner/AdView;->addView(Landroid/view/View;)V

    :cond_3c
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/BannerAd;

    invoke-virtual {v0}, Lcom/adsdk/sdk/BannerAd;->getType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_86

    new-instance v0, Lcom/adsdk/sdk/mraid/MoPubView;

    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/adsdk/sdk/mraid/MoPubView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mMoPubview:Lcom/adsdk/sdk/mraid/MoPubView;

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->mMoPubview:Lcom/adsdk/sdk/mraid/MoPubView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    const/high16 v4, 0x42480000

    mul-float/2addr v0, v4

    const/high16 v4, 0x3f000000

    add-float/2addr v0, v4

    float-to-int v0, v0

    invoke-direct {v2, v3, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/adsdk/sdk/banner/AdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/adsdk/sdk/mraid/AdView;

    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView;->mMoPubview:Lcom/adsdk/sdk/mraid/MoPubView;

    iget-object v3, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/BannerAd;

    invoke-direct {v0, v1, v2, v3}, Lcom/adsdk/sdk/mraid/AdView;-><init>(Landroid/content/Context;Lcom/adsdk/sdk/mraid/MoPubView;Lcom/adsdk/sdk/BannerAd;)V

    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->mMoPubview:Lcom/adsdk/sdk/mraid/MoPubView;

    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView;->adListener:Lcom/adsdk/sdk/AdListener;

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/mraid/MoPubView;->setAdListener(Lcom/adsdk/sdk/AdListener;)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/mraid/AdView;->setAdUnitId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/AdView;->loadAd()V

    :cond_86
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/BannerAd;

    invoke-virtual {v0}, Lcom/adsdk/sdk/BannerAd;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_92

    invoke-direct {p0}, Lcom/adsdk/sdk/banner/AdView;->notifyNoAd()V

    :cond_92
    invoke-direct {p0}, Lcom/adsdk/sdk/banner/AdView;->startReloadTimer()V

    return-void
.end method

.method private startReloadTimer()V
    .registers 6

    const-string v0, "ADSDK"

    const-string v1, "start reload timer"

    invoke-static {v0, v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->reloadTimer:Ljava/util/Timer;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/BannerAd;

    invoke-virtual {v0}, Lcom/adsdk/sdk/BannerAd;->getRefresh()I

    move-result v0

    if-gtz v0, :cond_14

    :cond_13
    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/BannerAd;

    invoke-virtual {v0}, Lcom/adsdk/sdk/BannerAd;->getRefresh()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    const-string v1, "ADSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "set timer: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/adsdk/sdk/banner/ReloadTask;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/banner/ReloadTask;-><init>(Lcom/adsdk/sdk/banner/AdView;)V

    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView;->reloadTimer:Ljava/util/Timer;

    int-to-long v3, v0

    invoke-virtual {v2, v1, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_13
.end method

.method private unregisterScreenStateBroadcastReceiver()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    :goto_7
    return-void

    :catch_8
    move-exception v0

    const-string v0, "Failed to unregister screen state broadcast receiver (never registered)."

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    goto :goto_7
.end method


# virtual methods
.method public getRefreshRate()I
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/BannerAd;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/BannerAd;

    invoke-virtual {v0}, Lcom/adsdk/sdk/BannerAd;->getRefresh()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method public isInternalBrowser()Z
    .registers 2

    iget-boolean v0, p0, Lcom/adsdk/sdk/banner/AdView;->isInternalBrowser:Z

    return v0
.end method

.method public loadNextAd()V
    .registers 3

    const-string v0, "ADSDK"

    const-string v1, "load next ad"

    invoke-static {v0, v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/adsdk/sdk/banner/AdView;->loadContent()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 4

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v0, "ADSDK"

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/adsdk/sdk/banner/AdView;->unregisterScreenStateBroadcastReceiver()V

    const-string v0, "ADSDK"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 5

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_20

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adsdk/sdk/banner/AdView;->mIsInForeground:Z

    invoke-virtual {p0}, Lcom/adsdk/sdk/banner/AdView;->resume()V

    :goto_b
    const-string v0, "ADSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onWindowVisibilityChanged: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adsdk/sdk/banner/AdView;->mIsInForeground:Z

    invoke-virtual {p0}, Lcom/adsdk/sdk/banner/AdView;->pause()V

    goto :goto_b
.end method

.method public pause()V
    .registers 4

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->reloadTimer:Ljava/util/Timer;

    if-eqz v0, :cond_13

    :try_start_4
    const-string v0, "ADSDK"

    const-string v1, "cancel reload timer"

    invoke-static {v0, v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->reloadTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->reloadTimer:Ljava/util/Timer;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_13} :catch_14

    :cond_13
    :goto_13
    return-void

    :catch_14
    move-exception v0

    const-string v1, "ADSDK"

    const-string v2, "unable to cancel reloadTimer"

    invoke-static {v1, v2, v0}, Lcom/adsdk/sdk/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_13
.end method

.method public release()V
    .registers 2

    invoke-direct {p0}, Lcom/adsdk/sdk/banner/AdView;->unregisterScreenStateBroadcastReceiver()V

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mMoPubview:Lcom/adsdk/sdk/mraid/MoPubView;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mMoPubview:Lcom/adsdk/sdk/mraid/MoPubView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MoPubView;->destroy()V

    :cond_c
    return-void
.end method

.method public resume()V
    .registers 4

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->reloadTimer:Ljava/util/Timer;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->reloadTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->reloadTimer:Ljava/util/Timer;

    :cond_c
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->reloadTimer:Ljava/util/Timer;

    const-string v0, "ADSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "response: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/BannerAd;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/BannerAd;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/BannerAd;

    invoke-virtual {v0}, Lcom/adsdk/sdk/BannerAd;->getRefresh()I

    move-result v0

    if-lez v0, :cond_39

    invoke-direct {p0}, Lcom/adsdk/sdk/banner/AdView;->startReloadTimer()V

    :cond_38
    :goto_38
    return-void

    :cond_39
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/BannerAd;

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mMoPubview:Lcom/adsdk/sdk/mraid/MoPubView;

    if-nez v0, :cond_38

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mBannerView:Lcom/adsdk/sdk/banner/BannerAdView;

    if-nez v0, :cond_38

    :cond_45
    invoke-direct {p0}, Lcom/adsdk/sdk/banner/AdView;->loadContent()V

    goto :goto_38
.end method

.method public setAdListener(Lcom/adsdk/sdk/AdListener;)V
    .registers 3

    iput-object p1, p0, Lcom/adsdk/sdk/banner/AdView;->adListener:Lcom/adsdk/sdk/AdListener;

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mMoPubview:Lcom/adsdk/sdk/mraid/MoPubView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mMoPubview:Lcom/adsdk/sdk/mraid/MoPubView;

    invoke-virtual {v0, p1}, Lcom/adsdk/sdk/mraid/MoPubView;->setAdListener(Lcom/adsdk/sdk/AdListener;)V

    :cond_b
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mBannerView:Lcom/adsdk/sdk/banner/BannerAdView;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mBannerView:Lcom/adsdk/sdk/banner/BannerAdView;

    invoke-virtual {v0, p1}, Lcom/adsdk/sdk/banner/BannerAdView;->setAdListener(Lcom/adsdk/sdk/AdListener;)V

    :cond_14
    return-void
.end method

.method public setHeight(I)V
    .registers 2

    return-void
.end method

.method public setInternalBrowser(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/adsdk/sdk/banner/AdView;->isInternalBrowser:Z

    return-void
.end method

.method public setWidth(I)V
    .registers 2

    return-void
.end method
