.class public Lau/com/stklab/minepro/executer/ExecuterHttpClient;
.super Ljava/lang/Object;


# instance fields
.field private headerParams:Ljava/util/ArrayList;

.field private headerValues:Ljava/util/ArrayList;

.field private httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private postParams:Ljava/util/ArrayList;

.field private postValues:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const/16 v1, 0x4e20

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v1, 0xbb8

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    const-string v1, "Mozilla/5.0 (Windows; U; Windows NT 5.1; zh-CN; rv:1.9.2) Gecko/20100115 Firefox/3.6"

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    iput-object v1, p0, Lau/com/stklab/minepro/executer/ExecuterHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lau/com/stklab/minepro/executer/ExecuterHttpClient;->headerParams:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lau/com/stklab/minepro/executer/ExecuterHttpClient;->headerValues:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lau/com/stklab/minepro/executer/ExecuterHttpClient;->postParams:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lau/com/stklab/minepro/executer/ExecuterHttpClient;->postValues:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public clearHeader()V
    .registers 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lau/com/stklab/minepro/executer/ExecuterHttpClient;->headerParams:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lau/com/stklab/minepro/executer/ExecuterHttpClient;->headerValues:Ljava/util/ArrayList;

    return-void
.end method

.method public clearPostParams()V
    .registers 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lau/com/stklab/minepro/executer/ExecuterHttpClient;->postParams:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lau/com/stklab/minepro/executer/ExecuterHttpClient;->postValues:Ljava/util/ArrayList;

    return-void
.end method

.method public doGet(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lau/com/stklab/minepro/executer/ExecuterHttpClient;->doGetWithCount(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public doGetWithCount(Ljava/lang/String;I)Ljava/lang/String;
    .registers 8

    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    const-string v3, "doGetError"

    const/4 v0, 0x0

    move v2, v0

    :goto_9
    iget-object v0, p0, Lau/com/stklab/minepro/executer/ExecuterHttpClient;->headerParams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le v2, v0, :cond_2e

    :try_start_13
    iget-object v0, p0, Lau/com/stklab/minepro/executer/ExecuterHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_45

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_2c
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_2c} :catch_5d
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_2c} :catch_82

    move-result-object v0

    :goto_2d
    return-object v0

    :cond_2e
    iget-object v0, p0, Lau/com/stklab/minepro/executer/ExecuterHttpClient;->headerParams:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lau/com/stklab/minepro/executer/ExecuterHttpClient;->headerValues:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_9

    :cond_45
    :try_start_45
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error Response: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5b
    .catch Ljava/lang/IllegalStateException; {:try_start_45 .. :try_end_5b} :catch_5d
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_5b} :catch_82

    move-result-object v0

    goto :goto_2d

    :catch_5d
    move-exception v0

    if-ltz p2, :cond_76

    :try_start_60
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Connect still allocated, try to reconnect"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    add-int/lit8 v0, p2, -0x1

    invoke-virtual {p0, p1, v0}, Lau/com/stklab/minepro/executer/ExecuterHttpClient;->doGetWithCount(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2d

    :cond_76
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Connect still allocated, give up"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_7d} :catch_7f

    move-object v0, v3

    goto :goto_2d

    :catch_7f
    move-exception v0

    move-object v0, v3

    goto :goto_2d

    :catch_82
    move-exception v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Connect fail"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v3

    goto :goto_2d
.end method

.method public doPost(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v3, 0x0

    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v4, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v2, v3

    :goto_c
    iget-object v0, p0, Lau/com/stklab/minepro/executer/ExecuterHttpClient;->postParams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le v2, v0, :cond_45

    :goto_16
    iget-object v0, p0, Lau/com/stklab/minepro/executer/ExecuterHttpClient;->headerParams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le v3, v0, :cond_61

    :try_start_20
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v1, "UTF-8"

    invoke-direct {v0, v5, v1}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    iget-object v0, p0, Lau/com/stklab/minepro/executer/ExecuterHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_77

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_43
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_20 .. :try_end_43} :catch_8f
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_43} :catch_9d
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_43} :catch_ab

    move-result-object v0

    :goto_44
    return-object v0

    :cond_45
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    iget-object v0, p0, Lau/com/stklab/minepro/executer/ExecuterHttpClient;->postParams:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lau/com/stklab/minepro/executer/ExecuterHttpClient;->postValues:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v6, v0, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_c

    :cond_61
    iget-object v0, p0, Lau/com/stklab/minepro/executer/ExecuterHttpClient;->headerParams:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lau/com/stklab/minepro/executer/ExecuterHttpClient;->headerValues:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_77
    :try_start_77
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error Response: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_8d
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_77 .. :try_end_8d} :catch_8f
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_8d} :catch_9d
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_8d} :catch_ab

    move-result-object v0

    goto :goto_44

    :catch_8f
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_44

    :catch_9d
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_44

    :catch_ab
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_44
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lau/com/stklab/minepro/executer/ExecuterHttpClient;->headerParams:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lau/com/stklab/minepro/executer/ExecuterHttpClient;->headerValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setPostParams(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lau/com/stklab/minepro/executer/ExecuterHttpClient;->postParams:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lau/com/stklab/minepro/executer/ExecuterHttpClient;->postValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public showStatus()V
    .registers 6

    const/4 v2, 0x0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "status of executer httpclient"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "num of header : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lau/com/stklab/minepro/executer/ExecuterHttpClient;->headerParams:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v1, v2

    :goto_23
    iget-object v0, p0, Lau/com/stklab/minepro/executer/ExecuterHttpClient;->headerParams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le v1, v0, :cond_59

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "num of post params : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lau/com/stklab/minepro/executer/ExecuterHttpClient;->postParams:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_47
    iget-object v0, p0, Lau/com/stklab/minepro/executer/ExecuterHttpClient;->postParams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le v2, v0, :cond_8b

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "end of status of executer httpclient"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_59
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v0, "header["

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lau/com/stklab/minepro/executer/ExecuterHttpClient;->headerParams:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "] "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lau/com/stklab/minepro/executer/ExecuterHttpClient;->headerValues:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_23

    :cond_8b
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "post["

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lau/com/stklab/minepro/executer/ExecuterHttpClient;->postParams:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "] "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lau/com/stklab/minepro/executer/ExecuterHttpClient;->postValues:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_47
.end method
