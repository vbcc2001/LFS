.class public Lau/com/stklab/minepro/webclient/SimpleWebClient;
.super Ljava/lang/Object;


# static fields
.field static cacheContent:Ljava/util/ArrayList;

.field static done:Ljava/util/ArrayList;

.field static index:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lau/com/stklab/minepro/webclient/SimpleWebClient;->index:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lau/com/stklab/minepro/webclient/SimpleWebClient;->cacheContent:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lau/com/stklab/minepro/webclient/SimpleWebClient;->done:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cacheManagement(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    return-object v0
.end method

.method public static doGet(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const-string v1, "User-Agent"

    const-string v2, "Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.4; en-US; rv:1.9.2.2) Gecko/20100316 Firefox/3.6.2"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lau/com/stklab/minepro/webclient/SimpleWebClient;->readFully(Ljava/io/InputStream;)[B

    move-result-object v1

    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_22

    :goto_21
    return-object v0

    :catch_22
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_21
.end method

.method public static fillCache(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 10

    const/4 v3, 0x0

    const/4 v0, 0x0

    sget-object v1, Lau/com/stklab/minepro/webclient/SimpleWebClient;->index:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x14

    if-lt v1, v2, :cond_17

    sget-object v1, Lau/com/stklab/minepro/webclient/SimpleWebClient;->index:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    :goto_13
    add-int/lit8 v4, v2, -0x14

    if-le v1, v4, :cond_40

    :cond_17
    move v1, v0

    move v2, v0

    :goto_19
    sget-object v0, Lau/com/stklab/minepro/webclient/SimpleWebClient;->index:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le v1, v0, :cond_68

    if-eqz v2, :cond_ae

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The query server "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " page already in cache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_3f
    return-void

    :cond_40
    sget-object v4, Lau/com/stklab/minepro/webclient/SimpleWebClient;->index:Ljava/util/ArrayList;

    invoke-virtual {v4, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lau/com/stklab/minepro/webclient/SimpleWebClient;->cacheContent:Ljava/util/ArrayList;

    invoke-virtual {v4, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lau/com/stklab/minepro/webclient/SimpleWebClient;->done:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "false"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lau/com/stklab/minepro/webclient/SimpleWebClient;->index:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sget-object v4, Lau/com/stklab/minepro/webclient/SimpleWebClient;->cacheContent:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sget-object v4, Lau/com/stklab/minepro/webclient/SimpleWebClient;->done:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_68
    sget-object v0, Lau/com/stklab/minepro/webclient/SimpleWebClient;->index:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "server "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " page"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a3

    sget-object v0, Lau/com/stklab/minepro/webclient/SimpleWebClient;->done:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "true"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a3

    const/4 v2, 0x1

    sget-object v0, Lau/com/stklab/minepro/webclient/SimpleWebClient;->index:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v0, v1

    move v1, v2

    :goto_a8
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    move v1, v0

    goto/16 :goto_19

    :cond_ae
    sget-object v0, Lau/com/stklab/minepro/webclient/SimpleWebClient;->index:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "false"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lau/com/stklab/minepro/webclient/SimpleWebClient;->cacheContent:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lau/com/stklab/minepro/webclient/SimpleWebClient;->done:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "sextube_spankwire"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_117

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "http://sextube-android.com/versioncheck.php?category="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&page="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_10d
    new-instance v3, Lau/com/stklab/minepro/thread/ThreadCache;

    invoke-direct {v3, v0, v1, v2}, Lau/com/stklab/minepro/thread/ThreadCache;-><init>(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V

    invoke-virtual {v3}, Lau/com/stklab/minepro/thread/ThreadCache;->start()V

    goto/16 :goto_3f

    :cond_117
    const-string v0, "spankwire"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_139

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "http://mobile.spankwire.com/category/show/name/"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/page/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_10d

    :cond_139
    const-string v0, "tube8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15b

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "http://m.tube8.com/category/show/name/"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/page/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_10d

    :cond_15b
    const-string v0, "madthumbs"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17d

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "http://mobile.madthumbs.com/"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "?p="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_10d

    :cond_17d
    const-string v0, "pornhub"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "http://m.pornhub.com/category/show/name/"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/page/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_10d

    :cond_1a0
    move-object v0, v3

    goto/16 :goto_10d

    :cond_1a3
    move v0, v1

    move v1, v2

    goto/16 :goto_a8
.end method

.method public static getMobileMadThumbsContentByCategory(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    sget-object v0, Lau/com/stklab/minepro/mineBeta;->currentServer:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lau/com/stklab/minepro/webclient/SimpleWebClient;->cacheManagement(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "query in cache!"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_f
    return-object v0

    :cond_10
    const-string v0, ""

    :try_start_12
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://sextube-android.com/versioncheck.php?category="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&page="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&channel=1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lau/com/stklab/minepro/webclient/SimpleWebClient;->doGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lau/com/stklab/minepro/utilities/SimpleCrypto;->decrypt(Ljava/lang/String;)Ljava/lang/String;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_38} :catch_3a

    move-result-object v0

    goto :goto_f

    :catch_3a
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f
.end method

.method public static getMobilePornHubWebContentByCategory(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    sget-object v0, Lau/com/stklab/minepro/mineBeta;->currentServer:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lau/com/stklab/minepro/webclient/SimpleWebClient;->cacheManagement(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "query in cache!"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_f
    return-object v0

    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://m.pornhub.com/category/show/name/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/page/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lau/com/stklab/minepro/webclient/SimpleWebClient;->doGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_f
.end method

.method public static getMobilePornHubWebContentByVideoId(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://m.pornhub.com/video/show/title/supersquirters2_02_1/vkey/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lau/com/stklab/minepro/webclient/SimpleWebClient;->doGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMobileSextubePornhubContentByCategory(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    const-string v0, ""

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://sextube-android.com/versioncheck_2.php?category="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&page="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&channel=4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lau/com/stklab/minepro/webclient/SimpleWebClient;->doGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lau/com/stklab/minepro/utilities/SimpleCrypto;->decrypt(Ljava/lang/String;)Ljava/lang/String;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_28} :catch_2a

    move-result-object v0

    :goto_29
    return-object v0

    :catch_2a
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_29
.end method

.method public static getMobileSextubeSpankwireWebContentByCategory(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    sget-object v0, Lau/com/stklab/minepro/mineBeta;->currentServer:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lau/com/stklab/minepro/webclient/SimpleWebClient;->cacheManagement(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "query in cache!"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_f
    return-object v0

    :cond_10
    const-string v0, ""

    :try_start_12
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://sextube-android.com/versioncheck.php?category="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&page="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&channel=2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lau/com/stklab/minepro/webclient/SimpleWebClient;->doGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lau/com/stklab/minepro/utilities/SimpleCrypto;->decrypt(Ljava/lang/String;)Ljava/lang/String;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_38} :catch_3a

    move-result-object v0

    goto :goto_f

    :catch_3a
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f
.end method

.method public static getMobileSextubeThisavWebContentByCategory(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    const-string v0, ""

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://sextube-android.com/versioncheck_4.php?category="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&page="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lau/com/stklab/minepro/webclient/SimpleWebClient;->doGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lau/com/stklab/minepro/utilities/SimpleCrypto;->decrypt(Ljava/lang/String;)Ljava/lang/String;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_22} :catch_24

    move-result-object v0

    :goto_23
    return-object v0

    :catch_24
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_23
.end method

.method public static getMobileSextubeTube8ContentByCategory(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    const-string v0, ""

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://sextube-android.com/versioncheck_2.php?category="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&page="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&channel=3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lau/com/stklab/minepro/webclient/SimpleWebClient;->doGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lau/com/stklab/minepro/utilities/SimpleCrypto;->decrypt(Ljava/lang/String;)Ljava/lang/String;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_28} :catch_2a

    move-result-object v0

    :goto_29
    return-object v0

    :catch_2a
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_29
.end method

.method public static getMobileSpankWireWebContentByCategory(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    sget-object v0, Lau/com/stklab/minepro/mineBeta;->currentServer:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lau/com/stklab/minepro/webclient/SimpleWebClient;->cacheManagement(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "query in cache!"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_f
    return-object v0

    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://mobile.spankwire.com/category/show/name/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/page/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lau/com/stklab/minepro/webclient/SimpleWebClient;->doGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_f
.end method

.method public static getMobileSpankWireWebContentByPage(I)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://mobile.spankwire.com/video/browse/page/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lau/com/stklab/minepro/webclient/SimpleWebClient;->doGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMobileSpankWireWebContentByVideoId(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://mobile.spankwire.com/video/show/title/davia_ardell/id/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lau/com/stklab/minepro/webclient/SimpleWebClient;->doGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMobileTube8ContentByCategory(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    sget-object v0, Lau/com/stklab/minepro/mineBeta;->currentServer:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lau/com/stklab/minepro/webclient/SimpleWebClient;->cacheManagement(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "query in cache!"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_f
    return-object v0

    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://m.tube8.com/category/show/name/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/page/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lau/com/stklab/minepro/webclient/SimpleWebClient;->doGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_f
.end method

.method public static getMobileVidzContentByCategory(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://mobile.vidz.com/videos?n="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&page="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lau/com/stklab/minepro/webclient/SimpleWebClient;->doGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTube8ContentByDetailPageLink(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lau/com/stklab/minepro/webclient/SimpleWebClient;->doGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVidzContentById(I)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://mobile.vidz.com/video?s="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lau/com/stklab/minepro/webclient/SimpleWebClient;->doGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readFully(Ljava/io/InputStream;)[B
    .registers 5

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v0, 0x400

    :try_start_7
    new-array v0, v0, [B

    :goto_9
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_1a

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_15

    :goto_10
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :cond_15
    const/4 v3, 0x0

    :try_start_16
    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_9

    :catch_1a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_10
.end method

.method private static readStream(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 7

    const/4 v3, 0x0

    const-string v1, ""

    :try_start_3
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_d} :catch_2a
    .catchall {:try_start_3 .. :try_end_d} :catchall_3d

    move-object v0, v1

    :goto_e
    :try_start_e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_11} :catch_51
    .catchall {:try_start_e .. :try_end_11} :catchall_4f

    move-result-object v1

    if-nez v1, :cond_18

    :try_start_14
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_4a

    :cond_17
    :goto_17
    return-object v0

    :cond_18
    :try_start_18
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_28} :catch_51
    .catchall {:try_start_18 .. :try_end_28} :catchall_4f

    move-result-object v0

    goto :goto_e

    :catch_2a
    move-exception v0

    move-object v2, v3

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_2f
    :try_start_2f
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_4f

    if-eqz v2, :cond_17

    :try_start_34
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_38

    goto :goto_17

    :catch_38
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_17

    :catchall_3d
    move-exception v0

    move-object v2, v3

    :goto_3f
    if-eqz v2, :cond_44

    :try_start_41
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_45

    :cond_44
    :goto_44
    throw v0

    :catch_45
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_44

    :catch_4a
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_17

    :catchall_4f
    move-exception v0

    goto :goto_3f

    :catch_51
    move-exception v1

    goto :goto_2f
.end method

.method public static searchMadthumbs(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://www.madthumbs.com/search?q="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&p="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&f=video"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lau/com/stklab/minepro/webclient/SimpleWebClient;->doGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static searchPornhub(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "out page is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-gt p1, v0, :cond_2b

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://www.pornhub.com/video/search?search="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lau/com/stklab/minepro/webclient/SimpleWebClient;->doGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2a
    return-object v0

    :cond_2b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://www.pornhub.com/video/search?search="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&page="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lau/com/stklab/minepro/webclient/SimpleWebClient;->doGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2a
.end method

.method public static searchSpankWire(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://www.spankwire.com/search/Straight/keyword/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?Sort=Relevance&Page="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lau/com/stklab/minepro/webclient/SimpleWebClient;->doGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static searchTube8(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://www.tube8.com/searches.html?q="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&page="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lau/com/stklab/minepro/webclient/SimpleWebClient;->doGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
