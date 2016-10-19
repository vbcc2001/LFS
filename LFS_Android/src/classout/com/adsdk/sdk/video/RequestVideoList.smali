.class public Lcom/adsdk/sdk/video/RequestVideoList;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private parse(Ljava/io/InputStream;)Ljava/util/HashMap;
    .registers 6

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    new-instance v1, Lcom/adsdk/sdk/video/ResponseHandler;

    invoke-direct {v1}, Lcom/adsdk/sdk/video/ResponseHandler;-><init>()V

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    const-string v3, "ISO-8859-1"

    invoke-virtual {v2, v3}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    iget-object v0, v1, Lcom/adsdk/sdk/video/ResponseHandler;->videoList:Ljava/util/HashMap;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_24

    return-object v0

    :catch_24
    move-exception v0

    new-instance v1, Lcom/adsdk/sdk/RequestException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot parse Response:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/adsdk/sdk/RequestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public sendRequest(Lcom/adsdk/sdk/AdRequest;)Ljava/util/HashMap;
    .registers 6

    const/16 v3, 0x2710

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/adsdk/sdk/AdRequest;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "&listads=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Video List RequestPerform HTTP Get Url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    invoke-virtual {p1}, Lcom/adsdk/sdk/AdRequest;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    :try_start_4e
    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_6b

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adsdk/sdk/video/RequestVideoList;->parse(Ljava/io/InputStream;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0

    :cond_6b
    new-instance v0, Lcom/adsdk/sdk/RequestException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Server Error. Response code:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/adsdk/sdk/RequestException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_80
    .catch Lcom/adsdk/sdk/RequestException; {:try_start_4e .. :try_end_80} :catch_80
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4e .. :try_end_80} :catch_82
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_80} :catch_8b
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_80} :catch_94

    :catch_80
    move-exception v0

    throw v0

    :catch_82
    move-exception v0

    new-instance v1, Lcom/adsdk/sdk/RequestException;

    const-string v2, "Error in HTTP request"

    invoke-direct {v1, v2, v0}, Lcom/adsdk/sdk/RequestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_8b
    move-exception v0

    new-instance v1, Lcom/adsdk/sdk/RequestException;

    const-string v2, "Error in HTTP request"

    invoke-direct {v1, v2, v0}, Lcom/adsdk/sdk/RequestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_94
    move-exception v0

    new-instance v1, Lcom/adsdk/sdk/RequestException;

    const-string v2, "Error in HTTP request"

    invoke-direct {v1, v2, v0}, Lcom/adsdk/sdk/RequestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
