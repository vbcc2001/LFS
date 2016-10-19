.class public Lcom/adsdk/sdk/RequestRichMediaAd;
.super Lcom/adsdk/sdk/RequestAd;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/adsdk/sdk/RequestAd;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsdk/sdk/RequestRichMediaAd;->is:Ljava/io/InputStream;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2

    invoke-direct {p0}, Lcom/adsdk/sdk/RequestAd;-><init>()V

    iput-object p1, p0, Lcom/adsdk/sdk/RequestRichMediaAd;->is:Ljava/io/InputStream;

    return-void
.end method

.method private convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 4

    :try_start_0
    new-instance v0, Ljava/util/Scanner;

    invoke-direct {v0, p1}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    const-string v1, "\\A"

    invoke-virtual {v0, v1}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Scanner;->next()Ljava/lang/String;
    :try_end_e
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_e} :catch_10

    move-result-object v0

    :goto_f
    return-object v0

    :catch_10
    move-exception v0

    const-string v0, ""

    goto :goto_f
.end method


# virtual methods
.method parse(Ljava/io/InputStream;)Lcom/adsdk/sdk/video/RichMediaAd;
    .registers 7

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

    sget-boolean v2, Lcom/adsdk/sdk/Log;->LOGGING_ENABLED:Z

    if-eqz v2, :cond_4b

    invoke-direct {p0, p1}, Lcom/adsdk/sdk/RequestRichMediaAd;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Ad RequestPerform HTTP Response: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    const-string v3, "ISO-8859-1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    new-instance v3, Lorg/xml/sax/InputSource;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v4}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    const-string v2, "ISO-8859-1"

    invoke-virtual {v3, v2}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    invoke-virtual {v1}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    :goto_4a
    return-object v0

    :cond_4b
    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    const-string v3, "ISO-8859-1"

    invoke-virtual {v2, v3}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    invoke-virtual {v1}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5b} :catch_5d

    move-result-object v0

    goto :goto_4a

    :catch_5d
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

.method bridge synthetic parse(Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/adsdk/sdk/RequestRichMediaAd;->parse(Ljava/io/InputStream;)Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    return-object v0
.end method

.method parseTestString()Lcom/adsdk/sdk/video/RichMediaAd;
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

    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lcom/adsdk/sdk/RequestRichMediaAd;->is:Ljava/io/InputStream;

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v3, Lorg/xml/sax/InputSource;

    invoke-direct {v3, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-interface {v0, v3}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    invoke-virtual {v1}, Lcom/adsdk/sdk/video/ResponseHandler;->getRichMediaAd()Lcom/adsdk/sdk/video/RichMediaAd;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_2a

    move-result-object v0

    return-object v0

    :catch_2a
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

.method bridge synthetic parseTestString()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/adsdk/sdk/RequestRichMediaAd;->parseTestString()Lcom/adsdk/sdk/video/RichMediaAd;

    move-result-object v0

    return-object v0
.end method
