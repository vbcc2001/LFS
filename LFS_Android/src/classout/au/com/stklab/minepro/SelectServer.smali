.class public Lau/com/stklab/minepro/SelectServer;
.super Landroid/app/ListActivity;


# static fields
.field private static reachableThreadCounter:I

.field public static thisAct:Lau/com/stklab/minepro/SelectServer;

.field static updateVersionHanlder:Landroid/os/Handler;


# instance fields
.field server_strs:[Ljava/lang/String;

.field servercode_strs:[Ljava/lang/String;

.field show_strs:[Ljava/lang/String;

.field private t_reachable_1:Lau/com/stklab/minepro/thread/ThreadReachable;

.field private t_reachable_2:Lau/com/stklab/minepro/thread/ThreadReachable;

.field private t_reachable_3:Lau/com/stklab/minepro/thread/ThreadReachable;

.field private t_reachable_4:Lau/com/stklab/minepro/thread/ThreadReachable;

.field t_updateVersion:Lau/com/stklab/minepro/thread/ThreadGetLink;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput v0, Lau/com/stklab/minepro/SelectServer;->reachableThreadCounter:I

    new-instance v0, Lau/com/stklab/minepro/SelectServer$1;

    invoke-direct {v0}, Lau/com/stklab/minepro/SelectServer$1;-><init>()V

    sput-object v0, Lau/com/stklab/minepro/SelectServer;->updateVersionHanlder:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    iput-object v0, p0, Lau/com/stklab/minepro/SelectServer;->t_reachable_1:Lau/com/stklab/minepro/thread/ThreadReachable;

    iput-object v0, p0, Lau/com/stklab/minepro/SelectServer;->t_reachable_2:Lau/com/stklab/minepro/thread/ThreadReachable;

    iput-object v0, p0, Lau/com/stklab/minepro/SelectServer;->t_reachable_3:Lau/com/stklab/minepro/thread/ThreadReachable;

    iput-object v0, p0, Lau/com/stklab/minepro/SelectServer;->t_reachable_4:Lau/com/stklab/minepro/thread/ThreadReachable;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 11

    const/4 v8, 0x0

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    sput-object p0, Lau/com/stklab/minepro/SelectServer;->thisAct:Lau/com/stklab/minepro/SelectServer;

    invoke-static {p0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    sput-object v0, Lau/com/stklab/minepro/Global;->mRequestQueue:Lcom/android/volley/RequestQueue;

    new-instance v0, Lcom/android/volley/toolbox/ImageLoader;

    sget-object v1, Lau/com/stklab/minepro/Global;->mRequestQueue:Lcom/android/volley/RequestQueue;

    new-instance v2, Lau/com/stklab/minepro/BitmapLruCache;

    invoke-static {}, Lau/com/stklab/minepro/BitmapLruCache;->getDefaultLruCacheSize()I

    move-result v3

    invoke-direct {v2, v3}, Lau/com/stklab/minepro/BitmapLruCache;-><init>(I)V

    invoke-direct {v0, v1, v2}, Lcom/android/volley/toolbox/ImageLoader;-><init>(Lcom/android/volley/RequestQueue;Lcom/android/volley/toolbox/ImageLoader$ImageCache;)V

    sput-object v0, Lau/com/stklab/minepro/Global;->imageLoader:Lcom/android/volley/toolbox/ImageLoader;

    new-instance v0, Lau/com/stklab/minepro/thread/ThreadGetLink;

    sget-object v1, Lau/com/stklab/minepro/SelectServer;->updateVersionHanlder:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lau/com/stklab/minepro/thread/ThreadGetLink;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lau/com/stklab/minepro/SelectServer;->t_updateVersion:Lau/com/stklab/minepro/thread/ThreadGetLink;

    iget-object v0, p0, Lau/com/stklab/minepro/SelectServer;->t_updateVersion:Lau/com/stklab/minepro/thread/ThreadGetLink;

    invoke-virtual {v0}, Lau/com/stklab/minepro/thread/ThreadGetLink;->start()V

    new-instance v0, Lau/com/stklab/minepro/thread/ThreadReachable;

    invoke-direct {v0, v4}, Lau/com/stklab/minepro/thread/ThreadReachable;-><init>(I)V

    iput-object v0, p0, Lau/com/stklab/minepro/SelectServer;->t_reachable_1:Lau/com/stklab/minepro/thread/ThreadReachable;

    new-instance v0, Lau/com/stklab/minepro/thread/ThreadReachable;

    invoke-direct {v0, v5}, Lau/com/stklab/minepro/thread/ThreadReachable;-><init>(I)V

    iput-object v0, p0, Lau/com/stklab/minepro/SelectServer;->t_reachable_2:Lau/com/stklab/minepro/thread/ThreadReachable;

    new-instance v0, Lau/com/stklab/minepro/thread/ThreadReachable;

    invoke-direct {v0, v6}, Lau/com/stklab/minepro/thread/ThreadReachable;-><init>(I)V

    iput-object v0, p0, Lau/com/stklab/minepro/SelectServer;->t_reachable_3:Lau/com/stklab/minepro/thread/ThreadReachable;

    new-instance v0, Lau/com/stklab/minepro/thread/ThreadReachable;

    invoke-direct {v0, v7}, Lau/com/stklab/minepro/thread/ThreadReachable;-><init>(I)V

    iput-object v0, p0, Lau/com/stklab/minepro/SelectServer;->t_reachable_4:Lau/com/stklab/minepro/thread/ThreadReachable;

    iget-object v0, p0, Lau/com/stklab/minepro/SelectServer;->t_reachable_1:Lau/com/stklab/minepro/thread/ThreadReachable;

    invoke-virtual {v0}, Lau/com/stklab/minepro/thread/ThreadReachable;->start()V

    iget-object v0, p0, Lau/com/stklab/minepro/SelectServer;->t_reachable_2:Lau/com/stklab/minepro/thread/ThreadReachable;

    invoke-virtual {v0}, Lau/com/stklab/minepro/thread/ThreadReachable;->start()V

    iget-object v0, p0, Lau/com/stklab/minepro/SelectServer;->t_reachable_3:Lau/com/stklab/minepro/thread/ThreadReachable;

    invoke-virtual {v0}, Lau/com/stklab/minepro/thread/ThreadReachable;->start()V

    iget-object v0, p0, Lau/com/stklab/minepro/SelectServer;->t_reachable_4:Lau/com/stklab/minepro/thread/ThreadReachable;

    invoke-virtual {v0}, Lau/com/stklab/minepro/thread/ThreadReachable;->start()V

    sget-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v1, "English"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d2

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Channell"

    aput-object v1, v0, v8

    const-string v1, "Channel2"

    aput-object v1, v0, v4

    const-string v1, "Channel3"

    aput-object v1, v0, v5

    const-string v1, "Channel4"

    aput-object v1, v0, v6

    const-string v1, "Channel5 (Asia)"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Random Video"

    aput-object v2, v0, v1

    iput-object v0, p0, Lau/com/stklab/minepro/SelectServer;->show_strs:[Ljava/lang/String;

    :goto_88
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "madthumbs"

    aput-object v1, v0, v8

    const-string v1, "sextube_spankwire"

    aput-object v1, v0, v4

    const-string v1, "sextube_tube8"

    aput-object v1, v0, v5

    const-string v1, "sextube_pornhub"

    aput-object v1, v0, v6

    const-string v1, "sextube_thisav"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "random"

    aput-object v2, v0, v1

    iput-object v0, p0, Lau/com/stklab/minepro/SelectServer;->server_strs:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "1"

    aput-object v1, v0, v8

    const-string v1, "2"

    aput-object v1, v0, v4

    const-string v1, "3"

    aput-object v1, v0, v5

    const-string v1, "4"

    aput-object v1, v0, v6

    const-string v1, "5"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "-1"

    aput-object v2, v0, v1

    iput-object v0, p0, Lau/com/stklab/minepro/SelectServer;->servercode_strs:[Ljava/lang/String;

    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090006

    iget-object v2, p0, Lau/com/stklab/minepro/SelectServer;->show_strs:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lau/com/stklab/minepro/SelectServer;->setListAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :cond_d2
    sget-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v1, "Korean"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fb

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\ucc44\ub1101"

    aput-object v1, v0, v8

    const-string v1, "\ucc44\ub1102"

    aput-object v1, v0, v4

    const-string v1, "\ucc44\ub1103"

    aput-object v1, v0, v5

    const-string v1, "\ucc44\ub1104"

    aput-object v1, v0, v6

    const-string v1, "\ucc44\ub1105(\uc544\uc2dc\uc544)"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\ub79c\ub364 \ub3d9\uc601\uc0c1"

    aput-object v2, v0, v1

    iput-object v0, p0, Lau/com/stklab/minepro/SelectServer;->show_strs:[Ljava/lang/String;

    goto :goto_88

    :cond_fb
    sget-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v1, "Germany"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_125

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Kanal1"

    aput-object v1, v0, v8

    const-string v1, "Kanal2"

    aput-object v1, v0, v4

    const-string v1, "Kanal3"

    aput-object v1, v0, v5

    const-string v1, "Kanal4"

    aput-object v1, v0, v6

    const-string v1, "Kanal5 (Asien)"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Zuf\u00e4llige Videos"

    aput-object v2, v0, v1

    iput-object v0, p0, Lau/com/stklab/minepro/SelectServer;->show_strs:[Ljava/lang/String;

    goto/16 :goto_88

    :cond_125
    sget-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v1, "ChineseTradition"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14f

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u983b\u90531"

    aput-object v1, v0, v8

    const-string v1, "\u983b\u90532"

    aput-object v1, v0, v4

    const-string v1, "\u983b\u90533"

    aput-object v1, v0, v5

    const-string v1, "\u983b\u90534"

    aput-object v1, v0, v6

    const-string v1, "\u983b\u90535 (\u4e9e\u6d32)"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u96a8\u6a5f\u8996\u983b"

    aput-object v2, v0, v1

    iput-object v0, p0, Lau/com/stklab/minepro/SelectServer;->show_strs:[Ljava/lang/String;

    goto/16 :goto_88

    :cond_14f
    sget-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v1, "ChineseSimplied"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_179

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u9891\u90531"

    aput-object v1, v0, v8

    const-string v1, "\u9891\u90532"

    aput-object v1, v0, v4

    const-string v1, "\u9891\u90533"

    aput-object v1, v0, v5

    const-string v1, "\u9891\u90534"

    aput-object v1, v0, v6

    const-string v1, "\u9891\u90535 (\u4e9a\u6d32)"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u968f\u673a\u89c6\u9891"

    aput-object v2, v0, v1

    iput-object v0, p0, Lau/com/stklab/minepro/SelectServer;->show_strs:[Ljava/lang/String;

    goto/16 :goto_88

    :cond_179
    sget-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v1, "Japanese"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u30c1\u30e3\u30cd\u30eb1"

    aput-object v1, v0, v8

    const-string v1, "\u30c1\u30e3\u30cd\u30eb2"

    aput-object v1, v0, v4

    const-string v1, "\u30c1\u30e3\u30cd\u30eb3"

    aput-object v1, v0, v5

    const-string v1, "\u30c1\u30e3\u30cd\u30eb4"

    aput-object v1, v0, v6

    const-string v1, "\u30c1\u30e3\u30cd\u30eb5\uff08\u30a2\u30b8\u30a2)"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u30e9\u30f3\u30c0\u30e0\u30d3\u30c7\u30aa"

    aput-object v2, v0, v1

    iput-object v0, p0, Lau/com/stklab/minepro/SelectServer;->show_strs:[Ljava/lang/String;

    goto/16 :goto_88

    :cond_1a3
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Channell"

    aput-object v1, v0, v8

    const-string v1, "Channel2"

    aput-object v1, v0, v4

    const-string v1, "Channel3"

    aput-object v1, v0, v5

    const-string v1, "Channel4"

    aput-object v1, v0, v6

    const-string v1, "Channel5 (Asia)"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Random Videos"

    aput-object v2, v0, v1

    iput-object v0, p0, Lau/com/stklab/minepro/SelectServer;->show_strs:[Ljava/lang/String;

    goto/16 :goto_88
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 9

    const/4 v2, 0x0

    iget-object v0, p0, Lau/com/stklab/minepro/SelectServer;->server_strs:[Ljava/lang/String;

    aget-object v0, v0, p3

    sput-object v0, Lau/com/stklab/minepro/mineBeta;->currentServer:Ljava/lang/String;

    iget-object v0, p0, Lau/com/stklab/minepro/SelectServer;->servercode_strs:[Ljava/lang/String;

    aget-object v0, v0, p3

    sput-object v0, Lau/com/stklab/minepro/mineBeta;->currentServerCode:Ljava/lang/String;

    iget-object v0, p0, Lau/com/stklab/minepro/SelectServer;->show_strs:[Ljava/lang/String;

    aget-object v0, v0, p3

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    sget-object v0, Lau/com/stklab/minepro/mineBeta;->currentServer:Ljava/lang/String;

    const-string v1, "random"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    const/4 v0, 0x1

    sput-boolean v0, Lau/com/stklab/minepro/Global;->isInRandom:Z

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lau/com/stklab/minepro/RandomView;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lau/com/stklab/minepro/SelectServer;->startActivity(Landroid/content/Intent;)V

    :goto_2f
    invoke-virtual {p0}, Lau/com/stklab/minepro/SelectServer;->finish()V

    return-void

    :cond_33
    sput-boolean v2, Lau/com/stklab/minepro/Global;->isInRandom:Z

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lau/com/stklab/minepro/SelectChannel;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lau/com/stklab/minepro/SelectServer;->startActivity(Landroid/content/Intent;)V

    goto :goto_2f
.end method
