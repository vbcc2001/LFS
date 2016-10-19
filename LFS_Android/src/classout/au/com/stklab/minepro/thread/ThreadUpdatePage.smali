.class public Lau/com/stklab/minepro/thread/ThreadUpdatePage;
.super Ljava/lang/Thread;


# instance fields
.field bitMapArray:Ljava/util/ArrayList;

.field category:Ljava/lang/String;

.field context:Landroid/content/Context;

.field handler:Landroid/os/Handler;

.field page:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILandroid/content/Context;Landroid/os/Handler;Ljava/util/ArrayList;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lau/com/stklab/minepro/thread/ThreadUpdatePage;->category:Ljava/lang/String;

    iput p2, p0, Lau/com/stklab/minepro/thread/ThreadUpdatePage;->page:I

    iput-object p4, p0, Lau/com/stklab/minepro/thread/ThreadUpdatePage;->handler:Landroid/os/Handler;

    iput-object p3, p0, Lau/com/stklab/minepro/thread/ThreadUpdatePage;->context:Landroid/content/Context;

    iput-object p5, p0, Lau/com/stklab/minepro/thread/ThreadUpdatePage;->bitMapArray:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    const/4 v3, 0x6

    const/4 v6, 0x5

    const/4 v1, 0x0

    :try_start_3
    sget-object v0, Lau/com/stklab/minepro/mineBeta;->currentServer:Ljava/lang/String;

    const-string v2, "search_pornhub"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_af

    sget-object v0, Lau/com/stklab/minepro/Global;->searchResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v2, p0, Lau/com/stklab/minepro/thread/ThreadUpdatePage;->page:I

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v2, v2, 0x6

    if-le v0, v2, :cond_81

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lau/com/stklab/minepro/Global;->searchResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v2, p0, Lau/com/stklab/minepro/thread/ThreadUpdatePage;->page:I

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v2, v2, 0x6

    sub-int v2, v0, v2

    if-lt v2, v3, :cond_3dc

    iget v0, p0, Lau/com/stklab/minepro/thread/ThreadUpdatePage;->page:I

    mul-int/lit8 v0, v0, 0x6

    move v3, v0

    :goto_37
    iget v0, p0, Lau/com/stklab/minepro/thread/ThreadUpdatePage;->page:I

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x6

    move v2, v0

    :goto_3e
    if-le v2, v3, :cond_51

    sput-object v4, Lau/com/stklab/minepro/mineBeta;->videoList:Ljava/util/ArrayList;

    :goto_42
    sget-object v0, Lau/com/stklab/minepro/mineBeta;->videoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_a4

    iget-object v0, p0, Lau/com/stklab/minepro/thread/ThreadUpdatePage;->handler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_50
    :goto_50
    return-void

    :cond_51
    new-instance v5, Lau/com/stklab/minepro/type/Video;

    invoke-direct {v5}, Lau/com/stklab/minepro/type/Video;-><init>()V

    sget-object v0, Lau/com/stklab/minepro/Global;->searchResults:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lau/com/stklab/minepro/type/SearchResult;

    iget-object v0, v0, Lau/com/stklab/minepro/type/SearchResult;->imageLink:Ljava/lang/String;

    iput-object v0, v5, Lau/com/stklab/minepro/type/Video;->coverPicture:Ljava/lang/String;

    sget-object v0, Lau/com/stklab/minepro/Global;->searchResults:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lau/com/stklab/minepro/type/SearchResult;

    iget-object v0, v0, Lau/com/stklab/minepro/type/SearchResult;->vid:Ljava/lang/String;

    iput-object v0, v5, Lau/com/stklab/minepro/type/Video;->id:Ljava/lang/String;

    sget-object v0, Lau/com/stklab/minepro/Global;->searchResults:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lau/com/stklab/minepro/type/SearchResult;

    iget-object v0, v0, Lau/com/stklab/minepro/type/SearchResult;->title:Ljava/lang/String;

    iput-object v0, v5, Lau/com/stklab/minepro/type/Video;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3e

    :cond_81
    sget v0, Lau/com/stklab/minepro/Global;->searchPage:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lau/com/stklab/minepro/Global;->searchPage:I

    iget-object v0, p0, Lau/com/stklab/minepro/thread/ThreadUpdatePage;->category:Ljava/lang/String;

    sget v2, Lau/com/stklab/minepro/Global;->searchPage:I

    invoke-static {v0, v2}, Lau/com/stklab/minepro/webclient/SimpleWebClient;->searchPornhub(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lau/com/stklab/minepro/parser/WebParser;->getVideoListFromPornhubSearchWebContent(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lau/com/stklab/minepro/mineBeta;->videoList:Ljava/util/ArrayList;
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_95} :catch_96

    goto :goto_42

    :catch_96
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_50

    :cond_9b
    if-gt v1, v6, :cond_50

    :try_start_9d
    iget-object v0, p0, Lau/com/stklab/minepro/thread/ThreadUpdatePage;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    add-int/lit8 v1, v1, 0x1

    :cond_a4
    sget-object v0, Lau/com/stklab/minepro/mineBeta;->videoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le v1, v0, :cond_9b

    goto :goto_50

    :cond_af
    sget-object v0, Lau/com/stklab/minepro/mineBeta;->currentServer:Ljava/lang/String;

    const-string v2, "search_tube8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_164

    sget-object v0, Lau/com/stklab/minepro/Global;->searchResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v2, p0, Lau/com/stklab/minepro/thread/ThreadUpdatePage;->page:I

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v2, v2, 0x6

    if-le v0, v2, :cond_13a

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lau/com/stklab/minepro/Global;->searchResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v2, p0, Lau/com/stklab/minepro/thread/ThreadUpdatePage;->page:I

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v2, v2, 0x6

    sub-int v2, v0, v2

    if-lt v2, v3, :cond_3d9

    iget v0, p0, Lau/com/stklab/minepro/thread/ThreadUpdatePage;->page:I

    mul-int/lit8 v0, v0, 0x6

    move v3, v0

    :goto_e3
    iget v0, p0, Lau/com/stklab/minepro/thread/ThreadUpdatePage;->page:I

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x6

    move v2, v0

    :goto_ea
    if-le v2, v3, :cond_fe

    sput-object v4, Lau/com/stklab/minepro/mineBeta;->videoList:Ljava/util/ArrayList;

    :goto_ee
    sget-object v0, Lau/com/stklab/minepro/mineBeta;->videoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_158

    iget-object v0, p0, Lau/com/stklab/minepro/thread/ThreadUpdatePage;->handler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_50

    :cond_fe
    new-instance v5, Lau/com/stklab/minepro/type/Video;

    invoke-direct {v5}, Lau/com/stklab/minepro/type/Video;-><init>()V

    sget-object v0, Lau/com/stklab/minepro/Global;->searchResults:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lau/com/stklab/minepro/type/SearchResult;

    iget-object v0, v0, Lau/com/stklab/minepro/type/SearchResult;->imageLink:Ljava/lang/String;

    iput-object v0, v5, Lau/com/stklab/minepro/type/Video;->coverPicture:Ljava/lang/String;

    sget-object v0, Lau/com/stklab/minepro/Global;->searchResults:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lau/com/stklab/minepro/type/SearchResult;

    iget-object v0, v0, Lau/com/stklab/minepro/type/SearchResult;->vid:Ljava/lang/String;

    iput-object v0, v5, Lau/com/stklab/minepro/type/Video;->id:Ljava/lang/String;

    sget-object v0, Lau/com/stklab/minepro/Global;->searchResults:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lau/com/stklab/minepro/type/SearchResult;

    iget-object v0, v0, Lau/com/stklab/minepro/type/SearchResult;->title:Ljava/lang/String;

    iput-object v0, v5, Lau/com/stklab/minepro/type/Video;->name:Ljava/lang/String;

    sget-object v0, Lau/com/stklab/minepro/Global;->searchResults:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lau/com/stklab/minepro/type/SearchResult;

    iget-object v0, v0, Lau/com/stklab/minepro/type/SearchResult;->detailPageLink:Ljava/lang/String;

    iput-object v0, v5, Lau/com/stklab/minepro/type/Video;->detailPageLink:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_ea

    :cond_13a
    sget v0, Lau/com/stklab/minepro/Global;->searchPage:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lau/com/stklab/minepro/Global;->searchPage:I

    iget-object v0, p0, Lau/com/stklab/minepro/thread/ThreadUpdatePage;->category:Ljava/lang/String;

    sget v2, Lau/com/stklab/minepro/Global;->searchPage:I

    invoke-static {v0, v2}, Lau/com/stklab/minepro/webclient/SimpleWebClient;->searchTube8(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lau/com/stklab/minepro/parser/WebParser;->getVideoListFromTube8SearchWebContent(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lau/com/stklab/minepro/mineBeta;->videoList:Ljava/util/ArrayList;

    goto :goto_ee

    :cond_14f
    if-gt v1, v6, :cond_50

    iget-object v0, p0, Lau/com/stklab/minepro/thread/ThreadUpdatePage;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    add-int/lit8 v1, v1, 0x1

    :cond_158
    sget-object v0, Lau/com/stklab/minepro/mineBeta;->videoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le v1, v0, :cond_14f

    goto/16 :goto_50

    :cond_164
    sget-object v0, Lau/com/stklab/minepro/mineBeta;->currentServer:Ljava/lang/String;

    const-string v2, "search_spankwire"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20d

    sget-object v0, Lau/com/stklab/minepro/Global;->searchResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v2, p0, Lau/com/stklab/minepro/thread/ThreadUpdatePage;->page:I

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v2, v2, 0x6

    if-le v0, v2, :cond_1e3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lau/com/stklab/minepro/Global;->searchResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v2, p0, Lau/com/stklab/minepro/thread/ThreadUpdatePage;->page:I

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v2, v2, 0x6

    sub-int v2, v0, v2

    if-lt v2, v3, :cond_3d6

    iget v0, p0, Lau/com/stklab/minepro/thread/ThreadUpdatePage;->page:I

    mul-int/lit8 v0, v0, 0x6

    move v3, v0

    :goto_198
    iget v0, p0, Lau/com/stklab/minepro/thread/ThreadUpdatePage;->page:I

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x6

    move v2, v0

    :goto_19f
    if-le v2, v3, :cond_1b3

    sput-object v4, Lau/com/stklab/minepro/mineBeta;->videoList:Ljava/util/ArrayList;

    :goto_1a3
    sget-object v0, Lau/com/stklab/minepro/mineBeta;->videoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_201

    iget-object v0, p0, Lau/com/stklab/minepro/thread/ThreadUpdatePage;->handler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_50

    :cond_1b3
    new-instance v5, Lau/com/stklab/minepro/type/Video;

    invoke-direct {v5}, Lau/com/stklab/minepro/type/Video;-><init>()V

    sget-object v0, Lau/com/stklab/minepro/Global;->searchResults:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lau/com/stklab/minepro/type/SearchResult;

    iget-object v0, v0, Lau/com/stklab/minepro/type/SearchResult;->imageLink:Ljava/lang/String;

    iput-object v0, v5, Lau/com/stklab/minepro/type/Video;->coverPicture:Ljava/lang/String;

    sget-object v0, Lau/com/stklab/minepro/Global;->searchResults:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lau/com/stklab/minepro/type/SearchResult;

    iget-object v0, v0, Lau/com/stklab/minepro/type/SearchResult;->vid:Ljava/lang/String;

    iput-object v0, v5, Lau/com/stklab/minepro/type/Video;->id:Ljava/lang/String;

    sget-object v0, Lau/com/stklab/minepro/Global;->searchResults:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lau/com/stklab/minepro/type/SearchResult;

    iget-object v0, v0, Lau/com/stklab/minepro/type/SearchResult;->title:Ljava/lang/String;

    iput-object v0, v5, Lau/com/stklab/minepro/type/Video;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_19f

    :cond_1e3
    sget v0, Lau/com/stklab/minepro/Global;->searchPage:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lau/com/stklab/minepro/Global;->searchPage:I

    iget-object v0, p0, Lau/com/stklab/minepro/thread/ThreadUpdatePage;->category:Ljava/lang/String;

    sget v2, Lau/com/stklab/minepro/Global;->searchPage:I

    invoke-static {v0, v2}, Lau/com/stklab/minepro/webclient/SimpleWebClient;->searchSpankWire(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lau/com/stklab/minepro/parser/WebParser;->getVideoListFromSpankWireSearchWebContent(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lau/com/stklab/minepro/mineBeta;->videoList:Ljava/util/ArrayList;

    goto :goto_1a3

    :cond_1f8
    if-gt v1, v6, :cond_50

    iget-object v0, p0, Lau/com/stklab/minepro/thread/ThreadUpdatePage;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    add-int/lit8 v1, v1, 0x1

    :cond_201
    sget-object v0, Lau/com/stklab/minepro/mineBeta;->videoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le v1, v0, :cond_1f8

    goto/16 :goto_50

    :cond_20d
    sget-object v0, Lau/com/stklab/minepro/mineBeta;->currentServer:Ljava/lang/String;

    const-string v2, "search_madthumbs"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b6

    sget-object v0, Lau/com/stklab/minepro/Global;->searchResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v2, p0, Lau/com/stklab/minepro/thread/ThreadUpdatePage;->page:I

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v2, v2, 0x6

    if-le v0, v2, :cond_28c

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lau/com/stklab/minepro/Global;->searchResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v2, p0, Lau/com/stklab/minepro/thread/ThreadUpdatePage;->page:I

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v2, v2, 0x6

    sub-int v2, v0, v2

    if-lt v2, v3, :cond_3d3

    iget v0, p0, Lau/com/stklab/minepro/thread/ThreadUpdatePage;->page:I

    mul-int/lit8 v0, v0, 0x6

    move v3, v0

    :goto_241
    iget v0, p0, Lau/com/stklab/minepro/thread/ThreadUpdatePage;->page:I

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x6

    move v2, v0

    :goto_248
    if-le v2, v3, :cond_25c

    sput-object v4, Lau/com/stklab/minepro/mineBeta;->videoList:Ljava/util/ArrayList;

    :goto_24c
    sget-object v0, Lau/com/stklab/minepro/mineBeta;->videoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2aa

    iget-object v0, p0, Lau/com/stklab/minepro/thread/ThreadUpdatePage;->handler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_50

    :cond_25c
    new-instance v5, Lau/com/stklab/minepro/type/Video;

    invoke-direct {v5}, Lau/com/stklab/minepro/type/Video;-><init>()V

    sget-object v0, Lau/com/stklab/minepro/Global;->searchResults:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lau/com/stklab/minepro/type/SearchResult;

    iget-object v0, v0, Lau/com/stklab/minepro/type/SearchResult;->imageLink:Ljava/lang/String;

    iput-object v0, v5, Lau/com/stklab/minepro/type/Video;->coverPicture:Ljava/lang/String;

    sget-object v0, Lau/com/stklab/minepro/Global;->searchResults:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lau/com/stklab/minepro/type/SearchResult;

    iget-object v0, v0, Lau/com/stklab/minepro/type/SearchResult;->vid:Ljava/lang/String;

    iput-object v0, v5, Lau/com/stklab/minepro/type/Video;->id:Ljava/lang/String;

    sget-object v0, Lau/com/stklab/minepro/Global;->searchResults:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lau/com/stklab/minepro/type/SearchResult;

    iget-object v0, v0, Lau/com/stklab/minepro/type/SearchResult;->title:Ljava/lang/String;

    iput-object v0, v5, Lau/com/stklab/minepro/type/Video;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_248

    :cond_28c
    sget v0, Lau/com/stklab/minepro/Global;->searchPage:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lau/com/stklab/minepro/Global;->searchPage:I

    iget-object v0, p0, Lau/com/stklab/minepro/thread/ThreadUpdatePage;->category:Ljava/lang/String;

    sget v2, Lau/com/stklab/minepro/Global;->searchPage:I

    invoke-static {v0, v2}, Lau/com/stklab/minepro/webclient/SimpleWebClient;->searchMadthumbs(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lau/com/stklab/minepro/parser/WebParser;->getVideoListFromMadthumbsSearchWebContent(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lau/com/stklab/minepro/mineBeta;->videoList:Ljava/util/ArrayList;

    goto :goto_24c

    :cond_2a1
    if-gt v1, v6, :cond_50

    iget-object v0, p0, Lau/com/stklab/minepro/thread/ThreadUpdatePage;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    add-int/lit8 v1, v1, 0x1

    :cond_2aa
    sget-object v0, Lau/com/stklab/minepro/mineBeta;->videoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le v1, v0, :cond_2a1

    goto/16 :goto_50

    :cond_2b6
    sget-object v0, Lau/com/stklab/minepro/mineBeta;->currentServer:Ljava/lang/String;

    const-string v2, "sextube_spankwire"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f2

    iget-object v0, p0, Lau/com/stklab/minepro/thread/ThreadUpdatePage;->category:Ljava/lang/String;

    iget v2, p0, Lau/com/stklab/minepro/thread/ThreadUpdatePage;->page:I

    invoke-static {v0, v2}, Lau/com/stklab/minepro/webclient/SimpleWebClient;->getMobileSextubeSpankwireWebContentByCategory(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lau/com/stklab/minepro/parser/WebParser;->getVideoListFromSextubeSpankWireMobileCategoryWebContent(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lau/com/stklab/minepro/mineBeta;->videoList:Ljava/util/ArrayList;

    if-nez v0, :cond_2de

    iget-object v0, p0, Lau/com/stklab/minepro/thread/ThreadUpdatePage;->category:Ljava/lang/String;

    iget v2, p0, Lau/com/stklab/minepro/thread/ThreadUpdatePage;->page:I

    invoke-static {v0, v2}, Lau/com/stklab/minepro/webclient/SimpleWebClient;->getMobileSpankWireWebContentByCategory(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lau/com/stklab/minepro/parser/WebParser;->getVideoListFromSpankWireMobileCategoryWebContent(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lau/com/stklab/minepro/mineBeta;->videoList:Ljava/util/ArrayList;

    :cond_2de
    :goto_2de
    sget-object v0, Lau/com/stklab/minepro/mineBeta;->videoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt v1, v0, :cond_50

    if-gt v1, v6, :cond_50

    iget-object v0, p0, Lau/com/stklab/minepro/thread/ThreadUpdatePage;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2de

    :cond_2f2
    sget-object v0, Lau/com/stklab/minepro/mineBeta;->currentServer:Ljava/lang/String;

    const-string v2, "madthumbs"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31e

    iget-object v0, p0, Lau/com/stklab/minepro/thread/ThreadUpdatePage;->category:Ljava/lang/String;

    iget v2, p0, Lau/com/stklab/minepro/thread/ThreadUpdatePage;->page:I

    invoke-static {v0, v2}, Lau/com/stklab/minepro/webclient/SimpleWebClient;->getMobileMadThumbsContentByCategory(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lau/com/stklab/minepro/parser/WebParser;->getVideoListFromMadThumbsMobileCategoryWebContent(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lau/com/stklab/minepro/mineBeta;->videoList:Ljava/util/ArrayList;

    :goto_30a
    sget-object v0, Lau/com/stklab/minepro/mineBeta;->videoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt v1, v0, :cond_50

    if-gt v1, v6, :cond_50

    iget-object v0, p0, Lau/com/stklab/minepro/thread/ThreadUpdatePage;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_30a

    :cond_31e
    sget-object v0, Lau/com/stklab/minepro/mineBeta;->currentServer:Ljava/lang/String;

    const-string v2, "sextube_tube8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35a

    iget-object v0, p0, Lau/com/stklab/minepro/thread/ThreadUpdatePage;->category:Ljava/lang/String;

    iget v2, p0, Lau/com/stklab/minepro/thread/ThreadUpdatePage;->page:I

    invoke-static {v0, v2}, Lau/com/stklab/minepro/webclient/SimpleWebClient;->getMobileSextubeTube8ContentByCategory(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lau/com/stklab/minepro/parser/WebParser;->getVideoListFromSextubeTube8MobileCategoryWebContent(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lau/com/stklab/minepro/mineBeta;->videoList:Ljava/util/ArrayList;

    if-nez v0, :cond_346

    iget-object v0, p0, Lau/com/stklab/minepro/thread/ThreadUpdatePage;->category:Ljava/lang/String;

    iget v2, p0, Lau/com/stklab/minepro/thread/ThreadUpdatePage;->page:I

    invoke-static {v0, v2}, Lau/com/stklab/minepro/webclient/SimpleWebClient;->getMobileTube8ContentByCategory(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lau/com/stklab/minepro/parser/WebParser;->getVideoListFromTube8MobileCategoryWebContent(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lau/com/stklab/minepro/mineBeta;->videoList:Ljava/util/ArrayList;

    :cond_346
    :goto_346
    sget-object v0, Lau/com/stklab/minepro/mineBeta;->videoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt v1, v0, :cond_50

    if-gt v1, v6, :cond_50

    iget-object v0, p0, Lau/com/stklab/minepro/thread/ThreadUpdatePage;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_346

    :cond_35a
    sget-object v0, Lau/com/stklab/minepro/mineBeta;->currentServer:Ljava/lang/String;

    const-string v2, "sextube_pornhub"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_396

    iget-object v0, p0, Lau/com/stklab/minepro/thread/ThreadUpdatePage;->category:Ljava/lang/String;

    iget v2, p0, Lau/com/stklab/minepro/thread/ThreadUpdatePage;->page:I

    invoke-static {v0, v2}, Lau/com/stklab/minepro/webclient/SimpleWebClient;->getMobileSextubePornhubContentByCategory(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lau/com/stklab/minepro/parser/WebParser;->getVideoListFromSextubePornhubMobileCategoryWebContent(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lau/com/stklab/minepro/mineBeta;->videoList:Ljava/util/ArrayList;

    if-nez v0, :cond_382

    iget-object v0, p0, Lau/com/stklab/minepro/thread/ThreadUpdatePage;->category:Ljava/lang/String;

    iget v2, p0, Lau/com/stklab/minepro/thread/ThreadUpdatePage;->page:I

    invoke-static {v0, v2}, Lau/com/stklab/minepro/webclient/SimpleWebClient;->getMobilePornHubWebContentByCategory(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lau/com/stklab/minepro/parser/WebParser;->getVideoListFromPornHubMobileCategoryWebContent(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lau/com/stklab/minepro/mineBeta;->videoList:Ljava/util/ArrayList;

    :cond_382
    :goto_382
    sget-object v0, Lau/com/stklab/minepro/mineBeta;->videoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt v1, v0, :cond_50

    if-gt v1, v6, :cond_50

    iget-object v0, p0, Lau/com/stklab/minepro/thread/ThreadUpdatePage;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_382

    :cond_396
    sget-object v0, Lau/com/stklab/minepro/mineBeta;->currentServer:Ljava/lang/String;

    const-string v2, "sextube_thisav"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lau/com/stklab/minepro/thread/ThreadUpdatePage;->category:Ljava/lang/String;

    iget v2, p0, Lau/com/stklab/minepro/thread/ThreadUpdatePage;->page:I

    invoke-static {v0, v2}, Lau/com/stklab/minepro/webclient/SimpleWebClient;->getMobileSextubeThisavWebContentByCategory(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lau/com/stklab/minepro/parser/WebParser;->getVideoListFromSextubeThisavMobileCategoryWebContent(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lau/com/stklab/minepro/mineBeta;->videoList:Ljava/util/ArrayList;

    if-nez v0, :cond_3be

    iget-object v0, p0, Lau/com/stklab/minepro/thread/ThreadUpdatePage;->category:Ljava/lang/String;

    iget v2, p0, Lau/com/stklab/minepro/thread/ThreadUpdatePage;->page:I

    invoke-static {v0, v2}, Lau/com/stklab/minepro/webclient/SimpleWebClient;->getMobileSpankWireWebContentByCategory(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lau/com/stklab/minepro/parser/WebParser;->getVideoListFromSpankWireMobileCategoryWebContent(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lau/com/stklab/minepro/mineBeta;->videoList:Ljava/util/ArrayList;

    :cond_3be
    move v0, v1

    :goto_3bf
    sget-object v1, Lau/com/stklab/minepro/mineBeta;->videoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_50

    if-gt v0, v6, :cond_50

    iget-object v1, p0, Lau/com/stklab/minepro/thread/ThreadUpdatePage;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_3d0
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_3d0} :catch_96

    add-int/lit8 v0, v0, 0x1

    goto :goto_3bf

    :cond_3d3
    move v3, v0

    goto/16 :goto_241

    :cond_3d6
    move v3, v0

    goto/16 :goto_198

    :cond_3d9
    move v3, v0

    goto/16 :goto_e3

    :cond_3dc
    move v3, v0

    goto/16 :goto_37
.end method
