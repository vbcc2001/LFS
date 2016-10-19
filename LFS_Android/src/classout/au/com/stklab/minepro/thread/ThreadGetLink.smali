.class public Lau/com/stklab/minepro/thread/ThreadGetLink;
.super Ljava/lang/Thread;


# instance fields
.field handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lau/com/stklab/minepro/thread/ThreadGetLink;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    const-string v0, "ht"

    const-string v1, "tp://se"

    const-string v2, "xt"

    const-string v3, "ube-and"

    const-string v4, "roid.c"

    const-string v5, "om/cur"

    const-string v6, "rentver"

    const-string v7, "sion.html"

    :try_start_10
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lau/com/stklab/minepro/webclient/SimpleWebClient;->doGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5c

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5c

    sget-object v1, Lau/com/stklab/minepro/mineBeta;->VERSION:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5c

    iget-object v0, p0, Lau/com/stklab/minepro/thread/ThreadGetLink;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_5c} :catch_5d

    :cond_5c
    :goto_5c
    return-void

    :catch_5d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5c
.end method
