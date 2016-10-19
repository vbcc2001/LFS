.class public Lau/com/stklab/minepro/executer/Executer;
.super Ljava/lang/Object;


# instance fields
.field debug:Z

.field headerParamCache:Ljava/lang/String;

.field httpClient:Lau/com/stklab/minepro/executer/ExecuterHttpClient;

.field postParamCache:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lau/com/stklab/minepro/executer/ExecuterHttpClient;

    invoke-direct {v0}, Lau/com/stklab/minepro/executer/ExecuterHttpClient;-><init>()V

    iput-object v0, p0, Lau/com/stklab/minepro/executer/Executer;->httpClient:Lau/com/stklab/minepro/executer/ExecuterHttpClient;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lau/com/stklab/minepro/executer/Executer;->debug:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lau/com/stklab/minepro/executer/ExecuterHttpClient;

    invoke-direct {v0}, Lau/com/stklab/minepro/executer/ExecuterHttpClient;-><init>()V

    iput-object v0, p0, Lau/com/stklab/minepro/executer/Executer;->httpClient:Lau/com/stklab/minepro/executer/ExecuterHttpClient;

    iput-boolean p1, p0, Lau/com/stklab/minepro/executer/Executer;->debug:Z

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    :try_start_0
    iget-boolean v0, p0, Lau/com/stklab/minepro/executer/Executer;->debug:Z

    if-eqz v0, :cond_22

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "running command "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,its content is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_22
    const-string v0, "GET"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    iget-boolean v0, p0, Lau/com/stklab/minepro/executer/Executer;->debug:Z

    if-eqz v0, :cond_49

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "the reply is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lau/com/stklab/minepro/executer/Executer;->httpClient:Lau/com/stklab/minepro/executer/ExecuterHttpClient;

    invoke-virtual {v2, p2}, Lau/com/stklab/minepro/executer/ExecuterHttpClient;->doGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_48
    :goto_48
    return-void

    :cond_49
    iget-object v0, p0, Lau/com/stklab/minepro/executer/Executer;->httpClient:Lau/com/stklab/minepro/executer/ExecuterHttpClient;

    invoke-virtual {v0, p2}, Lau/com/stklab/minepro/executer/ExecuterHttpClient;->doGet(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4e} :catch_4f

    goto :goto_48

    :catch_4f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_48

    :cond_54
    :try_start_54
    const-string v0, "SETHEADERPARAM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    iput-object p2, p0, Lau/com/stklab/minepro/executer/Executer;->headerParamCache:Ljava/lang/String;

    goto :goto_48

    :cond_5f
    const-string v0, "SETHEADERVALUE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    iget-object v0, p0, Lau/com/stklab/minepro/executer/Executer;->httpClient:Lau/com/stklab/minepro/executer/ExecuterHttpClient;

    iget-object v1, p0, Lau/com/stklab/minepro/executer/Executer;->headerParamCache:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lau/com/stklab/minepro/executer/ExecuterHttpClient;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_48

    :cond_6f
    const-string v0, "CLEARHEADER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lau/com/stklab/minepro/executer/Executer;->httpClient:Lau/com/stklab/minepro/executer/ExecuterHttpClient;

    invoke-virtual {v0}, Lau/com/stklab/minepro/executer/ExecuterHttpClient;->clearHeader()V

    goto :goto_48

    :cond_7d
    const-string v0, "POST"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_aa

    iget-boolean v0, p0, Lau/com/stklab/minepro/executer/Executer;->debug:Z

    if-eqz v0, :cond_a4

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "the reply is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lau/com/stklab/minepro/executer/Executer;->httpClient:Lau/com/stklab/minepro/executer/ExecuterHttpClient;

    invoke-virtual {v2, p2}, Lau/com/stklab/minepro/executer/ExecuterHttpClient;->doPost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_48

    :cond_a4
    iget-object v0, p0, Lau/com/stklab/minepro/executer/Executer;->httpClient:Lau/com/stklab/minepro/executer/ExecuterHttpClient;

    invoke-virtual {v0, p2}, Lau/com/stklab/minepro/executer/ExecuterHttpClient;->doPost(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_48

    :cond_aa
    const-string v0, "SETPOSTPARAM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b5

    iput-object p2, p0, Lau/com/stklab/minepro/executer/Executer;->postParamCache:Ljava/lang/String;

    goto :goto_48

    :cond_b5
    const-string v0, "SETPOSTVALUE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c5

    iget-object v0, p0, Lau/com/stklab/minepro/executer/Executer;->httpClient:Lau/com/stklab/minepro/executer/ExecuterHttpClient;

    iget-object v1, p0, Lau/com/stklab/minepro/executer/Executer;->postParamCache:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lau/com/stklab/minepro/executer/ExecuterHttpClient;->setPostParams(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_48

    :cond_c5
    const-string v0, "CLEARPOST"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d4

    iget-object v0, p0, Lau/com/stklab/minepro/executer/Executer;->httpClient:Lau/com/stklab/minepro/executer/ExecuterHttpClient;

    invoke-virtual {v0}, Lau/com/stklab/minepro/executer/ExecuterHttpClient;->clearPostParams()V

    goto/16 :goto_48

    :cond_d4
    const-string v0, "NEWHTTPCLIENT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e5

    new-instance v0, Lau/com/stklab/minepro/executer/ExecuterHttpClient;

    invoke-direct {v0}, Lau/com/stklab/minepro/executer/ExecuterHttpClient;-><init>()V

    iput-object v0, p0, Lau/com/stklab/minepro/executer/Executer;->httpClient:Lau/com/stklab/minepro/executer/ExecuterHttpClient;

    goto/16 :goto_48

    :cond_e5
    const-string v0, "SLEEP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11b

    iget-boolean v0, p0, Lau/com/stklab/minepro/executer/Executer;->debug:Z

    if-eqz v0, :cond_10b

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sleep for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " million seconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_10b
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_10b} :catch_4f

    :cond_10b
    :try_start_10b
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_116
    .catch Ljava/lang/Exception; {:try_start_10b .. :try_end_116} :catch_118

    goto/16 :goto_48

    :catch_118
    move-exception v0

    goto/16 :goto_48

    :cond_11b
    :try_start_11b
    const-string v0, "SHOWHTTPCLIENTSTATUS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lau/com/stklab/minepro/executer/Executer;->httpClient:Lau/com/stklab/minepro/executer/ExecuterHttpClient;

    invoke-virtual {v0}, Lau/com/stklab/minepro/executer/ExecuterHttpClient;->showStatus()V
    :try_end_128
    .catch Ljava/lang/Exception; {:try_start_11b .. :try_end_128} :catch_4f

    goto/16 :goto_48
.end method
