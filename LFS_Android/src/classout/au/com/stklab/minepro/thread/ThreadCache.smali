.class public Lau/com/stklab/minepro/thread/ThreadCache;
.super Ljava/lang/Thread;


# instance fields
.field cacheContent:Ljava/lang/StringBuilder;

.field done:Ljava/lang/StringBuilder;

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lau/com/stklab/minepro/thread/ThreadCache;->url:Ljava/lang/String;

    iput-object p2, p0, Lau/com/stklab/minepro/thread/ThreadCache;->cacheContent:Ljava/lang/StringBuilder;

    iput-object p3, p0, Lau/com/stklab/minepro/thread/ThreadCache;->done:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lau/com/stklab/minepro/thread/ThreadCache;->url:Ljava/lang/String;

    invoke-static {v0}, Lau/com/stklab/minepro/webclient/SimpleWebClient;->doGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "doGetError"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    :goto_e
    return-void

    :cond_f
    :try_start_f
    iget-object v1, p0, Lau/com/stklab/minepro/thread/ThreadCache;->cacheContent:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    iget-object v3, p0, Lau/com/stklab/minepro/thread/ThreadCache;->cacheContent:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lau/com/stklab/minepro/thread/ThreadCache;->cacheContent:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_20} :catch_5d

    :goto_20
    :try_start_20
    iget-object v0, p0, Lau/com/stklab/minepro/thread/ThreadCache;->done:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lau/com/stklab/minepro/thread/ThreadCache;->done:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lau/com/stklab/minepro/thread/ThreadCache;->done:Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_32} :catch_62

    :goto_32
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "length of cacheContent "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lau/com/stklab/minepro/thread/ThreadCache;->cacheContent:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " length of done "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lau/com/stklab/minepro/thread/ThreadCache;->done:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_e

    :catch_5d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_20

    :catch_62
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_32
.end method
