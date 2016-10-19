.class public Lau/com/stklab/minepro/thread/ThreadUpdateRandom;
.super Ljava/lang/Thread;


# instance fields
.field handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lau/com/stklab/minepro/thread/ThreadUpdateRandom;->handler:Landroid/os/Handler;

    iput-object p1, p0, Lau/com/stklab/minepro/thread/ThreadUpdateRandom;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const/4 v2, 0x4

    :try_start_1
    const-string v0, "http://sextube-android.com/versioncheck_3.php"

    invoke-static {v0}, Lau/com/stklab/minepro/webclient/SimpleWebClient;->doGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lau/com/stklab/minepro/utilities/SimpleCrypto;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v0, v1

    if-ge v0, v2, :cond_15

    :goto_14
    return-void

    :cond_15
    const-string v0, "madthumbs"

    const/4 v2, 0x0

    aget-object v2, v1, v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    const-string v0, "madthumbs"

    :cond_24
    :goto_24
    const/4 v2, 0x1

    aget-object v2, v1, v2

    sput-object v2, Lau/com/stklab/minepro/mineBeta;->currentCategory:Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v2, v1, v2

    sput-object v2, Lau/com/stklab/minepro/RandomView;->videoId:Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v2, v1, v2

    sput-object v2, Lau/com/stklab/minepro/RandomView;->coverPicture:Ljava/lang/String;

    sput-object v0, Lau/com/stklab/minepro/mineBeta;->currentServer:Ljava/lang/String;

    array-length v0, v1

    const/4 v2, 0x5

    if-lt v0, v2, :cond_80

    const/4 v0, 0x4

    aget-object v0, v1, v0

    sput-object v0, Lau/com/stklab/minepro/RandomView;->detailPageLink:Ljava/lang/String;

    :goto_3e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lau/com/stklab/minepro/RandomView;->bitMapArray:Ljava/util/ArrayList;

    sget-object v1, Lau/com/stklab/minepro/RandomView;->bitMap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lau/com/stklab/minepro/thread/ThreadUpdateRandom;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_50} :catch_51

    goto :goto_14

    :catch_51
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_14

    :cond_56
    const/4 v2, 0x0

    :try_start_57
    aget-object v2, v1, v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_64

    const-string v0, "sextube_spankwire"

    goto :goto_24

    :cond_64
    const/4 v2, 0x0

    aget-object v2, v1, v2

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_72

    const-string v0, "sextube_tube8"

    goto :goto_24

    :cond_72
    const/4 v2, 0x0

    aget-object v2, v1, v2

    const-string v3, "3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    const-string v0, "sextube_pornhub"

    goto :goto_24

    :cond_80
    const/4 v0, 0x0

    sput-object v0, Lau/com/stklab/minepro/RandomView;->detailPageLink:Ljava/lang/String;
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_83} :catch_51

    goto :goto_3e
.end method
